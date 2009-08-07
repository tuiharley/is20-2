Imports System.Data
Imports System.Data.OleDb
Module ListLoadDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getLoadValue(ByVal loadID As Integer) As ListLoad
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim load As ListLoad

        sql = "SELECT * FROM ListLoad WHERE id = " & loadID

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            load.id = Ans_ID.Item(0)
            load.LoadDesc = Ans_ID.Item(1)
            load.LoadMin = Ans_ID.Item(2)
            load.LoadMax = Ans_ID.Item(3)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return load
    End Function
    Structure ListLoad
        Dim id As Integer
        Dim LoadDesc As String
        Dim LoadMin As Integer
        Dim LoadMax As Integer
    End Structure

End Module
