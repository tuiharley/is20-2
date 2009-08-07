Public Class parking3_example_detail_moto_00
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents searchResult1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents upPage As System.Web.UI.WebControls.Label
    Protected WithEvents downPage As System.Web.UI.WebControls.Label
    Protected WithEvents carBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents enginetype As System.Web.UI.WebControls.Label
    Protected WithEvents power As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents numgear As System.Web.UI.WebControls.Label
    Protected WithEvents numpump As System.Web.UI.WebControls.Label
    Protected WithEvents cc As System.Web.UI.WebControls.Label
    Protected WithEvents lastcheck As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents operateTime As System.Web.UI.WebControls.Label
    Protected WithEvents accessory As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents searchResult2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents question As System.Web.UI.WebControls.TextBox
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents image2 As System.Web.UI.WebControls.Label
    Protected WithEvents image3 As System.Web.UI.WebControls.Label
    Protected WithEvents gear As System.Web.UI.WebControls.Label
    Protected WithEvents drive As System.Web.UI.WebControls.Label
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_home As System.Web.UI.WebControls.HyperLink
    Protected WithEvents warnDel As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sendFr As System.Web.UI.WebControls.HyperLink

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
        Dim carid As Integer
        Dim myCar As Bike
        Dim myInfo As A_Customer

        If Not IsPostBack Then
            carid = Request.QueryString("carid")

            myCar = BikeDB.getBike(carid)
            myInfo = CustomerDB.getA_customer(NoticeDB.getCustID(carid, 2))

            If myInfo.type = 0 Then
                Response.Redirect("parking3_example_detail_moto_00_p.aspx?curData=" & Request.QueryString("curData") & "&fmp=" & Request.QueryString("fmp") & "&carid=" & Request.QueryString("carid"))
                Response.End()
            End If

            showCar(myCar)
            showPictures(myCar, myInfo)
            showMyInfo(myInfo)
            setLink(carid)


            Session("custID") = myInfo.id
            Session("mailto") = myInfo.email
            Session("carID") = myCar.id
            Session("fmp") = Request.QueryString("fmp")
        End If


        'setLink(Session("CurPage"), Session("fmp"))
        upPage.Text = showNextPage(Request.QueryString("curData"), Session("allBike_Parking"))
        downPage.Text = showNextPage(Request.QueryString("curData"), Session("allBike_Parking"))
        AjaxPro.Utility.RegisterTypeForAjax(GetType(parking3_example_detail_moto_00))
    End Sub

    Private Sub setLink(ByVal carid As Integer)
        printThis.NavigateUrl = "../../print_form/print_moto_detail.aspx?carid=" & carid
        printThis.Target = "_blank"
        printThis.Text = "พิมพ์หน้านี้"

        sendFr.NavigateUrl = "../sendFriend/sending.aspx?carid=" & carid & "&cat=2"
        sendFr.Target = "_blank"
        sendFr.Text = "ส่งให้เพื่อน"

        warnDel.Text = "แจ้งลบประกาศ"
        warnDel.Target = "_blank"
        warnDel.NavigateUrl = "../warn/warning.aspx?detail_id=" & NoticeDetailDB.getNoticeDetailID2(carid, "1")

        'If fmp = "compare" Then
        '    searchResult1.NavigateUrl = "compare/frameset_compare_moto.aspx?cur_Page=" & cur_Page
        '    searchResult2.NavigateUrl = "compare/frameset_compare_moto.aspx?cur_Page=" & cur_Page
        'Else
        '    searchResult1.NavigateUrl = "search2_result_moto.aspx?cur_Page=" & cur_Page
        '    searchResult2.NavigateUrl = "search2_result_moto.aspx?cur_Page=" & cur_Page
        'End If


        'searchAgain1.NavigateUrl = "search1_moto2.aspx?again=yes"
        'requestSearch1.NavigateUrl = "request1_moto.aspx"
        'parkingList1.NavigateUrl = "blank.aspx"

        'searchAgain2.NavigateUrl = "search1_moto2.aspx?again=yes"
        'requestSearch2.NavigateUrl = "request1_moto.aspx"
        'parkingList2.NavigateUrl = "blank.aspx"

    End Sub
    Private Sub carBrandLabel(ByVal b As String, ByVal m As String, ByVal sm As String, ByVal price As Double)
        carBrand.Text = b & "/" & m
        If sm <> "" Then
            carBrand.Text = carBrand.Text & "/" & sm
        End If
        carBrand.ForeColor = Color.White
        carBrand.CssClass = "H1_white"

        If price = 0 Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(price)
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"

    End Sub
    Private Function showNextPage(ByVal curData As Integer, ByRef allData As Queue) As String
        Dim x As String
        Dim carid As String, i As Integer

        x = "<table class=""Page_Number"" cellSpacing=""0"" cellPadding=""0"" align=""right"" border=""0"" >"
        x = x & "<tr>"
        If curData = 1 Then
            x = x & "<td>&lt;&lt;</td>"
        Else
            Dim TempObjQueue As IEnumerator = allData.GetEnumerator()
            For i = 1 To curData - 1
                TempObjQueue.MoveNext()
            Next
            carid = TempObjQueue.Current
            x = x & "<td><a href='parking3_example_detail_moto_00.aspx?curData=" & curData - 1 & "&carid=" & carid & "&fmp=" & Session("fmp") & "' class='Font_black'><<</td>"
        End If
        x = x & "<td><IMG height=""1"" src=""../../images/objects/no.gif"" width=""7""></td>"
        x = x & "<td><strong>Ad " & curData & " of " & allData.Count & "</strong></td>"
        x = x & "<td><IMG height=""1"" src=""../../images/objects/no.gif"" width=""7""></td>"
        If curData = allData.Count Then
            x = x & "<td>&gt;&gt;</td>"
        Else
            Dim TempObjQueue As IEnumerator = allData.GetEnumerator()
            For i = 1 To curData + 1
                TempObjQueue.MoveNext()
            Next
            carid = TempObjQueue.Current
            x = x & "<td><a href='parking3_example_detail_moto_00.aspx?curData=" & curData + 1 & "&carid=" & carid & "&fmp=" & Session("fmp") & "' class='Font_black'>>></td>"
        End If
        x = x & "</tr>"
        x = x & "</table>"

        Return x
    End Function

    Private Sub showCar(ByRef myCar As Bike)

        category.Text = CarTypeDB.getStatusName(myCar.Type, 2)

        carBrandLabel(BrandDB.getBrandName(myCar.Brand), ModelDB.getModelName(myCar.Model), myCar.SubModel, myCar.Price)

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

        If myCar.Drive = 0 Then
            drive.Text = "-"
        Else
            drive.Text = DriveDB.getDriveName(myCar.Drive)
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

        If myCar.LastCheck = "" Then
            lastcheck.Text = "-"
        Else
            lastcheck.Text = myCar.LastCheck
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = -1 Then
                accident.Text = "รถมีอุบัติเหตุ"
            Else
                accident.Text = "รถไม่มีอุบัติเหตุ"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = -1 Then
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

        accessory.Text = BikeDB.getAccesory(myCar.id)
        description.Text = myCar.Information

    End Sub
    Private Sub showPictures(ByRef car As Bike, ByRef myinfo As A_Customer)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String


        'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, 1))
        'Response.Write(myinfo.id)

        If car.Image1 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 2) & "/" & car.Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 2) & "/" & car.Image1
        Else
            a = New Bitmap(Server.MapPath("../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "../../images/objects/no_image_250x188.gif"
        End If
        image1.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"


        If car.Image2 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 2) & "/" & car.Image2))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 2) & "/" & car.Image2
        Else
            a = New Bitmap(Server.MapPath("../../images/objects/no_image_60x45.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "../../images/objects/no_image_60x45.gif"
        End If
        image2.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(2,this.src);'>"

        If car.Image3 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 2) & "/" & car.Image3))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 2) & "/" & car.Image3
        Else
            a = New Bitmap(Server.MapPath("../../images/objects/no_image_60x45.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "../../images/objects/no_image_60x45.gif"
        End If
        image3.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(3,this.src);'>"

    End Sub
    Private Sub showMyInfo(ByRef myinfo As A_Customer)
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        If myinfo.type = 0 Then
            custName.Text = "-"
        Else
            custName.Text = myinfo.name
        End If

        Addr.Text = myinfo.address & ", อำเภอ " & DistrictDB.getDistrictName(myinfo.district) & " จังหวัด " & ProvinceDB.getProvinceName(myinfo.province)
        Tel.Text = myinfo.phone1
        If myinfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myinfo.phone2
        End If
        fax.Text = myinfo.fax

        If myinfo.timeStart <> 0 Then
            operateTime.Text = myinfo.timeStart & " - " & myinfo.timeStop
        Else
            operateTime.Text = "-"
        End If

        If myinfo.map_txt <> "" Then
            de_map.NavigateUrl = "business_homepage/dealer_business_web_map.aspx?dealer_id=" & myinfo.id
            de_map.Target = "_blank"
        End If

        de_home.NavigateUrl = userURL & myinfo.username & "/index.html"
        de_home.Target = "_blank"

    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function sendQuestion(ByVal name As String, ByVal email As String, ByVal phone1 As String, ByVal question As String) As String
        Dim EQuestion As mailQuestion

        EQuestion.name = name
        EQuestion.mail = email
        EQuestion.tel = phone1
        EQuestion.question = question

        EmailDB.sendMailQuestion(Session("mailto"), Session("custID"), Session("carID"), 2, EQuestion)

        Return "Email ได้ถูกจัดส่งเรียบร้อย"
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showMainPic(ByVal picNo As Integer, ByVal picUrl As String) As String
        Dim tmp As String, tmp2 As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim x As Integer


        If picNo = 1 Then
            picUrl = BikeDB.getMainPic(Session("carID"))
        End If

        If picUrl = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_60x45.gif" Then
            picUrl = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_250x188.gif"
        End If

        If picUrl.IndexOf("userData") <> -1 Then
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("userData"))
            tmp2 = "/" & tmp2

        Else
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("images"))
            tmp2 = "../" & tmp2

        End If
        a = New Bitmap(Server.MapPath(tmp2))
        autoonclick.resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
        tmp = "<img style=""CURSOR: hand"" src='" & picUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"




        Return tmp
    End Function
End Class
