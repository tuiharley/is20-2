

Imports System.Data.SqlServerCe
Imports System.Data.Common

Module DB
    Dim connectDB As String = DBConnect.getStrConnect()
    'Dim cn As New SqlCeConnection(connString)
    'Dim sql As String
    'sql = "CREATE TABLE emp2"
    'sql &= "("
    'sql &= " empno int PRIMARY KEY,"
    'sql &= " ename nvarchar(20)"
    'sql &= ")"


    Function getToday() As String
        Dim cn As New SqlCeConnection(connectDB)
        Dim sql As String
        Dim result As Date

        sql = "SELECT getDate()"

        Dim cmd As New SqlCeCommand(sql, cn)
        cmd.Connection.Open()
        Dim Ans_ID As SqlCeDataReader = cmd.ExecuteReader

        If Ans_ID.Read Then
            result = Ans_ID.Item(0)
        End If

        cmd.Connection.Close()
        cmd.Dispose()
        cn.Dispose()

        Return result
    End Function
End Module
