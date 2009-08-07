Imports System.Globalization
Imports System.Threading
Public Class payment2_listD
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents tmpPay As System.Web.UI.WebControls.Label

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
        Dim payment_list As Array
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        'Session("cust_id") = 23
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            payment_list = TmpPaymentDb.getTmpPays(Session("cust_id"))
            showTmpPay(payment_list)
        End If
    End Sub
    Private Sub showTmpPay(ByRef tmpPayment_list As Array)
        Dim i As Integer
        Dim a As tmppayment
        Dim tableCol As String



        For i = 1 To tmpPayment_list.Length - 1


            tmpPay.Text = tmpPay.Text & "           <tr>"
            If i Mod 2 = 0 Then
                tableCol = "pay_conf_g.gif"
            Else
                tableCol = "pay_conf_b.gif"
            End If
            tmpPay.Text = tmpPay.Text & "             <td><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../../images/table/" & tableCol & """ class=""Font_black_LH_15px"">"
            tmpPay.Text = tmpPay.Text & "           <tr>"
            tmpPay.Text = tmpPay.Text & "             <td height=""5"" colspan=""13""></td>"
            tmpPay.Text = tmpPay.Text & "             </tr>"
            tmpPay.Text = tmpPay.Text & "           <tr>"
            tmpPay.Text = tmpPay.Text & "             <td width=""3""></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""54""><div align=""center"">" & DealerDB.getDealerABV(tmpPayment_list(i).IsDealer) & tmpPayment_list(i).InvoiceRefer & "</div></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""5""></td>"
            Dim myDate As Date
            myDate = tmpPayment_list(i).PayDate

            tmpPay.Text = tmpPay.Text & "             <td width=""82""><div align=""center"">" & myDate.ToString("dd/MM/yyyy") & "</div></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""5""></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""53""><div align=""center"">" & tmpPayment_list(i).PayTime & "</div></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""5""></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""83""><div align=""center"">&#3647; " & FormatNumber(tmpPayment_list(i).Price, 2) & "</div></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""5""></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""71""><div align=""center"">" & BankDB.getBankName(tmpPayment_list(i).Bank) & "</div></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""5""></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""319""><div align=""center"">" & tmpPayment_list(i).Descript & "</div></td>"
            tmpPay.Text = tmpPay.Text & "             <td width=""3""></td>"
            tmpPay.Text = tmpPay.Text & "           </tr>"
            tmpPay.Text = tmpPay.Text & "           <tr>"
            tmpPay.Text = tmpPay.Text & "             <td height=""5"" colspan=""13""></td>"
            tmpPay.Text = tmpPay.Text & "             </tr>"
            tmpPay.Text = tmpPay.Text & "           <tr>"
            tmpPay.Text = tmpPay.Text & "             <td height=""1"" colspan=""13""><img src=""../../../images/lines/w.gif"" width=""693"" height=""1""></td>"
            tmpPay.Text = tmpPay.Text & "             </tr>"
            tmpPay.Text = tmpPay.Text & "         </table></td>"
            tmpPay.Text = tmpPay.Text & "           </tr>"

        Next

    End Sub

End Class
