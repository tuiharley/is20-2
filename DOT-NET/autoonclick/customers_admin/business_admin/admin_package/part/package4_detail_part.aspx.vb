Imports System.Drawing.Imaging
Imports System.IO
Imports System.Globalization
Imports System.Threading

Public Class package4_detail_part
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
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents partBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents show_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents edit_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents compname As System.Web.UI.WebControls.Label
    Protected WithEvents officeHour As System.Web.UI.WebControls.Label
    Protected WithEvents topicTxt As System.Web.UI.WebControls.Label
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_home As System.Web.UI.WebControls.HyperLink
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents partList As System.Web.UI.WebControls.HyperLink
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

    Public tbl_background As String
    Public tbl_word As String
    Dim myCar As Part

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim myinfo As A_Customer

        Dim carId As Integer = Request.QueryString("carid")
        Dim noticeid As Integer = Request.QueryString("noticeid")
        Dim detailid As Integer = Request.QueryString("detailid")
        Dim curDate As Integer = Request.QueryString("curData")

        AjaxPro.Utility.RegisterTypeForAjax(GetType(package4_detail_part))

        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../../public/login/login.aspx")
        Else
            Session("carid") = carId
            myinfo = CustomerDB.getA_customer(Session("cust_id"))
            myCar = PartsDB.getPart(carId)
            setLink(carId, noticeid, detailid, curDate)
            showData(carId, myinfo, noticeid)
            showPictures(myCar, myinfo, noticeid, detailid)
            upPage.Text = showNextPage(curDate, Session("allCar"), noticeid)
            downPage.Text = upPage.Text
        End If



    End Sub

    Private Sub setLink(ByVal carid As Integer, ByVal noticeid As Integer, ByVal detailid As Integer, ByVal n As Integer)
        edit_ad.NavigateUrl = "package4_edit_part_datas.aspx?from=view&car=" & carid & "&detailid=" & detailid & "&notice_id=" & noticeid & "&curData=" & n
        edit_ad.Text = "แก้ไขประกาศ"

        printThis.NavigateUrl = "../../../../print_form/print_part_detail.aspx?carid=" & myCar.id
        printThis.Target = "_blank"
        printThis.Text = "พิมพ์หน้านี้"

        partList.NavigateUrl = "package3_list_part_term_new.aspx?noticeid=" & noticeid
        partList.Text = "รายการประกาศ"

        packList.NavigateUrl = "package2_list.aspx"
    End Sub

    Private Sub showTopic(ByVal show As Boolean, ByVal b As Integer, ByVal m As String, ByVal n As String, ByVal dPost As DateTime)
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
        topic = topic & "<td width='526'><strong>" & CategoryDB.getCategoryName(b) & " : " & m & " / " & n
        topic = topic & " วันที่ลงประกาศ: " & dPost.ToString("dd-MM-yyyy") & "</strong></td>"
        topic = topic & "<td width='10'></td>"
        topic = topic & "<td width='127'><div align='center'>" & showTxt & "</div>"
        topic = topic & "</td>"
        topic = topic & "<td width='5'></td>"
        topic = topic & "</tr>"
        topic = topic & "</table></div>"

        topicTxt.Text = topic
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
        Dim brandTxt As String

        myCar = PartsDB.getPart(car_id)

        carBrandLabel(myCar.Category, myCar.Brand, myCar.Model, myCar.Price)
        category.Text = PartsTypeDB.getPartTypeName(myCar.Type)
        showTopic(NoticeDetailDB.getDetailShow(noticeid, car_id), myCar.Category, myCar.Brand, myCar.Model, myCar.Post)


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
    Private Sub showPictures(ByVal car As Part, ByVal myinfo As A_Customer, ByVal noticeid As Integer, ByVal detailid As Integer)
        'Image1.Width = Unit.Pixel(327)
        'Image1.Height = Unit.Pixel(327)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String



        If car.Image <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "/userData/" & myinfo.username & "/" & noticeid & "/" & detailid & "/" & car.Image
        Else
            a = New Bitmap(Server.MapPath("../../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "../../../../images/objects/no_image_250x188.gif"
        End If
        image1.Text = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"


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
            x = x & "<td><a href='package4_detail_part.aspx?curData=" & curData - 1 & "&carid=" & carid.DataId & "&noticeid=" & noticeid & "&detailid=" & carid.id & "' class='Font_black'><<</td>"
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
            x = x & "<td><a href='package4_detail_part.aspx?curData=" & curData + 1 & "&carid=" & carid.DataId & "&noticeid=" & noticeid & "&detailid=" & carid.id & "' class='Font_black'>>></td>"
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
            picUrl = PartsDB.getMainPic(Session("carid"))
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

    Private Function showTableH(ByVal show As Boolean, ByVal b As Integer, ByVal m As String, ByVal n As String, ByVal dPost As DateTime) As String
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
        topic = topic & "<td width='526'><strong>" & CategoryDB.getCategoryName(b) & " : " & m & " / " & n
        topic = topic & " วันที่ลงประกาศ: " & dPost.ToString("dd-MM-yyyy") & "</strong></td>"
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


        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("detailid"))
        If myDetail.Detail_show = 0 Then
            NoticeDetailDB.setDetailShow(Session("detailid"), 1)
        Else
            NoticeDetailDB.setDetailShow(Session("detailid"), 0)
        End If

        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("detailid"))
        If myDetail.Detail_show = 0 Then
            txt = "เปิดประกาศ"
            sh = False
        Else
            txt = "ปิดประกาศ"
            sh = True
        End If

        myCar = PartsDB.getPart(Session("carid"))
        'brandtxt = myCar.Brand
        txt = txt & "!" & showTableH(sh, myCar.Category, myCar.Brand, myCar.Model, myCar.Post)


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


        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("detailid"))
        If myDetail.Detail_show = 0 Then
            txt = "เปิดประกาศ"
            sh = False
        Else
            txt = "ปิดประกาศ"
            sh = True
        End If

        myCar = PartsDB.getPart(Session("carid"))
        'brandtxt = BrandDB.getBrandName(myCar.Brand)
        'brandtxt = myCar.Brand
        txt = txt & "!" & showTableH(sh, myCar.Category, myCar.Brand, myCar.Model, myCar.Post)

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


        myDetail = NoticeDetailDB.getNoticeDetailInfo(Session("detailid"))
        If myDetail.Detail_delete = 0 Then
            NoticeDetailDB.setDetailDelete(Session("detailid"), 1)
        Else
            NoticeDetailDB.setDetailDelete(Session("detailid"), 0)
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
