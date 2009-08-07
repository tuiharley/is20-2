Imports System.Data
Imports System.Data.OleDb
Imports System.IO
Module JobPositionDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function getPosition(ByVal Posid As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim mycommand As OleDbCommand
        Dim sql As String


        Dim accessor As New Queue
        Dim tmp As Position

        sql = "SELECT Position_ID,Position_Name FROM Job_Position "
        If Posid > 0 Then
            sql = sql & " WHERE  Position_ID = " & Posid
        End If

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            tmp.Position_ID = Ans_ID.Item("Position_ID")
            tmp.Position_Name = Ans_ID.Item("Position_Name")
            accessor.Enqueue(tmp)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return accessor
    End Function


    Structure Position
        Dim Position_ID As Integer
        Dim Position_Name As String

    End Structure
End Module
