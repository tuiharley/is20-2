Public Class offer4_part_preview
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents cust As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents openTime As System.Web.UI.WebControls.Label
    Protected WithEvents editPartData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents editContact As System.Web.UI.WebControls.HyperLink
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents partBrand As System.Web.UI.WebControls.Label

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

        initLink()
        carBrandLabel()
        showData()
        showPictures()
    End Sub
    Private Sub initLink()
        editPartData.NavigateUrl = "offer1_part_datas.aspx?edit=edit&package_id=" & Session("package_id")
        editContact.NavigateUrl = "offer3_contact_datas.aspx?edit=edit"
    End Sub
    Private Sub carBrandLabel()
        partBrand.Text = CategoryDB.getCategoryName(Session("sBrands")) & " : " & Session("brand") & " / " & Session("model")
        partBrand.ForeColor = Color.White
        partBrand.CssClass = "H1_white"

        If Session("price") = "" Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(Session("price"))
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"
    End Sub
    Private Sub showData()
        category.Text = PartsTypeDB.getPartTypeName(Session("sModel"))

        If Session("price") = "" Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(Session("price")) & "  บาท"
        End If

        'status.Text = CarStatusDB.getStatusName(Session("other"))
        If Session("other") = "" Then
            status.Text = "-"
        Else
            status.Text = Session("other")
        End If

        If Session("partyear") = "yyyy" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = Session("partyear")
        End If


        If Session("nummi") = "" Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = Session("nummi") & "  " & Session("mi")
        End If

        If Session("colorcode") = "" Then
            colorcode.Text = "-"
        Else
            colorcode.Text = Session("colorcode") & "  " & Session("colorcode")
        End If

        'colors.Text = ColorDB.getColorName(Session("color"))
        If Session("color") = "" Then
            colors.Text = "-"
        Else
            colors.Text = Session("color")
        End If

        If Session("acc") = "1" Then
            accident.Text = "ชำรุด"
        Else
            accident.Text = "สินค้าไม่ชำรุด"
        End If

        If Session("insur") = "" Then
            insurrunce.Text = "-"
        Else
            If Session("insur") = "1" Then
                insurrunce.Text = "สินค้ามีประกัน"
            Else
                insurrunce.Text = "สินค้าไม่มีประกัน"
            End If
        End If

        If Session("partid") = "" Then
            carid.Text = "-"
        Else
            carid.Text = Session("partid")
        End If
        description.Text = Session("description")

        'Dim x As Integer, i As Integer, n As Integer
        'n = 1
        'x = Math.Ceiling(Session("description").length / 50)

        'For i = 1 To x
        '    description.Text = description.Text & Mid(Session("description"), n, 50) & "<BR>"
        '    n = n + 50
        'Next
        'cust.Text = TitleDB.getTitleName(Session("title")) & Session("name") & " " & Session("surname")
        Addr.Text = "อำเภอ " & DistrictDB.getDistrictName(Session("per_district")) & " จังหวัด " & ProvinceDB.getProvinceName(Session("per_province"))
        Tel.Text = Session("phone1")
        If Session("phone2") <> "" Then
            Tel.Text = Tel.Text & ", " & Session("phone2")
        End If
        fax.Text = Session("fax")
        'openTime.Text = "-"

    End Sub
    Private Sub showpictures()

        'Session("img2").PostedFile.FileName()
        'Session("img3").PostedFile.FileName()
        'Session("img4").PostedFile.FileName()
        'Session("img5").PostedFile.FileName()
        Image1.Width = Unit.Pixel(327)
        Image1.Height = Unit.Pixel(327)

        If (Session("img1").PostedFile.ContentLength = 0) Or (Session("img1").PostedFile.ContentLength >= 150010) Then
            Image1.ImageUrl = "../../images/objects/no_image_60x45.gif"
        Else
            Image1.ImageUrl = Session("img1").PostedFile.FileName()
        End If



        'Image1.ImageUrl = Session("Image1").ImageUrl
        'Image2.ImageUrl = Session("Image2").ImageUrl
        'Image3.ImageUrl = Session("Image3").ImageUrl
        'Image4.ImageUrl = Session("Image4").ImageUrl
        'Image5.ImageUrl = Session("Image5").ImageUrl



    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("offer5_conclusion.aspx")
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
    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        clearSession()
        Response.Redirect("offer6_intro.aspx")
    End Sub
End Class
