Public Class private_ad_history
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents hisList As System.Web.UI.WebControls.Label
    Protected WithEvents totalAds As System.Web.UI.WebControls.Label
    Protected WithEvents totalAmount As System.Web.UI.WebControls.Label
    Protected WithEvents AdList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents salesSum As System.Web.UI.WebControls.HyperLink
    Protected WithEvents adNo As System.Web.UI.WebControls.Label

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
        salesSum.NavigateUrl = "private_sales_history.aspx?cust_id=" & cust_id

    End Sub
    Private Sub showSum(ByVal cust_id As Integer)
        Dim myQ As Queue
        Dim mySales As invoiceSaleDetail
        Dim txt As String
        Dim i As Integer = 1
        Dim col As String
        Dim sum As Double = 0


        myQ = InvoiceDB.getPriSaleDetail(cust_id)
        For Each mySales In myQ

            If i Mod 2 = 0 Then
                col = "f4f4f4"
            Else
                col = "e6e6e6"
            End If
            txt = txt & "<tr bgcolor='#" & col & "'>"
            txt = txt & "<td nowrap><div align='center'>" & mySales.invoice_id & " (" & NoticeDB.getNoticeCode(mySales.notice_id) & ")</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & mySales.invoice_daterc.ToString("dd-MM-yyyy") & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap>" & mySales.pName & "/" & mySales.pMonth & "M</td>"
            txt = txt & "<td nowrap>" & mySales.package_price & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & mySales.date_start.ToString("dd-MM-yyyy") & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & mySales.date_stop.ToString("dd-MM-yyyy") & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & mySales.T & "</div>"
            txt = txt & "</td>"
            txt = txt & "</tr>"
            i = i + 1
            sum = sum + mySales.package_price

        Next


        hisList.Text = txt
        totalAds.Text = i - 1
        totalAmount.Text = FormatNumber(sum, 2, , , TriState.True)
    End Sub
End Class
