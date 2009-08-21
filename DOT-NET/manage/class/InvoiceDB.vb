Imports System.Data
Imports System.Data.OleDb
Imports System.Globalization
Imports System.Threading
Module InvoiceDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Dim firstDate As String = "1/1/0001 12:00:00 AM"

    Function insertInvoice(ByVal Id As Integer, ByVal detailID As Integer, ByVal Package_Id As Integer, ByVal Week As Integer, ByVal PackagePrice As Double, ByVal Status As Integer, ByVal date_start As Date) As Integer
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim invoiceid As Integer
        Dim inputDate As String

        invoiceid = getNewInvoice()

        'inputDate = Year(date_start) - 543 & "-" & Month(date_start) & "-" & Day(date_start) & " " & Hour(date_start) & ":" & Minute(date_start) & ":" & Second(date_start)
        inputDate = date_start.ToString("yyyy-MM-dd hh:mm:ss")

        sql = "INSERT INTO Invoice (Invoice_ID, Invoice_DateRC,Notice_Id, Notice_DetailID ,Notice_StartDate, Notice_PackageId, Package_Week, Package_Price, Invoice_Status)VALUES (" & invoiceid & ",getdate()," & Id & "," & detailID & ",CONVERT(DATETIME, '" & inputDate & "', 102)," & Package_Id & ", " & Week & "," & PackagePrice & "," & Status & ") "

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return invoiceid
    End Function
    Function insertInvoice2(ByVal invoiceInfo As invoice) As Integer
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim invoiceid As Integer
        Dim inputDate As String

        invoiceid = getNewInvoice()


        If invoiceInfo.startDate.ToString("dd/MM/yyyy") <> ConfigurationSettings.AppSettings("firstDateEn") Then
            'inputDate = Year(invoiceInfo.startDate) - 543 & "-" & Month(invoiceInfo.startDate) & "-" & Day(invoiceInfo.startDate) & " " & Hour(invoiceInfo.startDate) & ":" & Minute(invoiceInfo.startDate) & ":" & Second(invoiceInfo.startDate)
            inputDate = invoiceInfo.startDate.ToString("yyyy-MM-dd hh:mm:ss")
        Else
            inputDate = ""
        End If

        sql = "INSERT INTO Invoice (Invoice_ID, Invoice_DateRC,Notice_Id, Notice_DetailID "
        sql = sql & ",Notice_StartDate, Notice_PackageId, Package_Week, Package_Price, Invoice_Status)"
        sql = sql & " VALUES (" & invoiceid & ",getdate()," & invoiceInfo.id
        sql = sql & "," & checkNullNum2(invoiceInfo.Notice_DetailID) & ","
        If inputDate <> "" Then
            sql = sql & " CONVERT(DATETIME, '" & inputDate & "', 102)"
        Else
            sql = sql & " null"
        End If
        sql = sql & "," & invoiceInfo.packageid & ", " & invoiceInfo.week & "," & invoiceInfo.price
        sql = sql & "," & invoiceInfo.status & ") "
        sql = sql & ""
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return invoiceid
    End Function
    Sub updatePaidInvoice(ByVal Id As Integer, ByVal paid As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        If paid = "NO" Then
            sql = "UPDATE Invoice SET Paid_Check = 1 , Paid_Check_DateRC = getDate() WHERE INVOICE_ID = " & Id
        Else
            sql = "UPDATE Invoice SET Paid_Check = null , Paid_Check_DateRC = null WHERE INVOICE_ID = " & Id
        End If
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Sub updatePaidInvoice2(ByVal Id As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Invoice SET Paid = 1 , Paid_DateRC = getDate() WHERE INVOICE_ID = " & Id
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Sub updateNoticeStart(ByVal Id As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Invoice SET Notice_StartDate = getdate()  WHERE INVOICE_ID = " & Id
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Sub updateProlongChg(ByVal myInv As invoice)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim inputDate As String
        inputDate = "CONVERT(DATETIME, '" & myInv.startDate.ToString("yyyy-MM-dd hh:mm:ss") & "', 102)"

        sql = "UPDATE Invoice SET Notice_StartDate = " & inputDate
        sql = sql & " ,Notice_PackageId =" & myInv.packageid
        sql = sql & " ,Package_Week =" & myInv.week
        sql = sql & " ,Package_Price =" & myInv.price
        sql = sql & " WHERE  INVOICE_ID = " & myInv.id
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub



    Function getNewInvoice() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(Invoice_ID) as AnsID FROM Invoice"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID") + 1
            Else
                ansid = 1
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function


    Function getInvoice(ByVal noticeid As Integer, ByVal invStatus As Integer, ByVal paid As String) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer


        sql = "SELECT Invoice_ID FROM Invoice WHERE Notice_Id = " & noticeid & " AND Invoice_Status = " & invStatus & " AND Paid " & paid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("Invoice_ID")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function getInvoiceType(ByVal invoiceid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Invoice_Status as AnsID FROM Invoice WHERE Invoice_Id = " & invoiceid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function getNoticeID(ByVal invoiceid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Notice_ID as AnsID FROM Invoice WHERE Invoice_Id = " & invoiceid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function getPackageID(ByVal Id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Notice_PackageId as AnsID FROM Invoice WHERE Invoice_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function getPrice(ByVal Id As Integer) As Double
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Double

        sql = "SELECT Package_Price as AnsID FROM Invoice WHERE Invoice_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function

    Sub updateProcessed(ByVal Id As Integer, ByVal flag As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE  invoice"
        sql = sql & " SET FG_Process = " & flag
        sql = sql & " WHERE invoice.invoice_id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    '-------------- √Õ·°È‰¢ - ---------------------
    Sub updateCancelInvoice(ByVal noticeid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Invoice SET Cancel = 1  WHERE Notice_ID = " & noticeid
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Sub updateCancelInvoice(ByVal noticeid As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Invoice SET Cancel = 1  WHERE Notice_ID in (" & noticeid & ")"
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub




    Sub updateCancelInvoice2(ByVal invoiceid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Invoice SET Cancel = 1  WHERE Invoice_ID = " & invoiceid
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Sub updInvChg(ByVal invoiceInfo As invoice)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim inputDate As String

        If invoiceInfo.startDate.ToString("dd/MM/yyyy") <> ConfigurationSettings.AppSettings("firstDateEn") Then
            inputDate = " CONVERT(DATETIME, '" & invoiceInfo.startDate.ToString("yyyy-MM-dd hh:mm:ss") & "', 102)"
        Else
            inputDate = "null"
        End If


        sql = "UPDATE Invoice SET Notice_PackageId = " & invoiceInfo.packageid
        sql = sql & " ,Package_Week =" & invoiceInfo.week
        sql = sql & " ,Package_Price =" & invoiceInfo.price
        sql = sql & " ,Notice_StartDate =" & inputDate
        sql = sql & " WHERE  Invoice_ID = " & invoiceInfo.id
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Function countInvoices(ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT count(*) FROM Invoice INNER JOIN Notice ON Invoice.Notice_Id = Notice.Notice_Id WHERE (Notice.Notice_MemberId = " & cust_id & ") AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice.Paid IS NULL OR Invoice.Paid = 0) "
        mycommand = New OleDbCommand(sql, myconn)

        custid = mycommand.ExecuteScalar()

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function

    Function getInvoices(ByVal cust_id As Integer) As Array
        Dim invoice(countInvoices(cust_id)) As invoice
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT Invoice.* FROM Invoice INNER JOIN Notice ON Invoice.Notice_Id = Notice.Notice_Id WHERE (Notice.Notice_MemberId = " & cust_id & ") AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice.Paid IS NULL OR Invoice.Paid = 0) ORDER BY Invoice.Notice_StartDate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            invoice(i).id = Ans_ID.Item(0)
            invoice(i).invoiceDate = String_chk.checkNullDBDate(Ans_ID.Item(1))
            invoice(i).noticeid = String_chk.checkNullDBNum(Ans_ID.Item(2))
            invoice(i).Notice_DetailID = String_chk.checkNullDBNum(Ans_ID.Item(3))
            invoice(i).startDate = String_chk.checkNullDBDate(Ans_ID.Item(4))
            invoice(i).packageid = String_chk.checkNullDBNum(Ans_ID.Item(5))
            invoice(i).week = String_chk.checkNullDBNum(Ans_ID.Item(6))
            invoice(i).price = String_chk.checkNullDBNum(Ans_ID.Item(7))
            invoice(i).paid = String_chk.checkNullDBNum(Ans_ID.Item(8))
            invoice(i).paidDate = String_chk.checkNullDBDate(Ans_ID.Item(9))
            invoice(i).status = String_chk.checkNullDBNum(Ans_ID.Item(10))
            invoice(i).check = String_chk.checkNullDBNum(Ans_ID.Item(11))
            invoice(i).checkDate = String_chk.checkNullDBDate(Ans_ID.Item(12))
            invoice(i).cancel = String_chk.checkNullDBNum(Ans_ID.Item(13))
            i = i + 1
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return invoice
    End Function
    '-------------  change package -----------------------
    Function getChangeInvoice(ByVal noticeid As Integer, ByVal packageid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "Select Invoice_ID"
        sql = sql & " FROM  invoice"
        sql = sql & " WHERE (Notice_Id = " & noticeid & ") AND (Notice_PackageId = " & packageid & ") "
        sql = sql & " AND (Cancel IS NULL or Cancel = 0 ) AND (Paid IS NULL or Paid = 0)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            ansid = Ans_ID.Item("Invoice_ID")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    '-------------- √Õ·°È‰¢ - ---------------------
    Function getInvoice2(ByVal noticeid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer


        sql = "SELECT Invoice_ID FROM Invoice WHERE Notice_Id = " & noticeid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("Invoice_ID")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function getInvoicesSelected(ByVal invoice_list As String, ByVal invoice_num As Integer) As Array
        Dim invoice(invoice_num) As invoice
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT Invoice.* FROM Invoice WHERE (Invoice_ID in (" & invoice_list & ")) AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice.Paid IS NULL OR Invoice.Paid = 0) ORDER BY Invoice.Notice_StartDate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            invoice(i).id = Ans_ID.Item(0)
            invoice(i).invoiceDate = String_chk.checkNullDBDate(Ans_ID.Item(1))
            invoice(i).noticeid = String_chk.checkNullDBNum(Ans_ID.Item(2))
            invoice(i).Notice_DetailID = String_chk.checkNullDBNum(Ans_ID.Item(3))
            invoice(i).startDate = String_chk.checkNullDBDate(Ans_ID.Item(4))
            invoice(i).packageid = String_chk.checkNullDBNum(Ans_ID.Item(5))
            invoice(i).week = String_chk.checkNullDBNum(Ans_ID.Item(6))
            invoice(i).price = String_chk.checkNullDBNum(Ans_ID.Item(7))
            invoice(i).paid = String_chk.checkNullDBNum(Ans_ID.Item(8))
            invoice(i).paidDate = String_chk.checkNullDBDate(Ans_ID.Item(9))
            invoice(i).status = String_chk.checkNullDBNum(Ans_ID.Item(10))
            invoice(i).check = String_chk.checkNullDBNum(Ans_ID.Item(11))
            invoice(i).checkDate = String_chk.checkNullDBDate(Ans_ID.Item(12))
            invoice(i).cancel = String_chk.checkNullDBNum(Ans_ID.Item(13))
            i = i + 1
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return invoice
    End Function
    Function getInvoiceInfo(ByVal invoiceid As Integer) As invoice
        Dim invoice As invoice
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT Invoice_ID, Invoice_DateRC, Notice_Id, Notice_DetailID, Notice_StartDate, Notice_PackageId, Package_Week, Package_Price, Paid, Paid_DateRC, "
        sql = sql & " Invoice_Status, Paid_Check, Paid_Check_DateRC, Cancel, FG_Process"
        sql = sql & " FROM invoice WHERE invoice_Id  = " & invoiceid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            invoice.id = Ans_ID.Item("Invoice_ID")
            invoice.invoiceDate = String_chk.checkNullDBDate(Ans_ID.Item("Invoice_DateRC"))
            invoice.noticeid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            invoice.Notice_DetailID = String_chk.checkNullDBNum(Ans_ID.Item("Notice_DetailID"))
            invoice.startDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StartDate"))
            invoice.packageid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_PackageId"))
            invoice.week = String_chk.checkNullDBNum(Ans_ID.Item("Package_Week"))
            invoice.price = String_chk.checkNullDBPrice(Ans_ID.Item("Package_Price"))
            invoice.paid = String_chk.checkNullDBNum(Ans_ID.Item("Paid"))
            invoice.paidDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_DateRC"))
            invoice.status = String_chk.checkNullDBNum(Ans_ID.Item("Invoice_Status"))
            invoice.check = String_chk.checkNullDBNum(Ans_ID.Item("Paid_Check"))
            invoice.checkDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_Check_DateRC"))
            invoice.cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))
            invoice.FG_Process = String_chk.checkNullDBNum(Ans_ID.Item("FG_Process"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return invoice
    End Function


    Function getProlongInvoices(ByVal cust_id As Integer, ByVal noticeid As Integer, ByVal invType As Integer) As invoice
        'Dim invoice(countProlongInvoices(cust_id, noticeid)) As invoice
        ''
        Dim invoice As invoice
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT  Invoice.Invoice_ID, Invoice.Invoice_DateRC, Invoice.Notice_Id, Invoice.Notice_DetailID, Invoice.Notice_StartDate, Invoice.Notice_PackageId, Invoice.Package_Week, Invoice.Package_Price, Invoice.Paid, Invoice.Paid_DateRC, "
        sql = sql & "  Invoice.Invoice_Status, Invoice.Paid_Check, Invoice.Paid_Check_DateRC, Invoice.Cancel"
        sql = sql & "  FROM Invoice INNER JOIN Notice ON Invoice.Notice_Id = Notice.Notice_Id  "
        sql = sql & " WHERE (Notice.Notice_MemberId = " & cust_id & ") "
        sql = sql & " AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) "
        sql = sql & " AND (Invoice_Status=" & invType & ") "
        sql = sql & " AND (Notice.Notice_Id = " & noticeid & ") "
        sql = sql & " AND (Invoice.FG_Process is null)"
        sql = sql & " ORDER BY Invoice.Notice_StartDate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then

            invoice.id = Ans_ID.Item("Invoice_ID")
            invoice.invoiceDate = String_chk.checkNullDBDate(Ans_ID.Item("Invoice_DateRC"))
            invoice.noticeid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            invoice.Notice_DetailID = String_chk.checkNullDBNum(Ans_ID.Item("Notice_DetailID"))
            invoice.startDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StartDate"))
            invoice.packageid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_PackageId"))
            invoice.week = String_chk.checkNullDBNum(Ans_ID.Item("Package_Week"))
            invoice.price = String_chk.checkNullDBNum(Ans_ID.Item("Package_Price"))
            invoice.paid = String_chk.checkNullDBNum(Ans_ID.Item("Paid"))
            invoice.paidDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_DateRC"))
            invoice.status = String_chk.checkNullDBNum(Ans_ID.Item("Invoice_Status"))
            invoice.check = String_chk.checkNullDBNum(Ans_ID.Item("Paid_Check"))
            invoice.checkDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_Check_DateRC"))
            invoice.cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))

        End If


        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return invoice
    End Function


    Function getPriSaleDetail(ByVal cust_id As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQ As New Queue
        Dim customer As invoiceSaleDetail

        sql = "Select inv.invoice_id,inv.notice_id,inv.invoice_daterc "
        sql = sql & " , replace(replace(replace(replace(p.package_category,1,'C'),2,'M'),3,'T'),4,'P') pName, p.package_week pMonth"
        sql = sql & " , inv.package_price "
        sql = sql & " , inv.notice_startdate date_start"
        sql = sql & " ,dateadd(m,inv.package_week,inv.notice_startdate) date_stop"
        sql = sql & " , 'N' T"
        sql = sql & " from invoice inv , package p"
        sql = sql & " where  inv.paid = 1"
        sql = sql & " AND (inv.cancel = 0 OR inv.cancel IS NULL) "
        sql = sql & " AND inv.notice_id in (select n2.notice_id"
        sql = sql & " from notice n2"
        sql = sql & " where  n2.notice_memberid =  " & cust_id & ")"
        sql = sql & " AND inv.notice_packageid = p.package_id"
        sql = sql & " AND inv.invoice_status=1"
        sql = sql & " Union"
        sql = sql & " Select inv.invoice_id,inv.notice_id,inv.invoice_daterc "
        sql = sql & " , replace(replace(replace(replace(p.package_category,1,'C'),2,'M'),3,'T'),4,'P') pName, p.package_week pMonth"
        sql = sql & " , inv.package_price "
        sql = sql & " , ptx.date_start,ptx.date_stop"
        sql = sql & " , 'P' T"
        sql = sql & " from invoice inv , package p , prolong_tx ptx"
        sql = sql & " where  inv.paid = 1"
        sql = sql & " AND (inv.cancel = 0 OR inv.cancel IS NULL) "
        sql = sql & " AND inv.notice_id in (select n2.notice_id"
        sql = sql & " from notice n2"
        sql = sql & " where  n2.notice_memberid =  " & cust_id & ")"
        sql = sql & " AND inv.notice_packageid = p.package_id"
        sql = sql & " AND inv.invoice_status=2"
        sql = sql & " AND inv.invoice_id = ptx.prolong_invoiceid"
        sql = sql & " Union"
        sql = sql & " Select inv.invoice_id,inv.notice_id,inv.invoice_daterc "
        sql = sql & " , replace(replace(replace(replace(p.package_category,1,'C'),2,'M'),3,'T'),4,'P') pName, p.package_week pMonth"
        sql = sql & " , inv.package_price "
        sql = sql & " , ptx.date_start,ptx.date_stop"
        sql = sql & " , 'C' T "
        sql = sql & " from invoice inv , package p , change_tx ptx"
        sql = sql & " where  inv.paid = 1"
        sql = sql & " AND (inv.cancel = 0 OR inv.cancel IS NULL) "
        sql = sql & " AND inv.notice_id in (select n2.notice_id"
        sql = sql & " from notice n2"
        sql = sql & " where  n2.notice_memberid =  " & cust_id & ")"
        sql = sql & " AND inv.notice_packageid = p.package_id"
        sql = sql & " AND inv.invoice_status=3"
        sql = sql & " AND inv.invoice_id = ptx.change_invoiceid"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            customer.invoice_id = String_chk.checkNullDBNum(Ans_ID.Item("invoice_id"))
            customer.notice_id = String_chk.checkNullDBNum(Ans_ID.Item("notice_id"))
            customer.invoice_daterc = String_chk.checkNullDBDateT(Ans_ID.Item("invoice_daterc"))
            customer.pName = String_chk.checkNullDBstr(Ans_ID.Item("pName"))
            customer.pMonth = String_chk.checkNullDBNum(Ans_ID.Item("pMonth"))
            customer.package_price = String_chk.checkNullDBPrice(Ans_ID.Item("package_price"))
            customer.date_start = String_chk.checkNullDBDateT(Ans_ID.Item("date_start"))
            customer.date_stop = String_chk.checkNullDBDateT(Ans_ID.Item("date_stop"))
            customer.T = String_chk.checkNullDBstr(Ans_ID.Item("T"))
            myQ.Enqueue(customer)

        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myQ
    End Function
    Function getBuzSaleDetail(ByVal cust_id As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQ As New Queue
        Dim customer As invoiceBuzSaleDetail

        'sql = "SELECT     Notice.Notice_Category, COUNT(*) AS ads, Notice.Notice_StopDate,a.amount"
        'sql = sql & " FROM   Notice,NoticeDetail, ("
        'sql = sql & "                          SELECT i.Notice_Id, SUM(i.Package_Price) AS amount"
        'sql = sql & "                          FROM  Invoice i INNER JOIN"
        'sql = sql & "    				       Notice ON i.Notice_Id = Notice.Notice_Id"
        'sql = sql & "                          WHERE(i.Cancel <> 1 Or i.Cancel Is NULL)"
        'sql = sql & " 			               AND (Notice.Notice_MemberId = " & cust_id & ")"
        'sql = sql & " 			               GROUP BY i.Notice_Id"
        'sql = sql & " 			                    ) a"
        'sql = sql & " WHERE(Notice.Notice_MemberId = " & cust_id & ")"
        'sql = sql & " AND  Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId"
        'sql = sql & " and  Notice.Notice_Id = a.notice_id"
        'sql = sql & " GROUP BY Notice.Notice_Category, Notice.Notice_StopDate,a.amount"

        sql = "SELECT     Notice.Notice_Category, COUNT(*) AS ads, Notice.Notice_StopDate, a.amount"
        sql = sql & " FROM         Notice INNER JOIN"
        sql = sql & "                           (SELECT     i.Notice_Id, SUM(i.Package_Price) AS amount"
        sql = sql & "                             FROM          Invoice i INNER JOIN"
        sql = sql & "                                                    Notice ON i.Notice_Id = Notice.Notice_Id"
        sql = sql & "                             WHERE      i.paid = 1 AND (i.Cancel <> 1 OR"
        sql = sql & "                                                    i.Cancel IS NULL) AND (Notice.Notice_MemberId = " & cust_id & ")"
        sql = sql & "                             GROUP BY i.Notice_Id) a ON Notice.Notice_Id = a.Notice_Id LEFT OUTER JOIN"
        sql = sql & "                       NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId"
        sql = sql & " WHERE     (Notice.Notice_MemberId = " & cust_id & ")"
        sql = sql & " GROUP BY Notice.Notice_Category, Notice.Notice_StopDate, a.amount"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            customer.Notice_Category = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Category"))
            customer.ads = String_chk.checkNullDBNum(Ans_ID.Item("ads"))
            customer.Notice_StopDate = String_chk.checkNullDBDateT(Ans_ID.Item("Notice_StopDate"))
            customer.amount = String_chk.checkNullDBPrice(Ans_ID.Item("amount"))
            myQ.Enqueue(customer)

        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myQ
    End Function
    Function getBuzSaleHis(ByVal cust_id As Integer, ByVal cat As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQ As New Queue
        Dim customer As invoiceBuzSaleHis

        sql = "SELECT     Package.Package_Name, Package.Package_Week, Invoice.Invoice_ID, Invoice.Invoice_DateRC, Invoice.Notice_id, "
        sql = sql & " REPLACE(REPLACE(REPLACE(invoice.Invoice_Status,1, 'N'), 2, 'P'), 3, 'C') AS Invoice_Status, invoice.Package_Price,"
        sql = sql & " invoice.paid, invoice.Paid_Check, invoice.cancel"
        sql = sql & " FROM         Invoice INNER JOIN"
        sql = sql & " Notice ON Invoice.Notice_Id = Notice.Notice_Id INNER JOIN"
        sql = sql & " Package ON Invoice.Notice_PackageId = Package.Package_Id"
        sql = sql & " WHERE     (Notice.Notice_MemberId = " & cust_id & ") AND (Notice.Notice_Category = " & cat & ")"
        sql = sql & " ORDER BY Invoice.Invoice_ID DESC"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            customer.Package_Name = String_chk.checkNullDBstr(Ans_ID.Item("Package_Name"))
            customer.Package_Week = String_chk.checkNullDBNum(Ans_ID.Item("Package_Week"))
            customer.Invoice_ID = String_chk.checkNullDBNum(Ans_ID.Item("Invoice_ID"))
            customer.Invoice_DateRC = String_chk.checkNullDBDate(Ans_ID.Item("Invoice_DateRC"))
            customer.Notice_id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_id"))
            customer.Invoice_Status = String_chk.checkNullDBstr(Ans_ID.Item("Invoice_Status"))
            customer.Package_Price = String_chk.checkNullDBPrice(Ans_ID.Item("Package_Price"))
            customer.paid = String_chk.checkNullDBbit(Ans_ID.Item("paid"))
            customer.Paid_Check = String_chk.checkNullDBbit(Ans_ID.Item("Paid_Check"))
            customer.cancel = String_chk.checkNullDBbit(Ans_ID.Item("cancel"))
            myQ.Enqueue(customer)

        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myQ
    End Function



    Structure invoice
        Dim id As Integer
        Dim invoiceDate As Date
        Dim noticeid As Integer
        Dim Notice_DetailID As Integer
        Dim startDate As Date
        Dim startDateTxt As String
        Dim packageid As Integer
        Dim week As Integer
        Dim price As Double
        Dim paid As Integer
        Dim paidDate As Date
        Dim status As Integer
        Dim check As Integer
        Dim checkDate As Date
        Dim cancel As Integer
        Dim FG_Process As Integer
    End Structure
    Structure invoiceSaleDetail
        Dim invoice_id As Integer
        Dim notice_id As Integer
        Dim invoice_daterc As DateTime
        Dim pName As String
        Dim pMonth As Integer
        Dim package_price As Double
        Dim date_start As DateTime
        Dim date_stop As DateTime
        Dim T As String

    End Structure
    Structure invoiceBuzSaleDetail
        Dim Notice_Category As Integer
        Dim ads As Integer
        Dim Notice_StopDate As DateTime
        Dim amount As Double

    End Structure
    Structure invoiceBuzSaleHis
        Dim Package_Name As String
        Dim Package_Week As Integer
        Dim Invoice_ID As Integer
        Dim Invoice_DateRC As DateTime
        Dim Notice_id As Integer
        Dim Invoice_Status As String
        Dim Package_Price As Double
        Dim paid As Integer
        Dim Paid_Check As Integer
        Dim cancel As Integer

    End Structure

End Module
