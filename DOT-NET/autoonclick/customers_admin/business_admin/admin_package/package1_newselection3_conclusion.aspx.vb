Public Class package1_newselection3_conclusion
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents packType As System.Web.UI.WebControls.Label
    Protected WithEvents packName As System.Web.UI.WebControls.Label
    Protected WithEvents area As System.Web.UI.WebControls.Label
    Protected WithEvents week As System.Web.UI.WebControls.Label
    Protected WithEvents price As System.Web.UI.WebControls.Label
    Protected WithEvents invoice As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents refer As System.Web.UI.WebControls.Label
    Protected WithEvents whatNext As System.Web.UI.WebControls.Label

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
        Dim invoiceid As Integer
        Dim noticeid As Integer
        Dim myPackType As PackageNType

        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        Session("isFirstTime") = "NO"

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                noticeid = addnotice()
                myPackType = PackageDB.getPackageType(Session("package_id"))

                If myPackType.Package_Price = 0 Then
                    invoiceid = addInvoice(noticeid)
                    TmpPaymentDb.insertTmpPayment(1, invoiceid, CInt(Session("cust_id")), DB.getToday(), DB.getToday().ToString("HH:mm"), 99, 0, "Promotion Free Trial")
                    InvoiceDB.updatePaidInvoice(invoiceid)
                Else
                    invoiceid = addInvoice(noticeid)
                End If


                showDetail(myPackType, invoiceid)
                'Response.Write(DB.getToday)
                'Response.Redirect("../startpage/startpage_example_with_package.aspx")
            End If


        End If
        Dim a As DateTime
    End Sub

    Private Function showWhatNext() As String
        Dim txt As String

        txt = "<tr>"
        txt = txt & "<td background='../../../images/table/g_693.gif'><table border='0' align='center' cellpadding='0' cellspacing='0' class='Font_black_LH_17px'>"
        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>ประกาศออนไลน์ของคุณจะสำเร็จได้เมื่อคุณได้ชำระเงินค่าบริการลงประกาศ คุณจะต้องชำระเงินค่าบริการภายใน 7<br>วันนับจากวันนี้ หากเลยวันที่กำหนดประกาศของคุณจะถูกลบทิ้งโดยอัตโนมัติ<br>"
        txt = txt & "โดยคุณสามารถชำระเงินค่าบริการด้วยวิธีโอนเงินผ่านเคาน์เตอร์ธนาคาร หรือชำระผ่านตู้ ATM เข้าบัญชีธนาคารดังนี้</td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td></td>"
        txt = txt & " <td><table width='510' border='0' cellpadding='2' cellspacing='1' bgcolor='#95acc6'>"
        txt = txt & " <TR bgcolor='#bfcfe0'>"
        txt = txt & " <TD><div align='center'><strong>ธนาคาร</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>สาขา</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>ชื่อบัญชี</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>เลขที่บัญชี</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'><strong>ประเภท</strong></div>"
        txt = txt & " </TD>"
        txt = txt & " </TR>"
        txt = txt & " <TR bgcolor='#fff4e3'>"
        txt = txt & " <TD><div align='center'>กรุงเทพ</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>หัวหมาก</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>ออโต้ออนคลิ๊ก</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center' > 180 - 7 - 96871 - 2"
        txt = txt & " </div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>ออมทรัพย์</div>"
        txt = txt & " </TD>"
        txt = txt & " </TR>"
        txt = txt & " <TR bgcolor='#eaf1ff'>"
        txt = txt & " <TD><div align='center'>กสิกรไทย</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>ย่อยถนนรามคำแหง</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>ออโต้ออนคลิ๊ก</div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center' > 736 - 2 - 48193 - 1"
        txt = txt & " </div>"
        txt = txt & " </TD>"
        txt = txt & " <TD><div align='center'>ออมทรัพย์</div>"
        txt = txt & " </TD>"
        txt = txt & " </TR>"
        txt = txt & " </table>"
        txt = txt & " </td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>หลังจากที่คุณชำระเงินแล้วคุณสามารถแจ้งชำระเงินของคุณได้ที่เมนู ""แจ้งชำระเงิน"" ในระบบการจัดการของสมาชิก<br>"
        txt = txt & "พร้อมแนบหลักฐานการโอนเงินค่าบริการ</td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>สำหรับค่าบริการ 1,000 บาท ขึ้นไปกรุณาส่งหรือแฟกซ์ใบหักภาษี ณ ที่จ่าย 3% มายังออโต้ออนคลิ๊กด้วย</td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>หลังจากที่ได้รับการยืนยันการชำระเงินจากธนาคารแล้ว ทางเราจะนำประกาศของคุณขึ้นแสดง (online) ในทันที<br>"
        txt = txt & "และคุณจะได้รับอีเมล์การยืนยันจากเรา ทั้งนี้คุณสามารถเข้าระบบเพื่อตรวจสอบสถานะประกาศได้</td>"
        txt = txt & " </tr>"

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " </table>"
        txt = txt & " </td>"
        txt = txt & " </tr>"


        Return txt
    End Function
    Private Function showWhatNext0() As String
        Dim txt As String

        txt = "<tr>"
        txt = txt & "<td background='../../../images/table/g_693.gif'><table border='0' align='center' cellpadding='0' cellspacing='0' class='Font_black_LH_17px'>"
        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " <tr>"
        txt = txt & " <td valign='top'><img src='../../../images/objects/list_point_blue.gif' width='15' height='17'></td>"
        txt = txt & " <td>หลังจากตรวจสอบข้อมูลแล้ว ทางเราจะดำเนินการออนไลน์ (online) ให้ทันที</td>"
        txt = txt & " </tr>"

        

        txt = txt & " <tr>"
        txt = txt & " <td height='10' colspan='2'></td>"
        txt = txt & " </tr>"
        txt = txt & " </table>"
        txt = txt & " </td>"
        txt = txt & " </tr>"


        Return txt
    End Function
    Private Sub showDetail(ByVal myPackType As PackageNType, ByVal invoiceid As Integer)

        packType.Text = myPackType.Package_TypeDesc
        packName.Text = myPackType.Package_Name
        area.Text = myPackType.Package_AreaStop
        week.Text = myPackType.Package_Week & " เดือน"
        If myPackType.Package_Price = 0 Then
            price.Text = "ฟรี"
            refer.Text = ""
            invoice.Text = ""
            whatNext.Text = showWhatNext0()
        Else
            price.Text = FormatNumber(myPackType.Package_Price, 2, , , TriState.True) & " บาท"
            refer.Text = "รหัสอ้างอิงการชำระเงิน"
            invoice.Text = DealerDB.getDealerABV(1) & invoiceid
            whatNext.Text = showWhatNext()
        End If



    End Sub
    Private Function addnotice() As Integer
        Dim myNotice As noticeS
        Dim ans As Integer

        myNotice.category = Session("package_type")
        myNotice.pacakgeId = Session("package_id")
        myNotice.isDealer = 1
        myNotice.memberId = Session("cust_id")
        myNotice.payment = 0
        myNotice.status = 1

        ans = NoticeDB.addNewNotice2(myNotice)

        Return ans
    End Function
    Private Function addInvoice(ByVal noticeid As Integer) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = Session("package_id")
        myInvoice.week = PackageDB.getPackageWeek(Session("package_id"))
        myInvoice.price = PackageDB.getPackagePrice(Session("package_id"))
        myInvoice.status = 1

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function


    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("../startpage/startpage_example_with_package.aspx")
    End Sub
End Class
