Module DBConnect
    Function getStrDBConnect() As String
        Dim connstatement As String
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=computer;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=SIA-MAXNET;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=AU;"
        connstatement = ConfigurationSettings.AppSettings("Conn")
        Return connstatement
    End Function

End Module
