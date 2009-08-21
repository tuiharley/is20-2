Imports System.Globalization
Imports System.Threading
Public Class business_change3_conclusion
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents p_type As System.Web.UI.WebControls.Label
    Protected WithEvents p_name As System.Web.UI.WebControls.Label
    Protected WithEvents p_area As System.Web.UI.WebControls.Label
    Protected WithEvents p_period As System.Web.UI.WebControls.Label
    Protected WithEvents p_start As System.Web.UI.WebControls.Label
    Protected WithEvents p_price As System.Web.UI.WebControls.Label
    Protected WithEvents p_code As System.Web.UI.WebControls.Label
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
        Dim newChange As ChangeTx
        Dim myChange As ChangeTx
        Dim packageid As Integer
        Dim startDate As DateTime
        Dim startDateTxt As String
        Dim price As Double
        Dim price2 As Double
        Dim price3 As Double
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'Session("noticeid") = 24
        'Session("newPack") = 11
        'Session("startDate") = "3"

        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../../public/login/login.aspx")
        'Else
        If Not IsPostBack Then



            'If Session("noticestatus") <> "Offline" Then ' --------------  Notice online แล้ว

            startDate = getStartDate(Session("noticeid"), Session("startDate"))

            If Session("startDate") = "old" Then
                price = PackageDB.getPackagePrice(Session("newPack"))
            Else
                price = PackageDB.getPackagePrice(Session("newPack"))
                price3 = PackageDB.getPackageDiscount(Session("noticeid"), startDate)
                price2 = Math.Floor(price + price3)

                If price2 <= 0 Then
                    price2 = 0
                End If
            End If

            '-------------  แก้ Invoice เดิม ---------------------------
            updInvoice(Session("noticeid"), Session("newPack"), startDate, price2)
            myChange = ChangeDB.getChangeTx2(Session("invoiceid"))

            newChange.PackageID = Session("newPack")
            newChange.Date_Start = startDate
            newChange.Date_Stop = getStopDate(startDate, Session("newPack"))

            setNewChg(newChange)

            ' ----------   แสดงหน้าจอ สรุปผลการเปลี่ยน package  ------------------------
            showpackage(Session("newPack"), invoiceid, startDate, price2, price, price3, Session("noticeid"))

         
        End If
        'End If
    End Sub
    Private Function getStartDate(ByVal noticeid As Integer, ByVal selectDate As String) As DateTime
        Dim myDate As DateTime

        If selectDate = "old" Then
            myDate = NoticeDB.getNoticeStopDate(noticeid)
            myDate = DateAdd(DateInterval.Day, 1, myDate)
        Else
            myDate = DB.getToday()
            myDate = DateAdd(DateInterval.Day, Int(selectDate) + 1, myDate)
        End If


        Return myDate
    End Function
    Private Function getStopDate(ByVal startDate As Date, ByVal package_id As Integer) As Date
        Dim temp_date As Date

        temp_date = DateAdd(DateInterval.Month, PackageDB.getPackageWeek(package_id), startDate)

        Return temp_date
    End Function
    Private Sub showpackage(ByVal packageid As Integer, ByVal invoiceid As Integer, ByVal startDate As DateTime, ByVal price As Double, ByVal fullprice As Double, ByVal remamount As Double, ByVal noticeid As Integer)
        Dim myPack As Package
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myPack = PackageDB.getPackage(packageid)
        p_type.Text = PackageTypeDB.getPackType(myPack.Package_Category)
        p_name.Text = myPack.Package_Name & "/" & myPack.Package_Week & "M"
        p_area.Text = myPack.Package_AreaStop
        p_period.Text = myPack.Package_Week & " "
        p_start.Text = startDate.ToString("dd/MM/yyyy")
        p_price.Text = "- ฿" & FormatNumber(price, 2, , , TriState.True) & " --  (" & fullprice & " + " & FormatNumber(remamount, 4, , , TriState.False) & ")"
        p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(noticeid)) & invoiceid


    End Sub
    Private Sub showpackageNew(ByVal packageid As Integer, ByVal invoiceid As Integer, ByVal startDate As String, ByVal noticeid As Integer)
        Dim myPack As Package
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        myPack = PackageDB.getPackage(packageid)
        p_type.Text = PackageTypeDB.getPackType(myPack.Package_Category)
        p_name.Text = myPack.Package_Name & "/" & myPack.Package_Week & "M"
        p_area.Text = myPack.Package_AreaStop
        p_period.Text = myPack.Package_Week & " "
        p_start.Text = startDate
        p_price.Text = "- ฿" & FormatNumber(PackageDB.getPackagePrice(packageid), 2, , , TriState.True) & " -"
        p_code.Text = DealerDB.getDealerABV(NoticeDB.getDealerCode(noticeid)) & invoiceid


    End Sub
    Private Sub updInvoice(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As DateTime, ByVal price As Double)
        Dim myInvoice As invoice

        myInvoice.id = noticeid
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = price
        myInvoice.startDate = startDate

        InvoiceDB.updInvChg(myInvoice)

    End Sub
    Private Function addInvoiceNew(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As String, ByVal status As Integer) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = PackageDB.getPackagePrice(packageid)
        'myInvoice.startDate = ConfigurationSettings.AppSettings("firstDate")
        myInvoice.startDateTxt = startDate
        myInvoice.status = status

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function
    Private Function addInvoiceChange(ByVal noticeid As Integer, ByVal packageid As Integer, ByVal startDate As String, ByVal stDate As DateTime, ByVal status As Integer) As Integer
        Dim myInvoice As invoice
        Dim ans As Integer

        myInvoice.id = noticeid
        myInvoice.Notice_DetailID = 0
        myInvoice.packageid = packageid
        myInvoice.week = PackageDB.getPackageWeek(packageid)
        myInvoice.price = PackageDB.getPackagePrice(packageid)
        myInvoice.startDate = stDate
        myInvoice.startDateTxt = startDate
        myInvoice.status = status

        ans = InvoiceDB.insertInvoice2(myInvoice)

        Return ans
    End Function
    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Dim noticeid As Integer = Session("noticeid")
        Dim cust_id As Integer = Session("cust_id")

        Session("noticeid") = Nothing
        Session("cust_id") = Nothing

        Response.Redirect("business_change_package.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid)
    End Sub
End Class
