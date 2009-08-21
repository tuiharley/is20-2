Public Class private_sales_history
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents carNum As System.Web.UI.WebControls.Label
    Protected WithEvents carSum As System.Web.UI.WebControls.Label
    Protected WithEvents motoNum As System.Web.UI.WebControls.Label
    Protected WithEvents motoSum As System.Web.UI.WebControls.Label
    Protected WithEvents truckNum As System.Web.UI.WebControls.Label
    Protected WithEvents truckSum As System.Web.UI.WebControls.Label
    Protected WithEvents partNum As System.Web.UI.WebControls.Label
    Protected WithEvents partSum As System.Web.UI.WebControls.Label
    Protected WithEvents totalSum As System.Web.UI.WebControls.Label
    Protected WithEvents totalAds As System.Web.UI.WebControls.HyperLink
    Protected WithEvents AdList As System.Web.UI.WebControls.HyperLink

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
        Dim cust_id As Integer


        cust_id = Request.QueryString("cust_id")
        'cust_id = 5
        showInfo(cust_id)
        showSum(cust_id)
    End Sub
    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myCust As A_Customer

        myCust = CustomerDB.getA_customer(cust_id)
        custName.Text = myCust.name & "(" & myCust.username & ")"
        custEmail.Text = myCust.email
        custTel.Text = myCust.phone1
        If myCust.phone2 <> "" Then
            custTel.Text = custTel.Text & "/" & myCust.phone2
        End If

        AdList.NavigateUrl = "private_ad_list.aspx?cust_id=" & cust_id
    End Sub
    Private Sub showSum(ByVal cust_id As Integer)
        Dim myQ As Queue
        Dim mySales As PriSaleHis
        Dim totalAdsNum As Integer = 0
        Dim totalSumAmount As Double = 0

        myQ = CustomerDB.getPriSaleHis(cust_id)
        For Each mySales In myQ
            Select Case mySales.notice_category
                Case 1
                    carNum.Text = mySales.num
                    carSum.Text = FormatNumber(mySales.amount, 2, , , TriState.True)
                Case 2
                    motoNum.Text = mySales.num
                    motoSum.Text = FormatNumber(mySales.amount, 2, , , TriState.True)
                Case 3
                    truckNum.Text = mySales.num
                    truckSum.Text = FormatNumber(mySales.amount, 2, , , TriState.True)
                Case 4
                    partNum.Text = mySales.num
                    partSum.Text = FormatNumber(mySales.amount, 2, , , TriState.True)
            End Select
            totalAdsNum = totalAdsNum + mySales.num
            totalSumAmount = totalSumAmount + mySales.amount

        Next
        If carNum.Text = "" Then
            carNum.Text = "-"
            carSum.Text = "-"
        End If
        If motoNum.Text = "" Then
            motoNum.Text = "-"
            motoSum.Text = "-"
        End If
        If truckNum.Text = "" Then
            truckNum.Text = "-"
            truckSum.Text = "-"
        End If
        If partNum.Text = "" Then
            partNum.Text = "-"
            partSum.Text = "-"
        End If



        totalAds.Text = totalAdsNum & " Ads"
        totalAds.NavigateUrl = "private_ad_history.aspx?cust_id=" & cust_id
        totalSum.Text = FormatNumber(totalSumAmount, 2, , , TriState.True)
    End Sub
End Class
