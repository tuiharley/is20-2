Imports System.Globalization
Imports System.Threading
Imports System.Data
Imports System.Data.OleDb

Public Class package3_list_vehicle_term_new
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents prolong As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Const pageSize As Integer = 20
    Const category As Integer = 1

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        AjaxPro.Utility.RegisterTypeForAjax(GetType(showBrands))
        AjaxPro.Utility.RegisterTypeForAjax(GetType(package3_list_vehicle_term_new))
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'Session("cust_id") = 26
        'Session("noticeid") = 37
        Session("pagename") = "package3_list_vehicle_term_new.aspx"
        If Session("cust_id") = 0 Then
            Response.Redirect("../../../../public/login/login.aspx")
        Else
            If Not IsPostBack() Then
                Session("noticeid") = Request.QueryString("noticeid")
                prolong.Text = showProlong(Session("noticeid"))
            End If
        End If
       
    End Sub

    Private Function showProlong(ByVal noticeid As Integer) As String
        Dim sql As String
        Dim myNotice As noticeS
        Dim NoticeDay As Integer

        myNotice = NoticeDB.getNoticesInfoD(noticeid)
        NoticeDay = DateDiff(DateInterval.Day, myNotice.startDate, DB.getToday())


        sql = "<tr>"
        sql = sql & "<td>"
        sql = sql & "<table cellSpacing='0' cellPadding='0' align='right' border='0'>"
        sql = sql & "<tr>"


        ' ----------- ถ้าประกาศ Offline ต่ออายุไม่ได้ ----------------------
        If myNotice.status = 1 Then
            sql = sql & "<td height='16'><IMG height='16' src='../../../../images/icons/small/prolong_pack_01.gif' width='20' align='textTop'>"
            sql = sql & "<font class='Font_grey'><u>ต่ออายุแพคเกจนี้</u></font></td>"
            ' ----------- ถ้าประกาศ Online < 7 วันต่ออายุไม่ได้ ----------------------
        ElseIf NoticeDay < 7 Or myNotice.prolong <> "" Then
            sql = sql & "<td height='16'><IMG height='16' src='../../../../images/icons/small/prolong_pack_01.gif' width='20' align='textTop'>"
            sql = sql & "<font class='Font_grey'><u>ต่ออายุแพคเกจนี้</u></font></td>"
        Else
            sql = sql & "<td height='16'><IMG height='16' src='../../../../images/icons/small/prolong_pack.gif' width='20' align='textTop'>"
            sql = sql & "<a class='A_black_NOunderline2' href='../package7_prolong1_term.aspx?cat=" & myNotice.category & "&noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "' >ต่ออายุแพคเกจนี้</a></td>"
        End If


        sql = sql & "<td width='10'></td>"

        '--------------  ถ้ามีแจ้งจ่ายเงินมาแล้วยังไม่ยืนยันไม่ให้เปลี่ยน  ---------------------------
        If NoticeDB.isNoticeNotStart(myNotice.id) = -1 Then  ' ------------  Online ------------------------
            If NoticeDay >= 7 And myNotice.prolong = "" Then  ' ----------- ถ้าประกาศ Online >= 7 วันเปลี่ยนประกาศได้  ----------------------
                sql = sql & "<td><IMG height='16' src='../../../../images/icons/small/change_pack.gif' width='20' align='textTop'>"
                sql = sql & "<a class='A_black_NOunderline2' href='../package6_change1_sizeterm.aspx?noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "&cat=" & myNotice.category & "' >เปลี่ยนแพคเกจนี้</a></td>"
            Else
                sql = sql & "<td><IMG height='16' src='../../../../images/icons/small/change_pack_01.gif' width='20' align='textTop'>"
                sql = sql & "<font class='Font_grey'><u>เปลี่ยนแพคเกจนี้</u></font></td>"
            End If

        Else ' ------------  Offline ------------------------
            Dim packageid As Integer
            Dim invoiceid As Integer
            packageid = NoticeDB.isNoticeNotStart(myNotice.id)
            invoiceid = InvoiceDB.getChangeInvoice(myNotice.id, packageid)

            If TmpPaymentDb.getChangedTmpPay(invoiceid) <> -1 Then  ' -------------  แจ้งชำระเงินแล้ว -----------------
                sql = sql & "<td><IMG height='16' src='../../../../images/icons/small/change_pack_01.gif' width='20' align='textTop'>"
                sql = sql & "<font class='Font_grey'><u>เปลี่ยนแพคเกจนี้</u></font></td>"
            Else
                sql = sql & "<td><IMG height='16' src='../../../../images/icons/small/change_pack.gif' width='20' align='textTop'>"
                sql = sql & "<a class='A_black_NOunderline2' href='../package6_change1_sizeterm.aspx?noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "&cat=" & myNotice.category & "' >เปลี่ยนแพคเกจนี้</a></td>"
            End If

        End If


        sql = sql & "</tr>"
        sql = sql & "</table>"
        sql = sql & "</td>"
        sql = sql & "</tr>"

        Return sql
    End Function

    '<AjaxPro.AjaxMethod()> _
    Private Function showEmpty(ByVal myNoticeDealer As numNoticeDealer, ByVal noticeStatus As Integer) As String
        Dim sql As String
        Dim result As String

        sql = "<tr>"
        sql = sql & "<td><table width='693' border='0' cellpadding='0' cellspacing='0' background='../../../../images/table/g_693.gif'"
        sql = sql & " class='Font_black_LH_17px'>"
        sql = sql & "<tr>"
        sql = sql & "<td height='15' colspan='3'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td width='5'></td>"
        sql = sql & "<td width='683' height='25' bgcolor='#ffffcc' class='All_Border_orange'><div align='center'><strong>&#3652;&#3617;&#3656;&#3614;&#3610;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3651;&#3609;&#3586;&#3603;&#3632;&#3609;&#3637;&#3657;</strong></div>"
        sql = sql & "</td>"
        sql = sql & "<td width='5'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td height='15' colspan='3'></td>"
        sql = sql & "</tr>"
        sql = sql & "</table>"
        sql = sql & "</td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td><img src='../../../../images/lines/w.gif' width='693' height='1'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td><img src='../../../../images/lines/l_o_693.gif'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td height='5'></td>"
        sql = sql & "</tr>"
        sql = sql & "<tr>"
        sql = sql & "<td><div align='center'>"
        If noticeStatus = 5 Then
            sql = sql & "<a href='#' class='A80_inactive'>"
        Else
            sql = sql & "<a href='package5_offer1_car_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "' class='A80'>"
        End If
        sql = sql & "&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a>"
        sql = sql & "</div>"
        sql = sql & "</td>"
        sql = sql & "</tr>"

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showTerm(ByVal cat As Integer) As String
        Dim sql As String
        Dim result As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        Dim headColor As String
        Dim myNoticeDealer As numNoticeDealer
        Dim myNotice As noticeS
        myNoticeDealer = NoticeDB.countDealerNotices(Session("cust_id"), cat)
        myNotice = NoticeDB.getNoticesInfoD(myNoticeDealer.noticeId)

        ' ======================= หัวประกาศ =========================================
        sql = " 						<table cellSpacing=""0"" cellPadding=""0"" width=""693"" border=""0"">"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td width=""693"">"

        If myNotice.status = 1 Or myNotice.status = 5 Then
            headColor = "m_h_o+re.gif"
        ElseIf myNotice.status = 2 Then
            headColor = "m_h_o+gr.gif"
        ElseIf myNotice.status = 3 Then
            headColor = "m_h_o+o.gif"
        ElseIf myNotice.status = 4 Then
            headColor = "m_h_o+g.gif"
        End If
        sql = sql & " 									<table class=""Font_white"" height=""21"" cellSpacing=""0"" cellPadding=""0"" width=""693"" background='../../../../images/header/" & headColor & "'"
        sql = sql & " 										border=""0"">"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width=""25""></td>"
        sql = sql & " 											<td width=""526""><strong>รายการรถยนต์:"
        sql = sql & " 													<span class=""Font_black_bold"">" & myNoticeDealer.rowNum & "</span>"
        sql = sql & " 													&#3592;&#3634;&#3585;&#3614;&#3639;&#3657;&#3609;&#3607;&#3637;&#3656;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;<span class=""Font_black_bold""> " & myNoticeDealer.totalNum & "</span>"
        sql = sql & " 													&#3619;&#3634;&#3618;&#3585;&#3634;&#3619; /"
        sql = sql & " 													<span class=""Font_black_bold"">" & myNoticeDealer.closeNum & "</span>"
        sql = sql & " 													&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3636;&#3604;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;"
        sql = sql & " 												</strong>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""10""></td>"
        sql = sql & " 											<td width=""127"">"
        sql = sql & " 												<div align=""center"">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3626;&#3636;&#3657;&#3609;&#3626;&#3640;&#3604; "
        Dim stopDate As DateTime
        stopDate = myNotice.stopDate

        sql = sql & " 													: " & stopDate.ToString("dd/MM/yyyy") & "</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width=""5""></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 									</table>"
        sql = sql & " 								</td>"
        sql = sql & " 							</tr>"


        If myNoticeDealer.rowNum > 0 Then ' ===========ในกรณีที่มีการลงประกาศไว้แล้ว ===============

            sql = sql & " 							<tr>"
            sql = sql & " 								<td><IMG height=""1"" src=""../../../../images/lines/w.gif"" width=""693""></td>"
            sql = sql & " 							</tr>"
            sql = sql & " 							<!-- start  cut 2-->"
            sql = sql & " 							<tr>"
            sql = sql & "           <td>"
            sql = sql & "             <table class=Font_black cellSpacing=0 cellPadding=0 width=693 "
            sql = sql & "             background=../../../../images/table/g_693.gif border=0 "
            sql = sql & "             >"
            sql = sql & "               <tr>"
            sql = sql & "                 <td colSpan=7 height=5></td></tr>"
            sql = sql & "               <tr>"
            sql = sql & "                 <td width=5 rowSpan=3></td>"
            '=================  ค้นหาด้วยเงื่อนไข ===================================================
            '=================  การแสดงผล =========================================================
            sql = sql & "                 <td width=79 height=26>"
            sql = sql & "                   <div align=right><strong "
            sql = sql & "                   >&#3585;&#3634;&#3619;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;:</strong></div></td>"
            sql = sql & "                 <td width=5 rowSpan=3></td>"
            sql = sql & "                 <td width=295 height=26>"

            sql = sql & " <select class='Font_black' style='WIDTH: 295px' name='brand' id='brand' onChange='setModel(this.value);'> "
            sql = sql & "   <option value='0' >ทุกยี่ห้อ</option> "
            sql = sql & " </select>"

            sql = sql & "               </td>"
            sql = sql & "                 <td width=10 rowSpan=3></td>"
            sql = sql & "                 <td width=294>"

            sql = sql & "  <select class='Font_black' style='WIDTH: 294px' name='status' id='status'> "
            sql = sql & "   <option  value='0' selected>ทุกสภาพ</option> "
            sql = sql & " </select>"

            sql = sql & "                 </td>"
            sql = sql & "                 <td width=5 rowSpan=3></td></tr>"
            sql = sql & "               <tr>"
            sql = sql & "                 <td width=79 height=26></td>"
            sql = sql & "                 <td width=295 height=26>"

            sql = sql & "  <select class='Font_black' style='WIDTH: 294px' name='model' id='model'> "
            sql = sql & "   <option value='0' selected>ทุกรุ่น</option> "
            sql = sql & " </select>"

            sql = sql & " </td>"
            sql = sql & "                 <td width=294>"

            sql = sql & "  <select class='Font_black' style='width:145px' name='yearst' id='yearst'> "
            sql = sql & "   <option value='0' selected>จากปี</option> "
            sql = sql & " </select>"
            sql = sql & "  <select class='Font_black' style='WIDTH:145px' name='yearend' id='yearend'> "
            sql = sql & "   <option value='0' selected>ถึงทุกปี</option> "
            sql = sql & " </select>"

            sql = sql & "  </td></tr>"
            sql = sql & "               <tr>"
            sql = sql & "                 <td width=79 height=26></td>"
            sql = sql & "                 <td width=295 height=26>"

            sql = sql & "  <select class='Font_black' style='WIDTH: 294px' name='carType' id='carType'> "
            sql = sql & "   <option value='0' selected>ทุกประเภท</option> "
            sql = sql & " </select>"

            sql = sql & "   </td>"
            sql = sql & "                 <td width=294>"

            sql = sql & "  <select class='Font_black' style='WIDTH: 145px' name='pricest' id='pricest'> "
            sql = sql & "   <option value='0' selected>จากทุกราคา</option> "
            sql = sql & " </select>"
            sql = sql & "  <select class='Font_black' style='WIDTH: 145px' name='priceend' id='priceend'> "
            sql = sql & "   <option value='0' selected>ถึงทุกราคา</option> "
            sql = sql & " </select>"

            sql = sql & "   </td></tr>"
            sql = sql & "               <tr>"
            sql = sql & "                 <td colSpan=7><IMG height=11 src=""../../../../images/dividers/g_693x11.gif"" width=693 ></td></tr>"
            sql = sql & "               <tr>"
            sql = sql & "                 <td width=5 height=26></td>"
            sql = sql & "                 <td width=79 height=26>"
            sql = sql & "                   <div align=right><strong "
            sql = sql & "                   >&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;:</strong></div></td>"
            sql = sql & "                 <td width=5 height=26></td>"
            sql = sql & "                 <td width=295 height=26>"
            sql = sql & "                   <table cellSpacing=0 cellPadding=0 width=295 border=0 "
            sql = sql & "                   >"
            sql = sql & "                     <tr>"
            sql = sql & "                       <td width=211><select class='Font_black' style='WIDTH: 211px' name='orderBy' id='orderBy'>"
            sql = sql & "                         <option value='post' selected >วันที่ลงประกาศ (ล่าสุด/เก่าสุด)</option>"
            sql = sql & "                         <option value='status' >สถานะประกาศ (ปิด/เปิด)</option> "
            sql = sql & "                         <option value='-' >----------------------------------------</option> "
            sql = sql & "                         <option value='brand' >ยี่ห้อ/รุ่น/รุ่นย่อย (abc...)</option>"
            sql = sql & "                         <option value='year' >ปี (ใหม่/เก่า)</option>"
            sql = sql & "                         <option value='price' >ราคา (ต่ำสุด/สูงสุด)</option> "
            sql = sql & "                         <option value='carType' >ประเภท (กขค,abc...)</option>"
            sql = sql & "                         </select></td>"
            sql = sql & "                       <td width=4></td>"
            sql = sql & "                       <td width=80>"
            sql = sql & " <input class='button' id='showSearch' name='showSearch' "
            sql = sql & "     onmouseover=""document.all.showSearch.className='buttonover'"" style=""CURSOR: hand""  onmouseout=""document.all.showSearch.className='button'"" type=""button"" "
            sql = sql & " value='แสดงผล' onClick='doSearch();'>"

            'sql = sql & " <A class=A80 href=""#"" >แสดงผล</A>"
            sql = sql & " </td></tr></table></td>"
            sql = sql & "                 <td width=10 height=26></td>"
            sql = sql & "                 <td width=294 height=26></td>"
            sql = sql & "                 <td width=5 height=26></td></tr>"
            sql = sql & "               <tr>"
            sql = sql & "                 <td colSpan=7 height=5 "
            sql = sql & "             ></td></tr></table></td></tr>"
            sql = sql & "         <tr>"
            sql = sql & "           <td><IMG height=1 src=""../../../../images/lines/w.gif"" width=693 ></td></tr>"
            sql = sql & "         <tr>"
            sql = sql & "           <td><IMG height=5 src=""../../../../images/lines/l_o_693.gif"" width=693 ></td></tr>"
            sql = sql & "         <tr>"
            sql = sql & "           <td height=15></td></tr>"


            sql = sql & showList(myNoticeDealer) & "!TUI!have"
        Else ' ================== ในกรณีที่ไม่มีการลงประกาศไว้เลย =======================


            sql = sql & showEmpty(myNoticeDealer, myNotice.status) & "!TUI!dhave"
        End If



        Return sql
    End Function
    Private Function showNum1(ByVal myNoticeDealer As numNoticeDealer) As String
        Dim sql As String
        Dim pages As Integer


        sql = sql & "         <tr>"
        sql = sql & "           <td>"
        sql = sql & "         <div id='numList1'>"
        sql = sql & "             <table class=Font_black height=17 cellSpacing=0 cellPadding=0 "
        sql = sql & "             width=693 background=../../../../images/objects/bg_line_result.gif "
        sql = sql & "             border=0>"
        sql = sql & "               <tr>"
        sql = sql & "                 <td width=27></td>"
        sql = sql & "                 <td><strong>แสดงผล:</strong> "
        sql = sql & "                    1-" & myNoticeDealer.rowNum & " จาก " & myNoticeDealer.rowNum & " รายการ</td>"
        sql = sql & "                 <td>"
        sql = sql & "                   <table class=Page_Number cellSpacing=0 cellPadding=0 "
        sql = sql & "                   align=right border=0>"
        sql = sql & "                     <tr>"
        sql = sql & "                       <td class=Font_grey>|&lt;&lt;</td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        sql = sql & "                       <td class=Font_grey>&lt;&lt;</td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        sql = sql & "                       <td><strong>Page </strong> "

        pages = Math.Ceiling(myNoticeDealer.rowNum / pageSize)
        Dim i As Integer
        For i = 1 To pages
            If i = 1 Then
                sql = sql & "                         <strong>" & i & "</strong> "
            Else
                sql = sql & "                         <font class='Font_U_Pages' onClick='goPage(" & i & ");'>" & i & "</font> "
            End If
        Next

        sql = sql & "                         <strong>of " & pages & "</strong>"
        sql = sql & "                       </td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        If pages <= 1 Then
            sql = sql & "                       <td class=Font_grey>&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td class=Font_grey >&gt;&gt;|</td>"
        Else
            sql = sql & "                       <td  onClick='goPage(2);' style=""CURSOR: hand"" >&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td   onClick='goPage(" & pages & ");' style=""CURSOR: hand"">&gt;&gt;|</td>"
        End If
        sql = sql & " </tr></table></td>"
        sql = sql & "                 <td width=3></td></tr>"
        sql = sql & "          </table>"
        sql = sql & "         </div>"
        sql = sql & "</td></tr>"

        Return sql
    End Function
    Private Function showNum2(ByVal myNoticeDealer As numNoticeDealer) As String
        Dim sql As String
        Dim pages As Integer


        sql = sql & "         <tr>"
        sql = sql & "           <td>"
        sql = sql & "         <div id='numList2'>"
        sql = sql & "             <table class=Font_black height=17 cellSpacing=0 cellPadding=0 "
        sql = sql & "             width=693 background=../../../../images/objects/bg_line_result.gif "
        sql = sql & "             border=0>"
        sql = sql & "               <tr>"
        sql = sql & "                 <td width=27></td>"
        sql = sql & "                 <td><strong>แสดงผล:</strong> "
        sql = sql & "                    1-" & myNoticeDealer.rowNum & " จาก " & myNoticeDealer.rowNum & " รายการ</td>"
        sql = sql & "                 <td>"
        sql = sql & "                   <table class=Page_Number cellSpacing=0 cellPadding=0 "
        sql = sql & "                   align=right border=0>"
        sql = sql & "                     <tr>"
        sql = sql & "                       <td class=Font_grey>|&lt;&lt;</td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        sql = sql & "                       <td class=Font_grey>&lt;&lt;</td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        sql = sql & "                       <td><strong>Page </strong> "

        pages = Math.Ceiling(myNoticeDealer.rowNum / pageSize)
        Dim i As Integer
        For i = 1 To pages
            If i = 1 Then
                sql = sql & "                         <strong>" & i & "</strong> "
            Else
                sql = sql & "                         <font class='Font_U_Pages' onClick='goPage(" & i & ");'>" & i & "</font> "
            End If

        Next

        sql = sql & "                         <strong>of " & pages & "</strong>"
        sql = sql & "                       </td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        If pages <= 1 Then
            sql = sql & "                       <td class=Font_grey>&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td class=Font_grey >&gt;&gt;|</td>"
        Else
            sql = sql & "                       <td  onClick='goPage(2);' style=""CURSOR: hand"" >&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td   onClick='goPage(" & pages & ");' style=""CURSOR: hand"">&gt;&gt;|</td>"
        End If
        sql = sql & " </tr></table></td>"
        sql = sql & "                 <td width=3></td></tr>"
        sql = sql & "          </table>"
        sql = sql & "         </div>"
        sql = sql & "</td></tr>"

        Return sql
    End Function
    Private Function showButton1(ByVal myNoticeDealer As numNoticeDealer) As String
        Dim sql As String

        sql = sql & "             <table cellSpacing=0 cellPadding=0 border=0>"
        sql = sql & "               <tr>"
        '================= ลบประกาศ ===========================
        sql = sql & "                 <td>"
        sql = sql & " <input class='button' id='delDetail1' name='delDetail1' "
        sql = sql & "     onmouseover=""document.all.delDetail1.className='buttonover'"" style=""CURSOR: hand""  onmouseout=""document.all.delDetail1.className='button'"" type=""button"" "
        sql = sql & " value='ลบ' onClick='deleteDetail();'></td>"

        sql = sql & "                 <td width=4></td>"
        sql = sql & "                 <td>"
        ' ===============  ลงประกาศ button ======================

        If myNoticeDealer.rowNum < myNoticeDealer.totalNum And myNoticeDealer.status <> 5 Then
            sql = sql & "<A class='A80' href='package5_offer1_car_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "' >&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</A>"
        Else
            sql = sql & "<A class='A80_inactive' href='#' >&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</A>"
        End If

        sql = sql & "</td></tr></table>"

        Return sql
    End Function
    Private Function showButton2(ByVal myNoticeDealer As numNoticeDealer) As String
        Dim sql As String

        sql = sql & "             <table cellSpacing=0 cellPadding=0 border=0>"
        sql = sql & "               <tr>"
        '================= ลบประกาศ ===========================
        sql = sql & "                 <td>"
        sql = sql & " <input class='button' id='delDetail2' name='delDetail2' "
        sql = sql & "     onmouseover=""document.all.delDetail2.className='buttonover'"" style=""CURSOR: hand""  onmouseout=""document.all.delDetail2.className='button'"" type=""button"" "
        sql = sql & " value='ลบ' onClick='deleteDetail();'></td>"

        sql = sql & "                 <td width=4></td>"
        sql = sql & "                 <td>"
        ' ===============  ลงประกาศ button ======================
        If myNoticeDealer.rowNum < myNoticeDealer.totalNum And myNoticeDealer.status <> 5 Then
            sql = sql & "<A class=A80 href='package5_offer1_car_datas.aspx?noticeid=" & myNoticeDealer.noticeId & "' >&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</A>"
        Else
            sql = sql & "<A class='A80_inactive' href='#' >&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</A>"
        End If

        sql = sql & "</td></tr></table>"

        Return sql
    End Function
    Private Function showList(ByVal myNoticeDealer As numNoticeDealer) As String
        Dim sql As String


        sql = showNum1(myNoticeDealer)

        sql = sql & "         <tr>"
        sql = sql & "           <td height=10></td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td>"
        '================== button =============================
        sql = sql & " <div id='showButton1'>"
        sql = sql & showButton1(myNoticeDealer)
        sql = sql & " </div>"

        sql = sql & "</td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td height=5></td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td>"
        sql = sql & "             <table class=Font_white height=21 cellSpacing=0 cellPadding=0 "
        sql = sql & "             width=693 background=../../../../images/header/vehicle_b_li.gif "
        sql = sql & "             border=0>"
        sql = sql & "               <tr>"
        sql = sql & "                 <td width=3></td>"
        sql = sql & "                 <td width=20>"
        sql = sql & "                   <div align=center>X</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=60>"
        sql = sql & "                   <div align=center>&#3619;&#3627;&#3633;&#3626;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=74>"
        sql = sql & "                   <div align=center>&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=149>"
        sql = sql & "                   <div align=center "
        sql = sql & "                   >&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;/&#3619;&#3640;&#3656;&#3609;/&#3619;&#3640;&#3656;&#3609;&#3618;&#3656;&#3629;&#3618;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=83>"
        sql = sql & "                   <div align=center>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=34>"
        sql = sql & "                   <div align=center>&#3611;&#3637;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=75>"
        sql = sql & "                   <div align=center>&#3619;&#3634;&#3588;&#3634;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=41>"
        sql = sql & "                   <div align=center>&#3649;&#3626;&#3604;&#3591;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=46>"
        sql = sql & "                   <div align=center>&#3648;&#3611;&#3636;&#3604;/&#3611;&#3636;&#3604;</div></td>"
        sql = sql & "                 <td width=5></td>"
        sql = sql & "                 <td width=60>"
        sql = sql & "                   <div align=center>&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</div></td>"
        sql = sql & "                 <td width=3></td></tr></table></td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td><IMG height=1 src=""../../../../images/lines/w.gif"" width=693 ></td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td>"
        sql = sql & "             <table cellSpacing=0 cellPadding=0 width=693 border=0 >"
        sql = sql & "               <tr>"
        sql = sql & "                 <td width=693>"
        sql = sql & "                   <table class=Font_black_LH_15px cellSpacing=0 cellPadding=0 "
        sql = sql & "                   width=693 background=../../../../images/table/g_693.gif border=0>"

        sql = sql & " <tr><td width=693>"
        sql = sql & " <div id='listcar'>"
        Dim myQDetail As New Queue
        Dim myDetail As noticeDetail
        Dim i As Integer
        Dim n As Integer
        myQDetail = NoticeDetailDB.getNoticeDetails(myNoticeDealer.noticeId)
        Session("myQDetail") = myQDetail.Clone()
        i = myQDetail.Count
        n = 1

        'For n = 1 To pageSize
        '    myDetail = myQDetail.Dequeue
        Dim carQ As New Queue

        For Each myDetail In myQDetail
            If n > pageSize Then
                Exit For
            End If
            If myDetail.Detail_delete <> 1 Then
                carQ.Enqueue(myDetail)
                sql = sql & showCars(myDetail, n)
            End If
            n = n + 1
        Next

        Session("allCar") = carQ.Clone()

        sql = sql & " </div>"
        sql = sql & " </td></tr> "

        sql = sql & "         <tr>"
        sql = sql & "           <td><IMG height=5 src=""../../../../images/lines/l_b_693.gif"" width=693 ></td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td height=5></td></tr>"

        sql = sql & "         <tr>"
        sql = sql & "           <td>"

        '================== button =============================
        sql = sql & " <div id='showButton2'>"
        sql = sql & showButton2(myNoticeDealer)
        sql = sql & " </div>"

        sql = sql & " </td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td height=10></td></tr>"

        sql = sql & showNum2(myNoticeDealer)


        sql = sql & "         <tr>"
        sql = sql & "           <td height=15></td></tr>"
        sql = sql & "         <tr>"
        sql = sql & "           <td>"
        sql = sql & "             <table class=Font_black cellSpacing=0 cellPadding=0 border=0 >"
        sql = sql & "               <tr>"
        sql = sql & "                 <td><IMG height=16 src=""../../../../images/objects/sub_navi_blue_l.gif"" width=10 ></td>"
        sql = sql & "                 <td background=../../../../images/objects/sub_navi_blue_c.gif "
        sql = sql & "                 ><A class=A_black_NOunderline href=""package2_list.aspx"" >&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</A></td>"
        sql = sql & "                 <td><IMG height=16 src=""../../../../images/objects/sub_navi_blue_s.gif"" width=21 ></td>"
        sql = sql & "                 <td background=../../../../images/objects/sub_navi_blue_c.gif "
        sql = sql & "                 ><A class=A_black_NOunderline href=""#"" >-</A></td>"
        sql = sql & "                 <td><IMG height=16 src=""../../../../images/objects/sub_navi_blue_s.gif"" width=21 ></td>"
        sql = sql & "                 <td background=../../../../images/objects/sub_navi_blue_c.gif "
        sql = sql & "                 ><A class=A_black_NOunderline href=""../../admin_job/job1_list.aspx"" >&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</A></td>"
        sql = sql & "                 <td><IMG height=16 src=""../../../../images/objects/sub_navi_blue_r.gif"" width=10 ></td></tr></table></td></tr>"
        sql = sql & "          "
        sql = sql & " 							<!-- end  cut2 -->"
        sql = sql & " 							<tr>"
        sql = sql & " 								<td height=""20""></td>"
        sql = sql & " 							</tr>"
        sql = sql & " 						</table>"

        Return sql
    End Function
    Private Function showCars(ByVal myDetail As noticeDetail, ByVal n As Integer) As String
        Dim sql As String
        Dim myCar As Car
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myCar = CarDB.getCar(myDetail.DataId)
        ' =====================  Start ==========================
        sql = sql & "<table cellSpacing=0 cellPadding=0 width=693 border=0 >"
        sql = sql & "<tr>"
        sql = sql & "<td width='693'><table width='693' border='0' cellpadding='0' cellspacing='0' background='../../../images/table/g_693.gif' class='Font_black_LH_15px'>"
        sql = sql & "<tr>"
        sql = sql & "                       <td colSpan=21 height=3><IMG height=3 src=""../../../../images/dividers/li_bu_ve1_g.gif"" width=693 ></td></tr>"
        sql = sql & "                     <tr>"
        sql = sql & "                       <td width=3></td>"
        sql = sql & "                       <td width=20>"
        sql = sql & "                         <div align=center><input "
        sql = sql & "                         class=Font_black type='checkbox' value=" & myDetail.id
        sql = sql & "                         name='noticeDe' id='noticeDe'> </div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=60>"
        sql = sql & "                         <div align=center>NDD" & myDetail.id & "</div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=74>"
        sql = sql & "                         <div align=center >"
        sql = sql & myCar.Post.ToString("dd-MM-yyyy")
        sql = sql & "</div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=149>"
        sql = sql & "                         <div align=center>"
        sql = sql & BrandDB.getBrandName(myCar.Brand) & "/ " & ModelDB.getModelName(myCar.Model)
        sql = sql & "</div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=83>"
        sql = sql & "                         <div align=center>"
        sql = sql & CarTypeDB.getStatusName(myCar.Type, 1)
        sql = sql & "</div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=34>"
        sql = sql & "                         <div align=center>"
        If myCar.Year_Ord = 0 Then
            sql = sql & "-"
        Else
            sql = sql & myCar.Year_Ord
        End If

        sql = sql & "</div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=75>"
        sql = sql & "                         <div align=center>&#3647; "
        If myCar.Price = 0 Then
            sql = sql & "-"
        Else
            sql = sql & myCar.Price.ToString("#,###.##")
        End If

        sql = sql & "</div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=41>"
        '=========== small pic ==========================
        sql = sql & "                         <div align=center><A href='package4_detail_car.aspx?carid=" & myDetail.DataId & "&detailid=" & myDetail.id & "&noticeid=" & myDetail.NoticeId & "&curData=" & n & "' >"
        sql = sql & "<IMG height=16 src='../../../../images/icons/small/detail_16x16.gif' width=16 align=textTop border=0 >"
        sql = sql & "</A></div></td>"

        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=46 onClick='showCar(" & myDetail.id & ");' style='CURSOR: hand'>"
        sql = sql & "                         <u><div align=center id='delCar" & myCar.id & "' >"

        If myDetail.Detail_show = 1 Then
            sql = sql & "ปิด"
        Else
            sql = sql & "เปิด"
        End If

        sql = sql & "</div></u></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        sql = sql & "                       <td width=60><A class=A60 href=""package4_edit_car_datas.aspx?from=list&car=" & myDetail.DataId & "&detailid=" & myDetail.id & "&notice_id=" & myDetail.NoticeId & "&curData=" & n & """ >&#3649;&#3585;&#3657;&#3652;&#3586;</A></td>"
        sql = sql & "                       <td width=3></td></tr>"
        sql = sql & "                     <tr>"
        sql = sql & "                       <td colSpan=21 height=7><IMG height=7 src=""../../../../images/dividers/li_bu_ve2_g.gif"" width=693 ></td></tr>"
        sql = sql & "                     <tr>"
        sql = sql & "                       <td width=3></td>"
        sql = sql & "                       <td></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif >"
        sql = sql & "                       </td>"
        sql = sql & "                       <td>"
        sql = sql & "                         <div align=center><A href='package4_detail_car.aspx?carid=" & myDetail.DataId & "&detailid=" & myDetail.id & "&noticeid=" & myDetail.NoticeId & "&curData=" & n & "' >"
        sql = sql & "<IMG  src='"
        ' ========================= car Pic ==========================

        If myCar.Image1 <> "" Then
            sql = sql & picUrl & "/public/test/WebForm10.aspx?custid=" & myDetail.id & "&w=60&h=v&h2=45"

            'sql = sql & "/userData/" & CustomerDB.getUserName(Session("cust_id")) & "/" & NoticeDB.getImgPath(Session("cust_id"), myCar.id, 1) & "/" & myCar.Image1
        Else
            sql = sql & "../../../../images/objects/no_image_60x45.gif"
        End If

        sql = sql & "'  border=0 ></A></div></td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif> "
        sql = sql & "                       </td>"
        '===============  remark ข้อความ ==========================================
        sql = sql & "                       <td colSpan=13><input "
        sql = sql & "                         class=Font_black style=""WIDTH: 526px"" type='text' "
        If myCar.Remark = "" Then
            sql = sql & " value='&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;...' "
        Else
            sql = sql & " value='" & myCar.Remark & "' "
        End If
        sql = sql & " name='remark" & myCar.id & "' id='remark" & myCar.id & "'>"

        sql = sql & "                         </td>"
        sql = sql & "                       <td width=5 "
        sql = sql & "                       background=../../../../images/separator/g_5.gif >"
        sql = sql & "                       </td>"
        sql = sql & "                       <td><input class='button60' id='saveRemark" & myCar.id & "' name='saveRemark" & myCar.id & "' "
        sql = sql & "     onmouseover=""document.all.saveRemark" & myCar.id & ".className='buttonover60'"" style=""CURSOR: hand""  onmouseout=""document.all.saveRemark" & myCar.id & ".className='button60'"" type=""button"" "
        sql = sql & " value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;' onClick='editRemark(" & myCar.id & ",document.form1.remark" & myCar.id & ".value);'>"
        sql = sql & "   </td>"

        sql = sql & "                       <td width=3></td></tr>"
        sql = sql & "                     <tr>"
        sql = sql & "                       <td colSpan=21 height=4><IMG height=4 src=""../../../../images/dividers/li_bu_ve3_g.gif"" width=693 ></td>"
        sql = sql & "                     </tr>"
        sql = sql & "                   </table>"
        sql = sql & "                 </td>"
        sql = sql & "               </tr>"
        sql = sql & " </TABLE>"
        '==========================  end ====================================

        Return sql
    End Function
    Private Function showNoCars() As String
        Dim sql As String
        ' =====================  Start ==========================
        sql = sql & "<table cellSpacing=0 cellPadding=0 width=693 border=0 >"
        sql = sql & "<tr>"
        sql = sql & "<td width='693'><div align='center'><font class='Font_black'>ไม่พบรายการค้นหา</font></div>"
        sql = sql & "</td>"
        sql = sql & "</tr>"
        sql = sql & "</TABLE>"
        '==========================  end ====================================

        Return sql
    End Function


    <AjaxPro.AjaxMethod()> _
    Public Function selectedNum(ByVal Page As Integer) As String
        Dim sql As String
        'Dim myNoticeDealer As numNoticeDealer
        'myNoticeDealer = NoticeDB.countDealerNotices(Session("cust_id"), 1)

        sql = showSelectedNum(Session("myQDetail"), Page)

        Return sql
    End Function

    Private Function showSelectedNum(ByVal myQDetail As Queue, ByVal curPage As Integer) As String
        Dim sql As String
        Dim pages As Integer
        Dim st As Integer

        sql = sql & "             <table class=Font_black height=17 cellSpacing=0 cellPadding=0 "
        sql = sql & "             width=693 background=../../../../images/objects/bg_line_result.gif "
        sql = sql & "             border=0>"
        sql = sql & "               <tr>"
        sql = sql & "                 <td width=27></td>"
        sql = sql & "                 <td><strong>แสดงผล:</strong> "
        If myQDetail.Count = 0 Then
            st = 0
        Else
            st = ((curPage - 1) * pageSize) + 1
        End If
        sql = sql & st & "-"
        If curPage * pageSize >= myQDetail.Count Then
            sql = sql & myQDetail.Count
        Else
            sql = sql & curPage * pageSize
        End If
        sql = sql & "                     จาก " & myQDetail.Count & " รายการ</td>"
        sql = sql & "                 <td>"
        sql = sql & "                   <table class=Page_Number cellSpacing=0 cellPadding=0 "
        sql = sql & "                   align=right border=0>"
        sql = sql & "                     <tr>"
        If curPage - 1 <= 0 Then
            sql = sql & "                       <td class=Font_grey>|&lt;&lt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td class=Font_grey>&lt;&lt;</td>"
        Else
            sql = sql & "                       <td onClick='goPage(1);' style=""CURSOR: hand"">|&lt;&lt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td onClick='goPage(" & curPage - 1 & ");' style=""CURSOR: hand"">&lt;&lt;</td>"
        End If

        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
        sql = sql & "                       <td><strong>Page </strong> "

        pages = Math.Ceiling(myQDetail.Count / pageSize)
        Dim i As Integer
        For i = 1 To pages
            If i = curPage Then
                sql = sql & "                         <strong>" & i & "</strong> "
            Else
                sql = sql & "                         <font class='Font_U_Pages' onClick='goPage(" & i & ");'>" & i & "</font> "
            End If
        Next

        sql = sql & "                         <strong>of " & pages & "</strong>"
        sql = sql & "                       </td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"

        If curPage = pages Then
            sql = sql & "                       <td class=Font_grey>&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td class=Font_grey >&gt;&gt;|</td>"
        Else
            sql = sql & "                       <td onClick='goPage(" & curPage + 1 & ");' style=""CURSOR: hand"">&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td  onClick='goPage(" & pages & ");' style=""CURSOR: hand"">&gt;&gt;|</td>"
        End If
        sql = sql & " </tr></table></td>"
        sql = sql & "                 <td width=3></td></tr>"
        sql = sql & "          </table>"


        Return sql
    End Function


    <AjaxPro.AjaxMethod()> _
   Public Function saveRemark(ByVal carid As Integer, ByVal remark As String) As String
        Dim result As String

        If remark <> "ข้อความของคุณ..." Then
            CarDB.editCarRemark(carid, remark)
            result = "ok"
        Else
            result = "not"
        End If


        Return result
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
   Public Function setDetailDelete(ByVal detailid As Integer) As String

        NoticeDetailDB.setDetailDelete(detailid, 1)

        Return "ok"
    End Function



    Function checkBrand(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Car_Brand = " & b_name & ") "
            'Session.Add("SearchCond", BrandDB.getBrandName(b_name) & "; ")
            'Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            'Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkModel(ByVal m_name As Integer) As String
        Dim model_condition As String

        If m_name <> 0 Then
            model_condition = " And (Car_Model = " & m_name & ") "
            'Session("SearchCond") = Session("SearchCond") & ModelDB.getModelName(m_name) & "; "
            'Session("modelIndex") = Request.Form("modelIndex")
        Else
            model_condition = ""
            'Session("modelIndex") = "0"
        End If

        Return model_condition
    End Function
    Function checkStatus(ByVal status As Integer) As String
        Dim status_condition As String

        If status <> 0 Then
            status_condition = " And (Car_Status = " & status & ") "
            'Session("SearchCond") = Session("SearchCond") & StatusDB.getStatusName(status) & "; "
        Else
            status_condition = ""
        End If

        'Session("status") = status
        Return status_condition
    End Function
    Function checkYear(ByVal y1 As Double, ByVal y2 As Double) As String
        ' ---------------------------------------- YEAR ------------------------------------------------------
        Dim year_condition As String
        If y1 = 0 And y2 = 0 Then

            year_condition = ""

        ElseIf y1 <> 0 And y2 = 0 Then

            year_condition = " And (Car_Year_Ord <= " & y1 & ") "
            'Session("SearchCond") = Session("SearchCond") & "<= " & y1 & "; "

        ElseIf y1 = 0 And y2 <> 0 Then

            If isMax(y2, 3) Then
                '  txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
            Else
                year_condition = " And (Car_Year_Ord <= " & y2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
            End If


        ElseIf y1 <> 0 And y2 <> 0 Then

            If (y1 <= y2) Then
                If isMax(y1, 4) Then
                    year_condition = " And (Car_Year_Ord <= " & y2 & ") "
                    'Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
                Else
                    year_condition = " And (Car_Year_Ord between " & y1 & " and " & y2 & ") "
                    'Session("SearchCond") = Session("SearchCond") & y1 & "-" & y2 & "; "
                End If

            Else
                If isMax(y1, 3) Then
                    '   txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
                Else
                    year_condition = " And (Car_Year_Ord between " & y2 & " and " & y1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & y2 & "-" & y1 & "; "
                End If


            End If


        End If
        Session("y1") = y1
        Session("y2") = y2

        Return year_condition
    End Function
    Function checkCarType(ByVal car_type As Integer) As String
        Dim car_type_condition As String

        If car_type <> 0 Then
            car_type_condition = " And (car_type = " & car_type & ") "
            'Session("SearchCond") = Session("SearchCond") & CarTypeDB.getStatusName(car_type, 1) & "; "
        Else
            car_type_condition = ""
        End If

        'Session("carType") = car_type
        Return car_type_condition
    End Function
    Function checkPrice(ByVal p1 As Double, ByVal p2 As Double) As String
        ' ----------------------------------------  PRICE ------------------------------------------------------

        Dim price_condition As String

        If (p1 = 0) And (p2 = 0) Then
            price_condition = ""
        ElseIf (p1 <> 0) And (p2 = 0) Then

            If isMax(p1, 2) Then
                price_condition = " And (Car_Price <= " & p1 + 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
            Else
                price_condition = " And (Car_Price >= " & p1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
            End If

        ElseIf (p1 = 0) And (p2 <> 0) Then

            If isMax(p2, 1) Then
                price_condition = " And (Car_Price >= " & p2 - 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
            Else
                price_condition = " And (Car_Price <= " & p2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
            End If


        ElseIf (p1 <> 0) And (p2 <> 0) Then

            If p1 < p2 Then
                If isMax(p1, 2) Then
                    If p2 <> 0 Then
                        price_condition = " And (Car_Price <= " & p2 & " ) "
                        'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
                    Else
                        price_condition = " And (Car_Price <= " & p1 + 1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
                    End If

                Else
                    If isMax(p2, 1) Then
                        price_condition = " And (Car_Price >= " & p1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
                    Else
                        price_condition = " And (Car_Price between " & p1 & " and " & p2 & ") "
                        'Session("SearchCond") = Session("SearchCond") & "฿ " & p1 & "-" & p2 & "; "
                    End If
                End If
            Else
                If isMax(p2, 1) Then
                    price_condition = " And (Car_Price >= " & p2 - 1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
                Else
                    price_condition = " And (Car_Price between " & p2 & " and " & p1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & "฿ " & p2 & "-" & p1 & "; "
                End If

            End If

        End If
        'Session("p1") = p1
        'Session("p2") = p2

        Return price_condition
    End Function
    Function checkOrderBy(ByVal orderby As String) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case "price"
                Order_By_Condition = " ORDER BY Car.Car_Price"
                KeyOrder_By = "Car_Price"
            Case "year"
                Order_By_Condition = " ORDER BY Car.Car_Year_Ord DESC"
                KeyOrder_By = "Car_Year_Ord DESC"
            Case "brand"
                Order_By_Condition = " ORDER BY Brand.Brand_Name,Model.Model_Name"
                KeyOrder_By = "Brand_Name"
            Case "post"
                Order_By_Condition = " ORDER BY Car.Car_Post DESC"
                KeyOrder_By = "Car_Post DESC"
            Case "status"
                Order_By_Condition = " ORDER BY NoticeDetail.Detail_show"
                KeyOrder_By = "Detail_show"
            Case "carType"
                Order_By_Condition = " ORDER BY Car.Car_Type DESC"
                KeyOrder_By = "Car_Type DESC"
            Case "-"
                Order_By_Condition = "-"
                KeyOrder_By = "-"

        End Select

        'Session("orderby") = orderby
        Return Order_By_Condition & ":" & KeyOrder_By
    End Function


    Private Function isMax(ByVal price As Double, ByVal type As Integer) As Boolean
        Dim ans As Boolean
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        Select Case type
            Case 1 : sql = "SELECT max(Price2_Value) as Price FROM ListPrice_Car WHERE Category = " & category

            Case 2 : sql = "SELECT min(Price1_Value) as Price FROM ListPrice_Car WHERE Category = " & category

            Case 3 : sql = "SELECT min(RYear_Value) as Price FROM ListYear "

            Case 4 : sql = "SELECT min(LYear_Value) as Price FROM ListYear "

            Case 5 : sql = "SELECT min(LCC_Value) as Price FROM ListCC WHERE Category = " & category

            Case 6 : sql = "SELECT max(RCC_Value) as Price FROM ListCC WHERE Category = " & category

            Case 7 : sql = "SELECT max(Rpower_Value) as Price FROM ListPower WHERE Category = " & category

            Case 8 : sql = "SELECT min(Lpower_Value) as Price FROM ListPower WHERE Category = " & category

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

    <AjaxPro.AjaxMethod()> _
    Public Function showSelectedC(ByVal brand As Integer, ByVal status As Integer, ByVal model As Integer, ByVal yearst As Integer, ByVal yearend As Integer, ByVal carType As Integer, ByVal pricest As Double, ByVal priceend As Double, ByVal orderBy As String) As String
        Dim sql As String
        Dim condition As String
        Dim end_sql As String
        Dim orderbyTxt As Array

        condition = checkBrand(brand)
        condition = condition & checkModel(model)
        condition = condition & checkStatus(status)
        condition = condition & checkCarType(carType)
        condition = condition & checkPrice(pricest, priceend)
        condition = condition & checkYear(yearst, yearend)
        end_sql = checkOrderBy(orderBy)
        orderbyTxt = Split(end_sql, ":")

        Dim myQDetail As New Queue
        Dim myDetail As noticeDetail
        Dim i As Integer
        Dim n As Integer
        myQDetail = NoticeDetailDB.getSelectedNoticeDetails(category, Session("noticeid"), condition, orderbyTxt)
        Session("myQDetail") = myQDetail.Clone()
        i = myQDetail.Count
        If i = 0 Then
            sql = showNoCars()
            Return sql
            Exit Function
        End If
        n = 1

        For Each myDetail In myQDetail
            If n > pageSize Then
                Exit For
            End If
            If myDetail.Detail_delete <> 1 Then
                sql = sql & showCars(myDetail, n)
            End If
            n = n + 1

        Next

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showC() As String
        Dim sql As String
        'Dim myNoticeDealer As numNoticeDealer

        'myNoticeDealer = NoticeDB.countDealerNotices(Session("cust_id"), 1)
        'sql = showList(myNoticeDealer)

        Dim myQDetail As New Queue
        Dim myDetail As noticeDetail
        Dim i As Integer
        Dim n As Integer
        myQDetail = NoticeDetailDB.getNoticeDetails(Session("noticeid"))
        i = myQDetail.Count
        n = 1

        For Each myDetail In myQDetail
            If n > pageSize Then
                Exit For
            End If
            'myDetail = myQDetail.Dequeue
            If myDetail.Detail_delete <> 1 Then
                sql = sql & showCars(myDetail, n)
            End If
            n = n + 1
        Next

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showB1() As String
        Dim sql As String

        Dim myNoticeDealer As numNoticeDealer
        myNoticeDealer = NoticeDB.countDealerNotices(Session("cust_id"), 1)
        sql = showButton1(myNoticeDealer)

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showB2() As String
        Dim sql As String

        Dim myNoticeDealer As numNoticeDealer
        myNoticeDealer = NoticeDB.countDealerNotices(Session("cust_id"), 1)
        sql = showButton2(myNoticeDealer)

        Return sql
    End Function


    <AjaxPro.AjaxMethod()> _
    Public Function showSelectedPage(ByVal page As Integer) As String
        Dim sql As String

        Dim myQDetail As New Queue
        Dim myDetail As noticeDetail
        Dim i As Integer
        Dim n As Integer

        myQDetail = Session("myQDetail").Clone()
        'i = myQDetail.Count
        i = 1
        n = 1

        For Each myDetail In myQDetail
            If i > pageSize Then
                Exit For
            End If
            If myDetail.Detail_delete <> 1 And (n >= ((page - 1) * pageSize) + 1) And (n <= (page * pageSize)) Then
                sql = sql & showCars(myDetail, n)
                i = i + 1
            End If
            n = n + 1
        Next

        Return sql
    End Function


End Class
