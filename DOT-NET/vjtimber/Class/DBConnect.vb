Imports System.Data.SqlClient
Module DBConnect
    Function getStrDBConnect() As String
        Dim connstatement As String
        connstatement = ConfigurationSettings.AppSettings("Conn")
        Return connstatement
    End Function

    Private Sub ExecuteSQL(ByVal cmd As SqlCommand, ByVal sSQL As String)

        cmd.CommandText = sSQL
        cmd.ExecuteNonQuery()

    End Sub

End Module
