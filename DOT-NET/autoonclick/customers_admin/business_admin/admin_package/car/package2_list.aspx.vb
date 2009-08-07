Imports System.Globalization
Imports System.Threading
Public Class package2_list
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

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
        'Session("cust_id") = 3
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        Session("isFirstTime") = ""

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../../public/login/login.aspx")
        Else
            Session("noticeid") = ""
            Session("newPack") = ""
            Session("startDate") = ""

        End If
        AjaxPro.Utility.RegisterTypeForAjax(GetType(package2_list))
    End Sub

    '<AjaxPro.AjaxMethod()> _
    Private Function showNotice(ByVal myNotice As noticeS) As String
        Dim sql As String
        Dim result As String
        Dim myprice As Double
        Dim priceShow As String

        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")


        sql = "<table width='100%' border='0' cellpadding='0' cellspacing='0'>"
        sql = sql & " <tr>"
        sql = sql & " <td>"
        sql = "<table width='693' border='0' cellpadding='0' cellspacing='0' background='../../../../images/table/li_bu_pack_b.gif'"
        sql = sql & " class='Font_black_LH_15px'>"
        sql = sql & " <tr>"
        sql = sql & " <td height='3' colspan='21'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td width='3'></td>"
        sql = sql & " <td width='60'><div align='center'>" & NoticeDB.getNoticeCode(myNotice.id) & "</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='78'><div align='center'>" & myNotice.postDate.ToString("dd-MM-yyyy") & "</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='85'><div align='center'>" & PackageDB.getPackageName(myNotice.pacakgeId) & "/" & PackageDB.getPackageWeek(myNotice.pacakgeId) & "m</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        myprice = PackageDB.getPackagePrice(myNotice.pacakgeId)
        If myprice = 0 Then
            priceShow = "ฟรี"
        Else
            priceShow = myprice.ToString("#,###.##")
        End If
        sql = sql & " <td width='75'><div align='center'>&#3647; " & priceShow
        sql = sql & " </div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        '---------------- วันที่เริ่ม สุดท้าย Notice -------------------------------
        Dim startD As String
        Dim stopD As String
        If myNotice.startDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
            startD = "-"
        ElseIf myNotice.stopDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
            startD = "-"
        Else
            startD = myNotice.startDate.ToString("dd/MM/yyyy") & " - " & myNotice.stopDate.ToString("dd/MM/yyyy")
        End If


        sql = sql & " <td width='78'><div align='center'>" & startD & "<br>"
        sql = sql & stopD & "</div>"

        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        '---------------- รูปสำหรับ เข้าลงประกาศเพิ่ม ---------------------------------
        sql = sql & " <td width='64'><div align='center'>"
        Dim NoticeNum As Integer = NoticeDetailDB.countNoticeDetailID(myNotice.id)
        If NoticeNum = 0 Then
            sql = sql & " <img src='../../../../images/icons/small/detail_16x16.gif' width='16' height='16' border='0' align='textTop'>"
        Else
            Dim Link As String = getLink(myNotice.category)
            sql = sql & " <a href='" & Link & myNotice.id & "'>"
            sql = sql & " <img src='../../../../images/icons/small/detail_16x16.gif' width='16' height='16' border='0' align='textTop'>"
            sql = sql & " </a>"
        End If


        sql = sql & " (" & NoticeNum & ")</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='46'><div align='center'>" & NoticeDetailDB.countDealerNoticeDetailID(myNotice.id) & "</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"

        Dim status As Array
        status = NoticeTypeDB.getStatusName(myNotice.status).Split(":")
        sql = sql & " <td width='45'><div align='center' class='" & status.GetValue(1) & "'>" & status.GetValue(0) & "</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='60'><table width='60' border='0' align='center' cellpadding='0' cellspacing='0'>"

        '-------------- PROLONG BEGIN-------------------------------
        sql = sql & " <tr>"
        Dim NoticeDay As Integer
        NoticeDay = DateDiff(DateInterval.Day, myNotice.startDate, DB.getToday())
        ' ----------- ถ้าประกาศ Offline ต่ออายุไม่ได้ ----------------------
        If myNotice.status = 1 Then
            sql = sql & " <td><a href='#' class='A60_inactive'>ต่ออายุ</a></td>"
            ' ----------- ถ้าประกาศ Online < 7 วันต่ออายุไม่ได้ ----------------------
        ElseIf NoticeDay < 7 Or myNotice.prolong <> "" Then
            sql = sql & " <td><a href='#' class='A60_inactive'>ต่ออายุ</a></td>"
        Else
            sql = sql & " <td><a href='../package7_prolong1_term.aspx?cat=" & myNotice.category & "&noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "' class='A60'>&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        End If

        sql = sql & " </tr>"
        sql = sql & " <tr>"
        '-------------- PROLONG END-------------------------------

        '--------------  ถ้ามีแจ้งจ่ายเงินมาแล้วยังไม่ยืนยันไม่ให้เปลี่ยน  CHANGE BEGIN ---------------------------
        If NoticeDB.isNoticeNotStart(myNotice.id) = -1 Then  ' ------------  Online ------------------------
            If NoticeDay >= 7 And myNotice.prolong = "" Then  ' ----------- ถ้าประกาศ Online >= 7 วันเปลี่ยนประกาศได้  ----------------------
                sql = sql & " <td><a href='../package6_change1_sizeterm.aspx?noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "&cat=" & myNotice.category & "' class='A60'>&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;</a></td>"
            Else
                sql = sql & " <td><a href='#' class='A60_inactive'>&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;</a></td>"
            End If

        Else ' ------------  Offline ------------------------
            Dim packageid As Integer
            Dim invoiceid As Integer
            packageid = NoticeDB.isNoticeNotStart(myNotice.id)
            invoiceid = InvoiceDB.getChangeInvoice(myNotice.id, packageid)

            If TmpPaymentDb.getChangedTmpPay(invoiceid) <> -1 Then  ' -------------  แจ้งชำระเงินแล้ว -----------------
                sql = sql & " <td><a href='#' class='A60_inactive'>&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;</a></td>"
            Else
                sql = sql & " <td><a href='../package6_change1_sizeterm.aspx?noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "&cat=" & myNotice.category & "' class='A60'>&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;</a></td>"
            End If

        End If

        sql = sql & " </tr>"
        sql = sql & " <tr>"
        '--------------  ถ้ามีแจ้งจ่ายเงินมาแล้วยังไม่ยืนยันไม่ให้เปลี่ยน  CHANGE END ---------------------------

        '------------------ลงประกาศเพิ่ม ----------------------------------
        Dim myNoticeDealer As numNoticeDealer
        myNoticeDealer = NoticeDB.countDealerNotices(myNotice.memberId, myNotice.category)

        If (myNoticeDealer.rowNum >= myNoticeDealer.totalNum) Or (myNotice.status = 1 Or myNotice.status = 5) Or (NoticeNum = PackageDB.getPackageWeek(myNotice.pacakgeId)) Then
            sql = sql & " <td><a href='#' class='A60_inactive'>ลงประกาศ</a></td>"
        Else
            Dim Link2 As String = getLinkAdMore(myNotice.category)
            sql = sql & " <td><a href='" & Link2 & myNotice.id & "' class='A60'>&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a></td>"
        End If

        sql = sql & " </tr>"
        sql = sql & " </table>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        If myNotice.prolong <> "" Then
            If myNotice.prolong_color = "A_PC_red_underline" Then
                sql = sql & " <td width='51' align='center'><a href='../orderdetail_d_confirmed.aspx?cond=unconfirm&invType=" & myNotice.prolong & "&noticeid=" & myNotice.id & "' class='" & myNotice.prolong_color & "'>" & myNotice.prolong & "</a>"
            Else
                sql = sql & " <td width='51' align='center'><a href='../orderdetail_d_confirmed.aspx?invType=" & myNotice.prolong & "&noticeid=" & myNotice.id & "' class='" & myNotice.prolong_color & "'>" & myNotice.prolong & "</a>"
            End If
        Else
            sql = sql & " <td width='51'><div align='center'>---</div>"
        End If
        sql = sql & " </td>"
        sql = sql & " <td width='3'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td height='3' colspan='21'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td height='1' colspan='21'><img src='../../../../images/lines/w.gif' width='693' height='1'></td>"
        sql = sql & " </tr>"
        sql = sql & " </table>"
        sql = sql & " </td>"
        sql = sql & " </tr>"
        sql = sql & " </table>"

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showTable() As String
        Dim numOnOff As countOnOff
        Dim sql As String

        sql = "<table width='693' border='0' cellspacing='0' cellpadding='0'>"
        sql = sql & " <tr>"
        sql = sql & " <td width='693'><table width='693' height='21' border='0' cellpadding='0' cellspacing='0' background='../../../../images/header/m_h_o.gif'"
        sql = sql & " class='H1_white'>"
        sql = sql & " <tr>"
        sql = sql & " <td width='25'></td>"
        ' ==========  จำนวน online offline บนหัวตาราง ===============
        numOnOff = NoticeDB.countOnlineOffline(Session("cust_id"), "(CategoryType.CategoryType = 1 OR  CategoryType.CategoryType = 2)")
        sql = sql & " <td width='663'>&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592; "
        If numOnOff.online <> 0 Or numOnOff.offline <> 0 Then
            sql = sql & " <span id='packageNum'>"
            sql = sql & " <font class='Font_black_bold'>:" & numOnOff.online & " รายการ Online "
            sql = sql & " / " & numOnOff.offline & " รายการ Offline </font>"
            sql = sql & " </span>"
        End If

        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " </tr>"
        sql = sql & " </table>"
        sql = sql & " </td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td><img src='../../../../images/lines/w.gif' width='693' height='1'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td>"
        sql = sql & " <table width='693' height='21' border='0' cellpadding='0' cellspacing='0' background='../../../../images/header/p+so_b_li.gif'"
        sql = sql & " class='Font_white'>"
        sql = sql & " <tr>"
        sql = sql & " <td width='3'></td>"
        sql = sql & " <td width='60'><div align='center'>&#3619;&#3627;&#3633;&#3626;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='78'><div align='center'>&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='85'><div align='center'>&#3649;&#3614;&#3585;&#3648;&#3585;&#3592;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='75'><div align='center'>ค่าบริการสุทธิ</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='78'><div align='center'>&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='64'><div align='center'>&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='46'><div align='center'>&#3611;&#3636;&#3604;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='45'><div align='center'>&#3626;&#3606;&#3634;&#3609;&#3632;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='60'><div align='center'>&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='5'></td>"
        sql = sql & " <td width='51'><div align='center'>P/C</div>"
        sql = sql & " </td>"
        sql = sql & " <td width='3'></td>"
        sql = sql & " </tr>"
        sql = sql & " </table>"
        sql = sql & " </td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td><img src='../../../../images/lines/w.gif' width='693' height='1'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td>"

        Dim myNotice As Queue
        Dim i As Integer, n As Integer
        myNotice = NoticeDB.getDealerNotices(Session("cust_id"), "(CategoryType.CategoryType = 1 OR  CategoryType.CategoryType = 2)")
        If Not myNotice Is Nothing Then
            n = myNotice.Count
            For i = 0 To n - 1
                sql = sql & showNotice(myNotice.Dequeue)
                'sql = sql & " </div>"
            Next
        End If

        sql = sql & " </td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td><img src='../../../../images/lines/l_b_693.gif' width='693' height='5'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td height='5'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        If numOnOff.all = 4 Then
            sql = sql & " <td><a href='#' class='A80_inactive'>&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</a>"
        Else
            sql = sql & " <td><a href='../package1_newselection1_category.aspx' class='A80'>&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</a>"
        End If

        sql = sql & " </td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td height='10'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td><img src='../../../../images/lines/l_o_693.gif' width='693' height='5'></td>"
        sql = sql & " </tr>"
        sql = sql & " <tr>"
        sql = sql & " <td height='15'></td>"
        sql = sql & " </tr>"
        sql = sql & " </table>"

        Return sql
    End Function

    Private Function getLink(ByVal cat As Integer) As String
        Dim resultLink As String

        Select Case cat
            Case 1
                resultLink = "package3_list_vehicle_term_new.aspx?noticeid="
            Case 2
                resultLink = "../bike/package3_list_moto_term_new.aspx?noticeid="
            Case 3
                resultLink = "../truck/package3_list_truck_term_new.aspx?noticeid="
            Case 4
                resultLink = "../part/package3_list_part_term_new.aspx?noticeid="
        End Select

        Return resultLink
    End Function

    Private Function getLinkAdMore(ByVal cat As Integer) As String
        Dim resultLink As String

        Select Case cat
            Case 1
                resultLink = "package5_offer1_car_datas.aspx?noticeid="
            Case 2
                resultLink = "../bike/package5_offer1_moto_datas.aspx?noticeid="
            Case 3
                resultLink = "../truck/package5_offer1_truck_datas.aspx?noticeid="
            Case 4
                resultLink = "../part/package5_offer1_part_datas.aspx?noticeid="
        End Select

        Return resultLink
    End Function
End Class
