Imports System.Data
Imports System.Data.OleDb
Module CarTypeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getStatusName(ByVal CarType As Integer, ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT CarType.CarType_name FROM CarType WHERE CarType = " & CarType & " and Category = " & cat

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
