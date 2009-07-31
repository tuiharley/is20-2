Public Class EmergencyCase
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents txtReserve As System.Web.UI.WebControls.TextBox
    Protected WithEvents rdoYes As System.Web.UI.WebControls.RadioButton
    Protected WithEvents rdoNo As System.Web.UI.WebControls.RadioButton
    Protected WithEvents dgEmergency As System.Web.UI.WebControls.DataGrid
    Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDesc As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPos As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlPerson As System.Web.UI.WebControls.Panel
    Protected WithEvents lblCompany As System.Web.UI.WebControls.Label
    Protected WithEvents Img1 As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtMail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUser As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents frmEmergency As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents pnlTest As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents txtTest As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents MailContent As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public ServerAction, Msg, URLLink, DataSend As String
    Public CompanyID As String
    Private DB As New DBUTIL

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        CountVisitPage(26, "pEmergencyCase", Request.UserHostAddress)
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            CompanyID = Request.QueryString("CompanyID") & ""
            If CompanyID = "" Then CompanyID = Session("COMPANY_ID") & ""
        Else
            ServerAction = Request.Form("ServerAction") & ""
            CompanyID = Request.Form("CompanyID") & ""
        End If

        Select Case ServerAction
            Case "SEND"
                SendData()
            Case Else
                LoadData()
        End Select
        InitControl()
    End Sub

    Private Sub SendData()
        Try
            If gsReceiverEMail <> "" Then
                DataSend = Request.Form("DataSend") & ""
                Msg = SendMail(txtMail.Text, gsReceiverEMail, "ข้อมูลสำหรับกรณีฉุกเฉิน", DataSend, , True)
                If Msg = "" Then
                    URLLink = "Thankyou.aspx"
                Else
                    URLLink = "Sorry.aspx"
                End If
                Msg = "เสร็จสิ้นการส่งข้อมูล"
            End If
        Catch ex As Exception
            URLLink = "Sorry.aspx"
        End Try

    End Sub

    Public Sub LoadData()
        Dim DR As DataRow
        Try
            DR = GetDR(LoadCompanyData(CompanyID))
            If Not IsNothing(DR) Then
                lblCompany.Text = "(" & DR("SHIP_TO") & ") " & DR("CUST_NAME") & ""
            End If
            DR = GetDR(LoadEmergency(CompanyID))
            If Not IsNothing(DR) Then
                txtReserve.Text = DR("GAS_REPLACE") & ""
                rdoYes.Checked = (DR("REPLACE") & "" = "Y")
                rdoNo.Checked = (DR("REPLACE") & "" = "N")
                txtTime.Text = DR("TIME_READY") & ""
                txtDesc.Text = DR("DESCRIPTION") & ""
                'txtTitle.Text = DR("TITLE") & ""
                'txtFName.Text = DR("FNAME") & ""
                'txtLName.Text = DR("LNAME") & ""
                'txtPos.Text = DR("POSITION") & ""
                'txtTel.Text = DR("TEL") & ""
                txtDate.Text = AppFormatDate(Today)

            Else
                'Msg = "ไม่พบข้อมูลในกรณีฉุกเฉินของบริษัทนี้"
            End If
            txtUser.Text = Session("USER_DESC")
            txtMail.Text = Session("EMAIL")
            txtPos.Text = Session("POSITION")
            txtTel.Text = Session("TEL")
            txtMobile.Text = Session("MOBILE")
            txtDate.Text = AppFormatDate(Today)

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "LOAD")
        End Try
    End Sub


    Private Sub InitControl()
        'LockControls(pnlData.Controls)
        'LockControls(pnlPerson.Controls)
    End Sub



End Class
