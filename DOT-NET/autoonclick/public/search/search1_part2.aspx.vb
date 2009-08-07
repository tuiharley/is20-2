Imports System.Data
Imports System.Data.OleDb
Public Class search1_part2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents category As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents parttype As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents searchWord As System.Web.UI.WebControls.TextBox
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents txtNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents doSearch As System.Web.UI.WebControls.Button
    Protected WithEvents information As System.Web.UI.WebControls.Label
    Protected WithEvents halfBanner As System.Web.UI.WebControls.Label
    Protected WithEvents banner1 As System.Web.UI.WebControls.Label
    Protected WithEvents banner2 As System.Web.UI.WebControls.Label
    Protected WithEvents banner1_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner2_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner3 As System.Web.UI.WebControls.Label
    Protected WithEvents banner3_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner4 As System.Web.UI.WebControls.Label
    Protected WithEvents banner4_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner5 As System.Web.UI.WebControls.Label
    Protected WithEvents banner5_txt As System.Web.UI.WebControls.Label

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

        If Not IsPostBack Then


            If Session("notFound") Or (Request.QueryString("again") = "yes") Then
                If Request.QueryString("again") <> "yes" Then
                    notFound()
                End If
                setValue()
                Session("notFound") = False
            End If

            Session("SearchCond") = ""

        End If
        load_Txt("search1_part2.aspx", "information")
        showBanner()


        AjaxPro.Utility.RegisterTypeForAjax(GetType(search1_part2))
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
        mybanner = Bannerdb.getBanner("Sponsors Banner1")
        If mybanner.Banner_link = "" Then
            banner1.Text = "<IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' >"
        Else
            banner1.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If
        banner1_txt.Text = mybanner.Banner_txt
        '==== 2 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner2")
        If mybanner.Banner_link = "" Then
            banner2.Text = "<IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' >"
        Else
            banner2.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If
        banner2_txt.Text = mybanner.Banner_txt
        '==== 3 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner3")
        If mybanner.Banner_link = "" Then
            banner3.Text = "<IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' >"
        Else
            banner3.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If
        banner3_txt.Text = mybanner.Banner_txt
        '==== 4 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner4")
        If mybanner.Banner_link = "" Then
            banner4.Text = "<IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' >"
        Else
            banner4.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If
        banner4_txt.Text = mybanner.Banner_txt
        '==== 5 =======
        mybanner = Bannerdb.getBanner("Sponsors Banner5")
        If mybanner.Banner_link = "" Then
            banner5.Text = "<IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' >"
        Else
            banner5.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG border='0' height='60' src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='120' ></a>"
        End If

        banner5_txt.Text = mybanner.Banner_txt

    End Sub



    Private Sub status_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles status.Init
        Dim conn As OleDbConnection
        Dim command As OleDbCommand
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String

        conn = New OleDbConnection(Session("conn"))

        sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS in (3,4) ORDER BY STATUS"
        da = New OleDbDataAdapter(sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("STATUS") = 0
        DRow.Item("STATUS_NAME") = "ทุกสภาพ"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        status.DataSource = ds.Tables("status")
        status.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Sub load_Txt(ByVal pagename As String, ByVal txtname As String)
        Dim myTxt As webTxt
        myTxt = WebTxtdb.getTxt(pagename, txtname)
        information.Text = myTxt.pageMsg

    End Sub
    Private Sub notFound()

        txtNotFound.Text = "<tr>"
        txtNotFound.Text = txtNotFound.Text & "<td colSpan=""5"" height=""25"" bgcolor=""#ffffcc"" class=""All_Border_orange""><div align=""center""><strong>- "
        txtNotFound.Text = txtNotFound.Text & "&#3586;&#3629;&#3629;&#3616;&#3633;&#3618;, &#3652;&#3617;&#3656;&#3614;&#3610;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3634;&#3617;&#3648;&#3585;&#3603;&#3607;&#3660;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3648;&#3621;&#3639;&#3629;&#3585;&#3652;&#3623;&#3657; &#3585;&#3619;&#3640;&#3603;&#3634;&#3585;&#3635;&#3627;&#3609;&#3604;&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;&#3651;&#3627;&#3657;&#3609;&#3657;&#3629;&#3618;&#3621;&#3591;&#3627;&#3619;&#3639;&#3629;&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;&#3629;&#3639;&#3656;&#3609;&#3654;"
        txtNotFound.Text = txtNotFound.Text & "	- </strong>"
        txtNotFound.Text = txtNotFound.Text & "</div>"
        txtNotFound.Text = txtNotFound.Text & "</td>"
        txtNotFound.Text = txtNotFound.Text & "</tr>"
    End Sub
    Private Sub setValue()
        status.SelectedValue = Session("status")
        searchWord.Text = Session("searchWord")

    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function showPart() As String
        Dim ans As String
        Dim i As Integer
        Dim thisCat As Integer = 4
        Dim x As Random = New Random
        Dim ranCar As Integer
        Dim myQCar As Queue

        ans = "<table cellSpacing='0' cellPadding='0' width='693' background='../../images/table/g_693.gif'	border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"

        ans = ans & "<tr>"
        ans = ans & "<td width='7'></td>"

        'For i = 1 To 5
        Select Case thisCat
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
                myQCar = PartsDB.getNewestPart()
                If myQCar.Count <> 0 Then
                    ranCar = x.Next(1, myQCar.Count + 1)
                    ans = ans & showCarDetail(thisCat, myQCar, ranCar)
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
                    ans = ans & showCarNoDetail(1)
                End If
                myQCar.Clear()
        End Select


        'Next

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
                    'If ranCar = i Then
                    detailPage = "../startpage/search3_detail_part00.aspx"
                    ans = ans & RandomCar(myCar, "อะไหล่/ประดับยนต์", detailPage)
                    If i <> 5 Then
                        ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
                    End If

                    'Exit For
                    'End If
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
        ans = ans & "<td> "
        'ans = ans & "<div align='center'><strong>""" & txt & """</strong></div>"
        ans = ans & "</td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr>"
        ans = ans & "<td>"
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
    Private Function showPictures2(ByRef myCar As RandomCar) As String

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim result As String

        If myCar.Car_Image1 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myCar.Customer_Username & "/" & myCar.Notice_Id & "/" & myCar.NoticeDetail_Id & "/" & myCar.Car_Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            IUrl = "/userData/" & myCar.Customer_Username & "/" & myCar.Notice_Id & "/" & myCar.NoticeDetail_Id & "/" & myCar.Car_Image1
        Else
            a = New Bitmap(Server.MapPath("../images/objects/no_image_80x60.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            IUrl = "../../images/objects/no_image_80x60.gif"
        End If
        result = "<IMG  src='" & IUrl & "' width='" & imageWidth & "' height='60' border='0'>"


        Return result
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


    Function checkCategory(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Part_Category = " & b_name & ") "
            Session.Add("SearchCond", PartsTypeDB.getPartTypeName(b_name) & "; ")
            Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkParttype(ByVal m_name As Integer) As String
        Dim model_condition As String

        If m_name <> 0 Then
            model_condition = " And (Part_Type = " & m_name & ") "
            Session("SearchCond") = Session("SearchCond") & PartsTypeDB.getPartTypeName(m_name) & "; "
            Session("modelIndex") = Request.Form("modelIndex")
        Else
            model_condition = ""
            Session("modelIndex") = "0"
        End If

        Return model_condition
    End Function
    Function checkStatus(ByVal status As Integer) As String
        Dim status_condition As String

        If status <> 0 Then
            status_condition = " And (Part_Status = " & status & ") "
            Session("SearchCond") = Session("SearchCond") & StatusDB.getStatusName(status) & "; "
        Else
            status_condition = ""
        End If

        Session("status") = status
        Return status_condition
    End Function
    Function checkName(ByVal pName As String) As String
        Dim name_condition As String

        If pName <> "" Then
            name_condition = " And (Part_Name like ''%" & pName & "%'') "
            'Session("SearchCond") = Session("SearchCond") & m_name & "; "
        Else
            name_condition = ""
        End If

        Return name_condition
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
                Order_By_Condition = " ORDER BY Part_Price"
                KeyOrder_By = "Part_Price"
            Case 1
                Order_By_Condition = " ORDER BY Part_Post DESC"
                KeyOrder_By = "Part_Post DESC"

        End Select

        Return Order_By_Condition & ":" & KeyOrder_By
    End Function


    Private Sub doSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSearch.Click
        Dim sql As String
        Dim end_sql As String
        Dim orderby As Array

        sql = checkCategory(CInt(Request.Form("category")))
        sql = sql & checkParttype(CInt(Request.Form("parttype")))
        sql = sql & checkStatus(status.SelectedValue)
        sql = sql & checkName(searchWord.Text)
        '==========================Customer province =============================
        sql = sql & checkProvince(CInt(Request.Form("Province")))
        sql = sql & checkDistrict(CInt(Request.Form("District")))

        end_sql = checkOrderBy(0)
        orderby = Split(end_sql, ":")

        sql = "SELECT Parts.* FROM Parts INNER JOIN NoticeDetail ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category in (4,5)) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1)  AND (NoticeDetail.Detail_show = 1) " & sql


        Session("searchSQL") = sql
        Session("searchOrderBY") = orderby

        Response.Redirect("search2_result_part.aspx")
        'Response.Write(sql)
    End Sub
End Class
