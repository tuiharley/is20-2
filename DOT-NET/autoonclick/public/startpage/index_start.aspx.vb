Imports System.IO
Imports System.Data
Imports System.Data.OleDb

Public Class index_start
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents halfBanner As System.Web.UI.WebControls.Label
    Protected WithEvents err As System.Web.UI.WebControls.Label
    Protected WithEvents form1 As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents doSearch As System.Web.UI.WebControls.LinkButton

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
            err.Text = "<li>กรุณาเลือกหมวดหมู่รถ</li>"
        Else
            err.Text = ""
        End If


        showBanner()
        AjaxPro.Utility.RegisterTypeForAjax(GetType(index_start))
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
    Public Function showSponsor() As String
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






        '<li>
        '									<div><A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></div>
        '									<A class="text" href="#">Headline Text (only 1. line)</A>
        '									<p><A class="email" href="#">www.email.com</A> <A class="intro" href="#">- Introduction 
        '											Text (rest of line)</A></p>
        '								</li>




        Return ShowTxt
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
    '<li>
    '									<div><A href="#"><IMG alt="" src="../scripts+pics/images/pic_60x45.gif"></A></div>
    '									<A class="text" href="#">Headline Text (only 1. line)</A>
    '									<p><A class="email" href="#">www.email.com</A> <A class="intro" href="#">- Introduction 
    '											Text (rest of line)</A></p>
    '</li>


    <AjaxPro.AjaxMethod()> _
    Public Function showRamDom() As String
        Dim txt As String
        Dim debugTxt As String
        Dim myDS As DataSet
        Dim x As Random = New Random
        Dim xResult As Integer
        Dim ArrAds(2, 5) As Ads
        Dim myAds As Ads
        Dim i As Integer, n As Integer

        myDS = RandomAds.IndexPGRandom()
        Try
            'Car
            If myDS.Tables("Car").Rows.Count > 0 Then
                If myDS.Tables("Car").Rows.Count > 1 Then
                    n = 2
                Else
                    n = 1
                End If

                For i = 1 To n
                    xResult = x.Next(1, myDS.Tables("Car").Rows.Count)
                    myAds.id = myDS.Tables("Car").Rows(xResult - 1).Item("Car_Id")
                    myAds.Brand = myDS.Tables("Car").Rows(xResult - 1).Item("Brand_name")
                    myAds.Model = myDS.Tables("Car").Rows(xResult - 1).Item("Model_Name")
                    If myDS.Tables("Car").Rows(xResult - 1).Item("Status_Name") = "รถใหม่" Then
                        myAds.Status = "<span>" & myDS.Tables("Car").Rows(xResult - 1).Item("Status_Name") & "</span>"
                    Else
                        myAds.Status = "ปี " & myDS.Tables("Car").Rows(xResult - 1).Item("Car_Year_Ord")
                    End If

                    If checkNullDBPrice(myDS.Tables("Car").Rows(xResult - 1).Item("Car_Price")) = 0 Then
                        myAds.Price = "-"
                    Else
                        myAds.Price = FormatNumber(checkNullDBPrice(myDS.Tables("Car").Rows(xResult - 1).Item("Car_Price")), 0, , , TriState.True)
                    End If

                    myAds.Image1 = checkNullDBstr(myDS.Tables("Car").Rows(xResult - 1).Item("Car_Image1"))

                    myDS.Tables("Car").Rows.RemoveAt(xResult - 1)
                    ArrAds(i, 1) = myAds
                Next
            Else
                myAds.id = 0
                myAds.Brand = "-"
                myAds.Model = "-"
                myAds.Status = "-"
                myAds.Price = 0
                myAds.Yearr = "-"
                myAds.Image1 = "-"

                ArrAds(1, 1) = myAds
                ArrAds(2, 1) = myAds
            End If


            'Bike
            If myDS.Tables("Bike").Rows.Count > 0 Then
                If myDS.Tables("Bike").Rows.Count > 1 Then
                    n = 2
                Else
                    n = 1
                End If

                For i = 1 To n
                    xResult = x.Next(1, myDS.Tables("Bike").Rows.Count)
                    myAds.id = myDS.Tables("Bike").Rows(xResult - 1).Item("Bike_Id")
                    myAds.Brand = myDS.Tables("Bike").Rows(xResult - 1).Item("Brand_name")
                    myAds.Model = myDS.Tables("Bike").Rows(xResult - 1).Item("Model_Name")
                    If myDS.Tables("Bike").Rows(xResult - 1).Item("Status_Name") = "รถใหม่" Then
                        myAds.Status = "<span>" & myDS.Tables("Bike").Rows(xResult - 1).Item("Status_Name") & "</span>"
                    Else
                        myAds.Status = "ปี " & myDS.Tables("Bike").Rows(xResult - 1).Item("Bike_Year_Ord")
                    End If

                    If checkNullDBPrice(myDS.Tables("Bike").Rows(xResult - 1).Item("Bike_Price")) = 0 Then
                        myAds.Price = "-"
                    Else
                        myAds.Price = FormatNumber(checkNullDBPrice(myDS.Tables("Bike").Rows(xResult - 1).Item("Bike_Price")), 0, , , TriState.True)
                    End If

                    myAds.Image1 = checkNullDBstr(myDS.Tables("Bike").Rows(xResult - 1).Item("Bike_Image1"))

                    myDS.Tables("Bike").Rows.RemoveAt(xResult - 1)
                    ArrAds(i, 2) = myAds
                Next
            Else
                myAds.id = 0
                myAds.Brand = "-"
                myAds.Model = "-"
                myAds.Status = "-"
                myAds.Price = 0
                myAds.Yearr = "-"
                myAds.Image1 = "-"

                ArrAds(1, 2) = myAds
                ArrAds(2, 2) = myAds
            End If


            'Truck
            If myDS.Tables("Truck").Rows.Count > 0 Then
                If myDS.Tables("Truck").Rows.Count > 1 Then
                    n = 2
                Else
                    n = 1
                End If

                For i = 1 To n
                    xResult = x.Next(1, myDS.Tables("Truck").Rows.Count)
                    myAds.id = myDS.Tables("Truck").Rows(xResult - 1).Item("Truck_Id")
                    myAds.Brand = myDS.Tables("Truck").Rows(xResult - 1).Item("Brand_name")
                    myAds.Model = myDS.Tables("Truck").Rows(xResult - 1).Item("Model_Name")

                    If myDS.Tables("Truck").Rows(xResult - 1).Item("Status_Name") = "รถใหม่" Then
                        myAds.Status = "<span>" & myDS.Tables("Truck").Rows(xResult - 1).Item("Status_Name") & "</span>"
                    Else
                        myAds.Status = "ปี " & myDS.Tables("Truck").Rows(xResult - 1).Item("Truck_Year_Ord")
                    End If

                    If checkNullDBPrice(myDS.Tables("Truck").Rows(xResult - 1).Item("Truck_Price")) = 0 Then
                        myAds.Price = "-"
                    Else
                        myAds.Price = FormatNumber(checkNullDBPrice(myDS.Tables("Truck").Rows(xResult - 1).Item("Truck_Price")), 0, , , TriState.True)
                    End If

                    myAds.Image1 = checkNullDBstr(myDS.Tables("Truck").Rows(xResult - 1).Item("Truck_Image1"))

                    myDS.Tables("Truck").Rows.RemoveAt(xResult - 1)
                    ArrAds(i, 3) = myAds
                Next
            Else
                myAds.id = 0
                myAds.Brand = "-"
                myAds.Model = "-"
                myAds.Status = "-"
                myAds.Price = 0
                myAds.Yearr = "-"
                myAds.Image1 = "-"

                ArrAds(1, 3) = myAds
                ArrAds(2, 3) = myAds
            End If

            'Part
            If myDS.Tables("Part").Rows.Count > 0 Then
                If myDS.Tables("Part").Rows.Count > 1 Then
                    n = 2
                Else
                    n = 1
                End If

                For i = 1 To n
                    xResult = x.Next(1, myDS.Tables("Part").Rows.Count)
                    myAds.id = myDS.Tables("Part").Rows(xResult - 1).Item("Part_Id")
                    myAds.Brand = myDS.Tables("Part").Rows(xResult - 1).Item("Category_Name")
                    myAds.Model = myDS.Tables("Part").Rows(xResult - 1).Item("PartsType_Name")

                    If myDS.Tables("Part").Rows(xResult - 1).Item("Status_Name") = "สินค้าใหม่" Then
                        myAds.Status = "<span>" & myDS.Tables("Part").Rows(xResult - 1).Item("Status_Name") & "</span>"
                    Else
                        myAds.Status = "ปี " & myDS.Tables("Part").Rows(xResult - 1).Item("Part_Year_Ord")
                    End If

                    If checkNullDBPrice(myDS.Tables("Part").Rows(xResult - 1).Item("Part_Price")) = 0 Then
                        myAds.Price = "-"
                    Else
                        myAds.Price = FormatNumber(checkNullDBPrice(myDS.Tables("Part").Rows(xResult - 1).Item("Part_Price")), 0, , , TriState.True)
                    End If

                    myAds.Image1 = checkNullDBstr(myDS.Tables("Part").Rows(xResult - 1).Item("Part_Image"))

                    myDS.Tables("Part").Rows.RemoveAt(xResult - 1)
                    ArrAds(i, 4) = myAds
                Next
            Else
                myAds.id = 0
                myAds.Brand = "-"
                myAds.Model = "-"
                myAds.Status = "-"
                myAds.Price = 0
                myAds.Yearr = "-"
                myAds.Image1 = "-"

                ArrAds(1, 4) = myAds
                ArrAds(2, 4) = myAds
            End If

            'Customer
            If myDS.Tables("Customer").Rows.Count > 0 Then
                If myDS.Tables("Customer").Rows.Count > 1 Then
                    n = 2
                Else
                    n = 1
                End If

                For i = 1 To n
                    xResult = x.Next(1, myDS.Tables("Customer").Rows.Count)
                    myAds.id = myDS.Tables("Customer").Rows(xResult - 1).Item("Customer_Id")
                    myAds.Brand = myDS.Tables("Customer").Rows(xResult - 1).Item("Customer_Name")
                    myAds.Province = myDS.Tables("Customer").Rows(xResult - 1).Item("Province_Name")
                    myAds.Image1 = checkNullDBstr(myDS.Tables("Customer").Rows(xResult - 1).Item("Customer_Logo"))

                    myDS.Tables("Customer").Rows.RemoveAt(xResult - 1)
                    ArrAds(i, 5) = myAds
                Next
            Else
                myAds.id = 0
                myAds.Brand = "-"
                myAds.Province = "-"
                myAds.Image1 = "-"

                ArrAds(1, 5) = myAds
                ArrAds(2, 5) = myAds
            End If

        Catch ex As Exception
            debugTxt = ex.Message
        End Try
        



        txt = "<table class='index_ads' cellSpacing='0' >"
        txt &= "	<caption>ฐานข้อมูลขนาดใหญ่ของรถ อะไหล่/ประดับยนต์ และโฆษณาพิเศษเกี่ยวกับยานยนต์ บน AUTO-ONCLICK</caption>"
        txt &= " <thead>"
        txt &= "		<tr>"
        txt &= "			<th>"
        txt &= "				<A href='#'>""รถยนต์""</A></th>"
        txt &= "			<td><A href='#'>""รถจักรยานยนต์""</A></td>"
        txt &= "			<td><A href='#'>""รถบรรทุก""</A></td>"
        txt &= "			<td><A href='#'>""อะไหล่/ประดับยนต์""</A></td>"
        txt &= "			<td><A href='#'>""ผู้ประกอบการ""</A></td>"
        txt &= "		</tr>"
        txt &= "	</thead>"
        txt &= "	<tbody>"
        txt &= "		<tr>"
        txt &= "			<th>"
        txt &= "				<span>"
        txt &= "					<A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 1).Brand & " " & ArrAds(1, 1).Model & ", "
        txt &= "        " & ArrAds(1, 1).Status & ", ฿ " & ArrAds(1, 1).Price & "</A></p>"
        txt &= "			</th>"
        txt &= "			<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 2).Brand & " " & ArrAds(1, 2).Model & ", " & ArrAds(1, 2).Status & ""
        txt &= ", ฿ " & ArrAds(1, 2).Price & "</A></p>"
        txt &= "			</td>"
        txt &= "			<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "				<p><A href='#'>Make Model, <span>new</span>-year, price</A></p>"
        txt &= "			</td>"
        txt &= "			<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "				<p><A href='#'>Product Name, <span>new</span>-used, price</A></p>"
        txt &= "			</td>"
        txt &= "			<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "				<p><A href='#'>Company Name, Province</A></p>"
        txt &= "			</td>"
        txt &= "		</tr>"
        txt &= "	</tbody>"
        txt &= "	<tbody>"
        txt &= "		<tfoot>"
        txt &= "			<tr>"
        txt &= "				<th>"
        txt &= "					<span>"
        txt &= "						<A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "					<p><A href='#'>Toyota Camry, <span>ใหม่</span>, ฿ 1,200,000</A></p>"
        txt &= "				</th>"
        txt &= "				<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "					<p><A href='#'>Harley Davidson Big Star, ปี 2000, ฿ 1,200,000</A></p>"
        txt &= "				</td>"
        txt &= "				<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "					<p><A href='#'>Make Model, <span>new</span>-year, price</A></p>"
        txt &= "				</td>"
        txt &= "				<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "					<p><A href='#'>Product Name, <span>new</span>-used, price</A></p>"
        txt &= "				</td>"
        txt &= "				<td><span><A href='#'><IMG alt='' src='../scripts+pics/images/pic_80x60.gif'></A></span>"
        txt &= "					<p><A href='#'>Company Name, Province</A></p>"
        txt &= "				</td>"
        txt &= "			</tr>"
        txt &= "		</tfoot>"
        txt &= "	</tbody></table>"

        Return txt
    End Function


    Private Function getPicEmpty() As String
        Dim show As String

        show = "<IMG alt='' src='../scripts+pics/images/pic_80x60.gif'>"

        Return show
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
    End Sub
End Class
