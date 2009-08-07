Imports System.Data
Imports System.Data.OleDb
Module ChangeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function getNewChange() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(Change_ID) as AnsID FROM Change_Tx"
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
    Function insertChangeTx(ByVal myChange As ChangeTx) As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim changeid As Integer
        Dim inputDate_start As String
        Dim inputDate_stop As String


        changeid = getNewChange()

        inputDate_start = myChange.Date_Start.ToString("yyyy-MM-dd hh:mm:ss")
        inputDate_stop = myChange.Date_Stop.ToString("yyyy-MM-dd hh:mm:ss")

        sql = "INSERT INTO Change_Tx "
        sql = sql & " VALUES(" & changeid & ", " & myChange.NoticeID & ", " & myChange.InvoiceID & "," & myChange.PackageID & ", CONVERT(DATETIME, '" & inputDate_start & "', 102), CONVERT(DATETIME, '" & inputDate_stop & "', 102), " & myChange.Expire & ")"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return changeid
    End Function
    Sub setExpire(ByVal invoiceid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "UPDATE Change_Tx SET expire = 1  WHERE Change_InvoiceID = " & invoiceid
        'Response.Write(sql)
        'Response.End()
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()
    End Sub

    Function getChangeTx(ByVal changeid As Integer) As ChangeTx
        Dim ChangeTxInfo As New ChangeTx

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Change_Tx WHERE Change_ID = " & changeid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            ChangeTxInfo.id = Ans_ID.Item("Change_ID")
            ChangeTxInfo.NoticeID = String_chk.checkNullDBNum(Ans_ID.Item("Change_NoticeID"))
            ChangeTxInfo.InvoiceID = String_chk.checkNullDBNum(Ans_ID.Item("Change_InvoiceID"))
            ChangeTxInfo.PackageID = String_chk.checkNullDBNum(Ans_ID.Item("Change_PackageID"))
            ChangeTxInfo.Date_Start = String_chk.checkNullDBDate(Ans_ID.Item("Date_start"))
            ChangeTxInfo.Date_Stop = String_chk.checkNullDBDate(Ans_ID.Item("Date_stop"))
            ChangeTxInfo.Expire = String_chk.checkNullDBNum(Ans_ID.Item("expire"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return ChangeTxInfo
    End Function
    Structure ChangeTx
        Dim id As Integer
        Dim NoticeID As Integer
        Dim InvoiceID As Integer
        Dim PackageID As Integer
        Dim Date_Start As Date
        Dim Date_Stop As Date
        Dim Expire As Integer

    End Structure
End Module