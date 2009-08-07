Public Class sending
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
    Protected WithEvents email2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents EmailRequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator2 As System.Web.UI.WebControls.RegularExpressionValidator

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
            'mail_to.Text = Request.QueryString("mail_to")

            Session("sendCarid") = Request.QueryString("carid")
            Session("sendCat") = Request.QueryString("cat")

        End If



    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click


        If IsValid Then
            Dim mySend As send2Friend
            mySend.send_By = name.Text
            mySend.send_Topic = topic.Text
            mySend.send_EmailFrom = email2.Text
            mySend.send_Email = email.Text
            Session("mail_to") = email.Text

            Dim mycar As Object
            Select Case Session("sendCat")
                Case 1
                    mycar = CarDB.getCar(Session("sendCarid"))
                Case 2
                    mycar = BikeDB.getBike(Session("sendCarid"))
                Case 3
                    mycar = TruckDB.getTruck(Session("sendCarid"))
                Case 4, 5
                    mycar = PartsDB.getPart(Session("sendCarid"))
                Case 6
                    mycar = JobDB.getJob(Session("sendCarid"))
            End Select
            EmailDB.sendMail2Fr(mySend, mycar, Session("sendCat"))
            Response.Redirect("sendComplete.aspx")
        End If


    End Sub


End Class
