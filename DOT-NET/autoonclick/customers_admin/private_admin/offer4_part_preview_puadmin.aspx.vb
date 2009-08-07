Public Class offer4_part_preview_puadmin

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
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Len(Session("isFirstTime")) > 0 Then
            Session("isFirstTime") = ""
            Response.Redirect("startpage_example1.aspx")
        End If
        Session("isFirstTime") = ""

        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else
            initLink()
            carBrandLabel()
            showData()
            showpictures()
        End If
    End Sub
    Private Sub initLink()
        editPartData.NavigateUrl = "offer1_part_datas_puadmin.aspx?edit=edit&package_id=" & Session("package_id")
        editContact.NavigateUrl = "offer3_contact_datas_puadmin.aspx?from=offer4_part_preview_puadmin"
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

        If PartsTypeDB.getPartTypeName(Session("sModel")) = "อื่นๆ" Then
            If Session("other") <> "" Then
                category.Text = Session("other")
            Else
                category.Text = "-"
            End If
        Else
            category.Text = PartsTypeDB.getPartTypeName(Session("sModel"))
        End If



        If Session("price") = "" Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(Session("price")) & "  บาท"
        End If

        'status.Text = CarStatusDB.getStatusName(Session("other"))
        If Session("status") = "" Then
            status.Text = "-"
        Else
            status.Text = StatusDB.getStatusName(Session("status"))
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

        Dim myInfo As A_Customer
        myInfo = CustomerDB.getA_customer(Session("cust_id"))
        Addr.Text = "อำเภอ " & DistrictDB.getDistrictName(myInfo.district) & " จังหวัด " & ProvinceDB.getProvinceName(myInfo.province)
        Tel.Text = myInfo.phone1
        If myInfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myInfo.phone2
        End If
        fax.Text = myInfo.fax
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
        Response.Redirect("offer5_conclusion_puadmin.aspx")
    End Sub


    Private Sub clearSession()
        '----------car data-----------------------
        Session.Add("cat", "")

        Session.Add("sBrands", "")
        Session.Add("brandIndex", "")
        Session.Add("sModel", "")
        Session.Add("modelIndex", "")
        Session.Add("status", "")

        Session.Add("other", "")
        Session.Add("brand", "")
        Session.Add("model", "")
        Session.Add("partid", "")
        Session.Add("partyear", "")
        Session.Add("color", "")
        Session.Add("colorcode", "")
        Session.Add("nummi", "")
        Session.Add("mi", "")

        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")
        Session.Add("description", "")

        Session.Add("edit", "")
        Session.Add("img1", "")
    End Sub
    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        clearSession()
        Response.Redirect("startpage_example1.aspx")
    End Sub
End Class
