Public Class WebForm1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTxtResult As System.Web.UI.WebControls.Label
    Protected WithEvents btnGo As System.Web.UI.WebControls.Button
    Protected WithEvents txt1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txt2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnEncyp As System.Web.UI.WebControls.Button

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
    End Sub

    Private Sub btnGo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGo.Click
        Dim CallWebService As New corp.ptt.hq_web_s18.SecurityService
        Dim sGetValue As String = CallWebService.DecryptData(txt1.Text)
        lblTxtResult.Text = sGetValue
    End Sub

    
    Private Sub btnEncyp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEncyp.Click
        Dim CallWebService As New corp.ptt.hq_web_s18.SecurityService
        Dim sGetValue As String = CallWebService.EncryptData(txt2.Text)
        lblTxtResult.Text = sGetValue
    End Sub
End Class
