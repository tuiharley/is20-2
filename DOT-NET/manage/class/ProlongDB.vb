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

    Function getNum42Day(ByVal notice_id As Integer, ByVal invoice_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        'sql = "SELECT Date_Start FROM Prolong_tx WHERE Prolong_NoticeID = " & notice_id & " AND Prolong_InvoiceID = " & invoice_id
        sql = "SELECT Date_Start,getdate(),datediff(day,date_start,getdate()) as no_of_day FROM Prolong_tx "
        sql = sql & " WHERE Prolong_NoticeID = " & notice_id & " And Prolong_InvoiceID = " & invoice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(2) Then
                dataid = Ans_ID.Item("no_of_day")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getStopDate(ByVal notice_id As Integer, ByVal invoice_id As Integer) As Date
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Date


        sql = "SELECT Date_Stop FROM Prolong_tx WHERE Prolong_NoticeID = " & notice_id & " AND Prolong_InvoiceID = " & invoice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                dataid = Ans_ID.Item("Date_Stop")
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
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
                ansid = Ans_ID.Item(0)
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


    Sub setExpire(ByVal notice_id As Integer, ByVal invid As Integer, ByVal expire As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update Prolong_Tx "
        sql = sql & " SET expire = " & expire
        sql = sql & " WHERE Prolong_NoticeID = " & notice_id & " AND Prolong_InvoiceID = " & invid


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub setExpire2(ByVal invoiceid As Integer)
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


    Sub UpdPrLChg(ByVal myProlong As ProlongTx)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim inputDate_start As String
        Dim inputDate_stop As String
        'CONVERT(DATETIME, '" & inputDate_start & "', 102)
        inputDate_start = "CONVERT(DATETIME,'" & myProlong.Date_Start.ToString("yyyy-MM-dd hh:mm:ss") & "',102)"
        inputDate_stop = "CONVERT(DATETIME,'" & myProlong.Date_Stop.ToString("yyyy-MM-dd hh:mm:ss") & "',102)"

        sql = "UPDATE Prolong_Tx SET "
        sql = sql & " Prolong_PackageID = " & myProlong.PackageID
        sql = sql & " ,Date_start = " & inputDate_start
        sql = sql & " ,Date_stop = " & inputDate_stop
        sql = sql & " ,Prolong_period = " & myProlong.Period
        sql = sql & " WHERE Prolong_InvoiceID = " & myProlong.InvoiceID
        sql = sql & " AND Prolong_NoticeID = " & myProlong.NoticeID

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
            ProlongTxInfo.id = Ans_ID.Item("Prolong_ID")
            ProlongTxInfo.NoticeID = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_NoticeID"))
            ProlongTxInfo.InvoiceID = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_InvoiceID"))
            ProlongTxInfo.PackageID = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_PackageID"))
            ProlongTxInfo.Date_Start = String_chk.checkNullDBDate(Ans_ID.Item("Date_start"))
            ProlongTxInfo.Date_Stop = String_chk.checkNullDBDate(Ans_ID.Item("Date_stop"))
            ProlongTxInfo.Period = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_period"))
            ProlongTxInfo.Expire = String_chk.checkNullDBNum(Ans_ID.Item("expire"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return ProlongTxInfo
    End Function
    Function getProlongTx2(ByVal invoiceid As Integer) As ProlongTx
        Dim ProlongTxInfo As New ProlongTx

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Prolong_Tx WHERE Prolong_InvoiceID = " & invoiceid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            ProlongTxInfo.id = Ans_ID.Item("Prolong_ID")
            ProlongTxInfo.NoticeID = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_NoticeID"))
            ProlongTxInfo.InvoiceID = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_InvoiceID"))
            ProlongTxInfo.PackageID = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_PackageID"))
            ProlongTxInfo.Date_Start = String_chk.checkNullDBDate(Ans_ID.Item("Date_start"))
            ProlongTxInfo.Date_Stop = String_chk.checkNullDBDate(Ans_ID.Item("Date_stop"))
            ProlongTxInfo.Period = String_chk.checkNullDBNum(Ans_ID.Item("Prolong_period"))
            ProlongTxInfo.Expire = String_chk.checkNullDBNum(Ans_ID.Item("expire"))
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
