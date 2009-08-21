Imports System.Globalization
Imports System.Threading
Public Class prolongconclusion
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents p_type As System.Web.UI.WebControls.Label
    Protected WithEvents p_name As System.Web.UI.WebControls.Label
    Protected WithEvents p_area As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_start As System.Web.UI.WebControls.Label
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents p_code As System.Web.UI.WebControls.Label

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
        Dim maxdate As DateTime
        Dim invoiceid As Integer
        Dim packageid As Integer
        Dim prolongid As Integer
        Dim price2 As Double
        Dim myNoice As noticeS
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../../public/login/login.aspx")
        'Else
        If Not IsPostBack Then
            packageid = Request.QueryString("rdNewPack")
            myNoice = NoticeDB.getNoticesInfoD(Session("noticeid"))
            If myNoice.status = 5 Then
                maxdate = DB.getToday()
            Else
                maxdate = NoticeDB.getNoticeStopDate(Session("noticeid"))
            End If
            'maxdate = DateAdd(DateInterval.Day, 1, maxdate)
            price2 = PackageDB.getPackagePrice(packageid)

            invoiceid = addInvoice(Session("noticeid"), packageid, maxdate, price2)

            Dim myProlong As ProlongTx
            myProlong.NoticeID = Session("noticeid")
            myProlong.InvoiceID = invoiceid
            myProlong.PackageID = packageid
            myProlong.Date_Start = maxdate
            myProlong.Date_Stop = getStopDate(maxdate, packageid)
            myProlong.Period = PackageDB.getPackageWeek(packageid)
            myProlong.Expire = 0
            prolongid = ProlongDB.insertProlong(myProlong)

            setProlongNotice(Session("noticeid"), "P", "A_PC_red_underline")
            showpackage(packageid, invoiceid, maxdate, price2)

        End If
        'End If
    End Sub
    Private Function getStopDate(ByVal startDate As Date, ByVal package_id As Integer) As Date
        Dim temp_date As Date

        temp_date = DateAdd(DateInterval.Month, PackageDB.getPackageWeek(package_id), startDate)

        Return temp_date
    End Function
    Private Sub showpackage(ByVal packageid As Integer, ByVal invoiceid As Integer, ByVal startDate As DateTime, ByVal price As Double)
        Dim myPack As Package
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myPack = PackageDB.getPackage(packageid)
        p_type.Text = PackageTypeDB.getPackType(myPack.Package_Category)
        p_name.Text = myPack.Package_Name & "/" & myPack.Package_Week & "M"
        p_area.Text = myPack.Package_AreaStop
        p_period.Text = myPack.Package_Week & " "
        'p_start.Text = startDate.ToString("dd/MM/yyyy")
        p_start.Text = "·Ñ¹·ÕËÅÑ§Â×¹ÂÑ¹¡ÒÃªÓÃÐà§Ô¹"
        p_price.Text = "- ß" & FormatNumber(price, 2, , , TriState.True) & " -"
        p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(Session("noticeid"))) & invoiceid


    End Sub
    Private Function addInvoice(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As DateTime, ByVal price As Double) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = price
        myInvoice.startDate = startDate
        myInvoice.status = 2

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Dim cust_id As Integer = Session("Pcust_id")
        Session.Remove("Pcust_id")

        Response.Redirect("../lists/business_package_list.aspx?cust_id=" & cust_id)
    End Sub
End Class
