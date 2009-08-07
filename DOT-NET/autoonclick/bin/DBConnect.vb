Imports System.Data.SqlClient
Module DBConnect
    Function getStrDBConnect() As String
        Dim connstatement As String
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=127.0.0.1;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=computer;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=SIA-1;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=AA;"
        'connstatement = "Provider=SQLOLEDB.1;UID=mxauto_onclick_com_auto_search;PWD=Auto15S;DATABASE=mxauto_onclick_com_auto_search;SERVER=127.0.0.1;"
        connstatement = ConfigurationSettings.AppSettings("Conn")
        Return connstatement
    End Function

    Private Sub ExecuteSQL(ByVal cmd As SqlCommand, ByVal sSQL As String)

        cmd.CommandText = sSQL
        cmd.ExecuteNonQuery()

    End Sub

End Module
