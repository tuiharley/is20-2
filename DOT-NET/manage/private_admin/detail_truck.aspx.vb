
Public Class detail_truck
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
    Protected WithEvents enginetype As System.Web.UI.WebControls.Label
    Protected WithEvents power As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents gear As System.Web.UI.WebControls.Label
    Protected WithEvents numgear As System.Web.UI.WebControls.Label
    Protected WithEvents numpump As System.Web.UI.WebControls.Label
    Protected WithEvents cc As System.Web.UI.WebControls.Label
    Protected WithEvents numdoor As System.Web.UI.WebControls.Label
    Protected WithEvents numseat As System.Web.UI.WebControls.Label
    Protected WithEvents fuelconsume As System.Web.UI.WebControls.Label
    Protected WithEvents fueltank As System.Web.UI.WebControls.Label
    Protected WithEvents lastcheck As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents accessory As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Image3 As System.Web.UI.WebControls.Image
    Protected WithEvents Image4 As System.Web.UI.WebControls.Image
    Protected WithEvents Image5 As System.Web.UI.WebControls.Image
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents truckBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents Prao As System.Web.UI.WebControls.Label
    Protected WithEvents praoDrive As System.Web.UI.WebControls.Label
    Protected WithEvents loadTruck As System.Web.UI.WebControls.Label
    Protected WithEvents weightTruck As System.Web.UI.WebControls.Label
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
    Dim myCar As TruckSt
    Public tbl_background As String
    Public tbl_word As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim notice_id As String = Request.QueryString("notice_id")
        'Session("cust_id") = Request.QueryString("cust_id")
        'Session("cust_id") = 1
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
    'Private Sub setTools(ByVal myCar As Truck)
    '    printThis.NavigateUrl = "../print_form/print_truck_detail.aspx?carid=" & myCar.id
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

        show_ad.NavigateUrl = "detail_truck.aspx?show=" & tmp & "&notice_id=" & noticeid & ""
        'back_main.NavigateUrl = "startpage_example1.aspx"
        edit_ad.NavigateUrl = "edit1_truck_datas.aspx?car=" & carid & "&from=view"

        changeContact.NavigateUrl = "offer3_contact_datas_puadmin.aspx?from=detail_truck&noticeid=" & noticeid

        del_ad.NavigateUrl = "detail_truck.aspx?del=yes&notice_id=" & noticeid & ""
    End Sub
    Private Sub carBrandLabel(ByVal b As String, ByVal m As String, ByVal sm As String, ByVal price As Double)
        truckBrand.Text = b & "/" & m
        If sm <> "" Then
            truckBrand.Text = truckBrand.Text & " /" & sm
        End If
        truckBrand.ForeColor = Color.White
        truckBrand.CssClass = "H1_white"

        If price = 0 Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(price)
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"
    End Sub
    Private Sub showData(ByVal car_id As Integer, ByVal myinfo As A_Customer, ByVal noticeid As Integer)

        myCar = TruckDB.getTruck(car_id)

        carBrandLabel(BrandDB.getBrandName(myCar.Brand), myCar.Model, myCar.SubModel, myCar.Price)

        category.Text = CarTypeDB.getStatusName(myCar.Type, 3)

        If myCar.Price = 0 Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(myCar.Price) & "  บาท"
        End If

        status.Text = CarStatusDB.getStatusName(myCar.Status)

        If myCar.Year = "" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = myCar.Year
        End If

        If myCar.Miles = 0 Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = myCar.Miles & "  " & myCar.MilesType
        End If

        enginetype.Text = EngineTypeDB.getEngineName(myCar.EngineType)

        If myCar.Power = 0 Then
            power.Text = "-  hp/kw"
        Else
            power.Text = myCar.Power & "  " & myCar.PowerType
        End If

        colors.Text = ColorDB.getColorName(myCar.Color)
        If myCar.Metalic = 1 Then
            colors.Text = colors.Text & " เมทาลิค"
        End If

        If myCar.NumPrao = 0 Then
            Prao.Text = "-"
        Else
            Prao.Text = myCar.NumPrao
        End If

        If myCar.NumPraoDrive = 0 Then
            praoDrive.Text = "-"
        Else
            praoDrive.Text = myCar.NumPraoDrive
        End If

        If myCar.NumWeight = 0 Then
            loadTruck.Text = "-"
        Else
            loadTruck.Text = myCar.NumWeight
        End If

        If myCar.NumWeightLoad = 0 Then
            weightTruck.Text = "-"
        Else
            weightTruck.Text = myCar.NumWeightLoad
        End If

        gear.Text = GearDB.getGearType(myCar.Gears)

        If myCar.NumGear = 0 Then
            numgear.Text = "-"
        Else
            numgear.Text = myCar.NumGear
        End If

        If myCar.NumPump = 0 Then
            numpump.Text = "-"
        Else
            numpump.Text = myCar.NumPump
        End If

        If myCar.CC = 0 Then
            cc.Text = "-  ซีซี/CC"
        Else
            cc.Text = myCar.CC & "  ซีซี/CC"
        End If

        If myCar.NumDoor = 0 Then
            numdoor.Text = "-"
        Else
            numdoor.Text = myCar.NumDoor
        End If

        If myCar.NumSeat = 0 Then
            numseat.Text = "-"
        Else
            numseat.Text = myCar.NumSeat
        End If

        If myCar.FuelConsume = 0 Then
            fuelconsume.Text = "-  km/ลิตร"
        Else
            fuelconsume.Text = myCar.FuelConsume & "  km/ลิตร"
        End If

        If myCar.FuelTank = 0 Then
            fueltank.Text = "-  ลิตร"
        Else
            fueltank.Text = myCar.FuelTank & "  ลิตร"
        End If

        If myCar.LastCheck = "" Then
            lastcheck.Text = "-"
        Else
            lastcheck.Text = myCar.LastCheck
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = 1 Then
                accident.Text = "รถมีอุบัติเหตุ"
            Else
                accident.Text = "รถไม่มีอุบัติเหตุ"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = "1" Then
                insurrunce.Text = "รถมีประกัน"
            Else
                insurrunce.Text = "รถไม่มีประกัน"
            End If
        End If

        If myCar.BodyId = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.BodyId
        End If

        accessory.Text = TruckDB.getAccesory(myCar.ID)
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
    Private Sub showPictures(ByVal car As TruckSt, ByVal myinfo As A_Customer)
        'Image1.Width = Unit.Pixel(327)
        'Image1.Height = Unit.Pixel(327)
        'Image2.Width = Unit.Pixel(60)
        'Image2.Height = Unit.Pixel(60)
        'Image3.Width = Unit.Pixel(60)
        'Image3.Height = Unit.Pixel(60)
        'Image4.Width = Unit.Pixel(60)
        'Image4.Height = Unit.Pixel(60)
        'Image5.Width = Unit.Pixel(60)
        'Image5.Height = Unit.Pixel(60)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer

        If car.Image1 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            Image1.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image1
            Image1.Width = Unit.Pixel(imageWidth)
            Image1.Height = Unit.Pixel(imageHeight)
        Else
            Image1.ImageUrl = "../images/objects/no_image_250x188.gif"
        End If

        If car.Image2 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image2))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image2.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image2
            Image2.Width = Unit.Pixel(imageWidth)
            Image2.Height = Unit.Pixel(imageHeight)
        Else
            Image2.ImageUrl = "../images/objects/no_image_60x45.gif"
        End If

        If car.Image3 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image3))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image3.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image3
            Image3.Width = Unit.Pixel(imageWidth)
            Image3.Height = Unit.Pixel(imageHeight)
        Else
            Image3.ImageUrl = "../images/objects/no_image_60x45.gif"
        End If

        If car.Image4 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image4))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image4.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image4
            Image4.Width = Unit.Pixel(imageWidth)
            Image4.Height = Unit.Pixel(imageHeight)
        Else
            Image4.ImageUrl = "../images/objects/no_image_60x45.gif"
        End If

        If car.Image5 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image5))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image5.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.ID, 3) & "/" & car.Image5
            Image5.Width = Unit.Pixel(imageWidth)
            Image5.Height = Unit.Pixel(imageHeight)
        Else
            Image5.ImageUrl = "../images/objects/no_image_60x45.gif"
        End If
    End Sub



End Class
