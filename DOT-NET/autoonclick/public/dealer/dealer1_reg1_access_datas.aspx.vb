Public Class dealer1_reg1_access_datas
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
        'If Session("cust_id") <> "" Then
        '    Response.Redirect("startpage_example_with_package.aspx")
        'End If
        Session.Abandon()
        AjaxPro.Utility.RegisterTypeForAjax(GetType(dealer1_reg1_access_datas))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function checkUser(ByVal usrName As String) As String
        Dim sql As String

        If CustomerDB.checkUsername(usrName) Then
            sql = "not pass"
        Else
            sql = "passed"
        End If

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function goNext(ByVal usr As String, ByVal pass As String) As String

        Dim myCust As A_Customer
        myCust.username = usr
        myCust.passwd = pass
        Session("myCustomer") = myCust

        Return 1
    End Function
    'Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
    '    If CustomerDB.checkUsername(username.Text) Then
    '        Utilities.showAlert(Page, username, "Username นี้มีการใช้งานแล้วค่ะ")
    '    Else
    '        Dim cust_id As Integer
    '        cust_id = CustomerDB.getMaxCusID()
    '        CustomerDB.addCustomer(cust_id, 1, username.Text, Utilities.getPasswd(password.Text))
    '        Session.Add("cust_id", cust_id)
    '        Session.Add("usrName", username.Text)
    '        'Response.Write(CustomerDB.getMaxCusID())
    '        Response.Redirect("dealer1_reg2_contact_main_datas.aspx")
    '    End If
    'End Sub
End Class
