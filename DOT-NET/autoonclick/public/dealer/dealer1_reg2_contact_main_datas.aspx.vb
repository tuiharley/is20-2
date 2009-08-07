Public Class dealer1_reg2_contact_main_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents compName As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents homePage As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents fax As System.Web.UI.WebControls.TextBox
    Protected WithEvents address As System.Web.UI.WebControls.TextBox
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents NameRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents compRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents Phone1RequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents AddrRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ProvinceCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents DistrictCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents day_open As System.Web.UI.WebControls.DropDownList
    Protected WithEvents day_close As System.Web.UI.WebControls.DropDownList
    Protected WithEvents timeOpen As System.Web.UI.WebControls.DropDownList
    Protected WithEvents timeClose As System.Web.UI.WebControls.DropDownList
    Protected WithEvents logo As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents compMap As System.Web.UI.HtmlControls.HtmlInputFile

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim p_province As String
    Dim p_district As String
    Dim mainBuz As String

    Dim provIndex As String
    Dim distrIndex As String
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        p_province = Request.Form("Province")
        p_district = Request.Form("District")
        mainBuz = Request.Form("mainBuz")
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        saveData()

        Response.Redirect("dealer1_reg3_class_additionals_datas.aspx")
    End Sub

    Private Sub saveData()
        Dim myCust As A_Customer

        'myCust.id = Session("cust_id")
        myCust.username = Session("myCustomer").username
        myCust.passwd = Utilities.getPasswd(Session("myCustomer").passwd)
        myCust.type = 1
        myCust.name = compName.Text
        myCust.contactName = name.Text
        myCust.homepage = homePage.Text
        myCust.email = email.Text
        myCust.phone1 = phone1.Text
        myCust.phone2 = phone2.Text
        myCust.fax = fax.Text
        myCust.address = address.Text
        myCust.province = p_province
        myCust.district = p_district

        myCust.dateStart = day_open.SelectedValue
        myCust.dateStop = day_close.SelectedValue
        myCust.timeStart = timeOpen.SelectedValue
        myCust.timeStop = timeClose.SelectedValue

        myCust.logo = logo
        myCust.map = compMap


        Session("myCust") = myCust
        Session("mainBuz") = mainBuz

    End Sub
    Private Sub clearData()
        Session("myCust") = ""
        Session("mainBuz") = ""
    End Sub
End Class
