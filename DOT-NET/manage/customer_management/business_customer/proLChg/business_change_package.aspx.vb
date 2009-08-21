Public Class business_change_package
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
    Protected WithEvents ConPt As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents ChgLst As System.Web.UI.WebControls.Label
    Protected WithEvents catName As System.Web.UI.WebControls.Label

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
        Dim noticeid As Integer = Request.QueryString("noticeid")

        showInfo(cust_id)
        showChange(cust_id, noticeid)

        AjaxPro.Utility.RegisterTypeForAjax(GetType(business_change_package))
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

        PackList.NavigateUrl = "../lists/business_package_list.aspx?cust_id=" & cust_id
        personData.NavigateUrl = "../personal_datas/business_personal_data.aspx?custid=" & cust_id
        personData.Target = "_blank"

        webLink.NavigateUrl = userURL & myCust.username & "/index.html"
        webLink.Target = "_blank"
    End Sub
    Private Sub showChange(ByVal cust_id As Integer, ByVal noticeid As Integer)
        Dim myTxt As String
        Dim invoices As invoice
        Dim tmpDate As DateTime
        Dim tmpTxt As String
        Dim tmpTxt2 As String
        Dim tmpPayId As tmppayment
        Dim myNotice As noticeS


        myNotice = NoticeDB.getNoticesInfoD(noticeid)
        catName.Text = Utilities.getCatName(myNotice.category)

        invoices = InvoiceDB.getProlongInvoices(cust_id, noticeid, 3)
        If invoices.id = 0 Then
            Response.Redirect("../lists/business_package_list.aspx?cust_id=" & cust_id)
        End If

        tmpPayId = TmpPaymentDb.getTmpPayInfo2(invoices.id)

        If invoices.paid = 0 Then
            tmpTxt = "Stil7"
        Else
            If invoices.check = 0 Then
                tmpTxt = "Stil7"
            Else
                tmpTxt = "Stil19"
            End If
        End If

        myTxt = myTxt & "<tr bgcolor='#f4f4f4' class='" & tmpTxt & "'>"
        myTxt = myTxt & "<td nowrap><div align='center'>" & DealerDB.getDealerABV(NoticeDB.getDealerCode(invoices.noticeid)) & invoices.id & "</div>"
        myTxt = myTxt & "</td>"
        tmpDate = invoices.invoiceDate
        myTxt = myTxt & "<td nowrap><div align='center'>" & tmpDate.ToString("dd-MM-yyyy") & "</div>"
        myTxt = myTxt & "</td>"
        myTxt = myTxt & "<td nowrap ><div align='center'>after or in term</div>"
        myTxt = myTxt & "</td>"
        myTxt = myTxt & "<td nowrap><div align='center'>" & PackageDB.getPackageName(invoices.packageid) & "/" & PackageDB.getPackageWeek(invoices.packageid) & "M</div>"
        myTxt = myTxt & "</td>"
        If invoices.price = 0 Then
            tmpTxt = "ฟรี"
        Else
            tmpTxt = invoices.price.ToString("#,###.##")
        End If
        myTxt = myTxt & "<td nowrap><div align='center'>" & tmpTxt & "</div></td>"
        If invoices.paid = 0 Then
            tmpTxt = "-"
            tmpTxt2 = ""
        Else
            If invoices.check = 0 Then
                tmpTxt = "<u>Unconfirmed</u>"
            Else
                tmpTxt = "<u>Confirmed</u>"
            End If
            tmpTxt2 = "style='CURSOR: hand' onclick=""doConfirm(" & invoices.id & "," & tmpPayId.Id & ",'" & tmpPayId.FlagProcess & "');"""
        End If
        'doConfirm(invoiceid,tmppayid,doconfirm,cust_id,noticeid)
        myTxt = myTxt & "<td nowrap><div align='center'><font  " & tmpTxt2 & ">" & tmpTxt & "</font></div>"
        myTxt = myTxt & "</td>"
        If invoices.paid = 0 Then
            tmpTxt = "Hasn't been paid"
        Else
            If invoices.check = 0 Then
                tmpTxt = "Waiting for confirmation"
            Else
                tmpTxt = "Waiting for start"
            End If
        End If
        myTxt = myTxt & "<td nowrap>" & tmpTxt
        myTxt = myTxt & "</td>"
        myTxt = myTxt & "<td nowrap><div align='center'>"
        If invoices.check = 0 Then
            tmpTxt = ""
        Else
            tmpTxt = "disabled"
        End If
        myTxt = myTxt & "<input name='ChgTerm' type='button' " & tmpTxt & " onClick='goTerm(" & invoices.id & "," & cust_id & ");' class='standard_font' value='Change Pack'> "
        myTxt = myTxt & "<input name='del' id='del' type='button' onClick='doDel(" & invoices.id & "," & tmpPayId.Id & ");' class='standard_font' value='Delete'>"
        myTxt = myTxt & "</div>"
        myTxt = myTxt & "</td>"
        myTxt = myTxt & "</tr>"



        ChgLst.Text = myTxt
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function checkConfirm(ByVal invoiceid As Integer, ByVal tmppayid As Integer, ByVal doconfirm As String) As Integer
        Dim stop_Date As String, start_Date As String
        Dim invoice As invoice
        Dim prolongSt As Integer
        Dim changeSt As Integer

        TmpPaymentDb.updateTmpPayProcess(tmppayid, doconfirm)
        InvoiceDB.updatePaidInvoice(invoiceid, doconfirm)

        invoice = InvoiceDB.getInvoiceInfo(invoiceid)



        Select Case invoice.status

            Case 1 '----------ถ้า เป็นการลงประกาศใไม่ ต้อง update datestart datestop ของ Notice -------------------
                NoticeDB.setOnlineNotice(invoice.noticeid, PackageDB.getPackageWeek(invoice.packageid), doconfirm, invoice.status, "x", "x")
                InvoiceDB.updateNoticeStart(invoice.id)
            Case 2 '----------ถ้า เป็นการ ต่ออายุ ต้อง update PROLONG_TX expire -------------------
                prolongSt = ProlongDB.getNum42Day(invoice.noticeid, invoice.id)
                If doconfirm = "NO" Then
                    If prolongSt >= 0 Then
                        UpdateProlong.UpdateProlongExpire(invoice.noticeid, invoice.id)
                    Else
                        ProlongDB.setExpire(invoice.noticeid, invoice.id, 1)
                        stop_Date = String_chk.checkDate(ProlongDB.getStopDate(invoice.noticeid, invoice.id))
                        start_Date = String_chk.checkDate(invoice.startDate)
                        NoticeDB.setOnlineNotice(invoice.noticeid, PackageDB.getPackageWeek(invoice.packageid), doconfirm, invoice.status, stop_Date, start_Date)
                    End If
                Else
                    If prolongSt >= 0 Then
                        UpdateProlong.UndoUpdateProlongExpire(invoice.noticeid, invoice.id)
                    Else
                        ProlongDB.setExpire(invoice.noticeid, invoice.id, 0)
                        stop_Date = String_chk.checkDate(ProlongDB.getStopDate(invoice.noticeid, invoice.id))
                        start_Date = String_chk.checkDate(invoice.startDate)
                        NoticeDB.setOnlineNotice(invoice.noticeid, PackageDB.getPackageWeek(invoice.packageid), doconfirm, invoice.status, stop_Date, start_Date)
                    End If
                End If

            Case 3 '----------ถ้า เป็นการ เปลี่ยน  -------------------
                changeSt = ChangeDB.getNum42DayC(invoice.noticeid, invoice.id)
                If doconfirm = "NO" Then
                    If changeSt >= 0 Then
                        UpdateChange.UpdateChangeExpire(invoice.noticeid, invoice.id)
                    Else
                        NoticeDB.setOnlineNotice(invoice.noticeid, 0, doconfirm, invoice.status, "x", "x")
                    End If
                Else
                    If changeSt >= 0 Then
                        UpdateChange.UndoUpdateChangeExpire(invoice.noticeid, invoice.id)
                    Else
                        NoticeDB.setOnlineNotice(invoice.noticeid, 0, doconfirm, invoice.status, "x", "x")
                    End If
                End If
        End Select


        Return tmppayid
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function delPrLg(ByVal invoiceid As Integer, ByVal tmppayid As Integer) As Integer
        Dim invoice As invoice

        invoice = InvoiceDB.getInvoiceInfo(invoiceid)
        DeleteChange(invoice.noticeid, invoiceid, tmppayid)

        Return invoiceid
    End Function
End Class
