Imports System.Data
Imports System.Data.OleDb
Module InboxDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
   

    Function getMaxBoxID() As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Inbox_Id)+1 as cust_id FROM Inbox"
        mycommand = New OleDbCommand(sql, myconn)

        If IsDBNull(mycommand.ExecuteScalar()) Then
            custid = 1
        Else
            custid = mycommand.ExecuteScalar()
        End If

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Sub addNewInbox(ByVal myMsg As InboxSt)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String
        'Dim boxId As Integer = getMaxBoxID()


        Try
            sql = "INSERT INTO Inbox"
            sql = sql & "(From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date)"
            sql = sql & " VALUES(" & myMsg.From_CustID & "," & myMsg.To_CustID & " ," & checkNullstr(myMsg.Topic_Msg) & " ," & checkNullstr(myMsg.Msg) & " ,1 ,getdate() )"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try



        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub delAInbox_box(ByVal box_id As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM Inbox WHERE Inbox_Id = " & box_id

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub delInbox_box(ByVal box_id As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM Inbox WHERE Inbox_Id in (" & box_id & ")"

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub updateInbox_Unread(ByVal boxId As Integer, ByVal toUsr As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Inbox "
        sql = sql & " SET Status = 2"
        sql = sql & " WHERE To_CustID = " & toUsr
        sql = sql & " AND Inbox_Id = " & boxId
        sql = sql & " AND Status = 1"


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Function countInbox(ByVal cust_id As Integer, ByVal stCode As Integer) As inboxCount
        Dim myCount As inboxCount
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT     (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      to_custid = " & cust_id & ") AS allMsg,"
        sql = sql & " (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      to_custid = " & cust_id & " AND status = " & stCode & ") AS unread"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myCount.AllMail = String_chk.checkNullDBNum(Ans_ID.Item("allMsg"))
            myCount.UnreadNo = String_chk.checkNullDBNum(Ans_ID.Item("unread"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myCount
    End Function
    Function countInbox(ByVal from_id As Integer, ByVal cust_id As Integer, ByVal stCode As Integer) As inboxCount
        Dim myCount As inboxCount
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT     (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      to_custid = " & cust_id & " AND From_custid = " & from_id & ") AS allMsg,"
        sql = sql & " (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      to_custid = " & cust_id & " AND From_custid = " & from_id & " AND status = " & stCode & ") AS unread"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myCount.AllMail = String_chk.checkNullDBNum(Ans_ID.Item("allMsg"))
            myCount.UnreadNo = String_chk.checkNullDBNum(Ans_ID.Item("unread"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myCount
    End Function
    Function countOutBox(ByVal cust_id As Integer, ByVal stCode As Integer) As inboxCount
        Dim myCount As inboxCount
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        If cust_id = 0 Then
            cust_id = -2
        End If

        sql = "SELECT     (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      from_custid = " & cust_id & ") AS allMsg,"
        sql = sql & " (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      from_custid = " & cust_id & " AND status = " & stCode & ") AS unread"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myCount.AllMail = String_chk.checkNullDBNum(Ans_ID.Item("allMsg"))
            myCount.UnreadNo = String_chk.checkNullDBNum(Ans_ID.Item("unread"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myCount
    End Function
    Function countOutBox(ByVal to_id As Integer, ByVal cust_id As Integer, ByVal stCode As Integer) As inboxCount
        Dim myCount As inboxCount
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        If cust_id = 0 Then
            cust_id = -2
        End If

        sql = "SELECT     (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      from_custid = " & cust_id & " AND to_custid=" & to_id & ") AS allMsg,"
        sql = sql & " (SELECT     COUNT(*)"
        sql = sql & " FROM  inbox"
        sql = sql & " WHERE      from_custid = " & cust_id & " AND to_custid=" & to_id & " AND status = " & stCode & ") AS unread"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myCount.AllMail = String_chk.checkNullDBNum(Ans_ID.Item("allMsg"))
            myCount.UnreadNo = String_chk.checkNullDBNum(Ans_ID.Item("unread"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myCount
    End Function

    Function getInbox_box(ByVal userID As Integer) As Queue
        Dim myMsg As InboxSt
        Dim myQMsg As New Queue


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = " SELECT     Inbox_Id, From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date,Receive_Date"
        sql = sql & " FROM  Inbox"
        sql = sql & " WHERE  To_CustID=" & userID
        Dim x As Integer
        x = 1
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myMsg.Inbox_Id = Ans_ID.Item("Inbox_Id")
            myMsg.From_CustID = String_chk.checkNullDBNum(Ans_ID.Item("From_CustID"))
            myMsg.To_CustID = String_chk.checkNullDBNum(Ans_ID.Item("To_CustID"))
            myMsg.Topic_Msg = String_chk.checkNullDBstr(Ans_ID.Item("Topic_Msg"))
            myMsg.Msg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
            myMsg.Status = String_chk.checkNullDBNum(Ans_ID.Item("Status"))
            myMsg.Send_Date = String_chk.checkNullDBDate(Ans_ID.Item("Send_Date"))
            myMsg.Receive_Date = String_chk.checkNullDBDate(Ans_ID.Item("Receive_Date"))
            myQMsg.Enqueue(myMsg)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQMsg
    End Function
    Function getInbox_box(ByVal userID As Integer, ByVal fromID As Integer) As Queue
        Dim myMsg As InboxSt
        Dim myQMsg As New Queue


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = " SELECT     Inbox_Id, From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date,Receive_Date"
        sql = sql & " FROM  Inbox"
        sql = sql & " WHERE  To_CustID=" & userID
        sql = sql & " AND From_CustID=" & fromID
        Dim x As Integer
        x = 1
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myMsg.Inbox_Id = Ans_ID.Item("Inbox_Id")
            myMsg.From_CustID = String_chk.checkNullDBNum(Ans_ID.Item("From_CustID"))
            myMsg.To_CustID = String_chk.checkNullDBNum(Ans_ID.Item("To_CustID"))
            myMsg.Topic_Msg = String_chk.checkNullDBstr(Ans_ID.Item("Topic_Msg"))
            myMsg.Msg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
            myMsg.Status = String_chk.checkNullDBNum(Ans_ID.Item("Status"))
            myMsg.Send_Date = String_chk.checkNullDBDate(Ans_ID.Item("Send_Date"))
            myMsg.Receive_Date = String_chk.checkNullDBDate(Ans_ID.Item("Receive_Date"))
            myQMsg.Enqueue(myMsg)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQMsg
    End Function
    Function getInbox_sent(ByVal userID As Integer) As Queue
        Dim myMsg As InboxSt
        Dim myQMsg As New Queue


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = " SELECT     Inbox_Id, From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date,Receive_Date"
        sql = sql & " FROM  Inbox"
        sql = sql & " WHERE  From_CustID=" & userID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myMsg.Inbox_Id = Ans_ID.Item("Inbox_Id")
            myMsg.From_CustID = String_chk.checkNullDBNum(Ans_ID.Item("From_CustID"))
            myMsg.To_CustID = String_chk.checkNullDBNum(Ans_ID.Item("To_CustID"))
            myMsg.Topic_Msg = String_chk.checkNullDBstr(Ans_ID.Item("Topic_Msg"))
            myMsg.Msg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
            myMsg.Status = String_chk.checkNullDBNum(Ans_ID.Item("Status"))
            myMsg.Send_Date = String_chk.checkNullDBDate(Ans_ID.Item("Send_Date"))
            myMsg.Receive_Date = String_chk.checkNullDBDate(Ans_ID.Item("Receive_Date"))
            myQMsg.Enqueue(myMsg)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQMsg
    End Function
    Function getInbox_sent(ByVal userID As Integer, ByVal toID As Integer) As Queue
        Dim myMsg As InboxSt
        Dim myQMsg As New Queue


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = " SELECT     Inbox_Id, From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date,Receive_Date"
        sql = sql & " FROM  Inbox"
        sql = sql & " WHERE  From_CustID=" & userID
        sql = sql & " AND To_CustID=" & toID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myMsg.Inbox_Id = Ans_ID.Item("Inbox_Id")
            myMsg.From_CustID = String_chk.checkNullDBNum(Ans_ID.Item("From_CustID"))
            myMsg.To_CustID = String_chk.checkNullDBNum(Ans_ID.Item("To_CustID"))
            myMsg.Topic_Msg = String_chk.checkNullDBstr(Ans_ID.Item("Topic_Msg"))
            myMsg.Msg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
            myMsg.Status = String_chk.checkNullDBNum(Ans_ID.Item("Status"))
            myMsg.Send_Date = String_chk.checkNullDBDate(Ans_ID.Item("Send_Date"))
            myMsg.Receive_Date = String_chk.checkNullDBDate(Ans_ID.Item("Receive_Date"))
            myQMsg.Enqueue(myMsg)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQMsg
    End Function
    Function getAInbox_box(ByVal box_id As Integer, ByVal userID As Integer) As InboxSt
        Dim myMsg As InboxSt


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = " SELECT     Inbox_Id, From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date,Receive_Date"
        sql = sql & " FROM  Inbox"
        sql = sql & " WHERE  Inbox_Id = " & box_id
        sql = sql & " AND To_CustID = " & userID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myMsg.Inbox_Id = Ans_ID.Item("Inbox_Id")
            myMsg.From_CustID = String_chk.checkNullDBNum(Ans_ID.Item("From_CustID"))
            myMsg.To_CustID = String_chk.checkNullDBNum(Ans_ID.Item("To_CustID"))
            myMsg.Topic_Msg = String_chk.checkNullDBstr(Ans_ID.Item("Topic_Msg"))
            myMsg.Msg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
            myMsg.Status = String_chk.checkNullDBNum(Ans_ID.Item("Status"))
            myMsg.Send_Date = String_chk.checkNullDBDate(Ans_ID.Item("Send_Date"))
            myMsg.Receive_Date = String_chk.checkNullDBDate(Ans_ID.Item("Receive_Date"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myMsg
    End Function
    Function getSent_box(ByVal box_id As Integer, ByVal userID As Integer) As InboxSt
        Dim myMsg As InboxSt


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        If userID = 0 Then
            userID = -2
        End If

        sql = " SELECT     Inbox_Id, From_CustID, To_CustID, Topic_Msg, Msg, Status, Send_Date,Receive_Date"
        sql = sql & " FROM  Inbox"
        sql = sql & " WHERE  Inbox_Id = " & box_id
        sql = sql & " AND From_CustID = " & userID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myMsg.Inbox_Id = Ans_ID.Item("Inbox_Id")
            myMsg.From_CustID = String_chk.checkNullDBNum(Ans_ID.Item("From_CustID"))
            myMsg.To_CustID = String_chk.checkNullDBNum(Ans_ID.Item("To_CustID"))
            myMsg.Topic_Msg = String_chk.checkNullDBstr(Ans_ID.Item("Topic_Msg"))
            myMsg.Msg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
            myMsg.Status = String_chk.checkNullDBNum(Ans_ID.Item("Status"))
            myMsg.Send_Date = String_chk.checkNullDBDate(Ans_ID.Item("Send_Date"))
            myMsg.Receive_Date = String_chk.checkNullDBDate(Ans_ID.Item("Receive_Date"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myMsg
    End Function







    Structure InboxSt
        Dim Inbox_Id As Integer
        Dim From_CustID As Integer
        Dim To_CustID As Integer
        Dim Topic_Msg As String
        Dim Msg As String
        Dim Status As Integer
        Dim Send_Date As DateTime
        Dim Receive_Date As DateTime
    End Structure
    Structure inboxCount
        Dim AllMail As Integer
        Dim UnreadNo As Integer

    End Structure

End Module
