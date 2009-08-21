Public Class prolong2_conclusion
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents p_type As System.Web.UI.WebControls.Label
    Protected WithEvents p_name As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents noticeCode As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents P_startD As System.Web.UI.WebControls.Label

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
        Dim invoiceno As Integer
        Dim packageid As Integer
        Dim prolongid As Integer
        Dim maxdate As Date
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else
            If Not IsPostBack Then
                setHeadPackage(NoticeDB.getPackageID(Session("noticeid")))
                packageid = NoticeDB.getPackageID(Session("noticeid"))
                maxdate = NoticeDB.getNoticeStopDate(Session("noticeid"))

                'maxdate = DateAdd(DateInterval.Day, 1, maxdate)
                setstartD(maxdate)

                '---------------Prolong Transaction---------------------------
                invoiceno = InvoiceDB.insertInvoice(Session("noticeid"), NoticeDetailDB.getNoticeDetailID(Session("noticeid")), packageid, PackageDB.getPackageWeek(packageid), PackageDB.getPackagePrice(packageid), 2, maxdate)

                Dim myProlong As ProlongTx
                myProlong.NoticeID = Session("noticeid")
                myProlong.InvoiceID = invoiceno
                myProlong.PackageID = packageid
                myProlong.Date_Start = maxdate
                myProlong.Date_Stop = getStopDate(maxdate, packageid)
                myProlong.Period = PackageDB.getPackageWeek(packageid)
                myProlong.Expire = 0

                prolongid = ProlongDB.insertProlong(myProlong)
                NoticeDB.setProlongNotice(Session("noticeid"), "P", "A_PC_red_underline")
                '-----------------------------------------------------------
                setNoticeCode(0, invoiceno)
            End If
        'End If




    End Sub
    Private Sub setHeadPackage(ByVal package_id As Integer)
        Dim txt As String
        Dim cat As Integer

        p_price.Text = PackageDB.getPackagePrice(package_id)
        p_period.Text = PackageDB.getPackageWeek(package_id)

        cat = PackageDB.getCategory(package_id)
        Select Case cat
            Case 1
                txt = "C/"
            Case 2
                txt = "M/"
            Case 3
                txt = "T/"
            Case 4
                txt = "P/"
        End Select

        p_name.Text = txt & PackageDB.getPackageWeek(package_id) & "m"
        p_type.Text = CategoryDB.getCategoryName(PackageDB.getCategory(package_id))
    End Sub
    Private Sub setstartD(ByVal dateinput As Date)

        'P_startD.Text = FormatDateTime(dateinput, DateFormat.ShortDate)
        P_startD.Text = "ทันทีหลังยืนยันการชำระเงิน"
    End Sub
    Private Sub setNoticeCode(ByVal dealer As Integer, ByVal invoiceid As Integer)
        noticeCode.Text = DealerDB.getDealerABV(dealer) & invoiceid
    End Sub
    

    Private Function getStopDate(ByVal startDate As Date, ByVal package_id As Integer) As Date
        Dim temp_date As Date

        temp_date = DateAdd(DateInterval.Month, PackageDB.getPackageWeek(package_id), startDate)

        Return temp_date
    End Function

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("startpage_example1.aspx?cust_id=" & Session("cust_id"))
    End Sub
End Class
