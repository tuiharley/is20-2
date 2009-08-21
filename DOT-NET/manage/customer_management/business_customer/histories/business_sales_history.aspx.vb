Public Class business_sales_history
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents personData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents webLink As System.Web.UI.WebControls.HyperLink
    Protected WithEvents PackList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents soList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents jobList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents DateSt As System.Web.UI.WebControls.Label
    Protected WithEvents DateEn As System.Web.UI.WebControls.Label
    Protected WithEvents carAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents bikeAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents truckAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents partAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents soAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents jobAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents carStart As System.Web.UI.WebControls.Label
    Protected WithEvents bikeStart As System.Web.UI.WebControls.Label
    Protected WithEvents truckStart As System.Web.UI.WebControls.Label
    Protected WithEvents partStart As System.Web.UI.WebControls.Label
    Protected WithEvents soStart As System.Web.UI.WebControls.Label
    Protected WithEvents jobStart As System.Web.UI.WebControls.Label
    Protected WithEvents carSales As System.Web.UI.WebControls.Label
    Protected WithEvents bikeSales As System.Web.UI.WebControls.Label
    Protected WithEvents truckSales As System.Web.UI.WebControls.Label
    Protected WithEvents partSales As System.Web.UI.WebControls.Label
    Protected WithEvents soSales As System.Web.UI.WebControls.Label
    Protected WithEvents jobSales As System.Web.UI.WebControls.Label
    Protected WithEvents GTotal As System.Web.UI.WebControls.Label
    Protected WithEvents ConPt As System.Web.UI.WebControls.Label

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
        Dim cust_id As Integer = Request.QueryString("cust_id")

        'cust_id = 28
        showInfo(cust_id)
        showSum(cust_id)

    End Sub
    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myCust As A_Customer
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        myCust = CustomerDB.getA_customer(cust_id)
        custName.Text = myCust.name & "(" & myCust.username & ")"
        ConPt.Text = myCust.contactName
        custEmail.Text = myCust.email
        custTel.Text = myCust.phone1
        If myCust.phone2 <> "" Then
            custTel.Text = custTel.Text & "/" & myCust.phone2
        End If

        DateEn.Text = NoticeDB.getNoticelatesDate(cust_id).ToString("dd-MM-yyyy")
        DateSt.Text = myCust.postDate.ToString("dd-mm-yyyy")
        PackList.NavigateUrl = "../lists/business_package_list.aspx?cust_id=" & cust_id
        personData.NavigateUrl = "../personal_datas/business_personal_data.aspx?custid=" & cust_id
        personData.Target = "_blank"

        webLink.NavigateUrl = userURL & myCust.username & "/index.html"
        webLink.Target = "_blank"
    End Sub
    Private Sub showSum(ByVal cust_id As Integer)
        Dim myQ As Queue
        Dim mySales As invoiceBuzSaleDetail
        Dim txt As String

        Dim col As String
        Dim sum As Double = 0


        carAds.Text = "-"
        carStart.Text = "-"
        carSales.Text = "-"

        bikeAds.Text = "-"
        bikeStart.Text = "-"
        bikeSales.Text = "-"

        truckAds.Text = "-"
        truckStart.Text = "-"
        truckSales.Text = "-"

        partAds.Text = "-"
        partStart.Text = "-"
        partSales.Text = "-"

        jobAds.Text = "-"
        jobStart.Text = "-"
        jobSales.Text = "-"

        soAds.Text = "-"
        soStart.Text = "-"
        soSales.Text = "-"


        myQ = InvoiceDB.getBuzSaleDetail(cust_id)
        For Each mySales In myQ

            Select Case mySales.Notice_Category
                Case 1
                    carAds.Text = mySales.ads
                    carAds.NavigateUrl = "business_package_history.aspx?cust_id=" & cust_id & "&cat=1"
                    carStart.Text = mySales.Notice_StopDate.ToString("dd-MM-yyyy")
                    carSales.Text = FormatNumber(mySales.amount, 2, , , TriState.True) & " B"
                Case 2
                    bikeAds.Text = mySales.ads
                    bikeAds.NavigateUrl = "business_package_history.aspx?cust_id=" & cust_id & "&cat=2"
                    bikeStart.Text = mySales.Notice_StopDate.ToString("dd-MM-yyyy")
                    bikeSales.Text = FormatNumber(mySales.amount, 2, , , TriState.True) & " B"
                Case 3
                    truckAds.Text = mySales.ads
                    truckAds.NavigateUrl = "business_package_history.aspx?cust_id=" & cust_id & "&cat=3"
                    truckStart.Text = mySales.Notice_StopDate.ToString("dd-MM-yyyy")
                    truckSales.Text = FormatNumber(mySales.amount, 2, , , TriState.True) & " B"
                Case 4
                    partAds.Text = mySales.ads
                    partAds.NavigateUrl = "business_package_history.aspx?cust_id=" & cust_id & "&cat=4"
                    partStart.Text = mySales.Notice_StopDate.ToString("dd-MM-yyyy")
                    partSales.Text = FormatNumber(mySales.amount, 2, , , TriState.True) & " B"
            End Select

            sum = sum + mySales.amount
        Next



        GTotal.Text = FormatNumber(sum, 2, , , TriState.True) & " B"
    End Sub

End Class
