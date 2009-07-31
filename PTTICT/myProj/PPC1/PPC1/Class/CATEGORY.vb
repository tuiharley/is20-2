Imports System.Data.SqlServerCe
Imports System.Data.Common
Module CATEGORY
    Dim connectDB As String = DBConnect.getStrConnect()
    Function getACategory(ByVal t_type As String) As CATEGORY_ST
        Dim cn As New SqlCeConnection(connectDB)
        Dim sql As String
        Dim result As CATEGORY_ST = Nothing

        sql = "SELECT * FROM T_CATEGORY WHERE T_TYPE='" & t_type & "'"

        Dim cmd As New SqlCeCommand(sql, cn)
        cmd.Connection.Open()
        Dim Ans_ID As SqlCeDataReader = cmd.ExecuteReader

        If Ans_ID.Read Then
            result.T_TYPE = Ans_ID.Item("T_TYPE")
            result.T_TYPE_DESC = Ans_ID.Item("T_TYPE_DESC")
        End If

        cmd.Connection.Close()
        cmd.Dispose()
        cn.Dispose()

        Return result
    End Function
    Function getCategories() As Queue
        Dim cn As New SqlCeConnection(connectDB)
        Dim sql As String
        Dim result As New Queue
        Dim Bresult As CATEGORY_ST

        sql = "SELECT * FROM T_CATEGORY "

        Dim cmd As New SqlCeCommand(sql, cn)
        cmd.Connection.Open()
        Dim Ans_ID As SqlCeDataReader = cmd.ExecuteReader

        While Ans_ID.Read
            Bresult.T_TYPE = Ans_ID.Item("T_TYPE")
            Bresult.T_TYPE_DESC = Ans_ID.Item("T_TYPE_DESC")
            result.Enqueue(Bresult)
        End While

        cmd.Connection.Close()
        cmd.Dispose()
        cn.Dispose()

        Return result
    End Function

    Structure CATEGORY_ST
        Dim T_TYPE As String
        Dim T_TYPE_DESC As String

    End Structure
End Module
