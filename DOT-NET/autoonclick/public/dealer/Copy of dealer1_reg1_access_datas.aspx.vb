Public Class dealer1_reg1_access_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents username As System.Web.UI.WebControls.TextBox
    Protected WithEvents password As System.Web.UI.WebControls.TextBox
    Protected WithEvents confirm As System.Web.UI.WebControls.TextBox
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents UsernameRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents UsernameRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents PasswordRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents PasswordRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents CompareValidator1 As System.Web.UI.WebControls.CompareValidator
    Protected WithEvents ConfirmRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator

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
        If Session("cust_id") <> "" Then
            Response.Redirect("startpage_example_with_package.aspx")
        End If
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        If CustomerDB.checkUsername(username.Text) Then
            Utilities.showAlert(Page, username, "Username นี้มีการใช้งานแล้วค่ะ")
        Else
            Dim cust_id As Integer
            cust_id = CustomerDB.getMaxCusID()
            CustomerDB.addCustomer(cust_id, 1, username.Text, Utilities.getPasswd(password.Text))
            Session.Add("cust_id", cust_id)
            Session.Add("usrName", username.Text)
            'Response.Write(CustomerDB.getMaxCusID())
            Response.Redirect("dealer1_reg2_contact_main_datas.aspx")
        End If
    End Sub
End Class
