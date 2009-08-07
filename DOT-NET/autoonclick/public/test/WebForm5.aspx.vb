Imports System.IO
Imports System.DirectoryServices
Public Class WebForm5
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Dim IISWEBSERVER As String = "iiswebserver"
    Dim IISWEBVIRTUALDIRECTORY As String = "IIsWebVirtualDir"
    Dim DEFAULTPORT As String = "80"
    Dim DEFAULTDOMAINEXTENSION As String = "com"
    Dim DEFAULTVIRTUALPATH As String = "/1/Root"
    Dim IIS As String = "IIS://"
    Dim WEBSERVICE As String = "/W3SVC"
    Dim FTPSERVICE As String = "/MSFTPSVC"

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        'CreateVirtualDir("LocalHost", "Woof", "D:/Woof")
        If Imperson.impersonateValidUser("vdir", "sia-1", "1234") Then
            'Insert your code that runs under the security context of a specific user here.
            DeleteVirtualDirectory("LocalHost", "Woof", "", "", "IIS5")
            Imperson.undoImpersonation()
        Else
            'Your impersonation failed. Therefore, include a fail-safe mechanism here.
        End If

    End Sub

    Public Function IsExist(ByVal IISPath As String) As Boolean
        Return DirectoryEntry.Exists(IISPath)
    End Function

    Public Function DeleteVirtualDirectory(ByVal ServerName As String, ByVal DirectoryName As String, ByVal ParentDirectoryName As String, ByVal ParentWebSiteName As String, ByVal IISVersionNumber As String) As Boolean
        Dim strIISPath As String

        If IISVersionNumber = "IIS5" Then
            If ParentDirectoryName <> "" Then
                ParentDirectoryName = "/" & ParentDirectoryName
            End If
            strIISPath = IIS & ServerName & WEBSERVICE & DEFAULTVIRTUALPATH & ParentDirectoryName
        Else
            If ParentDirectoryName = "" Then
                strIISPath = IIS & ServerName & WEBSERVICE & DEFAULTVIRTUALPATH
            End If
        End If

        If IsExist(strIISPath) Then

            Dim objDirectoryEntry As DirectoryEntry = New DirectoryEntry(strIISPath)
            objDirectoryEntry.Invoke("Delete", New String() {IISWEBVIRTUALDIRECTORY, DirectoryName})
            objDirectoryEntry.CommitChanges()
            objDirectoryEntry.Close()
            Return True
        End If
        Return True
    End Function


End Class
