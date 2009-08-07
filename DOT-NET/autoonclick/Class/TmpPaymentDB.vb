Imports System.Data
Imports System.Data.OleDb
Imports System.Globalization
Imports System.Threading
Module TmpPaymentDb
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function insertTmpPayment(ByVal isdealer As Integer, ByVal invrefer As Integer, ByVal cust_id As Integer, ByVal datePaid As DateTime, ByVal paytime As String, ByVal bank As Integer, ByVal price As Double, ByVal desc As String) As Integer
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim tmppay_id As Integer
        Dim inputDate As String

        tmppay_id = getNewTmpPayment()

        'inputDate = Year(datePaid) - 543 & "-" & Month(datePaid) & "-" & Day(datePaid) & " " & Hour(datePaid) & ":" & Minute(datePaid) & ":" & Second(datePaid)
        inputDate = datePaid.ToString("yyyy-MM-dd hh:mm:ss")

        sql = "INSERT INTO TmpPayment VALUES (" & tmppay_id & "," & isdealer & "," & invrefer & "," & cust_id & ",CONVERT(DATETIME, '" & inputDate & "', 120)," & String_chk.checkNullstr(paytime) & "," & bank & "," & price & "," & String_chk.checkNullstr(desc) & ",'NO',null,0) "
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return tmppay_id
        'Return sql
    End Function
    Sub updateTmpPayProcess(ByVal Id As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE TmpPayment SET TmpPayment_FlagProcess = 'YES' , TmpPayment_ProcessDate = getDate() WHERE TmpPayment_Id = " & Id
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub
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
    Function countTmpPays(ByVal cust_id As Integer) As Integer
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
            tmppay.Id = Ans_ID.Item(0)
            tmppay.IsDealer = String_chk.checkNullDBNum(Ans_ID.Item(1))
            tmppay.InvoiceRefer = String_chk.checkNullDBNum(Ans_ID.Item(2))
            tmppay.MemberId = String_chk.checkNullDBNum(Ans_ID.Item(3))
            tmppay.PayDate = String_chk.checkNullDBDate(Ans_ID.Item(4))
            tmppay.PayTime = String_chk.checkNullDBstr(Ans_ID.Item(5))
            tmppay.Bank = String_chk.checkNullDBNum(Ans_ID.Item(6))
            tmppay.Price = String_chk.checkNullDBPrice(Ans_ID.Item(7))
            tmppay.Descript = String_chk.checkNullDBstr(Ans_ID.Item(8))
            tmppay.FlagProcess = String_chk.checkNullDBNum(Ans_ID.Item(9))
            tmppay.ProcessDate = String_chk.checkNullDBDate(Ans_ID.Item(10))
            tmppay.Cancel = String_chk.checkNullDBNum(Ans_ID.Item(11))

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
