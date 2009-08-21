Public Class buz_change_contact_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents compName As System.Web.UI.WebControls.TextBox
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents homePage As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents fax As System.Web.UI.WebControls.TextBox
    Protected WithEvents day_open As System.Web.UI.WebControls.DropDownList
    Protected WithEvents day_close As System.Web.UI.WebControls.DropDownList
    Protected WithEvents address As System.Web.UI.WebControls.TextBox
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents logo As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents compMap As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents timeOpen As System.Web.UI.WebControls.DropDownList
    Protected WithEvents timeClose As System.Web.UI.WebControls.DropDownList
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents compRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents NameRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents Phone1RequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents AddrRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ProvinceCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents DistrictCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents questionare As System.Web.UI.WebControls.CheckBox
    Protected WithEvents advertise As System.Web.UI.WebControls.CheckBox

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
    Dim provIndex As String
    Dim distrIndex As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        p_province = Request.Form("Province")
        p_district = Request.Form("District")


        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else

        If Not IsPostBack Then
            showData(Session("cust_id"))
        End If
        'End If

    End Sub
    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click


        saveData(Session("cust_id"))

        Response.Redirect("../ad_details/" & Session("pagename"))
    End Sub

    Private Sub showData(ByVal cust_id As Integer)
        Dim aCustomer As A_Customer
        aCustomer = CustomerDB.getA_customer(cust_id)



        compName.Text = aCustomer.name
        name.Text = aCustomer.contactName
        homePage.Text = aCustomer.homepage
        email.Text = aCustomer.email
        phone1.Text = aCustomer.phone1
        phone2.Text = aCustomer.phone2
        fax.Text = aCustomer.fax
        address.Text = aCustomer.address

        Session("per_province") = aCustomer.province
        Session("per_district") = aCustomer.district

        day_open.SelectedValue = aCustomer.dateStart
        day_close.SelectedValue = aCustomer.dateStop
        timeOpen.SelectedValue = aCustomer.timeStart
        timeClose.SelectedValue = aCustomer.timeStop

        If aCustomer.inquire <> 0 Then
            questionare.Checked = True
        Else
            questionare.Checked = False
        End If

        If aCustomer.notice <> 0 Then
            advertise.Checked = True
        Else
            advertise.Checked = False
        End If

    End Sub
    Private Sub saveData(ByVal cust_id As Integer)
        Dim myCust As A_Customer

        myCust.id = cust_id
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

        myCust.inquire = checkTrue(questionare.Checked)
        myCust.notice = checkTrue(advertise.Checked)

        Dim temppath As String
        Dim tempFile As String
        Dim usrName As String
        usrName = CustomerDB.getUserName(cust_id)


        If Utilities.getFileName(myCust.logo) <> "" Then
            temppath = Server.MapPath("/userData") & "\" & usrName & "\logo\"
            tempFile = Utilities.UploadFile2(myCust.logo, temppath)
        End If
        If Utilities.getFileName(myCust.map) <> "" Then
            temppath = Server.MapPath("/userData") & "\" & usrName & "\map\"
            tempFile = Utilities.UploadFile2(myCust.map, temppath)
        End If

        CustomerDB.updateDealer2(myCust)

    End Sub

End Class

