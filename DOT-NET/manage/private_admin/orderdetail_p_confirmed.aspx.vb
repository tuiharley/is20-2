Public Class orderdetail_p_confirmed
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents prolongs As System.Web.UI.WebControls.Label
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private invoices As invoice
    'Private invoices As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        'Session("cust_id") = 5
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else
            If Not IsPostBack Then
                invoices = InvoiceDB.getProlongInvoices(Session("cust_id"), Request.QueryString("noticeid"), 2)
                prolongList(invoices)
            End If

            cancel_but.Attributes.Add("onclick", "javascript: return delOK();")
        'End If
    End Sub

    Private Sub prolongList(ByVal prolong As invoice)
        Dim i As Integer
        Dim cat As Integer

        Dim txt As String, confColor As String
        Dim confirm As String
        Dim confirmDate As String



        prolongs.Text = prolongs.Text & "           <tr>"
        prolongs.Text = prolongs.Text & "             <td width=""3"" height=""26""></td>"
        prolongs.Text = prolongs.Text & "             <td width=""58"" height=""26""><div align=""center"">" & DealerDB.getDealerABV(NoticeDB.getDealerCode(prolong.noticeid)) & prolong.id & "</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"
        prolongs.Text = prolongs.Text & "             <td width=""94"" height=""26""><div align=""center"">" & FormatDateTime(prolong.invoiceDate, DateFormat.ShortDate) & "</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"

        '----------------------  Invoice Type ----------------------------
        cat = PackageDB.getCategory(prolong.packageid)
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

        prolongs.Text = prolongs.Text & "             <td width=""65"" height=""26""><div align=""center"">" & txt & PackageDB.getPackageWeek(prolong.packageid) & "m</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"
        prolongs.Text = prolongs.Text & "             <td width=""68"" height=""26""><div align=""center"">" & PackageDB.getPackageWeek(prolong.packageid) & "เดือน</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"
        'prolongs.Text = prolongs.Text & "             <td width=""94"" height=""26""><div align=""center"">" & FormatDateTime(prolong.startDate, DateFormat.ShortDate) & "</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""94"" height=""26""><div align=""center"">ทันทีหลังยืนยัน</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"
        prolongs.Text = prolongs.Text & "             <td width=""86"" height=""26""><div align=""center"">&#3647; " & FormatNumber(prolong.price, 2, , , TriState.True) & "</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"

        '---------------------  confirm ----------------------------

        If prolong.check = 0 Then
            confColor = "Font_red"
            confirm = "ไม่ยืนยัน"
            confirmDate = "---"
        Else
            confColor = "Font_green"
            confirm = "ยืนยัน"
            confirmDate = FormatDateTime(prolong.checkDate, DateFormat.ShortDate)
        End If

        prolongs.Text = prolongs.Text & "             <td width=""90"" height=""26"" class='" & confColor & "'><div align=""center"">" & confirm & "</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""5"" height=""26""></td>"
        prolongs.Text = prolongs.Text & "             <td width=""97"" height=""26""><div align=""center"">" & confirmDate & "</div></td>"
        prolongs.Text = prolongs.Text & "             <td width=""3"" height=""26""></td>"
        prolongs.Text = prolongs.Text & "           </tr>"

        Session("invoiceid") = prolong.id

    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        InvoiceDB.updateCancelInvoice2(Session("invoiceid"))
        NoticeDB.setProlongNotice(InvoiceDB.getNoticeID(Session("invoiceid")), "null", "null")
        TmpPaymentDb.updateCancelTmpPay(Session("invoiceid"))
        ProlongDB.setExpire2(Session("invoiceid"))
        Session("invoiceid") = ""
        Response.Redirect("startpage_example1.aspx?cust_id=" & Session("cust_id"))
    End Sub
End Class
