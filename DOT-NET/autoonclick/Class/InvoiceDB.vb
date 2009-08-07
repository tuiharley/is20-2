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


        If invoiceInfo.startDate.ToString("dd/MM/yyyy") <> ConfigurationSettings.AppSettings("firstDate") Then
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

    Sub updatePaidInvoice(ByVal Id)
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
    Function getNoticeID(ByVal Id As Integer) As Double
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Double

        sql = "SELECT Notice_ID as AnsID FROM Invoice WHERE Invoice_Id = " & Id
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
    Function countProlongInvoices(ByVal cust_id As Integer, ByVal noticeid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT count(*) FROM Invoice INNER JOIN Notice ON Invoice.Notice_Id = Notice.Notice_Id WHERE (Notice.Notice_MemberId = " & cust_id & ") AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice_Status=2) AND (Notice.Notice_Id = " & noticeid & ")"
        mycommand = New OleDbCommand(sql, myconn)

        custid = mycommand.ExecuteScalar()

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function

    Function getProlongInvoices(ByVal cust_id As Integer, ByVal noticeid As Integer, ByVal invType As Integer) As invoice
        'Dim invoice(countProlongInvoices(cust_id, noticeid)) As invoice
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
    Function getInvoices(ByVal cust_id As Integer) As Array
        Dim invoice(countInvoices(cust_id)) As invoice
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT  Invoice.Invoice_ID, Invoice.Invoice_DateRC, Invoice.Notice_Id, Invoice.Notice_DetailID, Invoice.Notice_StartDate, Invoice.Notice_PackageId, Invoice.Package_Week, Invoice.Package_Price, Invoice.Paid, Invoice.Paid_DateRC, "
        sql = sql & "  Invoice.Invoice_Status, Invoice.Paid_Check, Invoice.Paid_Check_DateRC, Invoice.Cancel"
        sql = sql & "  FROM Invoice INNER JOIN Notice ON Invoice.Notice_Id = Notice.Notice_Id WHERE (Notice.Notice_MemberId = " & cust_id & ") AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice.Paid IS NULL OR Invoice.Paid = 0) ORDER BY Invoice.Notice_StartDate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            invoice(i).id = Ans_ID.Item("Invoice_ID")
            invoice(i).invoiceDate = String_chk.checkNullDBDate(Ans_ID.Item("Invoice_DateRC"))
            invoice(i).noticeid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            invoice(i).Notice_DetailID = String_chk.checkNullDBNum(Ans_ID.Item("Notice_DetailID"))
            invoice(i).startDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StartDate"))
            invoice(i).packageid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_PackageId"))
            invoice(i).week = String_chk.checkNullDBNum(Ans_ID.Item("Package_Week"))
            invoice(i).price = String_chk.checkNullDBNum(Ans_ID.Item("Package_Price"))
            invoice(i).paid = String_chk.checkNullDBNum(Ans_ID.Item("Paid"))
            invoice(i).paidDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_DateRC"))
            invoice(i).status = String_chk.checkNullDBNum(Ans_ID.Item("Invoice_Status"))
            invoice(i).check = String_chk.checkNullDBNum(Ans_ID.Item("Paid_Check"))
            invoice(i).checkDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_Check_DateRC"))
            invoice(i).cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))

            i = i + 1
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return invoice
    End Function
    Function getInvoicesSelected(ByVal invoice_list As String, ByVal invoice_num As Integer) As Array
        Dim invoice(invoice_num) As invoice
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT  Invoice.Invoice_ID, Invoice.Invoice_DateRC, Invoice.Notice_Id, Invoice.Notice_DetailID, Invoice.Notice_StartDate, Invoice.Notice_PackageId, Invoice.Package_Week, Invoice.Package_Price, Invoice.Paid, Invoice.Paid_DateRC, "
        sql = sql & "  Invoice.Invoice_Status, Invoice.Paid_Check, Invoice.Paid_Check_DateRC, Invoice.Cancel"
        sql = sql & " FROM Invoice WHERE (Invoice_ID in (" & invoice_list & ")) AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice.Paid IS NULL OR Invoice.Paid = 0) ORDER BY Invoice.Notice_StartDate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            invoice(i).id = Ans_ID.Item("Invoice_ID")
            invoice(i).invoiceDate = String_chk.checkNullDBDate(Ans_ID.Item("Invoice_DateRC"))
            invoice(i).noticeid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            invoice(i).Notice_DetailID = String_chk.checkNullDBNum(Ans_ID.Item("Notice_DetailID"))
            invoice(i).startDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StartDate"))
            invoice(i).packageid = String_chk.checkNullDBNum(Ans_ID.Item("Notice_PackageId"))
            invoice(i).week = String_chk.checkNullDBNum(Ans_ID.Item("Package_Week"))
            invoice(i).price = String_chk.checkNullDBNum(Ans_ID.Item("Package_Price"))
            invoice(i).paid = String_chk.checkNullDBNum(Ans_ID.Item("Paid"))
            invoice(i).paidDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_DateRC"))
            invoice(i).status = String_chk.checkNullDBNum(Ans_ID.Item("Invoice_Status"))
            invoice(i).check = String_chk.checkNullDBNum(Ans_ID.Item("Paid_Check"))
            invoice(i).checkDate = String_chk.checkNullDBDate(Ans_ID.Item("Paid_Check_DateRC"))
            invoice(i).cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))
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


        sql = "SELECT  Invoice.Invoice_ID, Invoice.Invoice_DateRC, Invoice.Notice_Id, Invoice.Notice_DetailID, Invoice.Notice_StartDate, Invoice.Notice_PackageId, Invoice.Package_Week, Invoice.Package_Price, Invoice.Paid, Invoice.Paid_DateRC, "
        sql = sql & "  Invoice.Invoice_Status, Invoice.Paid_Check, Invoice.Paid_Check_DateRC, Invoice.Cancel"
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

    End Structure
End Module
