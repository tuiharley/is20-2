Public Class emailus
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents mail_to As System.Web.UI.WebControls.Label
    Protected WithEvents topic As System.Web.UI.WebControls.TextBox
    Protected WithEvents detail As System.Web.UI.WebControls.TextBox
    Protected WithEvents AddrRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator

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



        If Not IsPostBack Then
            mail_to.Text = Request.QueryString("mail_to")
            Session("mail_to") = Request.QueryString("mail_to")

        End If



    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click


        If IsValid Then
            Dim myMail As mailQuestion
            myMail.name = name.Text
            myMail.topic = topic.Text
            myMail.mail_From = email.Text
            myMail.mail = Session("mail_to")
            myMail.question = detail.Text

            EmailDB.sendMailQuestion2(myMail)
            Response.Redirect("emailus_complete.aspx")
        End If


    End Sub

  
End Class
