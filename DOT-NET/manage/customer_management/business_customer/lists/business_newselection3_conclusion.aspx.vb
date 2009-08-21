Public Class business_newselection3_conclusion
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
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else
        If Not IsPostBack Then
            noticeid = addnotice()
            invoiceid = addInvoice(noticeid)
            showDetail(Session("package_id"), invoiceid)
            'Response.Write(DB.getToday)
            'Response.Redirect("../startpage/startpage_example_with_package.aspx")
        End If
        'End If

    End Sub

    Private Sub showDetail(ByVal packageid As Integer, ByVal invoiceid As Integer)
        Dim myPackType As PackageNType

        myPackType = PackageDB.getPackageType(packageid)

        packType.Text = myPackType.Package_TypeDesc
        packName.Text = myPackType.Package_Name
        area.Text = myPackType.Package_AreaStop
        week.Text = myPackType.Package_Week & " เดือน"
        price.Text = FormatNumber(myPackType.Package_Price, 2, , , TriState.True) & " บาท"
        invoice.Text = DealerDB.getDealerABV(1) & invoiceid
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
        Dim cust_id As Integer = Session("cust_id")
        Session("cust_id") = ""
        Response.Redirect("business_package_list.aspx?cust_id=" & cust_id)
    End Sub
End Class
