Imports System.IO
Public Class WebForm3
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

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        CreateVirtualDir("LocalHost", "Woof", "D:/Woof")
    End Sub
    Private Sub CreateVirtualDir(ByVal WebSite As String, ByVal AppName As String, ByVal Path As String)
        'Dim IISSchema As New System.DirectoryServices.DirectoryEntry("IIS://" & WebSite & "/Schema/AppIsolated")
        Dim IISSchema As New System.DirectoryServices.DirectoryEntry("IIS://" & WebSite & "/Schema/AppIsolated", "vdir", "1234")

        Dim CanCreate As Boolean = Not IISSchema.Properties("Syntax").Value.ToString.ToUpper() = "BOOLEAN"
        IISSchema.Dispose()
        If CanCreate Then
            Dim PathCreated As Boolean
            Try
                Dim IISAdmin As New System.DirectoryServices.DirectoryEntry("IIS://" & WebSite & "/W3SVC/1/Root")

                'make sure folder exists               
                If Not Directory.Exists(Path) Then
                    Directory.CreateDirectory(Path)
                    PathCreated = True
                End If
                'If the virtual directory already exists then delete it     
                For Each VD As System.DirectoryServices.DirectoryEntry In IISAdmin.Children
                    If VD.Name = AppName Then
                        IISAdmin.Invoke("Delete", New String() {VD.SchemaClassName, AppName})
                        IISAdmin.CommitChanges()
                        Exit For
                    End If
                Next VD
                'Create and setup new virtual directory       
                Dim VDir As System.DirectoryServices.DirectoryEntry = IISAdmin.Children.Add(AppName, "IIsWebVirtualDir")
                VDir.Properties("Path").Item(0) = Path
                VDir.Properties("AppFriendlyName").Item(0) = AppName
                VDir.Properties("EnableDirBrowsing").Item(0) = False
                VDir.Properties("AccessRead").Item(0) = True
                VDir.Properties("AccessExecute").Item(0) = True
                VDir.Properties("AccessWrite").Item(0) = False
                VDir.Properties("AccessScript").Item(0) = True
                VDir.Properties("AuthNTLM").Item(0) = True
                VDir.Properties("EnableDefaultDoc").Item(0) = True
                VDir.Properties("DefaultDoc").Item(0) = "default.htm,default.aspx,default.asp"
                VDir.Properties("AspEnableParentPaths").Item(0) = True
                VDir.CommitChanges()
                'the following are acceptable params  
                'INPROC = 0               
                'OUTPROC = 1       
                'POOLED = 2       
                VDir.Invoke("AppCreate", 1)
            Catch Ex As Exception
                If PathCreated Then
                    System.IO.Directory.Delete(Path)
                End If
                Throw Ex
            End Try
        End If
    End Sub

End Class
