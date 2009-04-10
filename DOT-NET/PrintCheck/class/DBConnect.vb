Module DBConnect

    Function getStrDBConnect() As String
        Dim connstatement As String
        'connstatement = "Provider=Microsoft.Jet.OLEDB.4.0;Exclusive=1;data source=" & Application.StartupPath & "\print_check.mdb;Uid=Admin;Pwd=vjtimber;"
        'connstatement = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Application.StartupPath & "\print_check.mdb;Jet OLEDB:Database Password=vjtimber;"
        connstatement = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Application.StartupPath & "\print_check.mdb;User Id=admin;Password=;"
        Return connstatement
    End Function

End Module
