Imports System.IO
Imports System.Data
Imports System.Data.OleDb

Public Class car_start
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "


    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
Protected WithEvents halfBanner As System.Web.UI.WebControls.Label
    Protected WithEvents err As System.Web.UI.WebControls.Label
    Protected WithEvents form1 As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents doSearch As System.Web.UI.WebControls.LinkButton
    Protected WithEvents banner1 As System.Web.UI.WebControls.Label
    Protected WithEvents banner1_headline As System.Web.UI.WebControls.Label
    Protected WithEvents banner1_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner2 As System.Web.UI.WebControls.Label
    Protected WithEvents banner2_headline As System.Web.UI.WebControls.Label
    Protected WithEvents banner2_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner3 As System.Web.UI.WebControls.Label
    Protected WithEvents banner3_headline As System.Web.UI.WebControls.Label
    Protected WithEvents banner3_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner4 As System.Web.UI.WebControls.Label
    Protected WithEvents banner4_headline As System.Web.UI.WebControls.Label
    Protected WithEvents banner4_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner5 As System.Web.UI.WebControls.Label
    Protected WithEvents banner5_headline As System.Web.UI.WebControls.Label
    Protected WithEvents banner5_txt As System.Web.UI.WebControls.Label
    Protected WithEvents ads1 As System.Web.UI.WebControls.Label
    Protected WithEvents ads2 As System.Web.UI.WebControls.Label
    Protected WithEvents ads3 As System.Web.UI.WebControls.Label
    Protected WithEvents ads4 As System.Web.UI.WebControls.Label
    Protected WithEvents ads5 As System.Web.UI.WebControls.Label
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

        AjaxPro.Utility.RegisterTypeForAjax(GetType(car_start))
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


        '==== 1 =======
        mybanner = Bannerdb.getBanner("Sponsors 1")
        If mybanner.Banner_link = "" Then
            banner1.Text = "<A href='#'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></A>"
        Else
            banner1.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></a>"
        End If
        banner1_headline.Text = "<A class='text' href='#'>" & mybanner.Banner_txt & "</A>"

        banner1_txt.Text = "<A class='email' href='#'>"
        banner1_txt.Text &= mybanner.BEmail
        banner1_txt.Text &= "</A> <A class='intro' href='#'> - "
        banner1_txt.Text &= mybanner.Banner_desc
        banner1_txt.Text &= "</A>"


        '==== 2 =======
        mybanner = Bannerdb.getBanner("Sponsors 2")
        If mybanner.Banner_link = "" Then
            banner2.Text = "<A href='#'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></A>"
        Else
            banner2.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></a>"
        End If
        banner2_headline.Text = "<A class='text' href='#'>" & mybanner.Banner_txt & "</A>"

        banner2_txt.Text = "<A class='email' href='#'>"
        banner2_txt.Text &= mybanner.BEmail
        banner2_txt.Text &= "</A> <A class='intro' href='#'> - "
        banner2_txt.Text &= mybanner.Banner_desc
        banner2_txt.Text &= "</A>"

        '==== 3 =======
        mybanner = Bannerdb.getBanner("Sponsors 3")
        If mybanner.Banner_link = "" Then
            banner3.Text = "<A href='#'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></A>"
        Else
            banner3.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></a>"
        End If
        banner3_headline.Text = "<A class='text' href='#'>" & mybanner.Banner_txt & "</A>"

        banner3_txt.Text = "<A class='email' href='#'>"
        banner3_txt.Text &= mybanner.BEmail
        banner3_txt.Text &= "</A> <A class='intro' href='#'> - "
        banner3_txt.Text &= mybanner.Banner_desc
        banner3_txt.Text &= "</A>"
        '==== 4 =======
        mybanner = Bannerdb.getBanner("Sponsors 4")
        If mybanner.Banner_link = "" Then
            banner4.Text = "<A href='#'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></A>"
        Else
            banner4.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></a>"
        End If
        banner4_headline.Text = "<A class='text' href='#'>" & mybanner.Banner_txt & "</A>"

        banner4_txt.Text = "<A class='email' href='#'>"
        banner4_txt.Text &= mybanner.BEmail
        banner4_txt.Text &= "</A> <A class='intro' href='#'> - "
        banner4_txt.Text &= mybanner.Banner_desc
        banner4_txt.Text &= "</A>"
        '==== 5 =======
        mybanner = Bannerdb.getBanner("Sponsors 5")
        If mybanner.Banner_link = "" Then
            banner5.Text = "<A href='#'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></A>"
        Else
            banner5.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='45' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='60' ></a>"
        End If

        banner5_headline.Text = "<A class='text' href='#'>" & mybanner.Banner_txt & "</A>"

        banner5_txt.Text = "<A class='email' href='#'>"
        banner5_txt.Text &= mybanner.BEmail
        banner5_txt.Text &= "</A> <A class='intro' href='#'> - "
        banner5_txt.Text &= mybanner.Banner_desc
        banner5_txt.Text &= "</A>"


        '==== Ads 1 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner1")
        If mybanner.Banner_link = "" Then
            ads1.Text = "<A href='#'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></A>"
        Else
            ads1.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If


        '==== Ads 2 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner1")
        If mybanner.Banner_link = "" Then
            ads2.Text = "<A href='#'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></A>"
        Else
            ads2.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If

        '==== Ads 3 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner1")
        If mybanner.Banner_link = "" Then
            ads3.Text = "<A href='#'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></A>"
        Else
            ads3.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If

        '==== Ads 4 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner1")
        If mybanner.Banner_link = "" Then
            ads4.Text = "<A href='#'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></A>"
        Else
            ads4.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If

        '==== Ads 5 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner1")
        If mybanner.Banner_link = "" Then
            ads5.Text = "<A href='#'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></A>"
        Else
            ads5.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If

    End Sub



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
        Dim cnt As Integer = 1
        Dim totalRow As Integer

        myDS = RandomAds.IndexPGRandom()
        Try
            'Car
            totalRow = myDS.Tables("Car").Rows.Count
            If totalRow > 0 Then

                For i = 1 To 5
                    For n = 1 To 2
                        If cnt <= totalRow Then
                            xResult = x.Next(1, myDS.Tables("Car").Rows.Count)
                            myAds.id = myDS.Tables("Car").Rows(xResult - 1).Item("Car_Id")
                            myAds.Detailid = myDS.Tables("Car").Rows(xResult - 1).Item("NoticeDetail_Id")
                            myAds.Brand = myDS.Tables("Car").Rows(xResult - 1).Item("Brand_name")
                            myAds.Model = myDS.Tables("Car").Rows(xResult - 1).Item("Model_Name")
                            If myDS.Tables("Car").Rows(xResult - 1).Item("Status_Name") = "รถใหม่" Then
                                myAds.Status = "<span>New</span>"
                            Else
                                myAds.Status = "ปี " & checkNullDBstr(myDS.Tables("Car").Rows(xResult - 1).Item("Car_Year_Ord"))
                            End If

                            myAds.Price = FormatNumber(checkNullDBPrice(myDS.Tables("Car").Rows(xResult - 1).Item("Car_Price")), 2, , , TriState.True)
                            myAds.Image1 = checkNullDBstr(myDS.Tables("Car").Rows(xResult - 1).Item("Car_Image1"))
                            myDS.Tables("Car").Rows.RemoveAt(xResult - 1)
                            ArrAds(n, i) = myAds
                        Else
                            myAds.id = 0
                            myAds.Detailid = 0
                            myAds.Brand = "-"
                            myAds.Model = "-"
                            myAds.Status = "-"
                            myAds.Price = 0
                            myAds.Yearr = "-"
                            myAds.Image1 = ""
                            ArrAds(n, i) = myAds

                        End If

                        cnt += 1

                    Next
                Next

            Else
                myAds.id = 0
                myAds.Detailid = 0
                myAds.Brand = "-"
                myAds.Model = "-"
                myAds.Status = "-"
                myAds.Price = 0
                myAds.Yearr = "-"
                myAds.Image1 = ""

                For i = 1 To 5
                    For n = 1 To 2
                        ArrAds(n, i) = myAds
                    Next
                Next

            End If




        Catch ex As Exception
            debugTxt = ex.Message
        End Try


        txt = "<table class='index_ads' cellSpacing='0' >"
        txt &= "	<caption>""รถยนต์"" ลงประกาศเมื่อเร็วๆนี้ บน AUTO-ONCLICK</caption>"
       
        txt &= "	<tfoot>"
        txt &= "		<tr>"
        txt &= "			<th>"
        txt &= "				<span>"
        txt &= "					<A href='#'>" & showPictures2(ArrAds(1, 1)) & "</A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 1).Brand & " " & ArrAds(1, 1).Model & ", " & ArrAds(1, 1).Status
        txt &= ", ฿ " & ArrAds(1, 1).Price & "</A></p>"
        txt &= "			</th>"
        txt &= "			<td><span><A href='#'>" & showPictures2(ArrAds(1, 2)) & "</A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 2).Brand & " " & ArrAds(1, 2).Model & ", " & ArrAds(1, 2).Status & ", ฿ " & ArrAds(1, 2).Price & "</A></p>"
        txt &= "			</td>"
        txt &= "			<td><span><A href='#'>" & showPictures2(ArrAds(1, 3)) & "</A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 3).Brand & " " & ArrAds(1, 3).Model & ", " & ArrAds(1, 3).Status & ", ฿ " & ArrAds(1, 3).Price & "</A></p>"
        txt &= "			</td>"
        txt &= "			<td><span><A href='#'>" & showPictures2(ArrAds(1, 4)) & "</A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 4).Brand & " " & ArrAds(1, 4).Model & ", " & ArrAds(1, 4).Status & ", ฿ " & ArrAds(1, 4).Price & "</A></p>"
        txt &= "			</td>"
        txt &= "			<td><span><A href='#'>" & showPictures2(ArrAds(1, 5)) & "</A></span>"
        txt &= "				<p><A href='#'>" & ArrAds(1, 5).Brand & " " & ArrAds(1, 5).Model & ", " & ArrAds(1, 5).Status & ", ฿ " & ArrAds(1, 5).Price & "</A></p>"
        txt &= "			</td>"
        txt &= "		</tr>"
        txt &= "			<tr>"
        txt &= "				<th>"
        txt &= "					<span>"
        txt &= "						<A href='#'>" & showPictures2(ArrAds(2, 1)) & "</A></span>"
        txt &= "					<p><A href='#'>" & ArrAds(2, 1).Brand & " " & ArrAds(2, 1).Model & ", " & ArrAds(2, 1).Status & ", ฿ " & ArrAds(2, 1).Price & "</A></p>"
        txt &= "				</th>"
        txt &= "				<td><span><A href='#'>" & showPictures2(ArrAds(2, 2)) & "</A></span>"
        txt &= "					<p><A href='#'>" & ArrAds(2, 2).Brand & " " & ArrAds(2, 2).Model & ", " & ArrAds(2, 2).Status & ", ฿ " & ArrAds(2, 2).Price & "</A></p>"
        txt &= "				</td>"
        txt &= "				<td><span><A href='#'>" & showPictures2(ArrAds(2, 3)) & "</A></span>"
        txt &= "					<p><A href='#'>" & ArrAds(2, 3).Brand & " " & ArrAds(2, 3).Model & ", " & ArrAds(2, 3).Status & ", ฿ " & ArrAds(2, 3).Price & "</A></p>"
        txt &= "				</td>"
        txt &= "				<td><span><A href='#'>" & showPictures2(ArrAds(2, 4)) & "</A></span>"
        txt &= "					<p><A href='#'>" & ArrAds(2, 4).Brand & " " & ArrAds(2, 4).Model & ", " & ArrAds(2, 4).Status & ", ฿ " & ArrAds(2, 4).Price & "</A></p>"
        txt &= "				</td>"
        txt &= "				<td><span><A href='#'>" & showPictures2(ArrAds(2, 5)) & "</A></span>"
        txt &= "					<p><A href='#'>" & ArrAds(2, 5).Brand & " " & ArrAds(2, 5).Model & ", " & ArrAds(2, 5).Status & ", ฿ " & ArrAds(2, 5).Price & "</A></p>"
        txt &= "				</td>"
        txt &= "			</tr>"
        txt &= "		</tfoot>"
        txt &= "</table>"

        Return txt
    End Function

    Private Function showPictures2(ByRef myAds As Ads) As String

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim result As String

        Dim sContents As String, sErr As String
        Dim bAns As Boolean
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        If myAds.Image1 <> "" Then
            result = "<img border='0' style=""CURSOR: hand""  src='" & picUrl & "/public/test/WebForm10.aspx?custid=" & myAds.Detailid & "&w=80&h=v&h2=60'>"
        Else
            a = New Bitmap(Server.MapPath("../images/objects/no_image_80x60.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            IUrl = "../../images/objects/no_image_80x60.gif"
            result = "<IMG  src='" & IUrl & "' width='" & imageWidth & "' height='60' border='0'>"
        End If
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


End Class
