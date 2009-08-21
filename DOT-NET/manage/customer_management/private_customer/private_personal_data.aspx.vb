Public Class private_personal_data
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custUser As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents phone1 As System.Web.UI.WebControls.Label
    Protected WithEvents phone2 As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents custAddr As System.Web.UI.WebControls.Label
    Protected WithEvents prov As System.Web.UI.WebControls.Label
    Protected WithEvents city As System.Web.UI.WebControls.Label
    Protected WithEvents regDate As System.Web.UI.WebControls.Label
    Protected WithEvents amount As System.Web.UI.WebControls.HyperLink

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

        cust_id = Request.QueryString("custid")
        'cust_id = 28
        showInfo(cust_id)
    End Sub

    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myQ As Queue
        Dim myCust As A_Customer

        myQ = CustomerDB.getCustomers(cust_id, 99)
        For Each myCust In myQ
            custName.Text = myCust.name
            custUser.Text = myCust.username
            custEmail.Text = myCust.email
            phone1.Text = myCust.phone1
            phone2.Text = myCust.phone2
            fax.Text = myCust.fax
            custAddr.Text = myCust.address
            prov.Text = ProvinceDB.getProvinceName(myCust.province)
            city.Text = DistrictDB.getDistrictName(myCust.district)
            regDate.Text = myCust.postDate.ToString("dd-MM-yyyy")
            amount.Text = FormatNumber(myCust.amount, , , , TriState.True) & " Baht"
            amount.NavigateUrl = "private_sales_history.aspx?cust_id=" & cust_id
            amount.Target = "_parent"
        Next
       
    End Sub
End Class
