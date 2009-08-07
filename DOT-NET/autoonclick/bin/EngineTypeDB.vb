Imports System.Data
Imports System.Data.OleDb
Module EngineTypeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getEngineName(ByVal engineid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT EngineType_Name FROM EngineType WHERE EngineType = " & engineid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
End Module
