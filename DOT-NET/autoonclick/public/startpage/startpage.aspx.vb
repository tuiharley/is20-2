Imports System.IO
Imports System.Data
Imports System.Data.OleDb

Public Class startpage
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents doSearch As System.Web.UI.WebControls.Button
    Protected WithEvents err As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents halfBanner As System.Web.UI.WebControls.Label

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
        If Request.Form("cat") = "0" Then
            err.Text = "กรุณาเลือกประเภทรถ"
        Else
            err.Text = ""
        End If

        showBanner()
        AjaxPro.Utility.RegisterTypeForAjax(GetType(startpage))
        AjaxPro.Utility.RegisterTypeForAjax(GetType(showBrands))
    End Sub

    Private Sub showBanner()
        Dim mybanner As Banner

        mybanner = Bannerdb.getBanner("Main Half Banner")
        If mybanner.Banner_link = "" Then
            halfBanner.Text = "<IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='234' >"
        Else
            halfBanner.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='234' ></a>"
        End If



    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function showCust() As String
        Dim x As Random = New Random
        Dim ranCust As Integer
        Dim myCust As Queue
        Dim ShowTxt As String


        myCust = CustomerDB.getRanCust(1, "saleCar")
        If myCust.Count <> 0 Then
            ranCust = x.Next(1, myCust.Count + 1)
            ShowTxt = "!1!car!2!" & getPic(myCust, ranCust)
        Else
            ShowTxt = "!1!car!2!" & getPicEmpty() & "!3!-!4!-"
        End If
        myCust.Clear()

        myCust = CustomerDB.getRanCust(1, "serviceCar")
        If myCust.Count <> 0 Then
            ranCust = x.Next(1, myCust.Count + 1)
            ShowTxt = ShowTxt & "!1!sv!2!" & getPic(myCust, ranCust)
        Else
            ShowTxt = ShowTxt & "!1!sv!2!" & getPicEmpty() & "!3!-!4!-"
        End If
        myCust.Clear()

        myCust = CustomerDB.getRanCust(1, "salePart")
        If myCust.Count <> 0 Then
            ranCust = x.Next(1, myCust.Count + 1)
            ShowTxt = ShowTxt & "!1!part!2!" & getPic(myCust, ranCust)
        Else
            ShowTxt = ShowTxt & "!1!part!2!" & getPicEmpty() & "!3!-!4!-"
        End If
        myCust.Clear()

        myCust = CustomerDB.getRanCust(1, "carRent")
        If myCust.Count <> 0 Then
            ranCust = x.Next(1, myCust.Count + 1)
            ShowTxt = ShowTxt & "!1!rent!2!" & getPic(myCust, ranCust)
        Else
            ShowTxt = ShowTxt & "!1!rent!2!" & getPicEmpty() & "!3!-!4!-"
        End If
        myCust.Clear()

        myCust = CustomerDB.getRanCust(1, "carWash")
        If myCust.Count <> 0 Then
            ranCust = x.Next(1, myCust.Count + 1)
            ShowTxt = ShowTxt & "!1!cl!2!" & getPic(myCust, ranCust)
        Else
            ShowTxt = ShowTxt & "!1!cl!2!" & getPicEmpty() & "!3!-!4!-"
        End If
        myCust.Clear()


        Return ShowTxt
    End Function
    Private Function getPicEmpty() As String
        Dim show As String
        Dim myCust As RandCustomer
        Dim i As Integer = 1

        show = "<IMG height='90' src='../../images/objects/no_image_120x90.gif' width='120' height='90' border='0'>"

        Return show
    End Function
    Private Function getPic(ByVal ranCust As Queue, ByVal ranNo As Integer) As String
        Dim show As String
        Dim myCust As RandCustomer
        Dim i As Integer = 1
        Dim nTxt As String = ""

        show = "<A href='../search/business_homepage/dealer_business_web_start.aspx"
        For Each myCust In ranCust
            If ranNo = i Then
                ' Response.Write(ranNo)
                show = show & "?cust_id=" & myCust.id & "' target='_blank'>" & showPictures(myCust)
                nTxt = myCust.districName & "!4!" & myCust.provinceName
                Exit For
            End If
            i = i + 1
        Next
        show = show & "</A>!3!" & nTxt

        Return show
    End Function
    Private Function showPictures(ByRef myCust As RandCustomer) As String

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim result As String
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        If myCust.logo_txt <> "" Then
            'a = New Bitmap(Server.MapPath("/userData/" & myCust.username & "/logo/" & myCust.logo_txt))
            'resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            'IUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt

            result = "<img border='0' style=""CURSOR: hand"" src='" & picUrl & "/public/test/WebForm10.aspx?custid=" & myCust.id & "&w=120&h=c&h2=90'>"
        Else
            'result = Server.MapPath("../images/objects/no_image_60x45.gif")
            a = New Bitmap(Server.MapPath("../images/objects/no_image_120x90.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            IUrl = "../../images/objects/no_image_120x90.gif"
            result = "<IMG height='90' src='" & IUrl & "' width='" & imageWidth & "' border='0'>"
        End If
        'result = "<img style=""CURSOR: hand"" src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"
        '





        Return result
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showCar2() As String
        Dim ans As String

        ans = "<table cellSpacing='0' cellPadding='0' width='693' background='../../images/table/g_693.gif'	border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td width='7'></td>"
        ans = ans & "<td vAlign='top' width='130'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""รถยนต์""</strong></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A href='../search/search3_detail_car_00.htm'><IMG height='60' src='../../images/objects/car_pic_80x60.gif' width='80' border='0'></A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A class='A_blue_underline' href='../search/search3_detail_car_00.htm'>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;, "
        ans = ans & "&#3619;&#3640;&#3656;&#3609;, &#3651;&#3627;&#3617;&#3656;/2000</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"
        ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
        ans = ans & "<td vAlign='top' width='130'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""รถจักรยานยนต์""</strong></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A href='../search/search3_detail_moto_00.htm'><IMG height='60' src='../../images/objects/moto_pic_80x60.gif' width='80' border='0'></A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A class='A_blue_underline' href='../search/search3_detail_moto_00.htm'>Make, "
        ans = ans & "Model, new/year</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"
        ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
        ans = ans & "<td vAlign='top' width='130'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""รถบรรทุก""</strong></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A href='../search/search3_detail_truck_00.htm'><IMG height='60' src='../../images/objects/truck_pic_80x60.gif' width='80' border='0'></A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A class='A_blue_underline' href='../search/search3_detail_truck_00.htm'>Make, "
        ans = ans & "Model, new/year</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"
        ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
        ans = ans & "<td vAlign='top' width='130'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""อะไหล่/ประดับยนต์""</strong>"
        ans = ans & "</div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A href='../search/search3_detail_part_00.htm'><IMG height='60' src='../../images/objects/part_pic_80x60.gif' width='80' border='0'></A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A class='A_blue_underline' href='../search/search3_detail_part_00.htm' > Product"
        ans = ans & "Name, new/used</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"
        ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
        ans = ans & "<td vAlign='top' width='131'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""โฆษณาพิเศษ""</strong>"
        ans = ans & "</div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A href='../search/search3_detail_so_service_00.htm'><IMG height='60' src='../../images/objects/so_pic_80x60.gif' width='80' border='0'></A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A class='A_blue_underline' href='../search/search3_detail_so_service_00.htm'>"
        ans = ans & "&#3649;&#3626;&#3604;&#3591;&#3627;&#3633;"
        ans = ans & "</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"
        ans = ans & "<td width='7'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"

        Return ans
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showCar() As String
        Dim ans As String
        Dim i As Integer
        Dim x As Random = New Random
        Dim ranCar As Integer
        Dim myQCar As Queue

        ans = "<table cellSpacing='0' cellPadding='0' width='693' background='../../images/table/g_693.gif'	border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"

        ans = ans & "<tr >"
        ans = ans & "<td width='7' ></td>"

        For i = 1 To 5
            Select Case i
                Case 1
                    myQCar = CarDB.getRanCars()
                    If myQCar.Count <> 0 Then
                        ranCar = x.Next(1, myQCar.Count + 1)
                        ans = ans & showCarDetail(i, myQCar, ranCar)
                    Else
                        ans = ans & showCarNoDetail("รถยนต์")
                    End If
                    myQCar.Clear()
                Case 2
                    myQCar = BikeDB.getRanBikes()
                    If myQCar.Count <> 0 Then
                        ranCar = x.Next(1, myQCar.Count + 1)
                        ans = ans & showCarDetail(i, myQCar, ranCar)
                    Else
                        ans = ans & showCarNoDetail("รถจักรยานยนต์")
                    End If
                    myQCar.Clear()
                Case 3
                    myQCar = TruckDB.getRanTruck()
                    If myQCar.Count <> 0 Then
                        ranCar = x.Next(1, myQCar.Count + 1)
                        ans = ans & showCarDetail(i, myQCar, ranCar)
                    Else
                        ans = ans & showCarNoDetail("รถบรรทุก")
                    End If
                    myQCar.Clear()
                Case 4
                    myQCar = PartsDB.getRanPart()
                    If myQCar.Count <> 0 Then
                        ranCar = x.Next(1, myQCar.Count + 1)
                        ans = ans & showCarDetail(i, myQCar, ranCar)
                    Else
                        ans = ans & showCarNoDetail("อะไหล่/ประดับยนต์")
                    End If
                    myQCar.Clear()
                Case 5
                    myQCar = CarDB.getRanCars()
                    If myQCar.Count <> 0 Then
                        ranCar = x.Next(1, myQCar.Count + 1)
                        ans = ans & showCarDetail(1, myQCar, ranCar)
                    Else
                        ans = ans & showCarNoDetail("รถยนต์")
                    End If
                    myQCar.Clear()
            End Select

            If i <> 5 Then
                ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
            End If
        Next

        ans = ans & "</tr>"

        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"

        Return ans
    End Function
    Private Function showCarDetail(ByVal cat As Integer, ByVal myQCar As Queue, ByVal ranCar As Integer) As String
        Dim ans As String
        Dim myCar As RandomCar
        Dim i As Integer
        Dim detailPage As String

        Select Case cat
            Case 1
                i = 1
                For Each myCar In myQCar
                    If ranCar = i Then
                        detailPage = "search3_detail_car00.aspx"
                        ans = RandomCar(myCar, "รถยนต์", detailPage)
                        Exit For
                    End If
                    i = i + 1
                Next
            Case 2
                i = 1
                For Each myCar In myQCar
                    If ranCar = i Then
                        detailPage = "search3_detail_moto00.aspx"
                        ans = RandomCar(myCar, "รถจักรยนต์", detailPage)
                        Exit For
                    End If
                    i = i + 1
                Next
            Case 3
                i = 1
                For Each myCar In myQCar
                    If ranCar = i Then
                        detailPage = "search3_detail_truck00.aspx"
                        ans = RandomCar(myCar, "รถบรรทุก", detailPage)
                        Exit For
                    End If
                    i = i + 1
                Next
            Case 4
                i = 1
                For Each myCar In myQCar
                    If ranCar = i Then
                        detailPage = "search3_detail_part00.aspx"
                        ans = RandomCar(myCar, "อะไหล่/ประดับยนต์", detailPage)
                        Exit For
                    End If
                    i = i + 1
                Next
            Case 5
        End Select

        Return ans
    End Function
    Private Function RandomCar(ByVal myCar As RandomCar, ByVal txt As String, ByVal detailPage As String) As String
        Dim ans As String

        ans = ans & "<td vAlign='top' width='130'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""" & txt & """</strong></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='60'>"
        ans = ans & "<div align='center'><A href='" & detailPage & "?carid=" & myCar.Car_Id & "'>"

        ans = ans & showPictures2(myCar)

        ans = ans & "</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><A class='A_blue_underline' href='" & detailPage & "?carid=" & myCar.Car_Id & "'>"
        ans = ans & myCar.Brand_name & ", " & myCar.Model_Name & ", "
        If myCar.Status_Name = "รถใหม่" Or myCar.Status_Name = "สินค้าใหม่" Then
            ans = ans & myCar.Status_Name
        Else
            ans = ans & myCar.Car_Year
        End If
        ans = ans & "</A></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"

        Return ans
    End Function
    Private Function showCarNoDetail(ByVal carCat As String) As String
        Dim ans As String

        ans = ans & "<td vAlign='top' width='130'>"
        ans = ans & "<table class='Font_blue_LH_15px' cellSpacing='0' cellPadding='0' width='100%' border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><strong>""" & carCat & """</strong></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'><IMG height='60' src='../../images/objects/no_image_80x60.gif' width='80' border='0'></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
        ans = ans & "<div align='center'>ยังไม่มีประกาศ</div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"
        ans = ans & "</td>"

        Return ans
    End Function
    Private Function showPictures2(ByRef myCar As RandomCar) As String

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim result As String

        Dim sContents As String, sErr As String
        Dim bAns As Boolean
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        'sContents = "../../images/objects/no_image_80x60.gif - " & Now & vbCrLf
        'bAns = DealerHP.AppendTextToFile(Server.MapPath("/"), "D:\ip1\auto-onclick.com\www\log.txt", sErr)


        If myCar.Car_Image1 <> "" Then

            ''sContents = Server.MapPath("/userData/" & myCar.Customer_Username & "/" & myCar.Notice_Id & "/" & myCar.NoticeDetail_Id & "/" & myCar.Car_Image1)
            ''bAns = DealerHP.AppendTextToFile(sContents, Server.MapPath("/") & "log.txt", sErr)
            'a = New Bitmap(Server.MapPath("/userData/" & myCar.Customer_Username & "/" & myCar.Notice_Id & "/" & myCar.NoticeDetail_Id & "/" & myCar.Car_Image1))
            ''sContents = " OK" & vbCrLf
            ''bAns = DealerHP.AppendTextToFile(sContents, Server.MapPath("/") & "log.txt", sErr)
            'resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            'IUrl = "/userData/" & myCar.Customer_Username & "/" & myCar.Notice_Id & "/" & myCar.NoticeDetail_Id & "/" & myCar.Car_Image1
            result = "<img border='0' style=""CURSOR: hand""  src='" & picUrl & "/public/test/WebForm10.aspx?custid=" & myCar.NoticeDetail_Id & "&w=80&h=v&h2=60'>"
        Else
            'sContents = "../images/objects/no_image_80x60.gif"
            'bAns = DealerHP.AppendTextToFile(sContents, Server.MapPath("/") & "log.txt", sErr)
            a = New Bitmap(Server.MapPath("../images/objects/no_image_80x60.gif"))
            'sContents = " OK" & vbCrLf
            'bAns = DealerHP.AppendTextToFile(sContents, Server.MapPath("/") & "log.txt", sErr)
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            IUrl = "../../images/objects/no_image_80x60.gif"
            result = "<IMG  src='" & IUrl & "' width='" & imageWidth & "' height='60' border='0'>"
        End If

        'result = "<IMG  src='" & IUrl & "' width='" & imageWidth & "' height='60' border='0'>"


        Return result
    End Function

    Private Function isMax(ByVal price As Double, ByVal type As Integer) As Boolean
        Dim ans As Boolean
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        Select Case type
            Case 1 : sql = "SELECT max(Price2_Value) as Price FROM ListPrice_Car WHERE Category = 1 "

            Case 2 : sql = "SELECT min(Price1_Value) as Price FROM ListPrice_Car WHERE Category = 1"

            Case 3 : sql = "SELECT min(RYear_Value) as Price FROM ListYear "

            Case 4 : sql = "SELECT min(LYear_Value) as Price FROM ListYear "

            Case 5 : sql = "SELECT min(LCC_Value) as Price FROM ListCC WHERE Category = 1"

            Case 6 : sql = "SELECT max(RCC_Value) as Price FROM ListCC WHERE Category = 1"

            Case 7 : sql = "SELECT max(Rpower_Value) as Price FROM ListPower WHERE Category = 1 "

            Case 8 : sql = "SELECT min(Lpower_Value) as Price FROM ListPower WHERE Category = 1"

            Case 9 : sql = "SELECT max(Rmile_Value) as Price FROM ListMile "

            Case 10 : sql = "SELECT min(Lmile_Value) as Price FROM ListMile "

        End Select

        mycommand = New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()

        If reader.Read() Then
            If CDbl(reader.Item("Price")) = price Then
                ans = True
            Else
                ans = False
            End If
        End If

        mycommand.Dispose()
        reader.Close()

        myconn.Close()

        Return ans
    End Function

    '===================Car=============================
    Function checkBrand(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Car_Brand = " & b_name & ") "
            Session.Add("SearchCond", BrandDB.getBrandName(b_name) & "; ")
            Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkModel(ByVal m_name As Integer) As String
        Dim model_condition As String

        If m_name <> 0 Then
            model_condition = " And (Car_Model = " & m_name & ") "
            Session("SearchCond") = Session("SearchCond") & ModelDB.getModelName(m_name) & "; "
            Session("modelIndex") = Request.Form("modelIndex")
        Else
            model_condition = ""
            Session("modelIndex") = "0"
        End If

        Return model_condition
    End Function
    Function checkCarType(ByVal car_type As Integer) As String
        Dim car_type_condition As String

        If car_type <> 0 Then
            car_type_condition = " And (car_type = " & car_type & ") "
            Session("SearchCond") = Session("SearchCond") & CarTypeDB.getStatusName(car_type, 1) & "; "
        Else
            car_type_condition = ""
        End If

        Session("carType") = car_type
        Return car_type_condition
    End Function
    Function checkYear(ByVal y1 As Double, ByVal y2 As Double) As String
        ' ---------------------------------------- YEAR ------------------------------------------------------
        Dim year_condition As String
        If y1 = 0 And y2 = 0 Then

            year_condition = ""

        ElseIf y1 <> 0 And y2 = 0 Then

            year_condition = " And (Car_Year_Ord <= " & y1 & ") "
            Session("SearchCond") = Session("SearchCond") & "<= " & y1 & "; "

        ElseIf y1 = 0 And y2 <> 0 Then

            If isMax(y2, 3) Then
                '  txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
            Else
                year_condition = " And (Car_Year_Ord <= " & y2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
            End If


        ElseIf y1 <> 0 And y2 <> 0 Then

            If (y1 <= y2) Then
                If isMax(y1, 4) Then
                    year_condition = " And (Car_Year_Ord <= " & y2 & ") "
                    Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
                Else
                    year_condition = " And (Car_Year_Ord between " & y1 & " and " & y2 & ") "
                    Session("SearchCond") = Session("SearchCond") & y1 & "-" & y2 & "; "
                End If

            Else
                If isMax(y1, 3) Then
                    '   txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
                Else
                    year_condition = " And (Car_Year_Ord between " & y2 & " and " & y1 & ") "
                    Session("SearchCond") = Session("SearchCond") & y2 & "-" & y1 & "; "
                End If


            End If


        End If
        Session("y1") = y1
        Session("y2") = y2

        Return year_condition
    End Function
    Function checkCC(ByVal cc1 As Double, ByVal cc2 As Double) As String
        ' ---------------------------------------- CC ------------------------------------------------------
        Dim cc_condition As String
        If cc1 = 0 And cc2 = 0 Then
            cc_condition = ""
        ElseIf cc1 <> 0 And cc2 = 0 Then
            If isMax(cc1, 5) Then
                cc_condition = " And (Car_CC <= " & cc1 + 1 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
            Else
                cc_condition = " And (Car_CC >= " & cc1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
            End If

        ElseIf cc1 = 0 And cc2 <> 0 Then
            If isMax(cc2, 6) Then
                cc_condition = " And (Car_CC >= " & cc2 - 1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
            Else
                cc_condition = " And (Car_CC <= " & cc2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
            End If

        ElseIf cc1 <> 0 And cc2 <> 0 Then
            If cc1 < cc2 Then
                If isMax(cc1, 5) Then
                    If cc2 <> 0 Then
                        cc_condition = " And (Car_CC <= " & cc2 & " ) "
                        Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
                    Else
                        cc_condition = " And (Car_CC <= " & cc1 + 1 & ") "
                        Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
                    End If

                Else
                    If isMax(cc2, 6) Then
                        cc_condition = " And (Car_CC >= " & cc1 & ") "
                        Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
                    Else
                        cc_condition = " And (Car_CC between " & cc1 & " and " & cc2 & ") "
                        Session("SearchCond") = Session("SearchCond") & cc1 & "-" & cc2 & "cc; "
                    End If
                End If
            Else
                If isMax(cc2, 6) Then
                    cc_condition = " And (Car_CC >= " & cc2 - 1 & ") "
                    Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
                Else
                    cc_condition = " And (Car_CC between " & cc2 & " and " & cc1 & ") "
                    Session("SearchCond") = Session("SearchCond") & cc2 & "-" & cc1 & "cc; "
                End If

            End If

        End If
        Session("cc1") = cc1
        Session("cc2") = cc2

        Return cc_condition
    End Function
    Function checkPrice(ByVal p1 As Double, ByVal p2 As Double) As String
        ' ----------------------------------------  PRICE ------------------------------------------------------

        Dim price_condition As String

        If (p1 = 0) And (p2 = 0) Then
            price_condition = ""
        ElseIf (p1 <> 0) And (p2 = 0) Then

            If isMax(p1, 2) Then
                price_condition = " And (Car_Price <= " & p1 + 1 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
            Else
                price_condition = " And (Car_Price >= " & p1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
            End If

        ElseIf (p1 = 0) And (p2 <> 0) Then

            If isMax(p2, 1) Then
                price_condition = " And (Car_Price >= " & p2 - 1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
            Else
                price_condition = " And (Car_Price <= " & p2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
            End If


        ElseIf (p1 <> 0) And (p2 <> 0) Then

            If p1 < p2 Then
                If isMax(p1, 2) Then
                    If p2 <> 0 Then
                        price_condition = " And (Car_Price <= " & p2 & " ) "
                        Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
                    Else
                        price_condition = " And (Car_Price <= " & p1 + 1 & ") "
                        Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
                    End If

                Else
                    If isMax(p2, 1) Then
                        price_condition = " And (Car_Price >= " & p1 & ") "
                        Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
                    Else
                        price_condition = " And (Car_Price between " & p1 & " and " & p2 & ") "
                        Session("SearchCond") = Session("SearchCond") & "฿ " & p1 & "-" & p2 & "; "
                    End If
                End If
            Else
                If isMax(p2, 1) Then
                    price_condition = " And (Car_Price >= " & p2 - 1 & ") "
                    Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
                Else
                    price_condition = " And (Car_Price between " & p2 & " and " & p1 & ") "
                    Session("SearchCond") = Session("SearchCond") & "฿ " & p2 & "-" & p1 & "; "
                End If

            End If

        End If
        Session("p1") = p1
        Session("p2") = p2

        Return price_condition
    End Function
    '==================Bike============================
    Function checkBrandBike(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Bike_Brand = " & b_name & ") "
            Session.Add("SearchCond", BrandDB.getBrandName(b_name) & "; ")
            Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkModelBike(ByVal m_name As Integer) As String
        Dim model_condition As String

        If m_name <> 0 Then
            model_condition = " And (Bike_Model = " & m_name & ") "
            Session("SearchCond") = Session("SearchCond") & ModelDB.getModelName(m_name) & "; "
            Session("modelIndex") = Request.Form("modelIndex")
        Else
            model_condition = ""
            Session("modelIndex") = "0"
        End If

        Return model_condition
    End Function
    Function checkCarTypeBike(ByVal car_type As Integer) As String
        Dim car_type_condition As String

        If car_type <> 0 Then
            car_type_condition = " And (Bike_type = " & car_type & ") "
            Session("SearchCond") = Session("SearchCond") & CarTypeDB.getStatusName(car_type, 2) & "; "
        Else
            car_type_condition = ""
        End If

        Session("carType") = car_type
        Return car_type_condition
    End Function
    Function checkPriceBike(ByVal p1 As Double, ByVal p2 As Double) As String
        ' ----------------------------------------  PRICE ------------------------------------------------------

        Dim price_condition As String

        If (p1 = 0) And (p2 = 0) Then
            price_condition = ""
        ElseIf (p1 <> 0) And (p2 = 0) Then

            If isMax(p1, 2) Then
                price_condition = " And (Bike_Price <= " & p1 + 1 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
            Else
                price_condition = " And (Bike_Price >= " & p1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
            End If

        ElseIf (p1 = 0) And (p2 <> 0) Then

            If isMax(p2, 1) Then
                price_condition = " And (Bike_Price >= " & p2 - 1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
            Else
                price_condition = " And (Bike_Price <= " & p2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
            End If


        ElseIf (p1 <> 0) And (p2 <> 0) Then

            If p1 < p2 Then
                If isMax(p1, 2) Then
                    If p2 <> 0 Then
                        price_condition = " And (Bike_Price <= " & p2 & " ) "
                        Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
                    Else
                        price_condition = " And (Bike_Price <= " & p1 + 1 & ") "
                        Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
                    End If

                Else
                    If isMax(p2, 1) Then
                        price_condition = " And (Bike_Price >= " & p1 & ") "
                        Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
                    Else
                        price_condition = " And (Bike_Price between " & p1 & " and " & p2 & ") "
                        Session("SearchCond") = Session("SearchCond") & "฿ " & p1 & "-" & p2 & "; "
                    End If
                End If
            Else
                If isMax(p2, 1) Then
                    price_condition = " And (Bike_Price >= " & p2 - 1 & ") "
                    Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
                Else
                    price_condition = " And (Bike_Price between " & p2 & " and " & p1 & ") "
                    Session("SearchCond") = Session("SearchCond") & "฿ " & p2 & "-" & p1 & "; "
                End If

            End If

        End If

        Session("p1") = p1
        Session("p2") = p2
        Return price_condition
    End Function
    Function checkYearBike(ByVal y1 As Double, ByVal y2 As Double) As String
        ' ---------------------------------------- YEAR ------------------------------------------------------
        Dim year_condition As String
        If y1 = 0 And y2 = 0 Then

            year_condition = ""

        ElseIf y1 <> 0 And y2 = 0 Then


            year_condition = " And (Bike_Year_Ord <= " & y1 & ") "
            Session("SearchCond") = Session("SearchCond") & "<= " & y1 & "; "

        ElseIf y1 = 0 And y2 <> 0 Then

            If isMax(y2, 3) Then
                '  txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
            Else
                year_condition = " And (Bike_Year_Ord <= " & y2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
            End If


        ElseIf y1 <> 0 And y2 <> 0 Then

            If (y1 <= y2) Then
                If isMax(y1, 4) Then
                    year_condition = " And (Bike_Year_Ord <= " & y2 & ") "
                    Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
                Else
                    year_condition = " And (Bike_Year_Ord between " & y1 & " and " & y2 & ") "
                    Session("SearchCond") = Session("SearchCond") & y1 & "-" & y2 & "; "
                End If

            Else
                If isMax(y1, 3) Then
                    '   txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
                Else
                    year_condition = " And (Bike_Year_Ord between " & y2 & " and " & y1 & ") "
                    Session("SearchCond") = Session("SearchCond") & y2 & "-" & y1 & "; "
                End If


            End If


        End If

        Session("y1") = y1
        Session("y2") = y2
        Return year_condition
    End Function
    Function checkCCBike(ByVal cc1 As Double, ByVal cc2 As Double) As String
        ' ---------------------------------------- CC ------------------------------------------------------
        Dim cc_condition As String
        If cc1 = 0 And cc2 = 0 Then
            cc_condition = ""
        ElseIf cc1 <> 0 And cc2 = 0 Then
            If isMax(cc1, 5) Then
                cc_condition = " And (Bike_CC <= " & cc1 + 1 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
            Else
                cc_condition = " And (Bike_CC >= " & cc1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
            End If

        ElseIf cc1 = 0 And cc2 <> 0 Then
            If isMax(cc2, 6) Then
                cc_condition = " And (Bike_CC >= " & cc2 - 1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
            Else
                cc_condition = " And (Bike_CC <= " & cc2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
            End If

        ElseIf cc1 <> 0 And cc2 <> 0 Then
            If cc1 < cc2 Then
                If isMax(cc1, 5) Then
                    If cc2 <> 0 Then
                        cc_condition = " And (Bike_CC <= " & cc2 & " ) "
                        Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
                    Else
                        cc_condition = " And (Bike_CC <= " & cc1 + 1 & ") "
                        Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
                    End If

                Else
                    If isMax(cc2, 6) Then
                        cc_condition = " And (Bike_CC >= " & cc1 & ") "
                        Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
                    Else
                        cc_condition = " And (Bike_CC between " & cc1 & " and " & cc2 & ") "
                        Session("SearchCond") = Session("SearchCond") & cc1 & "-" & cc2 & "cc; "
                    End If
                End If
            Else
                If isMax(cc2, 6) Then
                    cc_condition = " And (Bike_CC >= " & cc2 - 1 & ") "
                    Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
                Else
                    cc_condition = " And (Bike_CC between " & cc2 & " and " & cc1 & ") "
                    Session("SearchCond") = Session("SearchCond") & cc2 & "-" & cc1 & "cc; "
                End If

            End If

        End If

        Session("cc1") = cc1
        Session("cc2") = cc2
        Return cc_condition
    End Function
    '===================Truck===============================================
    Function checkBrandTruck(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Truck_Brand = " & b_name & ") "
            Session.Add("SearchCond", BrandDB.getBrandName(b_name) & "; ")
            Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkModelTruck(ByVal m_name As String) As String
        Dim model_condition As String

        If m_name <> "" Then
            model_condition = " And (Truck_Model like '%" & m_name & "%') "
            Session("SearchCond") = Session("SearchCond") & m_name & "; "
        Else
            model_condition = ""
        End If

        Session("modelIndex") = m_name
        Return model_condition
    End Function
    Function checkCarTypeTruck(ByVal car_type As Integer) As String
        Dim car_type_condition As String

        If car_type <> 0 Then
            car_type_condition = " And (Truck_type = " & car_type & ") "
            Session("SearchCond") = Session("SearchCond") & CarTypeDB.getStatusName(car_type, 3) & "; "
        Else
            car_type_condition = ""
        End If

        Session("carType") = car_type
        Return car_type_condition
    End Function
    Function checkPriceTruck(ByVal p1 As Double, ByVal p2 As Double) As String
        ' ----------------------------------------  PRICE ------------------------------------------------------

        Dim price_condition As String

        If (p1 = 0) And (p2 = 0) Then
            price_condition = ""
        ElseIf (p1 <> 0) And (p2 = 0) Then

            If isMax(p1, 2) Then
                price_condition = " And (Truck_Price <= " & p1 + 1 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
            Else
                price_condition = " And (Truck_Price >= " & p1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
            End If

        ElseIf (p1 = 0) And (p2 <> 0) Then

            If isMax(p2, 1) Then
                price_condition = " And (Truck_Price >= " & p2 - 1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
            Else
                price_condition = " And (Truck_Price <= " & p2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
            End If


        ElseIf (p1 <> 0) And (p2 <> 0) Then

            If p1 < p2 Then
                If isMax(p1, 2) Then
                    If p2 <> 0 Then
                        price_condition = " And (Truck_Price <= " & p2 & " ) "
                        Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
                    Else
                        price_condition = " And (Truck_Price <= " & p1 + 1 & ") "
                        Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
                    End If

                Else
                    If isMax(p2, 1) Then
                        price_condition = " And (Truck_Price >= " & p1 & ") "
                        Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
                    Else
                        price_condition = " And (Truck_Price between " & p1 & " and " & p2 & ") "
                        Session("SearchCond") = Session("SearchCond") & "฿ " & p1 & "-" & p2 & "; "
                    End If
                End If
            Else
                If isMax(p2, 1) Then
                    price_condition = " And (Truck_Price >= " & p2 - 1 & ") "
                    Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
                Else
                    price_condition = " And (Truck_Price between " & p2 & " and " & p1 & ") "
                    Session("SearchCond") = Session("SearchCond") & "฿ " & p2 & "-" & p1 & "; "
                End If

            End If

        End If

        Session("p1") = p1
        Session("p2") = p2
        Return price_condition
    End Function
    Function checkYearTruck(ByVal y1 As Double, ByVal y2 As Double) As String
        ' ---------------------------------------- YEAR ------------------------------------------------------
        Dim year_condition As String
        If y1 = 0 And y2 = 0 Then

            year_condition = ""

        ElseIf y1 <> 0 And y2 = 0 Then


            year_condition = " And (Truck_Year_Ord <= " & y1 & ") "
            Session("SearchCond") = Session("SearchCond") & "<= " & y1 & "; "

        ElseIf y1 = 0 And y2 <> 0 Then

            If isMax(y2, 3) Then
                '  txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
            Else
                year_condition = " And (Truck_Year_Ord <= " & y2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
            End If


        ElseIf y1 <> 0 And y2 <> 0 Then

            If (y1 <= y2) Then
                If isMax(y1, 4) Then
                    year_condition = " And (Truck_Year_Ord <= " & y2 & ") "
                    Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
                Else
                    year_condition = " And (Truck_Year_Ord between " & y1 & " and " & y2 & ") "
                    Session("SearchCond") = Session("SearchCond") & y1 & "-" & y2 & "; "
                End If

            Else
                If isMax(y1, 3) Then
                    '   txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
                Else
                    year_condition = " And (Truck_Year_Ord between " & y2 & " and " & y1 & ") "
                    Session("SearchCond") = Session("SearchCond") & y2 & "-" & y1 & "; "
                End If


            End If


        End If

        Session("y1") = y1
        Session("y2") = y2
        Return year_condition
    End Function
    Function checkCCTruck(ByVal cc1 As Double, ByVal cc2 As Double) As String
        ' ---------------------------------------- CC ------------------------------------------------------
        Dim cc_condition As String
        If cc1 = 0 And cc2 = 0 Then
            cc_condition = ""
        ElseIf cc1 <> 0 And cc2 = 0 Then
            If isMax(cc1, 5) Then
                cc_condition = " And (Truck_CC <= " & cc1 + 1 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
            Else
                cc_condition = " And (Truck_CC >= " & cc1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
            End If

        ElseIf cc1 = 0 And cc2 <> 0 Then
            If isMax(cc2, 6) Then
                cc_condition = " And (Truck_CC >= " & cc2 - 1 & ") "
                Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
            Else
                cc_condition = " And (Truck_CC <= " & cc2 & ") "
                Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
            End If

        ElseIf cc1 <> 0 And cc2 <> 0 Then
            If cc1 < cc2 Then
                If isMax(cc1, 5) Then
                    If cc2 <> 0 Then
                        cc_condition = " And (Truck_CC <= " & cc2 & " ) "
                        Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
                    Else
                        cc_condition = " And (Truck_CC <= " & cc1 + 1 & ") "
                        Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
                    End If

                Else
                    If isMax(cc2, 6) Then
                        cc_condition = " And (Truck_CC >= " & cc1 & ") "
                        Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
                    Else
                        cc_condition = " And (Truck_CC between " & cc1 & " and " & cc2 & ") "
                        Session("SearchCond") = Session("SearchCond") & cc1 & "-" & cc2 & "cc; "
                    End If
                End If
            Else
                If isMax(cc2, 6) Then
                    cc_condition = " And (Truck_CC >= " & cc2 - 1 & ") "
                    Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
                Else
                    cc_condition = " And (Truck_CC between " & cc2 & " and " & cc1 & ") "
                    Session("SearchCond") = Session("SearchCond") & cc2 & "-" & cc1 & "cc; "
                End If

            End If

        End If

        Session("cc1") = cc1
        Session("cc2") = cc2
        Return cc_condition
    End Function
    '===========================Customer Province===============================
    Function checkProvince(ByVal province_id As Integer) As String
        Dim province_condition As String

        If province_id <> 0 Then
            province_condition = " And (Customer_Province = " & province_id & ") "
            Session("SearchCond") = Session("SearchCond") & ProvinceDB.getProvinceName(province_id) & "; "
            Session("proinceIndex") = Request.Form("proinceIndex")
        Else
            province_condition = ""
            Session("proinceIndex") = ""
        End If

        Return province_condition
    End Function
    Function checkDistrict(ByVal district_id As Integer) As String
        Dim district_condition As String

        If district_id <> 0 Then
            district_condition = " And (Customer_District = " & district_id & ") "
            Session("SearchCond") = Session("SearchCond") & DistrictDB.getDistrictName(district_id) & "; "
            Session("districtIndex") = Request.Form("districtIndex")
        Else
            district_condition = ""
            Session("districtIndex") = "0"
        End If

        Return district_condition
    End Function

    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Car_Price"
                KeyOrder_By = "Car_Price"
            Case 1
                Order_By_Condition = " ORDER BY Car_Year_Ord "
                KeyOrder_By = "Car_Year_Ord"
            Case 2
                Order_By_Condition = " ORDER BY Car_CC"
                KeyOrder_By = "Car_CC"
            Case 3
                Order_By_Condition = " ORDER BY Car_Power"
                KeyOrder_By = "Car_Power"
            Case 4
                Order_By_Condition = " ORDER BY Car_Miles"
                KeyOrder_By = "Car_Miles"
            Case 5
                Order_By_Condition = " ORDER BY Car_Post DESC"
                KeyOrder_By = "Car_Post DESC"

        End Select

        Session("orderby") = orderby
        Return Order_By_Condition & ":" & KeyOrder_By
    End Function
    Function checkOrderByBike(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Bike_Price"
                KeyOrder_By = "Bike_Price"
            Case 1
                Order_By_Condition = " ORDER BY Bike_Year_Ord"
                KeyOrder_By = "Bike_Year_Ord"
            Case 2
                Order_By_Condition = " ORDER BY Bike_CC"
                KeyOrder_By = "Bike_CC"
            Case 3
                Order_By_Condition = " ORDER BY Bike_Power"
                KeyOrder_By = "Bike_Power"
            Case 4
                Order_By_Condition = " ORDER BY Bike_Miles"
                KeyOrder_By = "Bike_Miles"
            Case 5
                Order_By_Condition = " ORDER BY Bike_Post"
                KeyOrder_By = "Bike_Post"

        End Select

        Session("orderby") = orderby
        Return Order_By_Condition & ":" & KeyOrder_By
    End Function
    Function checkOrderByTruck(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Truck_Price"
                KeyOrder_By = "Truck_Price"
            Case 1
                Order_By_Condition = " ORDER BY Truck_Year_Ord"
                KeyOrder_By = "Truck_Year_Ord"
            Case 2
                Order_By_Condition = " ORDER BY Truck_CC"
                KeyOrder_By = "Truck_CC"
            Case 3
                Order_By_Condition = " ORDER BY Truck_Power"
                KeyOrder_By = "Truck_Power"
            Case 4
                Order_By_Condition = " ORDER BY Truck_Miles"
                KeyOrder_By = "Truck_Miles"
            Case 5
                Order_By_Condition = " ORDER BY Truck_Post DESC"
                KeyOrder_By = "Truck_Post DESC"

        End Select

        Return Order_By_Condition & ":" & KeyOrder_By
    End Function

    Private Sub doSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSearch.Click
        Dim sql As String
        Dim end_sql As String
        Dim orderby As Array




        Select Case CInt(Request.Form("cat"))
            Case 1
                sql = checkBrand(CInt(Request.Form("Brands")))
                sql = sql & checkModel(CInt(Request.Form("Model")))
                sql = sql & checkCarType(CInt(Request.Form("carType")))
                sql = sql & checkPrice(CInt(Request.Form("pricest")), CInt(Request.Form("priceend")))
                sql = sql & checkYear(CInt(Request.Form("yearst")), CInt(Request.Form("yearend")))
                sql = sql & checkCC(CInt(Request.Form("ccst")), CInt(Request.Form("ccend")))
                '==========================Customer province =============================

                sql = sql & checkProvince(CInt(Request.Form("Province")))
                sql = sql & checkDistrict(CInt(Request.Form("District")))

                sql = "SELECT Car.* FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 1) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) AND (NoticeDetail.Detail_show = 1) " & sql
                end_sql = checkOrderBy(5)
                orderby = Split(end_sql, ":")
                Session("searchSQL") = sql
                Session("searchOrderBY") = orderby
                Response.Redirect("../search/search2_result_car.aspx")
            Case 2
                sql = checkBrandBike(CInt(Request.Form("Brands")))
                sql = sql & checkModelBike(CInt(Request.Form("Model")))
                sql = sql & checkCarTypeBike(CInt(Request.Form("carType")))
                sql = sql & checkPriceBike(CInt(Request.Form("pricest")), CInt(Request.Form("priceend")))
                sql = sql & checkYearBike(CInt(Request.Form("yearst")), CInt(Request.Form("yearend")))
                sql = sql & checkCCBike(CInt(Request.Form("ccst")), CInt(Request.Form("ccend")))
                '==========================Customer province =============================

                sql = sql & checkProvince(CInt(Request.Form("Province")))
                sql = sql & checkDistrict(CInt(Request.Form("District")))

                sql = "SELECT Bike.* FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 2) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1)  AND (NoticeDetail.Detail_show = 1) " & sql
                end_sql = checkOrderByBike(5)
                orderby = Split(end_sql, ":")
                Session("searchSQL") = sql
                Session("searchOrderBY") = orderby
                Response.Redirect("../search/search2_result_moto.aspx")
            Case 3
                sql = checkBrandTruck(CInt(Request.Form("Brands")))
                sql = sql & checkModelTruck(CInt(Request.Form("Model")))
                sql = sql & checkCarTypeTruck(CInt(Request.Form("carType")))
                sql = sql & checkPriceTruck(CInt(Request.Form("pricest")), CInt(Request.Form("priceend")))
                sql = sql & checkYearTruck(CInt(Request.Form("yearst")), CInt(Request.Form("yearend")))
                sql = sql & checkCCTruck(CInt(Request.Form("ccst")), CInt(Request.Form("ccend")))
                '==========================Customer province =============================

                sql = sql & checkProvince(CInt(Request.Form("Province")))
                sql = sql & checkDistrict(CInt(Request.Form("District")))

                sql = "SELECT Truck.* FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 3) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1)  AND (NoticeDetail.Detail_show = 1) " & sql
                end_sql = checkOrderByTruck(5)
                orderby = Split(end_sql, ":")
                Session("searchSQL") = sql
                Session("searchOrderBY") = orderby
                Response.Redirect("../search/search2_result_truck.aspx")
        End Select


        'Response.Write(sql)

    End Sub
End Class
