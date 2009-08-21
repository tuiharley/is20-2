Imports System.Data
Imports System.Data.OleDb
Module TmpPaymentDb
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function insertTmpPayment(ByVal isdealer As Integer, ByVal invrefer As Integer, ByVal cust_id As Integer, ByVal datePaid As Date, ByVal paytime As String, ByVal bank As Integer, ByVal price As Double, ByVal desc As String) As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim tmppay_id As Integer
        Dim inputDate As String

        tmppay_id = getNewTmpPayment()

        inputDate = Year(datePaid) - 543 & "-" & Month(datePaid) & "-" & Day(datePaid) & " " & Hour(datePaid) & ":" & Minute(datePaid) & ":" & Second(datePaid)
        sql = "INSERT INTO TmpPayment VALUES (" & tmppay_id & "," & isdealer & "," & invrefer & "," & cust_id & ",CONVERT(DATETIME, '" & inputDate & "', 102)," & String_chk.checkNullstr(paytime) & "," & bank & "," & price & "," & String_chk.checkNullstr(desc) & ",'NO',null,0) "

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return tmppay_id
        'Return sql
    End Function
    Sub updateTmpPayProcess(ByVal Id As Integer, ByVal confirm As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        If confirm = "NO" Then
            sql = "UPDATE TmpPayment SET TmpPayment_FlagProcess = 'YES' , TmpPayment_ProcessDate = getDate() WHERE TmpPayment_Id = " & Id
        Else
            sql = "UPDATE TmpPayment SET TmpPayment_FlagProcess = 'NO' , TmpPayment_ProcessDate = null WHERE TmpPayment_Id = " & Id
        End If
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
    Function getNewTmpPayment() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(TmpPayment_Id) as AnsID FROM TmpPayment"
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
    'Function getInvoice(ByVal noticeid As Integer, ByVal invStatus As Integer, ByVal paid As String) As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim ansid As Integer


    '    sql = "SELECT Invoice_ID FROM Invoice WHERE Notice_Id = " & noticeid & " AND Invoice_Status = " & invStatus & " AND Paid " & paid
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
    '    If Ans_ID.Read Then
    '        If Not Ans_ID.IsDBNull(0) Then
    '            ansid = Ans_ID.Item("Invoice_ID")
    '        End If
    '    End If

    '    mycommand.Dispose()
    '    Ans_ID.Close()

    '    myconn.Close()

    '    Return ansid
    'End Function
    'Function getPackageID(ByVal Id As Integer) As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim ansid As Integer

    '    sql = "SELECT Notice_PackageId as AnsID FROM Invoice WHERE Invoice_Id = " & Id
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
    '    If Ans_ID.Read Then
    '        If Not Ans_ID.IsDBNull(0) Then
    '            ansid = Ans_ID.Item("AnsID")
    '        End If
    '    End If

    '    mycommand.Dispose()
    '    Ans_ID.Close()

    '    myconn.Close()

    '    Return ansid
    'End Function

    Sub updateCancelTmpPay(ByVal invoiceRefer As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE TmpPayment SET Cancel = 1 WHERE TmpPayment_InvoiceRefer = " & invoiceRefer
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub

    Function getChangedTmpPay(ByVal invoiceid As Integer) As Integer
        Dim tmpPay As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Select TmpPayment_Id"
        sql = sql & " FROM tmppayment"
        sql = sql & " WHERE (TmpPayment_InvoiceRefer = " & invoiceid & ") and (Cancel = 0 or Cancel is null)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            tmpPay = Ans_ID.Item("TmpPayment_Id")
        Else
            tmpPay = -1
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return tmpPay
    End Function
    Function countTmpPays(ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT COUNT(*) FROM TmpPayment WHERE (Cancel <> 1) AND (TmpPayment_FlagProcess = N'NO') AND (TmpPayment_MemberId = " & cust_id & ")"
        mycommand = New OleDbCommand(sql, myconn)

        custid = mycommand.ExecuteScalar()

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Function countTmpPays2(ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT COUNT(*) FROM TmpPayment WHERE (Cancel <> 1) AND (TmpPayment_FlagProcess = N'YES') AND (TmpPayment_MemberId = " & cust_id & ")"
        mycommand = New OleDbCommand(sql, myconn)

        custid = mycommand.ExecuteScalar()

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Function getTmpPays(ByVal cust_id As Integer) As Array
        Dim tmppay(countTmpPays(cust_id)) As tmppayment
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT * FROM TmpPayment WHERE (TmpPayment.Cancel <> 1) AND (TmpPayment.TmpPayment_FlagProcess = N'NO') AND (TmpPayment.TmpPayment_MemberId = " & cust_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            tmppay(i).Id = Ans_ID.Item(0)
            tmppay(i).IsDealer = String_chk.checkNullDBNum(Ans_ID.Item(1))
            tmppay(i).InvoiceRefer = String_chk.checkNullDBNum(Ans_ID.Item(2))
            tmppay(i).MemberId = String_chk.checkNullDBNum(Ans_ID.Item(3))
            tmppay(i).PayDate = String_chk.checkNullDBDate(Ans_ID.Item(4))
            tmppay(i).PayTime = String_chk.checkNullDBstr(Ans_ID.Item(5))
            tmppay(i).Bank = String_chk.checkNullDBNum(Ans_ID.Item(6))
            tmppay(i).Price = String_chk.checkNullDBPrice(Ans_ID.Item(7))
            tmppay(i).Descript = String_chk.checkNullDBstr(Ans_ID.Item(8))
            tmppay(i).FlagProcess = String_chk.checkNullDBstr(Ans_ID.Item(9))
            tmppay(i).ProcessDate = String_chk.checkNullDBDate(Ans_ID.Item(10))
            tmppay(i).Cancel = String_chk.checkNullDBNum(Ans_ID.Item(11))
            i = i + 1
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return tmppay
    End Function
    Function getTmpPays2(ByVal cust_id As Integer) As Array
        Dim tmppay(countTmpPays2(cust_id)) As tmppayment
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT TmpPayment_Id, TmpPayment_IsDealer, TmpPayment_InvoiceRefer, TmpPayment_MemberId, TmpPayment_PayDate, TmpPayment_PayTime, "
        sql = sql & " TmpPayment_Bank, TmpPayment_Price, TmpPayment_Descript, TmpPayment_FlagProcess, TmpPayment_ProcessDate, Cancel"
        sql = sql & " FROM TmpPayment WHERE (TmpPayment.Cancel <> 1) "
        sql = sql & " AND (TmpPayment.TmpPayment_FlagProcess = N'YES') "
        sql = sql & " AND (TmpPayment.TmpPayment_MemberId = " & cust_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            tmppay(i).Id = Ans_ID.Item("TmpPayment_Id")
            tmppay(i).IsDealer = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_IsDealer"))
            tmppay(i).InvoiceRefer = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_InvoiceRefer"))
            tmppay(i).MemberId = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_MemberId"))
            tmppay(i).PayDate = String_chk.checkNullDBDate(Ans_ID.Item("TmpPayment_PayDate"))
            tmppay(i).PayTime = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_PayTime"))
            tmppay(i).Bank = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_Bank"))
            tmppay(i).Price = String_chk.checkNullDBPrice(Ans_ID.Item("TmpPayment_Price"))
            tmppay(i).Descript = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_Descript"))
            tmppay(i).FlagProcess = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_FlagProcess"))
            tmppay(i).ProcessDate = String_chk.checkNullDBDate(Ans_ID.Item("TmpPayment_ProcessDate"))
            tmppay(i).Cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))
            i = i + 1
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return tmppay
    End Function
    'Function getInvoicesSelected(ByVal invoice_list As String, ByVal invoice_num As Integer) As Array
    '    Dim invoice(invoice_num) As invoice
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim i As Integer = 1


    '    sql = "SELECT Invoice.* FROM Invoice WHERE (Invoice_ID in (" & invoice_list & ")) AND (Invoice.Cancel IS NULL OR Invoice.Cancel = 0) AND (Invoice.Paid IS NULL OR Invoice.Paid = 0) ORDER BY Invoice.Notice_StartDate"
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    While Ans_ID.Read()
    '        invoice(i).id = Ans_ID.Item(0)
    '        invoice(i).noticeid = String_chk.checkNullDBNum(Ans_ID.Item(1))
    '        invoice(i).startDate = String_chk.checkNullDBDate(Ans_ID.Item(2))
    '        invoice(i).packageid = String_chk.checkNullDBNum(Ans_ID.Item(3))
    '        invoice(i).week = String_chk.checkNullDBNum(Ans_ID.Item(4))
    '        invoice(i).price = String_chk.checkNullDBNum(Ans_ID.Item(5))
    '        invoice(i).paid = String_chk.checkNullDBNum(Ans_ID.Item(6))
    '        invoice(i).paidDate = String_chk.checkNullDBDate(Ans_ID.Item(7))
    '        invoice(i).status = String_chk.checkNullDBNum(Ans_ID.Item(8))
    '        invoice(i).check = String_chk.checkNullDBNum(Ans_ID.Item(9))
    '        invoice(i).checkDate = String_chk.checkNullDBDate(Ans_ID.Item(10))
    '        invoice(i).cancel = String_chk.checkNullDBNum(Ans_ID.Item(11))
    '        i = i + 1
    '    End While

    '    mycommand.Dispose()
    '    Ans_ID.Close()

    '    myconn.Close()

    '    Return invoice
    'End Function
    Function getTmpPayInfo(ByVal tmppay_id As Integer) As tmppayment
        Dim tmppay As tmppayment
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT * FROM TmpPayment WHERE TmpPayment_Id  = " & tmppay_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            tmppay.Id = Ans_ID.Item("TmpPayment_Id")
            tmppay.IsDealer = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_IsDealer"))
            tmppay.InvoiceRefer = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_InvoiceRefer"))
            tmppay.MemberId = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_MemberId"))
            tmppay.PayDate = String_chk.checkNullDBDate(Ans_ID.Item("TmpPayment_PayDate"))
            tmppay.PayTime = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_PayTime"))
            tmppay.Bank = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_Bank"))
            tmppay.Price = String_chk.checkNullDBPrice(Ans_ID.Item("TmpPayment_Price"))
            tmppay.Descript = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_Descript"))
            tmppay.FlagProcess = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_FlagProcess"))
            tmppay.ProcessDate = String_chk.checkNullDBDate(Ans_ID.Item("TmpPayment_ProcessDate"))
            tmppay.Cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return tmppay
    End Function
    Function getTmpPayInfo2(ByVal invoice_id As Integer) As tmppayment
        Dim tmppay As tmppayment
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT * FROM TmpPayment WHERE TmpPayment_InvoiceRefer  = " & invoice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            tmppay.Id = Ans_ID.Item("TmpPayment_Id")
            tmppay.IsDealer = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_IsDealer"))
            tmppay.InvoiceRefer = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_InvoiceRefer"))
            tmppay.MemberId = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_MemberId"))
            tmppay.PayDate = String_chk.checkNullDBDate(Ans_ID.Item("TmpPayment_PayDate"))
            tmppay.PayTime = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_PayTime"))
            tmppay.Bank = String_chk.checkNullDBNum(Ans_ID.Item("TmpPayment_Bank"))
            tmppay.Price = String_chk.checkNullDBPrice(Ans_ID.Item("TmpPayment_Price"))
            tmppay.Descript = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_Descript"))
            tmppay.FlagProcess = String_chk.checkNullDBstr(Ans_ID.Item("TmpPayment_FlagProcess"))
            tmppay.ProcessDate = String_chk.checkNullDBDate(Ans_ID.Item("TmpPayment_ProcessDate"))
            tmppay.Cancel = String_chk.checkNullDBNum(Ans_ID.Item("Cancel"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return tmppay
    End Function


    Structure tmppayment
        Dim Id As Integer
        Dim IsDealer As Integer
        Dim InvoiceRefer As Integer
        Dim MemberId As Integer
        Dim PayDate As Date
        Dim PayTime As String
        Dim Bank As Integer
        Dim Price As Integer
        Dim Descript As String
        Dim FlagProcess As String
        Dim ProcessDate As Date
        Dim Cancel As Integer


    End Structure
End Module
