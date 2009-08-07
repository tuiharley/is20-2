Imports System.Data
Imports System.Data.OleDb
Public Class offer3_contact_datas
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
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
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
    Protected WithEvents accept As System.Web.UI.WebControls.CheckBox
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents acceptValidate As System.Web.UI.WebControls.CustomValidator
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

       
        '--------------if Edit -----------------------------
        If Request.QueryString("edit") = "edit" Then
            Session("edit") = "True"
            If Not IsPostBack Then
                setValue()
            End If
        End If
        '---------------------------------------------------

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
    Private Sub clearSession()
        '----------car data-----------------------
        Session.Add("cat", "")

        Session.Add("sBrands", "")
        Session.Add("brandIndex", "")
        Session.Add("sModel", "")
        Session.Add("modelIndex", "")
        Session.Add("status", "")
        Session.Add("firstmm", "")
        Session.Add("firstyyyy", "")
        Session.Add("submodel", "")
        Session.Add("cartype", "")
        Session.Add("carid", "")
        Session.Add("enginetype", "")
        Session.Add("cc", "")
        Session.Add("color", "")
        Session.Add("metalic", "")
        Session.Add("power", "")
        Session.Add("pow", "")
        Session.Add("gear", "")
        Session.Add("nummi", "")
        Session.Add("mi", "")
        Session.Add("numdoor", "")
        Session.Add("numgear", "")
        Session.Add("numseat", "")
        Session.Add("numpump", "")
        Session.Add("numprao", "")
        Session.Add("numpraodrive", "")
        Session.Add("numweigth", "")
        Session.Add("numweigthload", "")
        Session.Add("fuelconsume", "")
        Session.Add("fueltank", "")
        Session.Add("lastmm", "")
        Session.Add("lastyyyy", "")
        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")
        Session.Add("v_access", "")

        'Session.Add("acc", "")
        'Session.Add("acc1", "")
        'Session.Add("acc2", "")
        'Session.Add("acc3", "")
        'Session.Add("accessory", "")
        'Session.Add("accessory_name", "")

        Session.Add("description", "")
        Session.Add("img1", "")
        Session.Add("img2", "")
        Session.Add("img3", "")
        Session.Add("img4", "")
        Session.Add("img5", "")

        Session.Add("cust_id", "")
        '---------contact data ------------------------
        Session.Add("title", "")
        Session.Add("name", "")
        Session.Add("surname", "")
        Session.Add("email", "")
        Session.Add("phone1", "")
        Session.Add("phone2", "")
        Session.Add("fax", "")
        Session.Add("addr", "")
        Session.Add("per_province", "")
        Session.Add("per_district", "")
        Session.Add("questionare", "")
        Session.Add("advertise", "")
        Session.Add("accept", "")
    End Sub
    Private Sub addSession()
        Session.Add("title", title.SelectedValue)
        Session.Add("name", name.Text)
        Session.Add("surname", surname.Text)
        Session.Add("email", email.Text)
        Session.Add("phone1", phone1.Text)
        Session.Add("phone2", phone2.Text)
        Session.Add("fax", fax.Text)
        Session.Add("addr", address.Text)
        Session.Add("per_province", p_province)
        Session.Add("per_district", p_district)
        Session.Add("questionare", questionare.Checked)
        Session.Add("advertise", advertise.Checked)
        Session.Add("accept", accept.Checked)

    End Sub
    Private Sub setValue()
        If Session("title") = "" Then
            title.SelectedValue = "0"
        Else
            title.SelectedValue = Session("title")
        End If
        name.Text = Session("name")
        surname.Text = Session("surname")
        email.Text = Session("email")
        phone1.Text = Session("phone1")
        phone2.Text = Session("phone2")
        fax.Text = Session("fax")
        address.Text = Session("addr")



        If Session("questionare") Then
            questionare.Checked = True
        Else
            questionare.Checked = False
        End If
        If Session("advertise") Then
            advertise.Checked = True
        Else
            advertise.Checked = False
        End If
        If Session("accept") Then
            accept.Checked = True
        Else
            accept.Checked = False
        End If
    End Sub


    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click

        If IsValid Then
            addSession()
            Select Case Session("cat")
                Case 1
                    Response.Redirect("offer4_car_preview.aspx")
                Case 2
                    Response.Redirect("offer4_moto_preview.aspx")
                Case 3
                    Response.Redirect("offer4_truck_preview.aspx")
                Case 4
                    Response.Redirect("offer4_part_preview.aspx")
            End Select

        End If

    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        clearSession()
        Response.Redirect("offer6_intro.aspx")
    End Sub
End Class
