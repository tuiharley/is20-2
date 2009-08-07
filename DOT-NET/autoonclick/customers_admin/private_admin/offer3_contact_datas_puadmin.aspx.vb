Imports System.Data
Imports System.Data.OleDb
Public Class offer3_contact_datas_puadmin

    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents title As System.Web.UI.WebControls.DropDownList
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents surname As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents fax As System.Web.UI.WebControls.TextBox
    Protected WithEvents address As System.Web.UI.WebControls.TextBox
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents CustomValidator1 As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents NameRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents SurnameRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents Phone1RequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents AddrRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents ProvinceCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents DistrictCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
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
        Dim thisCust As A_Customer
        Dim from As String = Request.QueryString("from")
        Dim noticeid As String = Request.QueryString("noticeid")
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else


            If Not IsPostBack Then

                Session("from") = from
                Session("noticeid") = noticeid
                thisCust = CustomerDB.getA_customer(Session("cust_id"))
                setValue(thisCust)

            End If
        End If
    End Sub

    Private Sub title_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles title.Init
        Dim conn As OleDbConnection
        Dim command As OleDbCommand
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT TITLE.TITLE, TITLE.TITLE_NAME FROM TITLE "
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "title")

        Dim DRow As DataRow = ds.Tables("title").NewRow()
        DRow.Item("TITLE") = 0
        DRow.Item("TITLE_NAME") = "โปรดระบุ"
        ds.Tables("title").Rows.InsertAt(DRow, 0)
        title.DataSource = ds.Tables("title")
        title.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub saveData()
        Dim thisCust As A_Customer
        Dim inquire As Boolean, notice As Boolean, accepted As Boolean

        thisCust.title = title.SelectedValue
        thisCust.name = name.Text
        thisCust.surname = surname.Text
        thisCust.email = email.Text
        thisCust.phone1 = phone1.Text
        thisCust.phone2 = phone2.Text
        thisCust.fax = fax.Text
        thisCust.address = address.Text
        thisCust.province = Request.Form("Province")
        thisCust.district = Request.Form("District")

        inquire = questionare.Checked
        notice = advertise.Checked
        'accepted = accept.Checked

        thisCust.id = Session("cust_id")

        CustomerDB.updateCustomer(thisCust.id, thisCust.title, thisCust.name, thisCust.surname, thisCust.email, thisCust.phone1, thisCust.phone2, thisCust.fax, thisCust.address, thisCust.district, thisCust.province, inquire, notice, 1)

    End Sub
    Private Sub setValue(ByVal thisCust As A_Customer)

        Session("per_province") = thisCust.province
        Session("per_district") = thisCust.district


        title.SelectedValue = thisCust.title
        name.Text = thisCust.name
        surname.Text = thisCust.surname
        email.Text = thisCust.email
        phone1.Text = thisCust.phone1

        If thisCust.phone2 = "" Then
            phone2.Text = ""
        Else
            phone2.Text = thisCust.phone2
        End If

        If thisCust.fax = "" Then
            fax.Text = ""
        Else
            fax.Text = thisCust.fax
        End If

        address.Text = thisCust.address

        If thisCust.inquire <> 0 Then
            questionare.Checked = True
        Else
            questionare.Checked = False
        End If

        If thisCust.notice <> 0 Then
            advertise.Checked = True
        Else
            advertise.Checked = False
        End If

        'If thisCust.accept <> 0 Then
        '    accept.Checked = True
        'Else
        '    accept.Checked = False
        'End If
    End Sub


    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click

        If IsValid Then

            saveData()
            If Session("from") <> "" Then
                Response.Redirect(Session("from") & ".aspx?notice_id=" & Session("noticeid"))
            Else
                Response.Redirect("startpage_example1.aspx")
            End If

        Else

            Response.Redirect("startpage_example1.aspx")

        End If


    End Sub

End Class
