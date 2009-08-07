Imports System.Data
Imports System.Data.OleDb

Module Paging

    Function GetPagedData(ByVal da As OleDbDataAdapter, ByVal idx As Integer, ByVal size As Integer, ByVal table_name As String) As DataSet
        Dim ds As DataSet = New DataSet

        da.Fill(ds, idx, size, table_name)

        Return ds
    End Function

End Module

