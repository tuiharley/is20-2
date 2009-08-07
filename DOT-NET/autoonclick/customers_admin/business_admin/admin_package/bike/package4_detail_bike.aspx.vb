Imports System.Drawing.Imaging
Imports System.IO
Imports System.Globalization
Imports System.Threading
Public Class package4_detail_bike
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents edit_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents carBrand As System.Web.UI.WebControls.Label
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
    Protected WithEvents lastcheck As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents accessory As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents compname As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents officeHour As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents image2 As System.Web.UI.WebControls.Label
    Protected WithEvents image3 As System.Web.UI.WebControls.Label
    Protected WithEvents drive As System.Web.UI.WebControls.Label
    Protected WithEvents topicTxt As System.Web.UI.WebControls.Label
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_home As System.Web.UI.WebControls.HyperLink
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents bikeList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents upPage As System.Web.UI.WebControls.Label
    Protected WithEvents downPage As System.Web.UI.WebControls.Label
    Protected WithEvents packList As System.Web.UI.WebControls.HyperLink

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Dim myCar As Bike

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim myinfo As A_Customer
        Dim myCar As Bike
        Dim carId As Integer = Request.QueryString("carid")
        Dim noticeid As Integer = Request.QueryString("noticeid")
        Dim detailid As Integer = Request.QueryString("detailid")
        Dim curDate As Integer = Request.QueryString("curData")

        AjaxPro.Utility.RegisterTypeForAjax(GetType(package4_detail_bike))
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../../public/login/login.aspx")
        Else
            Session("CarID1") = carId
            Session("Detailid1") = detailid
            Session("Noticeid") = noticeid

            Session("carid") = carId
            myinfo = CustomerDB.getA_customer(Session("cust_id"))
            myCar = BikeDB.getBike(carId)
            setLink(carId, noticeid, detailid, curDate)
            showData(carId, myinfo, noticeid)
            showPictures(myCar, myinfo, noticeid, detailid)
            upPage.Text = showNextPage(curDate, Session("allCar"), noticeid)
            downPage.Text = upPage.Text
        End If


    End Sub
    Private Sub setLink(ByVal carid As Integer, ByVal noticeid As Integer, ByVal detailid As Integer, ByVal n As Integer)
        edit_ad.NavigateUrl = "package4_edit_moto_datas.aspx?from=view&car=" & carid & "&detailid=" & detailid & "&notice_id=" & noticeid & "&curData=" & n
        edit_ad.Text = "แก้ไขประกาศ"

        printThis.NavigateUrl = "../../../../print_form/print_moto_detail.aspx?carid=" & carid
        printThis.Target = "_blank"
        printThis.Text = "พิมพ์หน้านี้"

        bikeList.NavigateUrl = "package3_list_moto_term_new.aspx?noticeid=" & noticeid
        bikeList.Text = "รายการประกาศ"

        packList.NavigateUrl = "package2_list.aspx"
    End Sub

    Private Sub carBrandLabel(ByVal b As String, ByVal m As String, ByVal sm As String, ByVal price As Double, ByVal noticeid As Integer, ByVal datepost As Date, ByVal cust_type As Integer)
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
    Private Sub showTopic(ByVal show As Boolean, ByVal b As String, ByVal dPost As DateTime)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim topic As String
        Dim headerColor As String
        Dim showTxt As String

        If show Then
            headerColor = "m_h_o+gr.gif"
            showTxt = "เปิดประกาศ"
        Else
            headerColor = "m_h_o+re.gif"
            showTxt = "ปิดประกาศ"
        End If


        topic = "<div id='h1'><table width='693' height='21' border='0' cellpadding='0' cellspacing='0' background='../../../../images/header/" & headerColor & "'"
        topic = topic & "class='Font_white'>"
        topic = topic & "<tr>"
        topic = topic & "<td width='25'></td>"
        topic = topic & "<td width='526'><strong>ประกาศรถจักรยานยนต์: "
        topic = topic & b & "/วันที่ลงประกาศ: " & dPost.ToString("dd-MM-yyyy") & "</strong></td>"
        topic = topic & "<td width='10'></td>"
        topic = topic & "<td width='127'><div align='center'>" & showTxt & "</div>"
        topic = topic & "</td>"
        topic = topic & "<td width='5'></td>"
        topic = topic & "</tr>"
        topic = topic & "</table></div>"

        topicTxt.Text = topic
    End Sub
    Private Sub showData(ByVal car_id As Integer, ByVal myinfo As A_Customer, ByVal noticeid As Integer)
        Dim brandTxt As String

        myCar = BikeDB.getBike(car_id)
        brandTxt = BrandDB.getBrandName(myCar.Brand)

        carBrandLabel(BrandDB.getBrandName(myCar.Brand), ModelDB.getModelName(myCar.Model), myCar.SubModel, myCar.Price, noticeid, myCar.Post, myinfo.type)
        showTopic(NoticeDetailDB.getDetailShow(noticeid, car_id), brandTxt, myCar.Post)

        category.Text = CarTypeDB.getStatusName(myCar.Type, 2)

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

        accessory.Text = BikeDB.getAccesory(myCar.id)
        description.Text = myCar.Information



        compname.Text = myinfo.name
        Addr.Text = myinfo.address & " อ." & DistrictDB.getDistrictName(myinfo.district) & " จ." & ProvinceDB.getProvinceName(myinfo.province)
        Tel.Text = myinfo.phone1
        If myinfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myinfo.phone2
        End If
        fax.Text = myinfo.fax
        If myinfo.timeStart <> 0 Then
            officeHour.Text = myinfo.timeStart & " - " & myinfo.timeStop
        Else
            officeHour.Text = "-"
        End If
        If myinfo.map_txt <> "" Then
            de_map.NavigateUrl = "../../../../public/search/business_homepage/dealer_business_web_map.aspx?dealer_id=" & myinfo.id
            de_map.Target = "_blank"
        End If

        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        de_home.NavigateUrl = userURL & myinfo.username & "/index.html"
        de_home.Target = "_blank"
    End Sub
    Private Sub showPictures(ByRef car As Bike, ByRef myinfo As A_Customer, ByVal noticeid As Integer, ByVal detailid As Integer)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String


        'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, 1))
        'Response.Write(myinfo.id)

        If car.Image1 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image1
        Else
            a = New Bitmap(Server.MapPath("../../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "../../../../images/objects/no_image_250x188.gif"
        End If
        image1.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"


        If car.Image2 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image2))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image2
        Else
            a = New Bitmap(Server.MapPath("../../../../images/objects/no_image_60x45.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "../../../../images/objects/no_image_60x45.gif"
        End If
        image2.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(2,this.src);'>"

        If car.Image3 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image3))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image3
        Else
            a = New Bitmap(Server.MapPath("../../../../images/objects/no_image_60x45.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            IUrl = "../../../../images/objects/no_image_60x45.gif"
        End If
        image3.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'  onclick='changeMainPic(3,this.src);'>"


    End Sub
    Private Function showNextPage(ByVal curData As Integer, ByRef allData As Queue, ByVal noticeid As Integer) As String
        Dim x As String
        Dim carid As noticeDetail, i As Integer

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
            x = x & "<td><a href='package4_detail_bike.aspx?curData=" & curData - 1 & "&carid=" & carid.DataId & "&noticeid=" & noticeid & "&detailid=" & carid.id & "' class='Font_black'><<</td>"
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
            x = x & "<td><a href='package4_detail_bike.aspx?curData=" & curData + 1 & "&carid=" & carid.DataId & "&noticeid=" & noticeid & "&detailid=" & carid.id & "' class='Font_black'>>></td>"
        End If
        x = x & "</tr>"
        x = x & "</table>"

        Return x
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
    Private Function showTableH(ByVal show As Boolean, ByVal b As String, ByVal dPost As DateTime) As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim topic As String
        Dim headerColor As String
        Dim showTxt As String

        If show Then
            headerColor = "m_h_o+gr.gif"
            showTxt = "เปิดประกาศ"
        Else
            headerColor = "m_h_o+re.gif"
            showTxt = "ปิดประกาศ"
        End If

        topic = "<div id='h1'><table width='693' height='21' border='0' cellpadding='0' cellspacing='0' background='../../../../images/header/" & headerColor & "'"
        topic = topic & "class='Font_white'>"
        topic = topic & "<tr>"
        topic = topic & "<td width='25'></td>"
        topic = topic & "<td width='526'><strong>ประกาศรถจักรยานยนต์: "
        topic = topic & b & "/วันที่ลงประกาศ: " & dPost.ToString("dd-MM-yyyy") & "</strong></td>"
        topic = topic & "<td width='10'></td>"
        topic = topic & "<td width='127'><div align='center' >" & showTxt & "</div>"
        topic = topic & "</td>"
        topic = topic & "<td width='5'></td>"
        topic = topic & "</tr>"
        topic = topic & "</table></div>"

        Return topic
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function openAd() As String
        Dim txt As String
        Dim x As String
        Dim myDetail As noticeDetail
        Dim headercolor As String
        Dim brandtxt As String
        Dim sh As Boolean


        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("Detailid1"))
        If myDetail.Detail_show = 0 Then
            NoticeDetailDB.setDetailShow(Session("Detailid1"), 1)
        Else
            NoticeDetailDB.setDetailShow(Session("Detailid1"), 0)
        End If

        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("Detailid1"))
        If myDetail.Detail_show = 0 Then
            txt = "เปิดประกาศ"
            sh = False
        Else
            txt = "ปิดประกาศ"
            sh = True
        End If

        myCar = BikeDB.getBike(Session("CarID1"))
        brandtxt = BrandDB.getBrandName(myCar.Brand)
        txt = txt & "!" & showTableH(sh, brandtxt, myCar.Post)


        Return txt
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function getOpTxt() As String
        Dim txt As String
        Dim x As String
        Dim myDetail As noticeDetail
        Dim headercolor As String
        Dim brandtxt As String
        Dim sh As Boolean


        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("Detailid1"))
        If myDetail.Detail_show = 0 Then
            txt = "เปิดประกาศ"
            sh = False
        Else
            txt = "ปิดประกาศ"
            sh = True
        End If

        myCar = BikeDB.getBike(Session("CarID1"))
        brandtxt = BrandDB.getBrandName(myCar.Brand)
        txt = txt & "!" & showTableH(sh, brandtxt, myCar.Post)

        Return txt
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function deleteAdsAJX() As String
        Dim txt As String
        Dim x As String
        Dim myDetail As noticeDetail
        Dim headercolor As String
        Dim brandtxt As String
        Dim sh As Boolean


        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("Detailid1"))
        If myDetail.Detail_delete = 0 Then
            NoticeDetailDB.setDetailDelete(Session("Detailid1"), 1)
        Else
            NoticeDetailDB.setDetailDelete(Session("Detailid1"), 0)
        End If

        'myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("Detailid1"))
        'If myDetail.Detail_delete = 0 Then
        '    txt = "เปิดประกาศ"
        '    sh = False
        'Else
        '    txt = "ปิดประกาศ"
        '    sh = True
        'End If

        'myCar = TruckDB.getTruck(Session("CarID1"))
        'brandtxt = BrandDB.getBrandName(myCar.Brand)
        'txt = txt & "!" & showTableH(sh, brandtxt, myCar.Post)
        txt = Session("Noticeid")

        Return txt
    End Function
End Class
