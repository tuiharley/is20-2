Imports System.Data
Imports System.Data.OleDb
Imports System.Globalization
Imports System.Threading
Module CheckDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Sub addNewCheck(ByVal myCheck As CheckSt)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim inputDate As String
        inputDate = "CONVERT(DATETIME, '" & myCheck.CHECK_DATE.ToString("yyyy-MM-dd hh:mm:ss") & "', 120)"
        'CONVERT(DATETIME, '" & inputDate & "', 120)

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String

        Try
            sql = "INSERT INTO CHECK_TX"
            sql = sql & "(CHECK_DATE, CUST_ID, CK_STATUS, AMOUNT, BANK_CODE, CK_NO, CK_DETAIL)"
            sql = sql & " VALUES(" & inputDate & "," & myCheck.CUST_ID & " ,1"
            sql = sql & " ," & checkNullNum(myCheck.AMOUNT) & " ," & checkNullstr(myCheck.BANK_CODE) & " ," & checkNullstr(myCheck.CK_NO)
            sql = sql & " ," & checkNullstr(myCheck.CK_DETAIL) & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try



        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub delCheck(ByVal check_id As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM CHECK_TX WHERE CHECK_ID = " & check_id

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub updateCheck(ByVal myCheck As CheckSt)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim inputDate As String
        inputDate = "CONVERT(DATETIME, '" & myCheck.CHECK_DATE.ToString("yyyy-MM-dd hh:mm:ss") & "', 120)"

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE CHECK_TX "
        sql = sql & " SET CHECK_DATE = " & inputDate
        sql = sql & " , CUST_ID = " & checkNullNum(myCheck.CUST_ID)
        sql = sql & " , CK_STATUS = " & checkNullNum(myCheck.CK_STATUS)
        sql = sql & " , AMOUNT = " & checkNullNum(myCheck.AMOUNT)
        sql = sql & " , BANK_CODE = " & checkNullstr(myCheck.BANK_CODE)
        sql = sql & " , CK_NO = " & checkNullstr(myCheck.CK_NO)
        sql = sql & " , CK_DETAIL = " & checkNullstr(myCheck.CK_DETAIL)
        sql = sql & " WHERE CHECK_ID = " & myCheck.CHECK_ID


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    'Function countCheck(ByVal cust_id As Integer, ByVal stCode As Integer) As inboxCount
    '    Dim myCount As inboxCount
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String

    '    If cust_id = 0 Then
    '        cust_id = -2
    '    End If

    '    sql = "SELECT     (SELECT     COUNT(*)"
    '    sql = sql & " FROM  inbox"
    '    sql = sql & " WHERE      to_custid = " & cust_id & ") AS allMsg,"
    '    sql = sql & " (SELECT     COUNT(*)"
    '    sql = sql & " FROM  inbox"
    '    sql = sql & " WHERE      to_custid = " & cust_id & " AND status = " & stCode & ") AS unread"

    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read() Then
    '        myCount.AllMail = String_chk.checkNullDBNum(Ans_ID.Item("allMsg"))
    '        myCount.UnreadNo = String_chk.checkNullDBNum(Ans_ID.Item("unread"))

    '    End If


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return myCount
    'End Function

    Function getChecks(ByVal cond As String) As Queue
        Dim myCheck As CheckSt
        Dim myQMsg As New Queue


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = " SELECT     CHECK_ID, CHECK_DATE, CUST_ID, CK_STATUS, AMOUNT, BANK_CODE, CK_NO,CK_DETAIL"
        sql = sql & " FROM  CHECK_TX"
        sql = sql & " WHERE  1=1"
        If cond <> "" Then
            sql = sql & " AND " & cond
        Else
            sql = sql & "  AND (CHECK_DATE > GETDATE() - 1)"
        End If

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myCheck.CHECK_ID = Ans_ID.Item("CHECK_ID")
            myCheck.CHECK_DATE = String_chk.checkNullDBDate(Ans_ID.Item("CHECK_DATE"))
            myCheck.CUST_ID = String_chk.checkNullDBNum(Ans_ID.Item("CUST_ID"))
            myCheck.CK_STATUS = String_chk.checkNullDBNum(Ans_ID.Item("CK_STATUS"))
            myCheck.AMOUNT = String_chk.checkNullDBPrice(Ans_ID.Item("AMOUNT"))
            myCheck.BANK_CODE = String_chk.checkNullDBstr(Ans_ID.Item("BANK_CODE"))
            myCheck.CK_NO = String_chk.checkNullDBstr(Ans_ID.Item("CK_NO"))
            myCheck.CK_DETAIL = String_chk.checkNullDBstr(Ans_ID.Item("CK_DETAIL"))
            myQMsg.Enqueue(myCheck)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQMsg
    End Function
    Function getACheck(ByVal check_id As Integer) As CheckSt
        Dim myCheck As CheckSt


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = " SELECT     CHECK_ID, CHECK_DATE, CUST_ID, CK_STATUS, AMOUNT, BANK_CODE, CK_NO,CK_DETAIL"
        sql = sql & " FROM  CHECK_TX"
        sql = sql & " WHERE  CHECK_ID = " & check_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myCheck.CHECK_ID = Ans_ID.Item("CHECK_ID")
            myCheck.CHECK_DATE = String_chk.checkNullDBDate(Ans_ID.Item("CHECK_DATE"))
            myCheck.CUST_ID = String_chk.checkNullDBNum(Ans_ID.Item("CUST_ID"))
            myCheck.CK_STATUS = String_chk.checkNullDBNum(Ans_ID.Item("CK_STATUS"))
            myCheck.AMOUNT = String_chk.checkNullDBPrice(Ans_ID.Item("AMOUNT"))
            myCheck.BANK_CODE = String_chk.checkNullDBstr(Ans_ID.Item("BANK_CODE"))
            myCheck.CK_NO = String_chk.checkNullDBstr(Ans_ID.Item("CK_NO"))
            myCheck.CK_DETAIL = String_chk.checkNullDBstr(Ans_ID.Item("CK_DETAIL"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myCheck
    End Function


    Structure CheckSt
        Dim CHECK_ID As Integer
        Dim CHECK_DATE As DateTime
        Dim CUST_ID As Integer
        Dim CK_STATUS As Integer
        Dim AMOUNT As Double
        Dim BANK_CODE As Integer
        Dim CK_NO As String
        Dim CK_DETAIL As String
    End Structure


End Module
