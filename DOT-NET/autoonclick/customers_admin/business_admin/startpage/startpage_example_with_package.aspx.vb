Imports System.Globalization
Imports System.Threading
Public Class startpage_example_with_package
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents today As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents compName As System.Web.UI.WebControls.Label
    Protected WithEvents DealerPackage As System.Web.UI.WebControls.Label
    Protected WithEvents chagePass As System.Web.UI.WebControls.HyperLink
    Protected WithEvents changeContact As System.Web.UI.WebControls.HyperLink
    Protected WithEvents changeBuz As System.Web.UI.WebControls.HyperLink
    Protected WithEvents paymentNotice As System.Web.UI.WebControls.HyperLink
    Protected WithEvents paymentList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents msgBox As System.Web.UI.WebControls.HyperLink

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
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'Session("cust_id") = 3

        Session("isFirstTime") = ""
        Session("pagename") = "startpage_example_with_package.aspx"

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            setLink(Session("cust_id"))
            showLogo(Session("cust_id"))
            showPackage(Session("cust_id"))
        End If
    End Sub
    Private Sub setLink(ByVal cust_id As Integer)
        Dim myQ As Queue
        Dim myBox As Integer

        chagePass.NavigateUrl = "../change_password/Dealer_change_password.aspx"
        changeContact.NavigateUrl = "../change_contact/change_contact_datas.aspx"
        changeBuz.NavigateUrl = "../change_business_information/change1_main_business_datas.aspx"

        myQ = getInbox_box(cust_id)
        myBox = myQ.Count
        msgBox.Text = "กล่องข้อความเข้า: (" & myBox & ")"
        msgBox.NavigateUrl = "../message_box/inbox.aspx"
    End Sub
    Private Sub showLogo(ByVal cust_id As Integer)
        Dim x As Date
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim myCust As A_Customer


        x = getDateDB.getDate()
        today.Text = x.ToString("dd-MM-yyyy")

        myCust = CustomerDB.getA_customer(cust_id)
        compName.Text = myCust.name

        If myCust.logo_txt <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myCust.username & "/logo/" & myCust.logo_txt))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            IUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt
        Else
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            IUrl = "../../../images/objects/no_image_250x188.gif"
        End If
        image1.Text = "<img  src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' >"

    End Sub
    Private Sub showPackage(ByVal cust_id As Integer)
        Dim txt As String
        Dim myNoticeDealer As numNoticeDealer


        txt = "<table cellSpacing='0' cellPadding='0' width='560' align='center' border='0' >"
        txt = txt & "							<tr>"
        txt = txt & "<td width='560'>"
        txt = txt & "<table class='H1_white' height='21' cellSpacing='0' cellPadding='0' width='560' background='../../../images/header/h_b_560+ar.gif' border='0'>"
        txt = txt & "<tr>"
        txt = txt & "<td width='25'></td>"
        txt = txt & "<td width='530'>&#3585;&#3634;&#3619;&#3592;&#3633;&#3604;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3649;&#3621;&#3632;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</td>"
        txt = txt & "<td width='5'></td>"
        txt = txt & "</tr>"
        txt = txt & "</table>"
        txt = txt & "</td>"
        txt = txt & "</tr>"
        txt = txt & "<tr>"
        txt = txt & "<td width='560'><IMG height='1' src='../../../images/lines/w3.gif' width='560'></td>"
        txt = txt & "</tr>"
        txt = txt & "<tr>"
        txt = txt & "<td width='560'>"
        txt = txt & "<table class='Font_black' cellSpacing='0' cellPadding='0' width='560' background='../../../images/table/st_bu_adm_t1.gif' border='0'>"
        '------------------- แพคเกจประกาศ: (4) ---------------------------
        txt = txt & "<tr>"
        txt = txt & "<td width='5' height='21'></td>"
        txt = txt & "<td width='235' height='21'>"

        Dim packNum As Integer

        packNum = NoticeDB.countPackageNotices(cust_id, "(CategoryType.CategoryType = 1 OR  CategoryType.CategoryType = 2)")

        If packNum <> 0 Then
            txt = txt & " <A class='A_black_underline' "
            txt = txt & " href='../admin_package/car/package2_list.aspx'>&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;: ("
            txt = txt & packNum
            txt = txt & ")</A>"
        Else
            txt = txt & " <font class='Font_black'> "
            txt = txt & " &#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;: ("
            txt = txt & packNum
            txt = txt & ")</font>"
        End If

        txt = txt & "</td>"
        txt = txt & "<td width='11' height='21'></td>"
        txt = txt & "<td width='88' height='21'>"
        txt = txt & "<div align='center'>&#3626;&#3606;&#3634;&#3609;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div>"
        txt = txt & "</td>"
        txt = txt & "<td width='21' height='21'></td>"
        txt = txt & "<td width='195' height='21'>+ "
        '-------------------------+ เลือกแพคเกจประกาศ -----------------------------
        If packNum <> 4 Then
            txt = txt & "<A class='A_black_underline' href='../admin_package/package1_newselection1_category.aspx'>"
            txt = txt & "&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</A>"
        Else
            txt = txt & "&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;"
        End If


        txt = txt & "</td>"
        txt = txt & "<td width='5'></td>"
        txt = txt & "</tr>"


        Dim myNotice As noticeS
        Dim tmp As String
        Dim myColor As Array
        '-------------------------  package รถยนต์ -------------------------------------
        myNoticeDealer = NoticeDB.countDealerNotices(cust_id, 1)
        If myNoticeDealer.totalNum <> -1 Then
            txt = txt & "<tr>"
            txt = txt & "<td width='5' height='21'></td>"
            txt = txt & "<td height='21'>"

            myNotice = NoticeDB.getNoticesInfoD(myNoticeDealer.noticeId)
            tmp = NoticeTypeDB.getStatusName(myNotice.status)
            myColor = tmp.Split(":")

            If myNotice.status > 1 Then
                txt = txt & " - <A class='A_blue_underline' href='../admin_package/car/package3_list_vehicle_term_new.aspx?noticeid=" & myNotice.id & "'>"
                txt = txt & "&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            Else
                txt = txt & " - &#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            End If

            txt = txt & " </td>"
            txt = txt & "<td width='11' height='21'></td>"
            txt = txt & "<td height='21'>"
            txt = txt & "<div class='" & myColor.GetValue(1) & "' align='center'><b>T</b></div>"
            txt = txt & "</td>"
            txt = txt & "<td width='21' height='21'></td>"
            txt = txt & "<td height='21'>+ "

            '-------------------------+ เลือกแพคเกจประกาศ -----------------------------
            If myNoticeDealer.rowNum < myNoticeDealer.totalNum And myNotice.status > 1 And myNotice.status < 5 Then
                txt = txt & "<A class='A_blue_underline' href='../admin_package/car/package5_offer1_car_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</A>"
            Else
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;"
            End If

            txt = txt & "</td>"
            txt = txt & "<td width='5'></td>"
            txt = txt & "</tr>"


        End If
        '---------------------------end package รถยนต์ - ----------------------------
        '-------------------------  package รถจักรยานยนต์ -------------------------------------
        myNoticeDealer = NoticeDB.countDealerNotices(cust_id, 2)
        If myNoticeDealer.totalNum <> -1 Then
            txt = txt & "<tr>"
            txt = txt & "<td width='5' height='21'></td>"
            txt = txt & "<td height='21'>"

            myNotice = NoticeDB.getNoticesInfoD(myNoticeDealer.noticeId)
            tmp = NoticeTypeDB.getStatusName(myNotice.status)
            myColor = tmp.Split(":")

            If myNotice.status > 1 Then
                txt = txt & " - <A class='A_blue_underline' href='../admin_package/bike/package3_list_moto_term_new.aspx?noticeid=" & myNotice.id & "'>"
                txt = txt & "&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            Else
                txt = txt & " - &#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            End If

            txt = txt & " </td>"
            txt = txt & "<td width='11' height='21'></td>"
            txt = txt & "<td height='21'>"
            txt = txt & "<div class='" & myColor.GetValue(1) & "' align='center'><b>T</b></div>"
            txt = txt & "</td>"
            txt = txt & "<td width='21' height='21'></td>"
            txt = txt & "<td height='21'>+ "

            '-------------------------+ เลือกแพคเกจประกาศ -----------------------------
            If myNoticeDealer.rowNum < myNoticeDealer.totalNum And myNotice.status > 1 And myNotice.status < 5 Then
                txt = txt & "<A class='A_blue_underline' href='../admin_package/bike/package5_offer1_moto_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</A>"
            Else
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</A>"
            End If
            txt = txt & "</td>"
            txt = txt & "<td width='5'></td>"
            txt = txt & "</tr>"
        End If
        '---------------------------end package รถจักรยานยนต์ - ----------------------------
        '-------------------------  package รถบรรทุก -------------------------------------
        myNoticeDealer = NoticeDB.countDealerNotices(cust_id, 3)
        If myNoticeDealer.totalNum <> -1 Then
            txt = txt & "<tr>"
            txt = txt & "<td width='5' height='21'></td>"
            txt = txt & "<td height='21'>"

            myNotice = NoticeDB.getNoticesInfoD(myNoticeDealer.noticeId)
            tmp = NoticeTypeDB.getStatusName(myNotice.status)
            myColor = tmp.Split(":")

            If myNotice.status > 1 Then
                txt = txt & " - <A class='A_blue_underline' href='../admin_package/truck/package3_list_truck_term_new.aspx?noticeid=" & myNotice.id & "'>"
                txt = txt & "&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            Else
                txt = txt & " - &#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            End If

            txt = txt & " </td>"
            txt = txt & "<td width='11' height='21'></td>"
            txt = txt & "<td height='21'>"
            txt = txt & "<div class='" & myColor.GetValue(1) & "' align='center'><b>T</b></div>"
            txt = txt & "</td>"
            txt = txt & "<td width='21' height='21'></td>"
            txt = txt & "<td height='21'>+ "

            '-------------------------+ เลือกแพคเกจประกาศ -----------------------------
            If myNoticeDealer.rowNum < myNoticeDealer.totalNum And myNotice.status > 1 And myNotice.status < 5 Then
                txt = txt & " <A class='A_blue_underline' href='../admin_package/truck/package5_offer1_truck_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</A>"
            Else
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</A>"
            End If
            txt = txt & "</td>"
            txt = txt & "<td width='5'></td>"
            txt = txt & "</tr>"
        End If
        '---------------------------end package รถบรรทุก - ----------------------------
        '-------------------------  package อะไหล่ -------------------------------------

        myNoticeDealer = NoticeDB.countDealerNotices(cust_id, 4)
        If myNoticeDealer.totalNum <> -1 Then
            txt = txt & "<tr>"
            txt = txt & "<td width='5' height='21'></td>"
            txt = txt & "<td height='21'>"

            myNotice = NoticeDB.getNoticesInfoD(myNoticeDealer.noticeId)
            tmp = NoticeTypeDB.getStatusName(myNotice.status)
            myColor = tmp.Split(":")

            If myNotice.status > 1 Then
                txt = txt & " - <A class='A_blue_underline' href='../admin_package/part/package3_list_part_term_new.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
                txt = txt & "&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            Else
                txt = txt & " - &#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660; "
                txt = txt & "(" & myNoticeDealer.rowNum & "/" & myNoticeDealer.totalNum & ")</A>"
            End If

            txt = txt & " </td>"
            txt = txt & "<td width='11' height='21'></td>"
            txt = txt & "<td height='21'>"
            txt = txt & "<div class='" & myColor.GetValue(1) & "' align='center'><b>T</b></div>"
            txt = txt & "</td>"
            txt = txt & "<td width='21' height='21'></td>"
            txt = txt & "<td height='21'>+ "

            '-------------------------+ เลือกแพคเกจประกาศ -----------------------------
            If myNoticeDealer.rowNum < myNoticeDealer.totalNum And myNotice.status > 1 And myNotice.status < 5 Then
                txt = txt & " <A class='A_blue_underline' href='../admin_package/part/package5_offer1_part_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/ "
                txt = txt & "&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</A>"
            Else
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/ "
                txt = txt & "&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</A>"
            End If

            txt = txt & "</td>"
            txt = txt & "<td width='5'></td>"
            txt = txt & "</tr>"
        End If
        '---------------------------end package อะไหล่ - ----------------------------
        ''-------------------------+ ประกาศโฆษณาพิเศษ: (30) -----------------------------
        'txt = txt & "<tr>"
        'txt = txt & "<td width='5' height='21'></td>"
        'txt = txt & "<td height='21'>"

        'packNum = NoticeDB.countPackageNotices(cust_id, "(CategoryType.CategoryType = 4)")
        'If packNum <> 0 Then
        '    txt = txt & " <A class='A_black_underline' href='../admin_special_offer/so1_list.aspx'>&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;: ("
        '    txt = txt & packNum
        '    txt = txt & ")</A>"
        'Else
        '    txt = txt & "<font class='Font_black'>&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;: ("
        '    txt = txt & packNum
        '    txt = txt & ")</font>"
        'End If

        'txt = txt & "</td>"
        'txt = txt & "<td width='11' height='21'></td>"
        'txt = txt & "<td height='21'>"
        'txt = txt & "<div align='center'><span class='Font_red_bold'>10T</span><strong>/</strong><span class='Font_orange_bold'>10T</span><strong>/</strong><span class='Font_green_bold'>10T</span></div>"
        'txt = txt & "</td>"
        'txt = txt & "<td width='21' height='21'></td>"
        'txt = txt & "<td height='21'>+ "

        ''-------------------------+ เลือกแพคเกจประกาศ -----------------------------
        'If packNum = 0 Then
        '    txt = txt & "<A class='A_blue_underline' href='../admin_special_offer/so2_offer1_term.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
        '    txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;</A>"
        'Else
        '    txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;"
        'End If

        'txt = txt & "</td>"
        'txt = txt & "<td width='5'></td>"
        'txt = txt & "</tr>"
        ''-------------------------end + ประกาศโฆษณาพิเศษ: (30) -----------------------------
        ''-------------------------+ ประกาศตำแหน่งงาน: (9) -----------------------------
        'myNoticeDealer = NoticeDB.countDealerNotices(cust_id, 6)
        Dim myQ As New Queue
        'Dim myNoticeJob As noticeS

        myQ = getDealerNotices(cust_id, "CategoryType.CategoryType = 3")
        'If myNoticeDealer.totalNum = -1 Then
        '    myNoticeDealer.totalNum = 10
        '    myNoticeDealer.rowNum = 0
        'End If

        If myQ.Count >= 0 Then

            txt = txt & "<tr>"
            txt = txt & "<td width='5' height='21'></td>"
            txt = txt & "<td height='21'>"

            'myNotice = NoticeDB.getNoticesInfoD(myNoticeDealer.noticeId)

            Dim result As countStatus
            result = countNoticeStatus(cust_id, 6)

            'If (result.online > 0) Or (result.warn > 0) Or (result.offline > 0) Or (result.stopped > 0) Then
            txt = txt & "<A class='A_black_underline' href='../admin_job/job1_list.aspx'>"
            txt = txt & "&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;: "
            txt = txt & "(" & myQ.Count & "/" & PackageDB.getPackageArea(105) & ")</A>"
            'Else
            '    txt = txt & " - &#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;: "
            '    txt = txt & "(" & myQ.Count & "/10)</A>"
            'End If

            txt = txt & " </td>"
            txt = txt & "<td width='11' height='21'></td>"
            txt = txt & "<td height='21'><div align='center'>"
            Dim newTxt As String = ""
            If result.regist > 0 Then
                tmp = NoticeTypeDB.getStatusName(1)
                myColor = tmp.Split(":")
                newTxt = "<font class='" & myColor.GetValue(1) & "' ><b>" & result.regist & "T</b></font>"
            End If
            If result.online > 0 Then
                tmp = NoticeTypeDB.getStatusName(2)
                myColor = tmp.Split(":")
                If newTxt.Length > 0 Then
                    newTxt = newTxt & "/"
                End If
                newTxt = newTxt & "<font class='" & myColor.GetValue(1) & "' ><b>" & result.online & "T</b></font>"
            End If
            If result.warn > 0 Then
                tmp = NoticeTypeDB.getStatusName(3)
                myColor = tmp.Split(":")
                If newTxt.Length > 0 Then
                    newTxt = newTxt & "/"
                End If
                newTxt = newTxt & "<font class='" & myColor.GetValue(1) & "' ><b>" & result.warn & "T</b></font>"

            End If
            If result.offline > 0 Then
                tmp = NoticeTypeDB.getStatusName(5)
                myColor = tmp.Split(":")
                If newTxt.Length > 0 Then
                    newTxt = newTxt & "/"
                End If
                newTxt = newTxt & "<font class='" & myColor.GetValue(1) & "' ><b>" & result.offline & "T</b></font>"

            End If
            If result.stopped > 0 Then
                tmp = NoticeTypeDB.getStatusName(4)
                myColor = tmp.Split(":")
                If newTxt.Length > 0 Then
                    newTxt = newTxt & "/"
                End If
                newTxt = newTxt & "<font class='" & myColor.GetValue(1) & "' ><b>" & result.stopped & "T</b></font>"

            End If
            If newTxt.Length = 0 Then
                newTxt = "-"
            End If
            txt = txt & newTxt
            txt = txt & "</div></td>"
            txt = txt & "<td width='21' height='21'></td>"
            txt = txt & "<td height='21'>+ "

            '-------------------------+ เลือกแพคเกจประกาศ -----------------------------
            '(result.online > 0) Or (result.warn > 0) Or (result.offline > 0) Or (result.stopped > 0)
            If myQ.Count < PackageDB.getPackageArea(105) Then
                txt = txt & " <A class='A_blue_underline' href='../admin_job/job2_offer1_datas.aspx'>"
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</A> "
            Else
                txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</A> "
            End If

            txt = txt & "</td>"
            txt = txt & "<td width='5'></td>"
            txt = txt & "</tr>"
        End If



        ''-------------------------+ เลือกแพคเกจประกาศ -----------------------------
        'If packNum = 0 Then
        '    txt = txt & "<A class='A_blue_underline' href='../admin_job/job2_offer1_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "'>"
        '    txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</A>"
        'Else
        '    txt = txt & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;"
        'End If

        'txt = txt & "</td>"
        'txt = txt & "<td width='5'></td>"
        'txt = txt & "</tr>"
        '-------------------------end + ประกาศตำแหน่งงาน: (9) -----------------------------
        txt = txt & "</table>"
        txt = txt & "</td>"
        txt = txt & "</tr>"
        txt = txt & "<tr>"
        txt = txt & "<td width='560'><IMG height='1' src='../../../images/objects/e1eaf5.gif' width='100%'></td>"
        txt = txt & "</tr>"
        txt = txt & "</table>"

        DealerPackage.Text = txt
    End Sub

End Class
