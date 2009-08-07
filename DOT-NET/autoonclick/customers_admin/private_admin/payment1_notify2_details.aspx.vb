Imports System.Globalization
Imports System.Threading
Public Class payment1_notify2_details
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents banks As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents bank As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents invoiceList As System.Web.UI.WebControls.Label
    Protected WithEvents prev_but As System.Web.UI.WebControls.Button
    Protected WithEvents del_but As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents pay_but As System.Web.UI.WebControls.Button
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents price As System.Web.UI.WebControls.Label
    Protected WithEvents showCal As System.Web.UI.WebControls.Button
    Protected WithEvents Calendar1 As System.Web.UI.WebControls.Calendar
    Protected WithEvents date_paid As System.Web.UI.WebControls.TextBox
    Protected WithEvents hours As System.Web.UI.WebControls.DropDownList
    Protected WithEvents minutes As System.Web.UI.WebControls.DropDownList
    Protected WithEvents remark As System.Web.UI.WebControls.TextBox
    Protected WithEvents hourValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents minValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents dateRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents iPrice As System.Web.UI.WebControls.Label
    Protected WithEvents bPrice As System.Web.UI.WebControls.Label

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
        Dim i As Integer
        Dim pay_invoices As Array
        Dim size As Integer = 0
        Dim tmp_str As String = ""
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                For i = 0 To Session("payment_list").Length - 1
                    If i = 0 Then
                        tmp_str = Session("payment_list").GetValue(i)
                    Else
                        tmp_str = tmp_str & "," & Session("payment_list").GetValue(i)
                    End If

                Next

                size = Session("payment_list").Length
                pay_invoices = InvoiceDB.getInvoicesSelected(tmp_str, size)
                showInvoice(pay_invoices)

            End If
        End If




    End Sub

    Private Sub showInvoice(ByRef invoice As Array)
        Dim i As Integer
        Dim col As String
        Dim total As Double
        Dim myDate As Date
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        For i = 1 To invoice.Length - 1

            If i = 1 Then
                invoiceList.Text = invoiceList.Text & "           <tr>"
                invoiceList.Text = invoiceList.Text & "             <td width=""3"" rowspan='" & invoice.Length - 1 & "'></td>"
                invoiceList.Text = invoiceList.Text & "             <td width=""29"" height=""26""><div align=""center"">"
                invoiceList.Text = invoiceList.Text & "               <input name=""payment_list"" type=""checkbox"" class=""Font_black"" value='" & invoice(i).id & "' onClick='changeOne(this.checked);' >"
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


            total = total + invoice(i).price
        Next
        setPrice(total)

    End Sub
    Private Sub setPrice(ByVal priceTotal As Double)

        iPrice.CssClass = "Font_blue_bold"
        iPrice.Text = " -- ฿ "
        price.CssClass = "Font_blue_bold"
        price.Text = FormatNumber(priceTotal, 2)
        bPrice.CssClass = "Font_blue_bold"
        bPrice.Text = " -- "

    End Sub
    Private Sub prev_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles prev_but.Click
        Response.Redirect("payment1_notify1_selection.aspx")
    End Sub
    Private Sub del_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles del_but.Click
        Dim tmp_str2 As String
        Dim tmp_str As String = ""
        Dim i As Integer, j As Integer, size As Integer
        Dim pay_invoices2 As Array
        Dim pay_invoices As Array

        tmp_str2 = Request.Form("payment_list")
        If tmp_str2 <> "" Then

            pay_invoices2 = Split(tmp_str2, ",")

            For i = 0 To Session("payment_list").Length - 1
                For j = 0 To pay_invoices2.Length - 1
                    'Response.Write(Session("payment_list").GetValue(i) & "--" & pay_invoices2.GetValue(j) & "<BR>")
                    If Session("payment_list").GetValue(i) = pay_invoices2.GetValue(j) Then
                        Session("payment_list").SetValue("0", i)
                    End If
                Next
            Next
            For i = 0 To Session("payment_list").Length - 1
                If Session("payment_list").GetValue(i) <> "0" Then
                    tmp_str = tmp_str & "," & Session("payment_list").GetValue(i)
                    size = size + 1
                End If
            Next
            If tmp_str.Length = 0 Then
                Response.Redirect("payment1_notify1_selection.aspx")
            End If
            tmp_str = Right(tmp_str, tmp_str.Length - 1)
            invoiceList.Text = ""
        Else
            tmp_str = "0"
            size = 0
        End If

        pay_invoices = InvoiceDB.getInvoicesSelected(tmp_str, size)
        showInvoice(pay_invoices)
    End Sub

    Private Sub showCal_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles showCal.Click
        If Calendar1.Visible = True Then
            Calendar1.Visible = False
        Else
            Calendar1.Visible = True
        End If
    End Sub
    Private Sub Calendar1_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Calendar1.SelectionChanged
        date_paid.Text = Calendar1.SelectedDate
        Calendar1.Visible = False
    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("payment1_notify1_selection.aspx")
    End Sub
    Private Sub pay_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles pay_but.Click
        Dim timepay As String
        Dim i As Integer, j As Integer
        Dim paidDate As DateTime

        timepay = hours.SelectedValue & ":" & minutes.SelectedValue
        paidDate = date_paid.Text
        For i = 0 To Session("payment_list").Length - 1
            If Session("payment_list").GetValue(i) <> "0" Then
                TmpPaymentDb.insertTmpPayment(0, CInt(Session("payment_list").GetValue(i)), CInt(Session("cust_id")), paidDate, timepay, CInt(Request.Form("bank")), InvoiceDB.getPrice(CInt(Session("payment_list").GetValue(i))), remark.Text)
                InvoiceDB.updatePaidInvoice(CInt(Session("payment_list").GetValue(i)))
            End If
        Next

        'Response.Redirect("payment2_list.aspx?from=paid")
        Response.Redirect("startpage_example1.aspx")

    End Sub
End Class