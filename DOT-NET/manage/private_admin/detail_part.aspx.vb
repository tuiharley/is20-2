Public Class detail_part
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
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents partBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents notice As System.Web.UI.WebControls.Label
    Protected WithEvents date_post As System.Web.UI.WebControls.Label
    Protected WithEvents show_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents edit_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents del_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents changeContact As System.Web.UI.WebControls.HyperLink

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim myCar As Part
    Public tbl_background As String
    Public tbl_word As String
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim notice_id As String = Request.QueryString("notice_id")
        Dim myInfo As A_Customer = CustomerDB.getA_customer(Session("cust_id"))
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../public/login/login.aspx")
        'Else
        Session("notice_id") = notice_id
        checkShow()
        checkDel()

        showData(NoticeDB.getDataID(notice_id), myInfo, notice_id)
        showPictures(myCar, myInfo)
        'setTools(myCar)
        'End If




    End Sub
    'Private Sub setTools(ByVal myCar As Part)
    '    printThis.NavigateUrl = "../print_form/print_part_detail.aspx?carid=" & myCar.id
    '    printThis.Target = "_blank"
    '    printThis.Text = "พิมพ์หน้านี้"
    'End Sub
    Private Sub checkShow()
        Dim showNotice As String = Request.QueryString("show")
        Dim noticeid As String = Request.QueryString("notice_id")

        'Response.Write(noticeid & "--" & showNotice)
        If showNotice <> "" Then
            If showNotice = "yes" Then
                NoticeDB.setOpenNotice(noticeid, 1, "")
            Else
                NoticeDB.setOpenNotice(noticeid, 0, "")
            End If
        End If
    End Sub
    Private Sub checkDel()
        Dim del As String = Request.QueryString("del")
        Dim noticeid As String = Request.QueryString("notice_id")

        If del = "yes" Then
            NoticeDetailDB.setDetailDelete(NoticeDetailDB.getNoticeDetailID(noticeid), 1)
            'InvoiceDB.updateCancelInvoice(noticeid)
            'TmpPaymentDb.updateCancelTmpPay(InvoiceDB.getInvoice2(noticeid))
            Response.Redirect("startpage_example1.aspx?cust_id=" & Session("cust_id"))
        End If

    End Sub
    Private Sub setLink(ByVal show As String, ByVal noticeid As Integer, ByVal carid As Integer)
        Dim tmp As String
        Dim tmp2 As String

        If show = "เปิด" Then
            tmp = "no"
            tbl_background = "../images/header/m_h_o+gr.gif"
            tbl_word = "เปิดประกาศ"
            tmp2 = "ปิด"
        Else
            tmp = "yes"
            tbl_background = "../images/header/m_h_o+re.gif"
            tbl_word = "ปิดประกาศ"
            tmp2 = "เปิด"
        End If

        show_ad.Text = tmp2 & "ประกาศ"

        show_ad.NavigateUrl = "detail_part.aspx?show=" & tmp & "&notice_id=" & noticeid & ""
        ' back_main.NavigateUrl = "startpage_example1.aspx"
        edit_ad.NavigateUrl = "edit1_part_datas.aspx?car=" & carid & "&from=view"

        changeContact.NavigateUrl = "offer3_contact_datas_puadmin.aspx?from=detail_part&noticeid=" & noticeid

        del_ad.NavigateUrl = "detail_part.aspx?del=yes&notice_id=" & noticeid & ""
    End Sub

    Private Sub carBrandLabel(ByVal b As Integer, ByVal m As String, ByVal n As String, ByVal price As Double)
        partBrand.Text = CategoryDB.getCategoryName(b) & " : " & m & " / " & n
        partBrand.ForeColor = Color.White
        partBrand.CssClass = "H1_white"

        If price = 0 Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(price)
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"
    End Sub
    Private Sub showData(ByVal car_id As Integer, ByVal myinfo As A_Customer, ByVal noticeid As Integer)

        myCar = PartsDB.getPart(car_id)

        carBrandLabel(myCar.Category, myCar.Brand, myCar.Model, myCar.Price)

        category.Text = PartsTypeDB.getPartTypeName(myCar.Type)

        If myCar.Price = 0 Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(myCar.Price) & "  บาท"
        End If

        status.Text = CarStatusDB.getStatusName(myCar.Status)

        If myCar.Year = "yyyy" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = myCar.Year
        End If

        If myCar.Miles = 0 Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = myCar.Miles & "  " & myCar.MilesType
        End If

        If myCar.Color = "" Then
            colors.Text = "-"
        Else
            colors.Text = myCar.Color
        End If

        If myCar.Colorcode = "" Then
            colorcode.Text = "-"
        Else
            colorcode.Text = myCar.Colorcode
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = 1 Then
                accident.Text = "ชำรุด"
            Else
                accident.Text = "สินค้าไม่ชำรุด"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = "1" Then
                insurrunce.Text = "สินค้ามีประกัน"
            Else
                insurrunce.Text = "สินค้าไม่มีประกัน"
            End If
        End If

        If myCar.Code = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.Code
        End If

        description.Text = myCar.Information

        'Dim x As Integer, i As Integer, n As Integer
        'n = 1
        'x = Math.Ceiling(myCar.Information.Length / 50)

        'For i = 1 To x
        '    description.Text = description.Text & Mid(myCar.Information, n, 50) & "<BR>"
        '    n = n + 50
        'Next

        Addr.Text = "อำเภอ " & DistrictDB.getDistrictName(myinfo.district) & " จังหวัด " & ProvinceDB.getProvinceName(myinfo.province)
        Tel.Text = myinfo.phone1
        If myinfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myinfo.phone2
        End If
        fax.Text = myinfo.fax

        setLink(NoticeDB.getNoticeShow(noticeid), noticeid, car_id)

    End Sub
    Private Sub showPictures(ByVal car As Part, ByVal myinfo As A_Customer)
        'Image1.Width = Unit.Pixel(327)
        'Image1.Height = Unit.Pixel(327)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer


        If car.Image <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, NoticeDB.getCatID(Session("notice_id"))) & "/" & car.Image))
            'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, NoticeDB.getCatID(Session("notice_id"))))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            Image1.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, NoticeDB.getCatID(Session("notice_id"))) & "/" & car.Image
            Image1.Width = Unit.Pixel(imageWidth)
            Image1.Height = Unit.Pixel(imageHeight)
        Else
            Image1.ImageUrl = "../images/objects/no_image_250x188.gif"
        End If


    End Sub



End Class
