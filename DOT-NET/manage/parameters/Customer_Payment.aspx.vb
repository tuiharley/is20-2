Imports System.Data
Imports System.Data.OleDb
Public Class payment
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents DeleteBTN As System.Web.UI.WebControls.Button
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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
        'checkConfirm()
        AjaxPro.Utility.RegisterTypeForAjax(GetType(payment))
    End Sub
    
    <AjaxPro.AjaxMethod()> _
    Public Function Customer_Payment(ByVal month As Integer, ByVal year As Integer) As String

        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT TmpPayment.TmpPayment_id,TmpPayment.TmpPayment_InvoiceRefer, Customer.Customer_Username, Customer.Customer_Name,"
        sql = sql & " Customer.Customer_ContactName,Customer.Customer_phone1, TmpPayment.TmpPayment_PayDate,  "
        sql = sql & " TmpPayment.TmpPayment_PayTime, TmpPayment.TmpPayment_FlagProcess, Package.Package_Name,Invoice.Notice_Id, "
        sql = sql & " Invoice.Package_Week, Invoice.Package_Price, Invoice_Status.Invoice_StatusName, Invoice.Notice_StartDate,"
        sql = sql & " Customer.Customer_Type,TmpPayment.TmpPayment_Descript,Bank.Bank_Name,Bank.Bank_Branch"
        sql = sql & " FROM TmpPayment INNER JOIN Customer ON TmpPayment.TmpPayment_MemberId = Customer.Customer_Id "
        sql = sql & "  INNER JOIN Invoice ON TmpPayment.TmpPayment_InvoiceRefer = Invoice.Invoice_ID "
        sql = sql & "  INNER JOIN Package ON Invoice.Notice_PackageId = Package.Package_Id "
        sql = sql & "  INNER JOIN Invoice_Status ON Invoice.Invoice_Status = Invoice_Status.Invoice_StatusID "
        sql = sql & "  INNER JOIN Bank ON Bank.Bank_Id = TmpPayment.TmpPayment_Bank "
        sql = sql & " WHERE (DATEPART(yyyy, TmpPayment.TmpPayment_PayDate) = " & year & ") "
        sql = sql & " AND (DATEPART(m, TmpPayment.TmpPayment_PayDate) = " & month & ") "
        sql = sql & " AND (TmpPayment.Cancel<> 1) "
        'If name.Text <> "" Then
        '    Select Case search_by.SelectedValue
        '        Case 1 : sql = sql & " AND Customer_Username like '%" & name.Text & "%' "
        '        Case 2 : sql = sql & " AND Customer_Name like '%" & name.Text & "%' "
        '        Case 3 : sql = sql & " AND Customer_Name like '%" & name.Text & "%' "
        '    End Select
        'End If
        sql = sql & " ORDER BY TmpPayment_FlagProcess,TmpPayment_PayDate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()


        Dim i As Integer = 1
        Dim color As String
        Dim contact_name As String
        Dim datestart As DateTime
        Dim payDate As DateTime
        Dim bankN As String


        Do While reader.Read

            If i Mod 2 Then
                color = "#FFCC00"
            Else
                color = "#FF9933"
            End If

            If IsDBNull(reader.Item("Customer_ContactName")) Then
                contact_name = "-"
            Else
                contact_name = reader.Item("Customer_ContactName")
            End If

            bankN = reader.Item("Bank_Name") & "-" & reader.Item("Bank_Branch")

            payDate = reader.Item("TmpPayment_PayDate")

            result = result & "<tr bgcolor='" & color & "' height='30'><td><center><input type='checkbox' name='chk" & reader.Item("TmpPayment_InvoiceRefer") & "'></center></td>"
            If Not IsDBNull(reader.Item("Notice_StartDate")) Then
                datestart = reader.Item("Notice_StartDate")

                result = result & "<td onmouseover=""doTooltip(event,0,2,'" & reader.Item("Notice_Id") & "','" & reader.Item("Package_Name") & "','" & reader.Item("Package_Week") & "','" & reader.Item("Package_Price") & "','" & payDate.ToString("dd/MM/yyyy") & "','" & reader.Item("Invoice_StatusName") & "','" & datestart.ToString("dd/MM/yyyy") & "')"" onmouseout='hideTip()'>" & DealerDB.getDealerABV(reader.Item("Customer_Type")) & reader.Item("TmpPayment_InvoiceRefer") & "</td>"
            Else

                result = result & "<td onmouseover=""doTooltip(event,0,2,'" & reader.Item("Notice_Id") & "','" & reader.Item("Package_Name") & "','" & reader.Item("Package_Week") & "','" & reader.Item("Package_Price") & "','" & payDate.ToString("dd/MM/yyyy") & "','" & reader.Item("Invoice_StatusName") & "','-')"" onmouseout='hideTip()'>" & DealerDB.getDealerABV(reader.Item("Customer_Type")) & reader.Item("TmpPayment_InvoiceRefer") & "</td>"
            End If

            '"<td onmouseover=doTooltip(event,0,3,'" & bankN & "','" & reader.Item("Package_Price") & "','" & String_chk.checkNullDBstr(reader.Item("TmpPayment_Descript")) & "','','','','') onmouseout='hideTip()'>" & payDate.ToString("dd/MM/yyyy") & " " & reader.Item("TmpPayment_PayTime") & "</td>" & _

            result = result & "<td onmouseover=""doTooltip(event,0,1,'" & reader.Item("Customer_Name") & "','" & reader.Item("Customer_Username") & "','" & contact_name & "','" & reader.Item("Customer_phone1") & "','','','')"" onmouseout='hideTip()'>" & reader.Item("Customer_Username") & "</td>" & _
            "<td>" & reader.Item("Customer_Name") & "</td>" & _
            "<td onmouseover=""doTooltip(event,0,3,'" & bankN & "','" & reader.Item("Package_Price") & "','" & String_chk.checkNullDBstr(reader.Item("TmpPayment_Descript")) & "','','','','')"" onmouseout='hideTip()'>" & payDate.ToString("dd/MM/yyyy") & " " & reader.Item("TmpPayment_PayTime") & "</td>" & _
            "<td>" & reader.Item("Package_Name") & " </td>" & _
            "<td>" & reader.Item("Package_Price") & "</td>" & _
            "<td>" & reader.Item("Invoice_StatusName") & "</td>" & _
            "<td onclick=""doConfirm(" & reader.Item("TmpPayment_InvoiceRefer") & "," & reader.Item("TmpPayment_id") & ",'" & reader.Item("TmpPayment_FlagProcess") & "')"" style='CURSOR: hand'>" & _
            "<u><font color='green'><div id='Tpay" & reader.Item("TmpPayment_id") & "'>" & getStatus(reader.Item("TmpPayment_FlagProcess")) & "</div></font></u>" & _
            "</td>" & _
            "</tr>"
            i = i + 1
        Loop

        mycommand.Dispose()
        reader.Close()

        myconn.Close()

        If i = 1 Then
            result = "<tr><td colspan='9'>ไม่พบรายการ</td></tr>"
        End If
        Return result
    End Function
    Private Function showHeader() As String
        Dim result As String

        result = "<tr BgColor='#aaEEaa'><td >"
        result = result & "<div align='center'>&nbsp;</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>รหัสประกาศ</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>Username</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>Name/Company</div>"
        result = result & "</td>"
        result = result & "<td>"
        result = result & "<div align='center'>Paid Date</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>Package/Ad</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>Price</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>Comment</div>"
        result = result & "</td>"
        result = result & "<td >"
        result = result & "<div align='center'>Status</div>"
        result = result & "</td></tr>"

        Return result
    End Function
    Private Function getStatus(ByVal flag_process As String) As String
        Dim ans As String
        If flag_process = "NO" Then
            ans = "Confirm"
        Else
            ans = "Unconfirm"
        End If
        Return ans
    End Function

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
    Public Function showMonth() As String
        Dim sql As String
        Dim cMonth As Integer
        Dim sel As String = ""

        sql = "<select name='month' id='month'>"

        For cMonth = 1 To 12
            If cMonth = Month(Now) Then
                sel = "selected"
            Else
                sel = ""
            End If
            sql = sql & " <option value='" & cMonth & "' " & sel & ">" & cMonth & "</option>"
        Next

        sql = sql & "</select>"

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showYear() As String
        Dim sql As String
        Dim cYear As Integer
        Dim sel As String

        sql = "<select name='year' id='year'>"

        For cYear = 2006 To Year(Now)
            If cYear = Year(Now) Then
                sel = "selected"
            Else
                sel = ""
            End If
            sql = sql & " <option value='" & cYear - 543 & "' " & sel & ">" & cYear & "</option>" 'HP
            'sql = sql & " <option value='" & cYear & "' " & sel & ">" & cYear & "</option>"  ' IBM
        Next

        sql = sql & "</select>"

        Return sql
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function getList(ByVal month As Integer, ByVal year As Integer) As String
        Dim sql As String
        sql = "<table width='100%'>"
        sql = sql & showHeader()
        sql = sql & Customer_Payment(month, year)
        sql = sql & "</table>"
        Return sql
    End Function
End Class
