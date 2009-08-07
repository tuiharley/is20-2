Imports System.Data
Imports System.Data.OleDb

Public Class search1_job
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents jobPos As System.Web.UI.WebControls.DropDownList
    Protected WithEvents searchWord As System.Web.UI.WebControls.TextBox
    Protected WithEvents doSearch As System.Web.UI.WebControls.Button
    Protected WithEvents txtNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents banner1 As System.Web.UI.WebControls.Label
    Protected WithEvents banner1_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner2 As System.Web.UI.WebControls.Label
    Protected WithEvents banner2_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner3 As System.Web.UI.WebControls.Label
    Protected WithEvents banner3_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner4 As System.Web.UI.WebControls.Label
    Protected WithEvents banner4_txt As System.Web.UI.WebControls.Label
    Protected WithEvents banner5 As System.Web.UI.WebControls.Label
    Protected WithEvents banner5_txt As System.Web.UI.WebControls.Label
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

        showBanner()

        AjaxPro.Utility.RegisterTypeForAjax(GetType(search1_job))
    End Sub
    Private Sub jobPos_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles jobPos.Init
        Dim conn As OleDbConnection
        Dim command As OleDbCommand
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String

        conn = New OleDbConnection(Session("conn"))

        sql = "SELECT Position_ID, Position_Name FROM Job_Position  ORDER BY Position_Name"
        da = New OleDbDataAdapter(sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("Position_ID") = 0
        DRow.Item("Position_Name") = "ทุกตำแหน่งงาน"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        jobPos.DataSource = ds.Tables("status")
        jobPos.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
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
        jobPos.SelectedValue = Session("status")
        searchWord.Text = Session("searchWord")

    End Sub

    Function checkStatus(ByVal status As Integer) As String
        Dim status_condition As String
        Dim myQ As New Queue
        Dim myJobPos As Position
        Dim myJobPosName As String

        If status <> 0 Then
            status_condition = " And (Job_Pos = " & status & ") "

            myQ = JobPositionDB.getPosition(status)
            For Each myJobPos In myQ
                myJobPosName = myJobPos.Position_Name
            Next

            Session("SearchCond") = myJobPosName & "; "
        Else
            status_condition = ""
            Session("SearchCond") = "ทุกตำแหน่ง; "
        End If

        Session("status") = status
        Return status_condition
    End Function
    Function checkName(ByVal pName As String) As String
        Dim name_condition As String

        If pName <> "" Then
            name_condition = " And (Position_Name like '%" & pName & "%') "
            Session("SearchCond") = Session("SearchCond") & pName & "; "
        Else
            name_condition = ""
        End If

        Return name_condition
    End Function
    '===========================Customer Province===============================
    Function checkProvince(ByVal province_id As Integer) As String
        Dim province_condition As String

        If province_id <> 0 Then
            province_condition = " And (Job_Province = " & province_id & ") "
            Session("SearchCond") = Session("SearchCond") & ProvinceDB.getProvinceName(province_id) & "; "
            Session("proinceIndex") = Request.Form("proinceIndex")
        Else
            province_condition = ""
            Session("proinceIndex") = ""
            Session("SearchCond") = Session("SearchCond") & "ทุกจังหวัด; "
        End If

        Return province_condition
    End Function
    Function checkDistrict(ByVal district_id As Integer) As String
        Dim district_condition As String

        If district_id <> 0 Then
            district_condition = " And (Job_District = " & district_id & ") "
            Session("SearchCond") = Session("SearchCond") & DistrictDB.getDistrictName(district_id) & "; "
            Session("districtIndex") = Request.Form("districtIndex")
        Else
            district_condition = ""
            Session("districtIndex") = "0"
            Session("SearchCond") = Session("SearchCond") & "ทุกเขต; "
        End If

        Return district_condition
    End Function
    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Position_Name"
                KeyOrder_By = "Position_Name"
            Case 1
                Order_By_Condition = " ORDER BY Part_Post DESC"
                KeyOrder_By = "Part_Post DESC"

        End Select

        Return Order_By_Condition & ":" & KeyOrder_By
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showPart() As String
        Dim ans As String
        Dim i As Integer
        Dim thisCat As Integer = 6
        Dim myQCar As Queue

        ans = "<table cellSpacing='0' cellPadding='0' width='693' background='../../images/table/g_693.gif'	border='0'>"
        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"

        ans = ans & "<tr>"
        ans = ans & "<td width='7'></td>"

        myQCar = JobDB.getNewestJob()
        If myQCar.Count <> 0 Then
            ans = ans & showCarDetail(myQCar)
        Else
            ans = ans & showCarNoDetail()
        End If
        myQCar.Clear()

        ans = ans & "</tr>"

        ans = ans & "<tr>"
        ans = ans & "<td colSpan='11' height='5'></td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"

        Return ans
    End Function
    Private Function showCarDetail(ByVal myQCar As Queue) As String
        Dim ans As String
        Dim myCar As RandomJob
        Dim i As Integer
        Dim detailPage As String


        i = 1
        For Each myCar In myQCar
            ans = ans & RandomCar(myCar)
            If i <> 5 Then
                ans = ans & "<td width='7' background='../../images/separator/g_7.gif'></td>"
            End If
            i = i + 1
        Next


        Return ans
    End Function
    Private Function showCarNoDetail() As String
        Dim ans As String

        ans = ans & "  	<td width='130' valign='top'><table width='100%' border='0' cellpadding='0' cellspacing='0' class='Font_blue_LH_15px'>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td><strong>ยังไม่มีตำแหน่งงาน</strong></td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td>-</td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td>-</td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td height='5'><img src='../../images/objects/ffffff.gif' width='100%' height='1'></td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td>-</td>"
        ans = ans & "  		</tr>"
        ans = ans & " </td>"

        Return ans
    End Function
    Private Function RandomCar(ByVal myJob As RandomJob) As String
        Dim ans As String
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        ans = ans & "  	<td width='130' valign='top'><table width='100%' border='0' cellpadding='0' cellspacing='0' class='Font_blue_LH_15px'>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td><strong><a target='_blank' href='../startpage/search3_detail_job00.aspx?jobId=" & myJob.Job_Id & "' class='A_blue_underline'>" & myJob.Position_Name & "</a></strong></td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td>" & DistrictDB.getDistrictName(myJob.Job_District) & "</td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td>" & ProvinceDB.getProvinceName(myJob.Job_Province) & "</td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td height='5'><img src='../../images/objects/ffffff.gif' width='100%' height='1'></td>"
        ans = ans & "  		</tr>"
        ans = ans & "  		<tr>"
        ans = ans & "  			<td><a href='" & userURL & myJob.Customer_Username & "/index.html' "
        ans = ans & " target='_blank' class='A_blue_underline'>" & myJob.Customer_Name & "</a></td>"
        ans = ans & "  		</tr>"
        ans = ans & " </table></td>"

        'userURL & myInfo.username & "/index.html"

        Return ans
    End Function





    Private Sub doSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSearch.Click
        Dim sql As String
        Dim end_sql As String
        Dim orderby As Array

        sql = checkStatus(jobPos.SelectedValue)
        sql = sql & checkName(searchWord.Text)
        '==========================Customer province =============================
        sql = sql & checkProvince(CInt(Request.Form("Province")))
        sql = sql & checkDistrict(CInt(Request.Form("District")))

        end_sql = checkOrderBy(0)
        orderby = Split(end_sql, ":")

        'sql = "SELECT Job.*, Notice.*, Job_Position.*, Customer.*  FROM NoticeDetail INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN Job ON NoticeDetail.NoticeDetail_DataId = Job.Job_Id INNER JOIN Job_Position ON Job.Job_Pos = Job_Position.Position_ID WHERE     (Notice.Notice_Category = 6) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(),Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) AND (NoticeDetail.Detail_show = 1)" & sql
        sql = "SELECT Job.*, Notice.*, Job_Position.*, Customer.*  FROM NoticeDetail INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN Job ON NoticeDetail.NoticeDetail_DataId = Job.Job_Id INNER JOIN Job_Position ON Job.Job_Pos = Job_Position.Position_ID WHERE     (Notice.Notice_Category = 6) AND (Notice.Notice_Show = 1)  AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) AND (NoticeDetail.Detail_show = 1)" & sql


        Session("searchSQL") = sql
        Session("searchOrderBY") = orderby

        Response.Redirect("search2_result_job.aspx")


    End Sub
End Class
