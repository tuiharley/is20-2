Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Public Class edit1_part_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents color As System.Web.UI.WebControls.TextBox
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents nummi As System.Web.UI.WebControls.TextBox
    Protected WithEvents mi As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents insur As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents NummiRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents PriceRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents price As System.Web.UI.WebControls.TextBox

    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents img1 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents description As System.Web.UI.WebControls.TextBox
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents acc As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents model As System.Web.UI.WebControls.TextBox
    Protected WithEvents CatValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents partsValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents other As System.Web.UI.WebControls.TextBox
    Protected WithEvents brand As System.Web.UI.WebControls.TextBox
    Protected WithEvents BrandRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ModelRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents partid As System.Web.UI.WebControls.TextBox
    Protected WithEvents CustomValidator1 As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents partyear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents colorcode As System.Web.UI.WebControls.TextBox
    Protected WithEvents accRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents category As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents parttype As System.Web.UI.HtmlControls.HtmlSelect

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
        Dim carid As Integer = Request.QueryString("car")
        Dim from_p As String = Request.QueryString("from")
        Dim noticeid As Integer
        If from_p = "start" Then
            noticeid = Request.QueryString("notice_id")
            Session("notice_id") = noticeid
        End If

        brand_inside = Request.Form("category")
        model_inside = Request.Form("parttype")

        brandIndex = Request.Form("brandIndex")
        modelIndex = Request.Form("modelIndex")
        If modelIndex = "" Then
            modelIndex = 0
        End If

        Dim myInfo As A_Customer = CustomerDB.getA_customer(Session("cust_id"))
        Dim myPart As Part

        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                myPart = PartsDB.getPart(carid)

                setValue(myPart, myInfo)


            End If
        End If

    End Sub

    Private Sub setValue(ByVal myPart As Part, ByRef myInfo As A_Customer)


        Session("brandIndex") = myPart.Category
        Session("modelIndex") = myPart.Type

        brand.Text = myPart.Brand
        model.Text = myPart.Model
        other.Text = myPart.Name
        partid.Text = myPart.Code

        If myPart.Status = 0 Then
            status.SelectedValue = "0"
        Else
            status.SelectedValue = myPart.Status
        End If

        If myPart.Year = "" Then
            partyear.SelectedValue = "yyyy"
        Else
            partyear.SelectedValue = myPart.Year
        End If

        color.Text = myPart.Color
        colorcode.Text = myPart.Colorcode

        If myPart.Miles = 0 Then
            nummi.Text = ""
        Else
            nummi.Text = myPart.Miles
        End If

        If myPart.MilesType <> "" Then
            If myPart.MilesType = "mi" Then
                mi.SelectedIndex = 1
            Else
                mi.SelectedIndex = 0
            End If
        End If

        If myPart.Insurrance <> 999 Then
            If myPart.Insurrance = 1 Then
                insur.SelectedIndex = 0
            Else
                insur.SelectedIndex = 1
            End If
        End If

        If myPart.Accident = 1 Then
            acc.SelectedIndex = 0
        Else
            acc.SelectedIndex = 1
        End If

        If myPart.Price = 0 Then
            price.Text = ""
        Else
            price.Text = myPart.Price
        End If


        description.Text = myPart.Information



        If (myPart.Image = "") Then
            Image1.ImageUrl = "../../images/objects/no_image_80x60.gif"
        Else
            Image1.ImageUrl = "/userData/" & myInfo.username & "/" & NoticeDB.getImgPath(myInfo.id, myPart.id, 4) & "/" & myPart.Image
        End If



    End Sub
    Private Sub saveValue()
        Dim editedCar As Part
        Dim oldCar As Part

        editedCar.id = NoticeDB.getDataID(Session("notice_id"))
        oldCar = PartsDB.getPart(editedCar.id)

        editedCar.Category = Request.Form("category")
        editedCar.Type = Request.Form("parttype")

        editedCar.Name = other.Text
        editedCar.Brand = brand.Text
        editedCar.Model = model.Text
        editedCar.Code = partid.Text

        editedCar.Status = status.SelectedValue
        editedCar.Year = partyear.SelectedValue
        editedCar.Year_Ord = checkFistYear2(partyear.SelectedValue)
        editedCar.Color = color.Text
        editedCar.Colorcode = colorcode.Text

        editedCar.Miles = String_chk.checknullStrInt(nummi.Text)
        editedCar.MilesType = mi.SelectedValue
        editedCar.Insurrance = String_chk.checknullStrInt(insur.SelectedValue)
        editedCar.Price = String_chk.checknullStrInt(price.Text)
        editedCar.Accident = acc.SelectedValue

        editedCar.Information = description.Text

        If img1.PostedFile.ContentLength <> 0 And img1.PostedFile.ContentLength < 150010 Then
            Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

            Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
            Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
            'objdir.CreateSubdirectory(usrName & "\" & Session("notice_id") & "\" & NoticeDetailDB.getNoticeDetailID(Session("notice_id")))

            Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & Session("notice_id") & "\" & NoticeDetailDB.getNoticeDetailID(Session("notice_id"))
            Dim tempFile As String

            tempFile = Utilities.UploadFile(img1, temppath)
            Dim FileName As String = Path.GetFileName(img1.PostedFile.FileName)

            editedCar.Image = FileName
        Else
            editedCar.Image = oldCar.Image
        End If



        'Response.Write(CarDB.editCar(editedCar))
        PartsDB.editPart(editedCar)

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

    Private Function checkFistYear2(ByVal v_fyyyy As String) As Integer
        Dim v_first As String = v_fyyyy
        If v_first = "" Or v_first = "yyyy" Then
            v_first = 0
        End If
        Return v_first
    End Function

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("detail_part.aspx?notice_id=" & Session("notice_id"))
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        saveValue()
        Response.Redirect("detail_part.aspx?notice_id=" & Session("notice_id"))
    End Sub
End Class
