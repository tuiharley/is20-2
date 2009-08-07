Public Class print_car_detail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents carBrand As System.Web.UI.WebControls.Label
    Protected WithEvents cate As System.Web.UI.WebControls.Label
    Protected WithEvents price As System.Web.UI.WebControls.Label
    Protected WithEvents carStatus As System.Web.UI.WebControls.Label
    Protected WithEvents carYear As System.Web.UI.WebControls.Label
    Protected WithEvents mi As System.Web.UI.WebControls.Label
    Protected WithEvents engType As System.Web.UI.WebControls.Label
    Protected WithEvents engPower As System.Web.UI.WebControls.Label
    Protected WithEvents color As System.Web.UI.WebControls.Label
    Protected WithEvents gearsSys As System.Web.UI.WebControls.Label
    Protected WithEvents gearsNum As System.Web.UI.WebControls.Label
    Protected WithEvents pisNum As System.Web.UI.WebControls.Label
    Protected WithEvents CC As System.Web.UI.WebControls.Label
    Protected WithEvents doors As System.Web.UI.WebControls.Label
    Protected WithEvents seats As System.Web.UI.WebControls.Label
    Protected WithEvents consume As System.Web.UI.WebControls.Label
    Protected WithEvents tank As System.Web.UI.WebControls.Label
    Protected WithEvents lastCheck As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insur As System.Web.UI.WebControls.Label
    Protected WithEvents carNo As System.Web.UI.WebControls.Label
    Protected WithEvents price2 As System.Web.UI.WebControls.Label
    Protected WithEvents compName As System.Web.UI.WebControls.Label
    Protected WithEvents addr As System.Web.UI.WebControls.Label
    Protected WithEvents telNo As System.Web.UI.WebControls.Label
    Protected WithEvents em As System.Web.UI.WebControls.Label
    Protected WithEvents homep As System.Web.UI.WebControls.HyperLink
    Protected WithEvents moreInfo As System.Web.UI.WebControls.Label
    Protected WithEvents Accessory As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label

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
        Dim carid As Integer = Request.QueryString("carid")
        Dim myCar As Car
        Dim myCust As A_Customer
        Dim myCustNo As Integer


        'carid = 5


        myCar = CarDB.getCar(carid)
        myCustNo = CarDB.getCarOwnerID(carid)
        myCust = CustomerDB.getA_customer(myCustNo)

        showInfo(myCar)
        showcustinfo(myCust)
        showPictures(myCar, myCust)

    End Sub
    Private Sub showInfo(ByVal myCar As Car)
        Dim pri As String

        carBrand.Text = BrandDB.getBrandName(myCar.Brand) & " " & ModelDB.getModelName(myCar.Model)
        cate.Text = CarTypeDB.getStatusName(myCar.Type, 1)
        If checkNullStr_Line(myCar.Price) = "-" Then
            pri = "- บาท"
        Else
            pri = FormatNumber(checkNullStr_Line(myCar.Price), 2, , , TriState.True) & " บาท"
        End If
        price.Text = pri
        price2.Text = pri
        carStatus.Text = StatusDB.getStatusName(myCar.Status)
        carYear.Text = changeLine2Zero(checkNullStr_Line(myCar.Year))
        mi.Text = checkNullStr_Line(myCar.Miles) & " " & myCar.MilesType
        engType.Text = EngineTypeDB.getEngineName(myCar.EngineType)
        engPower.Text = checkNullStr_Line(myCar.Power) & " " & myCar.PowerType
        color.Text = ColorDB.getColorName(myCar.Color)
        gearsSys.Text = GearDB.getGearType(myCar.Gears)
        gearsNum.Text = checkNullStr_Line(myCar.NumGear)
        pisNum.Text = checkNullStr_Line(myCar.NumPump)
        CC.Text = checkNullStr_Line(myCar.CC)
        doors.Text = checkNullStr_Line(myCar.NumDoor)
        seats.Text = checkNullStr_Line(myCar.NumSeat)
        consume.Text = checkNullStr_Line(myCar.FuelConsume) & " km/ลิตร"
        tank.Text = checkNullStr_Line(myCar.FuelTank) & " ลิตร"

        lastCheck.Text = checkNullStr_Line(myCar.LastCheck)
        If checkNullDBNum(myCar.Accident) = 1 Then
            accident.Text = "รถมีอุบัติเหตุ"
        Else
            accident.Text = "รถไม่มีอุบัติเหตุ"
        End If
        If checkNullDBNum(myCar.Insurrance) = 1 Then
            insur.Text = "รถมีประกัน"
        Else
            insur.Text = "รถไม่มีประกัน"
        End If
        carNo.Text = checkNullStr_Line(myCar.BodyId)
        moreInfo.Text = checkNullStr_Line(myCar.Information)
        Accessory.Text = CarDB.getAccesory(myCar.id)



    End Sub
    Private Sub showcustinfo(ByVal myCust As A_Customer)



        compName.Text = myCust.name
        If myCust.type = 0 Then
            addr.Text = " อ." & DistrictDB.getDistrictName(myCust.district) & " จ." & ProvinceDB.getProvinceName(myCust.province)
        Else
            addr.Text = myCust.address & " อ." & DistrictDB.getDistrictName(myCust.district) & " จ." & ProvinceDB.getProvinceName(myCust.province)
        End If


        telNo.Text = "เบอร์โทรศัพท์: " & myCust.phone1 & " Fax: "
        If myCust.fax <> "" Then
            telNo.Text = telNo.Text & myCust.fax
        Else
            telNo.Text = telNo.Text & " -"
        End If

        If myCust.email <> "" Then
            em.Text = "Email: " & myCust.email
        Else
            em.Text = "Email: -"
        End If

        If myCust.homepage <> "" Then
            homep.NavigateUrl = "http://" & myCust.homepage
            homep.Target = "_blank"
            homep.Text = "http://" & myCust.homepage
        Else
            homep.Text = ""
        End If

    End Sub
    Private Sub showPictures(ByRef car As Car, ByRef myinfo As A_Customer)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String


        'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, 1))
        'Response.Write(myinfo.id)

        If car.Image1 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 285)
            IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image1
        Else
            a = New Bitmap(Server.MapPath("../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 285)
            IUrl = "../images/objects/no_image_250x188.gif"
        End If
        image1.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"


        'If car.Image2 <> "" Then
        '    a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image2))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image2
        'Else
        '    a = New Bitmap(Server.MapPath("../../../images/objects/no_image_60x45.gif"))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "../../../images/objects/no_image_60x45.gif"
        'End If
        'image2.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(2,this.src);'>"

        'If car.Image3 <> "" Then
        '    a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image3))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image3
        'Else
        '    a = New Bitmap(Server.MapPath("../../../images/objects/no_image_60x45.gif"))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "../../../images/objects/no_image_60x45.gif"
        'End If
        'image3.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(3,this.src);'>"

        'If car.Image4 <> "" Then
        '    a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image4))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image4
        'Else
        '    a = New Bitmap(Server.MapPath("../../../images/objects/no_image_60x45.gif"))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "../../../images/objects/no_image_60x45.gif"
        'End If
        'image4.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(4,this.src);'>"

        'If car.Image5 <> "" Then
        '    a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image5))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 1) & "/" & car.Image5
        'Else
        '    a = New Bitmap(Server.MapPath("../../../images/objects/no_image_60x45.gif"))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
        '    IUrl = "../../../images/objects/no_image_60x45.gif"
        'End If
        'image5.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(5,this.src);'>"

    End Sub

End Class
