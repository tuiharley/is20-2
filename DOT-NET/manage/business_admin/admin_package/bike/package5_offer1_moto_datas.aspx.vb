Imports System.Data
Imports System.Data.OleDb
Public Class package5_offer1_moto_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Brands As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents BrandValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents Model As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents submodel As System.Web.UI.WebControls.TextBox
    Protected WithEvents carid As System.Web.UI.WebControls.TextBox
    Protected WithEvents enginetype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents EnginetypeValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents color As System.Web.UI.WebControls.DropDownList
    Protected WithEvents metalic As System.Web.UI.WebControls.CheckBox
    Protected WithEvents ColorValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents ModelValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents gear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents drive As System.Web.UI.WebControls.DropDownList
    Protected WithEvents numgear As System.Web.UI.WebControls.TextBox
    Protected WithEvents NumgearRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents lastmm As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lastyyyy As System.Web.UI.WebControls.DropDownList
    Protected WithEvents price As System.Web.UI.WebControls.TextBox
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents carStatusValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents check_status As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents firstmm As System.Web.UI.WebControls.DropDownList
    Protected WithEvents firstyyyy As System.Web.UI.WebControls.DropDownList
    Protected WithEvents FristmmValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents FristyyyyValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents CartypeValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents cartype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents cc As System.Web.UI.WebControls.TextBox
    Protected WithEvents CcRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ccValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents power As System.Web.UI.WebControls.TextBox
    Protected WithEvents pow As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Regularexpressionvalidator1 As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents mi As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents NummiRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents nummi As System.Web.UI.WebControls.TextBox
    Protected WithEvents numpump As System.Web.UI.WebControls.TextBox
    Protected WithEvents NumpumpRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents insur As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents acc As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents AccRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents accessory1 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents accessory2 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents accessory3 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents description As System.Web.UI.WebControls.TextBox
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Image3 As System.Web.UI.WebControls.Image
    Protected WithEvents img1 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents img2 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents img3 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary

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
    Public acc1 As String
    Public acc2 As String
    Public acc3 As String
    Public accessory_name As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim package_id As String
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../../public/login/login.aspx")
        'Else
        brand_inside = Request.Form("brands")
        model_inside = Request.Form("model")

        brandIndex = Request.Form("brandIndex")
        modelIndex = Request.Form("modelIndex")
        If modelIndex = "" Then
            modelIndex = 0
        End If

        '--------------if Edit -----------------------------
        If Request.QueryString("edit") = "edit" Then
            Session("edit") = "True"
            If Not IsPostBack Then
                setValue()
                brand_inside = Session("sBrands")
                model_inside = Session("sModel")
                brandIndex = Session("brandIndex")
                modelIndex = Session("modelIndex")
            End If



        End If
        '---------------------------------------------------



        If status.SelectedValue = "1" Then
            firstmm.Enabled = False
            firstyyyy.Enabled = False
        Else
            firstmm.Enabled = True
            firstyyyy.Enabled = True
        End If

        If Not IsPostBack Then
            Session("noticeid") = Request.QueryString("noticeid")
        End If
        'End If

    End Sub
    Private Sub status_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles status.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS IN (1,2) ORDER BY STATUS"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("STATUS") = 0
        DRow.Item("STATUS_NAME") = "�ô�к�"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        status.DataSource = ds.Tables("status")
        status.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub firstmm_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles firstmm.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("MONTH") = "mm"
        DRow.Item("MONTH_NAME") = "mm"
        DTable.Rows.Add(DRow)
        Dim i As Int16
        For i = 1 To 12
            DRow = DTable.NewRow()
            DRow.Item("MONTH") = Right("0" & i, 2)
            DRow.Item("MONTH_NAME") = Right("0" & i, 2)
            DTable.Rows.Add(DRow)
        Next
        firstmm.DataSource = DTable
        firstmm.DataBind()
    End Sub
    Private Sub firstyyyy_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles firstyyyy.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("YEAR") = "yyyy"
        DRow.Item("YEAR_NAME") = "yyyy"
        DTable.Rows.InsertAt(DRow, 0)
        Dim i As Int16
        Year(New Date)
        For i = 0 To 2006 - 1900
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(2006 - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(2006 - i), 4)
            DTable.Rows.Add(DRow)
        Next
        firstyyyy.DataSource = DTable
        firstyyyy.DataBind()
    End Sub
    Private Sub cartype_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles cartype.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT CARTYPE, CARTYPE_NAME FROM CARTYPE WHERE CATEGORY=2"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "cartype")

        Dim DRow As DataRow = ds.Tables("cartype").NewRow()
        DRow.Item("CARTYPE") = 0
        DRow.Item("CARTYPE_NAME") = "�ô�к�"
        ds.Tables("cartype").Rows.InsertAt(DRow, 0)
        cartype.DataSource = ds.Tables("cartype")
        cartype.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub enginetype_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles enginetype.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ENGINETYPE, ENGINETYPE_NAME FROM ENGINETYPE ORDER BY ENGINETYPE"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "enginetype")

        Dim DRow As DataRow = ds.Tables("enginetype").NewRow()
        DRow.Item("ENGINETYPE") = 0
        DRow.Item("ENGINETYPE_NAME") = "�ô�к�"
        ds.Tables("enginetype").Rows.InsertAt(DRow, 0)
        enginetype.DataSource = ds.Tables("enginetype")
        enginetype.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub color_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles color.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT COLOR, COLOR_NAME FROM COLOR ORDER BY COLOR"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "color")

        Dim DRow As DataRow = ds.Tables("color").NewRow()
        DRow.Item("COLOR") = 0
        DRow.Item("COLOR_NAME") = "�ô�к�"
        ds.Tables("color").Rows.InsertAt(DRow, 0)
        color.DataSource = ds.Tables("color")
        color.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub gear_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles gear.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT GEAR, GEAR_NAME FROM GEAR ORDER BY GEAR"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "gear")

        Dim DRow As DataRow = ds.Tables("gear").NewRow()
        DRow.Item("GEAR") = 0
        DRow.Item("GEAR_NAME") = "����к�"
        ds.Tables("gear").Rows.InsertAt(DRow, 0)
        gear.DataSource = ds.Tables("gear")
        gear.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub drive_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles drive.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT DRIVE, DRIVE_NAME FROM DRIVE ORDER BY DRIVE"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "drive")

        Dim DRow As DataRow = ds.Tables("drive").NewRow()
        DRow.Item("DRIVE") = 0
        DRow.Item("DRIVE_NAME") = "����к�"
        ds.Tables("drive").Rows.InsertAt(DRow, 0)
        drive.DataSource = ds.Tables("drive")
        drive.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub lastmm_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles lastmm.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("MONTH") = "mm"
        DRow.Item("MONTH_NAME") = "mm"
        DTable.Rows.Add(DRow)
        Dim i As Int16
        For i = 1 To 12
            DRow = DTable.NewRow()
            DRow.Item("MONTH") = Right("0" & i, 2)
            DRow.Item("MONTH_NAME") = Right("0" & i, 2)
            DTable.Rows.Add(DRow)
        Next
        lastmm.DataSource = DTable
        lastmm.DataBind()
    End Sub
    Private Sub lastyyyy_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lastyyyy.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("YEAR") = "yyyy"
        DRow.Item("YEAR_NAME") = "yyyy"
        DTable.Rows.InsertAt(DRow, 0)
        Dim i As Int16
        Year(New Date)
        For i = 0 To 2006 - 1900
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(2006 - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(2006 - i), 4)
            DTable.Rows.Add(DRow)
        Next
        lastyyyy.DataSource = DTable
        lastyyyy.DataBind()
    End Sub
    Private Sub accessory1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles accessory1.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM BIKE_ACCESSORY WHERE ACCESSORY <= 2 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory1")

        accessory1.DataSource = ds.Tables("accessory1")
        accessory1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory2_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles accessory2.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM BIKE_ACCESSORY WHERE ACCESSORY >= 3 and ACCESSORY <= 4 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory2")

        accessory2.DataSource = ds.Tables("accessory2")
        accessory2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory3_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles accessory3.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM BIKE_ACCESSORY WHERE ACCESSORY >= 5 and ACCESSORY <=6 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory3")

        accessory3.DataSource = ds.Tables("accessory3")
        accessory3.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Sub setValue()

        If Session("status") = "" Then
            status.SelectedValue = "0"
        Else
            status.SelectedValue = Session("status")
        End If
        If Session("firstmm") = "" Then
            firstmm.SelectedValue = "mm"
        Else
            firstmm.SelectedValue = Session("firstmm")
        End If
        If Session("firstyyyy") = "" Then
            firstyyyy.SelectedValue = "yyyy"
        Else
            firstyyyy.SelectedValue = Session("firstyyyy")
        End If
        submodel.Text = Session("submodel")
        If Session("cartype") = "" Then
            cartype.SelectedValue = "0"
        Else
            cartype.SelectedValue = Session("cartype")
        End If
        carid.Text = Session("carid")
        If Session("enginetype") = "" Then
            enginetype.SelectedValue = "0"
        Else
            enginetype.SelectedValue = Session("enginetype")
        End If
        cc.Text = Session("cc")
        If Session("color") = "" Then
            color.SelectedValue = "0"
        Else
            color.SelectedValue = Session("color")
        End If
        If Session("metalic") Then
            metalic.Checked = True
        Else
            metalic.Checked = False
        End If
        power.Text = Session("power")
        If Session("pow") <> "" Then
            If Session("pow") = "kw" Then
                pow.SelectedIndex = 1
            Else
                pow.SelectedIndex = 0
            End If
        End If
        If Session("gear") = "" Then
            gear.SelectedValue = "0"
        Else
            gear.SelectedValue = Session("gear")
        End If
        nummi.Text = Session("nummi")
        If Session("mi") <> "" Then
            If Session("mi") = "mi" Then
                mi.SelectedIndex = 1
            Else
                mi.SelectedIndex = 0
            End If
        End If
        If Session("drive") = "" Then
            drive.SelectedValue = "0"
        Else
            drive.SelectedValue = Session("drive")
        End If
        numgear.Text = Session("numgear")
        numpump.Text = Session("numpump")
        If Session("lastmm") = "" Then
            lastmm.SelectedValue = "mm"
        Else
            lastmm.SelectedValue = Session("lastmm")
        End If
        If Session("lastyyyy") = "" Then
            lastyyyy.SelectedValue = "yyyy"
        Else
            lastyyyy.SelectedValue = Session("lastyyyy")
        End If
        If Session("insur") <> "" Then
            If Session("insur") = "1" Then
                insur.SelectedIndex = 0
            Else
                insur.SelectedIndex = 1
            End If
        End If
        price.Text = Session("price")
        If Session("acc") <> "" Then
            If Session("acc") = "1" Then
                acc.SelectedIndex = 0
            Else
                acc.SelectedIndex = 1
            End If
        End If

        description.Text = Session("description")

        Dim n As Integer
        Dim v_acc As Accessory

        Dim TempObjQueue As IEnumerator = Session("v_access").GetEnumerator()
        While (TempObjQueue.MoveNext)

            v_acc = TempObjQueue.Current
            Select Case v_acc.type
                Case 1
                    For n = 0 To accessory1.Items.Count - 1
                        If accessory1.Items(n).Value = v_acc.id Then
                            accessory1.Items(n).Selected = True
                        End If
                    Next
                Case 2
                    For n = 0 To accessory2.Items.Count - 1
                        If accessory2.Items(n).Value = v_acc.id Then
                            accessory2.Items(n).Selected = True
                        End If
                    Next
                Case 3
                    For n = 0 To accessory3.Items.Count - 1
                        If accessory3.Items(n).Value = v_acc.id Then
                            accessory3.Items(n).Selected = True
                        End If
                    Next
            End Select
        End While


        If (Session("img1").PostedFile.ContentLength = 0) Or (Session("img1").PostedFile.ContentLength >= 150010) Then
            Image1.ImageUrl = "../../../images/objects/no_image_80x60.gif"
        Else
            Image1.ImageUrl = Session("img1").PostedFile.FileName()
        End If

        If (Session("img2").PostedFile.ContentLength = 0) Or (Session("img2").PostedFile.ContentLength >= 150010) Then
            Image2.ImageUrl = "../../../images/objects/no_image_60x45.gif"
        Else
            Image2.ImageUrl = Session("img2").PostedFile.FileName()
        End If

        If (Session("img3").PostedFile.ContentLength = 0) Or (Session("img3").PostedFile.ContentLength >= 150010) Then
            Image3.ImageUrl = "../../../images/objects/no_image_60x45.gif"
        Else
            Image3.ImageUrl = Session("img3").PostedFile.FileName()
        End If


    End Sub
    Private Sub addSession(ByVal cat As Integer)
        Session.Add("cat", cat)

        Session.Add("sBrands", brand_inside)
        Session.Add("brandIndex", brandIndex)
        Session.Add("sModel", model_inside)
        Session.Add("modelIndex", modelIndex)
        Session.Add("status", status.SelectedValue)
        Session.Add("firstmm", firstmm.SelectedValue)
        Session.Add("firstyyyy", firstyyyy.SelectedValue)
        Session.Add("submodel", submodel.Text)
        Session.Add("cartype", cartype.SelectedValue)
        Session.Add("carid", carid.Text)
        Session.Add("enginetype", enginetype.SelectedValue)
        Session.Add("cc", cc.Text)
        Session.Add("color", color.SelectedValue)
        Session.Add("metalic", metalic.Checked)
        Session.Add("power", power.Text)
        Session.Add("pow", pow.SelectedValue)
        Session.Add("gear", gear.SelectedValue)
        Session.Add("drive", drive.SelectedValue)
        Session.Add("nummi", nummi.Text)
        Session.Add("mi", mi.SelectedValue)
        ' Session.Add("numdoor", numdoor.Text)
        Session.Add("numgear", numgear.Text)
        'Session.Add("numseat", numseat.Text)
        Session.Add("numpump", numpump.Text)
        'Session.Add("fuelconsume", fuelconsume.Text)
        'Session.Add("fueltank", fueltank.Text)
        Session.Add("lastmm", lastmm.SelectedValue)
        Session.Add("lastyyyy", lastyyyy.SelectedValue)
        Session.Add("insur", insur.SelectedValue)
        Session.Add("price", price.Text)
        Session.Add("acc", acc.SelectedValue)
        Session.Add("v_access", getAcc())

        Session.Add("description", description.Text)



        Session.Add("img1", img1)
        Session.Add("img2", img2)
        Session.Add("img3", img3)

    End Sub
    Private Function getAcc() As Queue
        Dim i As Integer, n As Integer
        Dim tmp As Accessory
        Dim v_access As Queue
        v_access = New Queue


        For i = 0 To accessory1.Items.Count - 1
            If accessory1.Items(i).Selected Then
                tmp = New Accessory
                tmp.id = accessory1.Items(i).Value
                tmp.name = accessory1.Items(i).Text
                tmp.type = 1
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next

        For i = 0 To accessory2.Items.Count - 1
            If accessory2.Items(i).Selected Then
                tmp = New Accessory
                tmp.id = accessory2.Items(i).Value
                tmp.name = accessory2.Items(i).Text
                tmp.type = 2
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next

        For i = 0 To accessory3.Items.Count - 1
            If accessory3.Items(i).Selected Then
                tmp = New Accessory
                tmp.id = accessory3.Items(i).Value
                tmp.name = accessory3.Items(i).Text
                tmp.type = 3
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next


        Return v_access

    End Function
    Private Sub clearSession()
        Session.Add("cat", "")

        Session.Add("sBrands", "")
        'Session.Add("brandIndex", "")
        Session.Remove("brandIndex")
        Session.Add("sModel", "")
        'Session.Add("modelIndex", "")
        Session.Remove("modelIndex")
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
        Session.Add("fuelconsume", "")
        Session.Add("fueltank", "")
        Session.Add("lastmm", "")
        Session.Add("lastyyyy", "")
        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")
        Session.Add("v_access", "")

        Session.Add("description", "")
        Session.Add("img1", "")
        Session.Add("img2", "")
        Session.Add("img3", "")
        'Session.Add("img4", "")
        'Session.Add("img5", "")

        Session.Add("package_id", "")
        Session.Add("edit", "")
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        'If IsValid() Then
        '    addSession(2)
        '    Response.Redirect("package5_offer2_moto_preview.aspx")
        'End If

        If IsValid() Then
            addSession(2)
            If Session("edit") = "True" Then
                Session("edit") = "False"
                Response.Redirect("package5_offer2_moto_preview.aspx")
            Else
                Response.Redirect("package5_offer2_moto_preview.aspx")
            End If

        End If

    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        clearSession()
        Dim pageNa As String

        'Response.Redirect("../../startpage_example_with_package.aspx")
        If Session("pagename") = "startpage_example_with_package.aspx" Then
            pageNa = "../../startpage/" & Session("pagename")
        Else
            pageNa = Session("pagename")
        End If
        Response.Redirect(pageNa)
    End Sub
End Class
