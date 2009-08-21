Imports System.IO
Public Class WebForm2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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
        'Response.Write(ReadFromFile(""))
        Label1.Text = ReadFromFile("")
    End Sub
    Public Function ReadFromFile(ByVal filename As String) As String



        Dim ObjFile As New FileInfo("c:\test.text")

        Dim ObjStreamReader As StreamReader = ObjFile.OpenText()

        Dim data As String = ObjStreamReader.ReadToEnd()

        'Response.Write(data)
        ObjStreamReader.Close()

        Return data


    End Function

End Class
