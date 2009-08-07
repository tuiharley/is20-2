Imports System.Data
Imports System.Data.OleDb
Module ProlongDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getNewProlong() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(Prolong_ID) as AnsID FROM Prolong_Tx"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item(0) + 1
            Else
                ansid = 1
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function insertProlong(ByVal myProlong As ProlongTx) As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim prolongid As Integer
        Dim inputDate_start As String
        Dim inputDate_stop As String


        prolongid = getNewProlong()

        inputDate_start = myProlong.Date_Start.ToString("yyyy-MM-dd hh:mm:ss")
        inputDate_stop = myProlong.Date_Stop.ToString("yyyy-MM-dd hh:mm:ss")

        sql = "INSERT INTO Prolong_Tx "
        sql = sql & " VALUES(" & prolongid & ", " & myProlong.NoticeID & ", " & myProlong.InvoiceID & "," & myProlong.PackageID & ", CONVERT(DATETIME, '" & inputDate_start & "', 102), CONVERT(DATETIME, '" & inputDate_stop & "', 102), " & myProlong.Period & ", " & myProlong.Expire & ")"


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return prolongid
    End Function

    Function getMaxDate(ByVal noticeid As Integer) As Date
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Date

        sql = "SELECT     MAX(Date_stop) AS AnsID FROM  Prolong_Tx WHERE (expire = 0) AND (Prolong_NoticeID = " & noticeid & ")"
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
    Function getMaxStartDate(ByVal noticeid As Integer) As Date
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Date

        sql = "SELECT     MAX(Date_stop) AS AnsID, Date_start FROM  Prolong_Tx WHERE (expire = 0) AND (Prolong_NoticeID = " & noticeid & ") GROUP BY Date_Start"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(1) Then
                ansid = Ans_ID.Item(1)
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function

    Sub setExpire(ByVal invoiceid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Prolong_Tx SET expire = 1  WHERE Prolong_InvoiceID = " & invoiceid
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub

    Function getProlongTx(ByVal prolongid As Integer) As ProlongTx
        Dim ProlongTxInfo As New ProlongTx

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Prolong_Tx WHERE Prolong_ID = " & prolongid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            ProlongTxInfo.id = Ans_ID.Item(0)
            ProlongTxInfo.NoticeID = String_chk.checkNullDBNum(Ans_ID.Item(1))
            ProlongTxInfo.InvoiceID = String_chk.checkNullDBNum(Ans_ID.Item(2))
            ProlongTxInfo.Date_Start = String_chk.checkNullDBDate(Ans_ID.Item(3))
            ProlongTxInfo.Date_Stop = String_chk.checkNullDBDate(Ans_ID.Item(4))
            ProlongTxInfo.Period = String_chk.checkNullDBNum(Ans_ID.Item(5))
            ProlongTxInfo.Expire = String_chk.checkNullDBNum(Ans_ID.Item(6))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return ProlongTxInfo
    End Function
    Structure ProlongTx
        Dim id As Integer
        Dim NoticeID As Integer
        Dim InvoiceID As Integer
        Dim PackageID As Integer
        Dim Date_Start As Date
        Dim Date_Stop As Date
        Dim Period As Integer
        Dim Expire As Integer

    End Structure
End Module
