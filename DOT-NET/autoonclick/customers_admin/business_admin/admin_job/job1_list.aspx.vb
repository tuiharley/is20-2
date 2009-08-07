Imports System.Globalization
Imports System.Threading

Public Class job1_list
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents offer1 As System.Web.UI.WebControls.Label
    Protected WithEvents offer2 As System.Web.UI.WebControls.Label
    Protected WithEvents JobLists As System.Web.UI.WebControls.Label

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
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'Session("cust_id") = 3
        Dim cat As Integer = 6
        Dim myQ As New Queue


        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            myQ = getDealerNotices(Session("cust_id"), "CategoryType.CategoryType = 3")
            'myNoticeDealer = NoticeDB.countDealerNotices(Session("cust_id"), cat)
            If myQ.Count <= 0 Then
                Response.Redirect("job1_list_empty.aspx")
            End If

            showOffer(myQ.Count)
            showJobInf(Session("cust_id"))
        End If

        AjaxPro.Utility.RegisterTypeForAjax(GetType(job1_list))
    End Sub

    Private Sub showOffer(ByVal n As Integer)
        Dim cssClass As String
        Dim href As String

        If n >= PackageDB.getPackageArea(105) Then
            cssClass = "A80_inactive"
            href = "#"
        Else
            cssClass = "A80"
            href = "job2_offer1_datas.aspx"
        End If
        '<a href="job2_offer1_datas.aspx" class="A80">&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a>
        offer1.Text = "<a href='" & href & "' class='" & cssClass & "'>&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a>"
        offer2.Text = "<a href='" & href & "' class='" & cssClass & "'>&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a>"

    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function showTerm(ByVal cat As Integer) As String
        Dim myQ As New Queue
        Dim result As String
        Dim i As Integer = 0
        Dim myNoticeDealer As noticeS


        myQ = getDealerNotices(Session("cust_id"), "CategoryType.CategoryType = 3")

        If myQ.Count > 0 Then
            result = "รายการตำแหน่งงาน: "
            result = result & "<span class='Font_black_bold'>" & myQ.Count & "</span>"
            result = result & " จากพื้นที่ทั้งหมด "
            result = result & "<span class='Font_black_bold'>" & PackageDB.getPackageArea(105) & "</span>"
            result = result & " รายการ / "
            For Each myNoticeDealer In myQ
                If myNoticeDealer.show = "ปิด" Then
                    i = i + 1
                End If
            Next
            result = result & "<span class='Font_black_bold'>" & i & "</span>"
            result = result & " รายการปิดประกาศ"
        Else
            result = -1
        End If


        Return result
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showJobAJ(ByVal cond As Integer) As String
        'showJobInf(Session("cust_id"))
        Dim txt As String

        txt = "<div id=""JobList"">" & showJob(Session("cust_id"), cond) & "</div>"

        Return txt
    End Function
    Public Function showJobInf(ByVal custid As Integer)
        JobLists.Text = "<div id=""JobList"">" & showJob(custid, 1) & "</div>"
    End Function
    Public Function showJob(ByVal custid As Integer, ByVal cond As Integer) As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim myNoticeDealer As noticeS
        Dim myQ As New Queue
        Dim ans As String
        Dim detailID As Integer
        Dim notice As noticeDetail
        Dim carQ As New Queue
        Dim n As Integer = 1

        myQ = NoticeDB.getDealerNotices(custid, "CategoryType.CategoryType = 3", cond)
        ans = "<table width='693' border='0' cellpadding='0' cellspacing='0'>"

        For Each myNoticeDealer In myQ

            detailID = NoticeDetailDB.getNoticeDetailID(myNoticeDealer.id)
            notice = NoticeDetailDB.getNoticeDetailInfo(detailID)
            carQ.Enqueue(notice)


            ans = ans & "<tr>"
            ans = ans & "<td width='693'><table width='693' border='0' cellpadding='0' cellspacing='0' background='../../../images/table/g_693.gif' class='Font_black_LH_15px'>"
            ans = ans & "<tr>"
            ans = ans & "<td height='3' colspan='23'><img src='../../../images/dividers/li_bu_jo1_g.gif' width='693' height='3'></td>"
            ans = ans & "</tr>"
            ans = ans & "<tr>"
            ans = ans & "<td width='3'></td>"

            ' --------------  CHECK BOX START -----------

            ans = ans & "<td width='20'><input name='noticeDe' id='noticeDe' type='checkbox' class='Font_black' value='" & myNoticeDealer.id & "'></td>"

            ' --------------  CHECK BOX START -----------

            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td width='60'><div align='center'>" & NoticeDB.getNoticeCode(myNoticeDealer.id) & "</div>"
            ans = ans & "</td>"
            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td width='74'><div align='center'>" & myNoticeDealer.postDate.ToString("dd-MM-yyyy") & "</div>"
            ans = ans & "</td>"
            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td width='78'><div align='center'>J/" & PackageDB.getPackageWeek(105) & "m</div>"
            ans = ans & "</td>"
            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            '------------- PRICE ------------------------------------------
            Dim myprice As Double
            Dim priceShow As String
            myprice = PackageDB.getPackagePrice(105)
            If myprice = 0 Then
                priceShow = "ฟรี"
            Else
                priceShow = myprice.ToString("#,###.##")
            End If

            ans = ans & "<td width='72'><div align='center'>&#3647; " & priceShow
            ans = ans & "</div>"
            ans = ans & "</td>"
            '---------------- วันที่เริ่ม สุดท้าย Notice -------------------------------
            Dim startD As String
            Dim stopD As String
            If myNoticeDealer.startDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
                startD = "-"
            ElseIf myNoticeDealer.stopDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
                startD = "-"
            Else
                startD = myNoticeDealer.startDate.ToString("dd/MM/yyyy") & " - " & myNoticeDealer.stopDate.ToString("dd/MM/yyyy")
            End If

            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td width='74'><div align='center'>" & startD & "</div>"
            ans = ans & "</td>"
            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td width='64'><div align='center'><a href='job3_detail.aspx?jobId=" & notice.DataId & "&noticeid=" & myNoticeDealer.id & "&curData=" & n & "'><img src='../../../images/icons/small/detail_16x16.gif' width='16' height='16' border='0' align='textTop'></a></div>"
            ans = ans & "</td>"
            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"

            '---------------- Show START -------------------------
            ans = ans & "<td width='46' style='CURSOR: hand' onClick='showJob(" & detailID & ");'><u><div align='center' id='delCar" & notice.DataId & "'>"
            If notice.Detail_show = 1 Then
                ans = ans & "ปิด"
            Else
                ans = ans & "เปิด"
            End If
            ans = ans & "</div></u></td>"

            '---------------- Show END -------------------------

            '---------------- STATUS -------------------------
            Dim status As Array
            status = NoticeTypeDB.getStatusName(myNoticeDealer.status).Split(":")

            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td width='43'><div align='center' class='" & status.GetValue(1) & "'>" & status.GetValue(0) & "</div></td>"

            ''-------------- PROLONG END-------------------------------

            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"
            '-------------- PROLONG BEGIN-------------------------------
            Dim NoticeDay As Integer
            NoticeDay = DateDiff(DateInterval.Day, myNoticeDealer.startDate, DB.getToday())
            ' ----------- ถ้าประกาศ Offline ต่ออายุไม่ได้ ----------------------
            If myNoticeDealer.status = 1 Then
                ans = ans & " <td><a href='#' class='A60_inactive'>ต่ออายุ</a></td>"
                ' ----------- ถ้าประกาศ Online < 7 วันต่ออายุไม่ได้ ----------------------
            ElseIf NoticeDay < 7 Or myNoticeDealer.prolong <> "" Then
                ans = ans & " <td><a href='#' class='A60_inactive'>ต่ออายุ</a></td>"
            Else
                ans = ans & " <td><a href='../package7_prolong1_term.aspx?cat=" & myNoticeDealer.category & "&noticeid=" & myNoticeDealer.id & "&packageid=" & myNoticeDealer.pacakgeId & "' class='A60'>&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
            End If

            '-------------- PROLONG END-------------------------------

            ans = ans & "<td width='5' background='../../../images/separator/g_5.gif'></td>"

            If myNoticeDealer.prolong <> "" Then
                If myNoticeDealer.prolong_color = "A_PC_red_underline" Then
                    ans = ans & "<td width='46'><div align='center'><a href='../admin_package/orderdetail_d_confirmed.aspx?cond=unconfirm&invType=" & myNoticeDealer.prolong & "&noticeid=" & myNoticeDealer.id & "' class='" & myNoticeDealer.prolong_color & "'>" & myNoticeDealer.prolong & "</a></div>"
                Else
                    ans = ans & "<td width='46'><div align='center'><a href='../admin_package/orderdetail_d_confirmed.aspx?invType=" & myNoticeDealer.prolong & "&noticeid=" & myNoticeDealer.id & "' class='" & myNoticeDealer.prolong_color & "'>" & myNoticeDealer.prolong & "</a></div>"
                End If
            Else
                ans = ans & " <td width='46'><div align='center'>---</div>"
            End If


            ans = ans & "</td>"
            ans = ans & "<td width='3'></td>"
            ans = ans & "</tr>"
            ans = ans & "<tr>"
            ans = ans & "<td height='7' colspan='23'><img src='../../../images/dividers/li_bu_jo2_g.gif' width='693' height='7'></td>"
            ans = ans & "</tr>"
            ans = ans & "<tr>"
            ans = ans & "<td width='3' rowspan='2'></td>"
            ans = ans & "<td rowspan='2'></td>"
            ans = ans & "<td width='5' rowspan='2' background='../../../images/separator/g_5.gif'></td>"
            '---------------JOB POSITION ------------------------

            Dim jobInFo As New Job
            Dim myQQ As New Queue
            Dim tmp As Position
            Dim pos As String


            jobInFo = JobDB.getJob(notice.DataId)
            myQQ = JobPositionDB.getPosition(jobInFo.Job_Pos)
            For Each tmp In myQQ
                pos = tmp.Position_Name
            Next

            ans = ans & "<td colspan='15' valign='bottom'><strong>&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;: " & pos & "</strong></td>"
            ans = ans & "<td width='5' rowspan='2' background='../../../images/separator/g_5.gif'></td>"
            ans = ans & "<td valign='bottom'><a href='job4_edit1_datas.aspx?jobID=" & jobInFo.Job_Id & "' class='A60'>&#3649;&#3585;&#3657;&#3652;&#3586;</a></td>"
            ans = ans & "<td width='5' rowspan='2'></td>"
            ans = ans & "<td rowspan='2'></td>"
            ans = ans & "<td width='3' rowspan='2'></td>"
            ans = ans & "</tr>"
            ans = ans & "<tr>"

            Dim JobRem As String
            If jobInFo.Job_Remark = "" Then
                JobRem = "&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;..."
            Else
                JobRem = jobInFo.Job_Remark
            End If

            ans = ans & "<td colspan='15' class='Padding_T_4px' valign='top'><input name='remark" & jobInFo.Job_Id & "' id='remark" & jobInFo.Job_Id & "' type='text' class='Font_black' style='WIDTH:540px' value='" & JobRem & "'></td>"
            ans = ans & "<td class='Padding_T_4px' valign='top'><a href='#' class='A60' onClick=""saveRem(" & jobInFo.Job_Id & ");"">&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;</a></td>"
            ans = ans & "</tr>"
            ans = ans & "<tr>"
            ans = ans & "<td height='4' colspan='23'><img src='../../../images/dividers/li_bu_jo3_g.gif' width='693' height='4'></td>"
            ans = ans & "</tr>"
            ans = ans & "</table>"
            ans = ans & "</td>"
            ans = ans & "</tr>"

            n = n + 1
        Next

        Session("allCar") = carQ.Clone()

        ans = ans & "</table>"

        Return ans
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function saveRemark(ByVal jobid As Integer, ByVal jobRem As String) As String
        Dim myJob As Job

        myJob.Job_Id = jobid
        myJob.Job_Remark = jobRem

        JobDB.editJobRemark(myJob)

        Return "OK"
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function setDetailShow(ByVal detailid As Integer) As String
        Dim show As Integer
        Dim myDetail As noticeDetail

        myDetail = NoticeDetailDB.getNoticeDetailInfo(detailid)


        If myDetail.Detail_show = 1 Then
            show = 0
        Else
            show = 1
        End If
        NoticeDetailDB.setDetailShow(detailid, show)

        Return myDetail.DataId
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function setDetailDelete(ByVal noticeid As Integer) As String

        NoticeDB.delNotice(noticeid)

        Return "ok"
    End Function
End Class
