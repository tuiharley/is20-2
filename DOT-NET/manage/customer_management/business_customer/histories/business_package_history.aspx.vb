Imports System.Globalization
Imports System.Threading
Public Class business_package_history
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents hisList As System.Web.UI.WebControls.Label
    Protected WithEvents personData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents webLink As System.Web.UI.WebControls.HyperLink
    Protected WithEvents PackList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents soList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents jobList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents salesSum As System.Web.UI.WebControls.HyperLink
    Protected WithEvents GTotal As System.Web.UI.WebControls.Label
    Protected WithEvents PTotal As System.Web.UI.WebControls.Label
    Protected WithEvents ConPt As System.Web.UI.WebControls.Label
    Protected WithEvents adType As System.Web.UI.WebControls.Label
    Protected WithEvents noticeCode As System.Web.UI.WebControls.Label

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
        Dim cat As Integer = Request.QueryString("cat")

        'cust_id = 28
        showInfo(cust_id)
        showHis(cust_id, cat)
        adType.Text = Utilities.getCatName(cat)
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

        salesSum.NavigateUrl = "business_sales_history.aspx?cust_id=" & cust_id
        PackList.NavigateUrl = "../lists/business_package_list.aspx?cust_id=" & cust_id
        personData.NavigateUrl = "../personal_datas/business_personal_data.aspx?custid=" & cust_id
        personData.Target = "_blank"

        webLink.NavigateUrl = userURL & myCust.username & "/index.html"
        webLink.Target = "_blank"
    End Sub

    Private Sub showHis(ByVal cust_id As Integer, ByVal cat As Integer)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        Dim myTxt As String
        Dim i As Integer = 1
        Dim myCol As String
        Dim myQ As Queue
        Dim mySales As invoiceBuzSaleHis
        Dim sum As Double = 0

        Dim DateSt As DateTime
        Dim DateEn As DateTime


        myQ = InvoiceDB.getBuzSaleHis(cust_id, cat)


        For Each mySales In myQ


            If i Mod 2 = 0 Then
                myCol = "f4f4f4"
            Else
                myCol = "e6e6e6"
            End If
            myTxt = myTxt & "<tr bgcolor='#" & myCol & "'>"
            myTxt = myTxt & "<td nowrap><div align='center'><span class='standard_font'>" & mySales.Invoice_ID & "</span></div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'><span class='standard_font'>" & mySales.Invoice_DateRC.ToString("dd-MM-yyyy") & "</span></div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><span class='standard_font'>" & mySales.Package_Name & "/" & mySales.Package_Week & "m</span></td>"
            myTxt = myTxt & "<td nowrap><span class='standard_font'>" & FormatNumber(mySales.Package_Price, 2, , , TriState.True)
            If mySales.cancel = 1 Then
                myTxt = myTxt & " (Cancelled) "
            End If
            If mySales.paid <> 1 Then
                myTxt = myTxt & " (Not Paid) "
            End If
            myTxt = myTxt & "</span></td>"
            If mySales.Invoice_Status = "P" Then
                Dim myProlong As ProlongTx
                myProlong = ProlongDB.getProlongTx2(mySales.Invoice_ID)
                DateSt = myProlong.Date_Start
                DateEn = myProlong.Date_Stop
            ElseIf mySales.Invoice_Status = "C" Then
                Dim myChange As ChangeTx
                myChange = ChangeDB.getChangeTx2(mySales.Invoice_ID)
                DateSt = myChange.Date_Start
                DateEn = myChange.Date_Stop
            ElseIf mySales.Invoice_Status = "N" Then
                Dim myNotice As noticeS
                myNotice = NoticeDB.getNoticesInfoD(mySales.Notice_id)
                If i > 1 Then
                    If DateSt < DateAdd(DateInterval.Month, mySales.Package_Week, myNotice.startDate) Then
                        DateEn = DateSt
                    Else
                        DateEn = DateAdd(DateInterval.Month, mySales.Package_Week, myNotice.startDate)
                    End If
                Else
                    DateEn = myNotice.stopDate
                End If
                DateSt = myNotice.startDate
            End If
            'firstDate
            'ConfigurationSettings.AppSettings("firstDate")
            If DateSt.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDate") Then
                myCol = "-"
            Else
                If mySales.cancel = 1 Then
                    myCol = "-"
                Else
                    myCol = DateSt.ToString("dd-MM-yyyy")
                End If
            End If
            myTxt = myTxt & "<td nowrap><div align='center'><span class='standard_font'>" & myCol & "</span></div>"
            myTxt = myTxt & "</td>"

            If DateEn.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDate") Then
                myCol = "-"
            Else
                If mySales.cancel = 1 Then
                    myCol = "-"
                Else
                    myCol = DateEn.ToString("dd-MM-yyyy")
                End If
            End If
            myTxt = myTxt & "<td nowrap><div align='center'><span class='standard_font'>" & myCol & "</span></div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>" & mySales.Invoice_Status & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "</tr>"

            i = i + 1
            If mySales.paid = 1 Then
                sum = sum + mySales.Package_Price
            End If

            myCol = NoticeDB.getNoticeCode(mySales.Notice_id)
        Next

        hisList.Text = myTxt
        PTotal.Text = i - 1
        GTotal.Text = FormatNumber(sum, 2, , , TriState.True)
        noticeCode.Text = myCol
    End Sub

End Class
