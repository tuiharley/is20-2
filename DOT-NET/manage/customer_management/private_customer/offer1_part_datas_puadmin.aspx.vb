Imports System.Data
Imports System.Data.OleDb
Public Class offer1_part_datas_puadmin
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_pic As System.Web.UI.WebControls.Label
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents brand As System.Web.UI.WebControls.TextBox
    Protected WithEvents model As System.Web.UI.WebControls.TextBox
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents BrandRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ModelRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents other As System.Web.UI.WebControls.TextBox
    Protected WithEvents partid As System.Web.UI.WebControls.TextBox
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents color As System.Web.UI.WebControls.TextBox
    Protected WithEvents colorcode As System.Web.UI.WebControls.TextBox
    Protected WithEvents nummi As System.Web.UI.WebControls.TextBox
    Protected WithEvents mi As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents insur As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents acc As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents price As System.Web.UI.WebControls.TextBox
    Protected WithEvents description As System.Web.UI.WebControls.TextBox
    Protected WithEvents accRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents img1 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents PriceRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents NummiRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents CustomValidator1 As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents parttype As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents category As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents CatValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents partsValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents partyear As System.Web.UI.WebControls.DropDownList

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public brand_inside As String
    Public model_inside As String
    Public brandIndex As String
    Public modelIndex As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim package_id As String
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Not IsPostBack Then

            package_id = Request.QueryString("package_id")
            Session.Add("package_id", package_id)
            Session("cat") = 4
        End If

        brand_inside = Request.Form("category")
        model_inside = Request.Form("parttype")

        brandIndex = Request.Form("brandIndex")
        modelIndex = Request.Form("modelIndex")
        If modelIndex = "" Then
            modelIndex = 0
        End If

        '--------------if Edit -----------------------------
        If Request.QueryString("edit") = "edit" Then
            If Not IsPostBack Then
                setValue()

                brand_inside = Session("sBrands")
                model_inside = Session("sModel")
                brandIndex = Session("brandIndex")
                modelIndex = Session("modelIndex")
            End If
            package_id = Session("package_id")
        End If

        '---------------------------------------------------

    End Sub

    Private Sub setHeadPackage(ByVal package_id As Integer)
        p_price.Text = PackageDB.getPackagePrice(package_id)
        p_period.Text = PackageDB.getPackageWeek(package_id)
        p_pic.Text = PackageDB.getPackagePic(package_id)
    End Sub
    Private Sub status_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles status.Init
        Dim conn As OleDbConnection
        Dim command As OleDbCommand
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String

        conn = New OleDbConnection(Session("conn"))

        sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS in (3,4) ORDER BY STATUS"
        da = New OleDbDataAdapter(sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("STATUS") = 0
        DRow.Item("STATUS_NAME") = "โปรดระบุ"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        status.DataSource = ds.Tables("status")
        status.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub partyear_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles partyear.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("YEAR") = "yyyy"
        DRow.Item("YEAR_NAME") = "yyyy"
        DTable.Rows.InsertAt(DRow, 0)
        Dim i As Int16
        For i = 0 To (Year(Now)) - 1900
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str((Year(Now)) - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str((Year(Now)) - i), 4)
            DTable.Rows.Add(DRow)
        Next
        partyear.DataSource = DTable
        partyear.DataBind()
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        If IsValid Then

            addSession(brand_inside)

            Response.Redirect("offer4_part_preview_puadmin.aspx")

        End If
    End Sub

    Private Sub addSession(ByVal cat As Integer)
        Session.Add("cat", cat)

        Session.Add("sBrands", brand_inside)
        Session.Add("brandIndex", brandIndex)
        Session.Add("sModel", model_inside)
        Session.Add("modelIndex", modelIndex)
        Session.Add("status", status.SelectedValue)
        Session.Add("other", other.Text)
        Session.Add("brand", brand.Text)
        Session.Add("model", model.Text)
        Session.Add("partid", partid.Text)
        Session.Add("partyear", partyear.SelectedValue)
        Session.Add("color", color.Text)
        Session.Add("colorcode", colorcode.Text)
        Session.Add("nummi", nummi.Text)
        Session.Add("mi", mi.SelectedValue)

        Session.Add("insur", insur.SelectedValue)
        Session.Add("price", price.Text)
        Session.Add("acc", acc.SelectedValue)
        Session.Add("description", description.Text)


        If Session("edit") = "True" Then
            If (img1.PostedFile.ContentLength > 0) And (img1.PostedFile.ContentLength < 150010) Then
                Session.Add("img1", img1)
            ElseIf (img1.PostedFile.ContentLength = 0) And (Image1.ImageUrl = "../../images/objects/no_image_80x60.gif") Then
                Session.Add("img1", img1)
            End If
        Else
            Session.Add("img1", img1)
        End If


    End Sub
    Private Sub clearSession()
        Session.Add("cat", "")
        Session.Add("sBrands", "")
        Session.Add("brandIndex", "")
        Session.Add("sModel", "")
        Session.Add("modelIndex", "")

        Session.Add("other", "")
        Session.Add("brand", "")
        Session.Add("model", "")
        Session.Add("partid", "")
        Session.Add("status", "")
        Session.Add("partyear", "")
        Session.Add("color", "")
        Session.Add("colorcode", "")
        Session.Add("nummi", "")
        Session.Add("mi", "")
        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")
        Session.Add("description", "")
        Session.Add("img1", "")


        Session.Add("package_id", "")
    End Sub
    Private Sub setValue()




        other.Text = Session("other")
        brand.Text = Session("brand")
        model.Text = Session("model")
        partid.Text = Session("partid")

        If Session("status") = "" Then
            status.SelectedValue = "0"
        Else
            status.SelectedValue = Session("status")
        End If


        If Session("partyear") = "" Then
            partyear.SelectedValue = "yyyy"
        Else
            partyear.SelectedValue = Session("partyear")
        End If
        color.Text = Session("color")
        colorcode.Text = Session("colorcode")
        nummi.Text = Session("nummi")
        If Session("mi") <> "" Then
            If Session("mi") = "1" Then
                mi.SelectedIndex = 1
            Else
                mi.SelectedIndex = 0
            End If
        End If
        If Session("insur") <> "" Then
            If Session("insur") = "1" Then
                insur.SelectedIndex = 1
            Else
                insur.SelectedIndex = 0
            End If
        End If
        price.Text = Session("price")
        If Session("acc") <> "" Then
            If Session("acc") = "1" Then
                acc.SelectedIndex = 1
            Else
                acc.SelectedIndex = 0
            End If
        End If
        description.Text = Session("description")

        If (Session("img1").PostedFile.ContentLength = 0) Or (Session("img1").PostedFile.ContentLength >= 150010) Then
            Image1.ImageUrl = "../../images/objects/no_image_80x60.gif"
        Else
            Image1.ImageUrl = Session("img1").PostedFile.FileName()
        End If

    End Sub


    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        clearSession()
        Response.Redirect("private_ad_list.aspx?cust_id=" & Session("cust_id"))
    End Sub




End Class
