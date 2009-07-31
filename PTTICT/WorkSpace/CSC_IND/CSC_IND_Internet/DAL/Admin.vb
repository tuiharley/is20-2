Public Class Admin

    Private _DB_Provider As String
    Private _DB_UserName As String
    Private _DB_Password As String
    Private _DB_DataSource As String
    Private _DB_Name As String
    Private _ConnectStr As String
    Private _UseStoredProc As Boolean = True
    Private DB As New DBUTIL

    Public Sub New()
        ReadDALConfigurations()
        DB.ConnectStr = _ConnectStr
        DB.DB_Provider = _DB_Provider
    End Sub

    Public Sub ReadDALConfigurations()

        _DB_Provider = ConfigurationSettings.AppSettings("DB_Provider")
        _DB_DataSource = ConfigurationSettings.AppSettings("DB_DataSource")
        _DB_Name = ConfigurationSettings.AppSettings("DB_Name")
        _DB_UserName = SecurityService.DecryptData(ConfigurationSettings.AppSettings("DB_UserName"))
        _DB_Password = SecurityService.DecryptData(ConfigurationSettings.AppSettings("DB_Password"))

        _ConnectStr = "Provider=" & _DB_Provider & ";Data Source=" & _DB_DataSource & ";User ID=" & _DB_UserName & ";Password=" & _DB_Password
        If _DB_Name <> "" Then _ConnectStr += ";Initial Catalog=" & _DB_Name

    End Sub

    Public Function LoadQueryList(ByVal DSName As String, ByVal SQLQuery As String, ByVal SQLOrder As String) As DataSet
        Dim SQL As String
        Dim DS As DataSet

        Try

            If SQLQuery <> "" Then
                If SQLOrder <> "" Then
                    SQLQuery += " ORDER BY " & SQLOrder
                End If
                DB.OpenDS(DS, SQLQuery)
                Return DS
            End If

        Catch ex As Exception
            Throw New DALException(ex.Message)
        End Try
    End Function

End Class
