Imports System.Globalization
Imports System.Threading
Public Class payment1_notify1_selection
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents invoiceList As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents payment_check As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents payment_num As System.Web.UI.HtmlControls.HtmlInputHidden
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public invoices As Array
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else
            invoices = InvoiceDB.getInvoices(Session("cust_id"))
            showInvoice(invoices)
        End If

    End Sub

    Private Sub showInvoice(ByRef invoice As Array)
        Dim i As Integer
        Dim col As String
        Dim myDate As Date
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        For i = 1 To invoice.Length - 1

            If i = 1 Then
                invoiceList.Text = invoiceList.Text & "           <tr>"
                invoiceList.Text = invoiceList.Text & "             <td width=""3"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""29"" height=""26""><div align=""center"">"
                invoiceList.Text = invoiceList.Text & "               <input name=""payment_list"" type=""checkbox"" class=""Font_black"" value='" & invoice(i).id & "' onClick='changeOne(this.checked);'>"
                invoiceList.Text = invoiceList.Text & "             </div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""5"" rowspan='" & invoice.Length - 1 & "'></td>"

                '--------------------รหัสประกาศ-------------------------


                invoiceList.Text = invoiceList.Text & "             <td width=""68"" height=""26""><div align=""center"">" & DealerDB.getDealerABV(NoticeDB.getDealerCode(invoice(i).noticeid)) & invoice(i).id & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""5"" rowspan='" & invoice.Length - 1 & "'></td>"
                myDate = invoice(i).invoiceDate

                invoiceList.Text = invoiceList.Text & "             <td width=""110"" height=""26""><div align=""center"">" & myDate.ToString("dd/MM/yyyy") & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""5"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""190"" height=""26""><div align=""center"">" & PackageDB.getPackageName(invoice(i).packageid) & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""5"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""80"" height=""26""><div align=""center"">" & invoice(i).week & " เดือน </div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""5"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""111"" height=""26""><div align=""center"">&#3647; " & FormatNumber(invoice(i).price, 2, , , TriState.False) & " </div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""5"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""69"" height=""26""><div align=""center"">" & InvoiceStatusDB.getStatusName(invoice(i).status) & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""3"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "           </tr>"
            Else
                invoiceList.Text = invoiceList.Text & "           <tr>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">"
                invoiceList.Text = invoiceList.Text & "                 <input name=""payment_list"" type=""checkbox"" class=""Font_black"" value='" & invoice(i).id & "' onClick='changeOne(this.checked);' >"
                invoiceList.Text = invoiceList.Text & "             </div></td>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">" & DealerDB.getDealerABV(NoticeDB.getDealerCode(invoice(i).noticeid)) & invoice(i).id & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">" & FormatDateTime(invoice(i).startDate, DateFormat.ShortDate) & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">" & PackageDB.getPackageName(invoice(i).packageid) & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">" & invoice(i).week & " เดือน </div></td>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">&#3647;  " & FormatNumber(invoice(i).price, 2, , , TriState.False) & " </div></td>"
                invoiceList.Text = invoiceList.Text & "             <td height=""26""><div align=""center"">" & InvoiceStatusDB.getStatusName(invoice(i).status) & "</div></td>"
                invoiceList.Text = invoiceList.Text & "             </tr>"
            End If



        Next

    End Sub
    Private Sub savePaymentList()
        Dim tmp_p As Array

        tmp_p = Split(Request.Form("payment_list"), ",")
        Session.Add("payment_list", tmp_p)

    End Sub
    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        savePaymentList()
        Response.Redirect("payment1_notify2_details.aspx")
    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("startpage_example1.aspx")
    End Sub
End Class
