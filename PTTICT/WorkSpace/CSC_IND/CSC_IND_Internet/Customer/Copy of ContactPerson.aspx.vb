Imports System.Net
Imports System.IO
Imports System.Web.Mail
Imports System.Web.SessionState


Public Class ContactPerson
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents dgEmergency As System.Web.UI.WebControls.DataGrid
    Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPos As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlPerson As System.Web.UI.WebControls.Panel
    Protected WithEvents lblCompany As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Img1 As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents lstBLTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtBLName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBLSurName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBLPosition As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBLTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBLFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBLMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBLEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents dgFactory As System.Web.UI.WebControls.DataGrid
    Protected WithEvents dgBilling As System.Web.UI.WebControls.DataGrid
    Protected WithEvents dgContract As System.Web.UI.WebControls.DataGrid
    Protected WithEvents lstCTTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtCTName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTSurName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTPosition As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstFTTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtFTName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFTSurName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFTPosition As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFTTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFTFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFTMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFTEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlBilling As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlContract As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlFactory As System.Web.UI.WebControls.Panel
    Protected WithEvents txtMail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUser As System.Web.UI.WebControls.TextBox
    Protected WithEvents frmContact As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents divContact As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents MailContent As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents dgContact As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlContact As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlEmergency As System.Web.UI.WebControls.Panel
    Protected WithEvents lstCNTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtCNName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCNSurName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCNTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCNFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCNMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCNEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMPosition As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCNPosition As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMSurName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents dgSafety As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlSafety As System.Web.UI.WebControls.Panel
    Protected WithEvents lstSTTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lstEMTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtSTName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSTSurName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSTPosition As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSTTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSTFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSTMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSTEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstTitle1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtName1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSurname1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPos1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTel1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFax1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMobile1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEMail1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents RadioButtonList1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents DropDownList1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dgCDay As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlCDay As System.Web.UI.WebControls.Panel

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public ServerAction, URLLink As String
    Public CompanyID As String
    Private DB As New DBUTIL
    Public Msg As String
    Public DataSend

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        CountVisitPage(24, "pContactPerson", Request.UserHostAddress)
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

        'Select Case ServerAction
        '    Case "LOAD"
        '        LoadData()
        '    Case "SAVE"
        '        SaveData()
        'End Select
        InitControl()
    End Sub

    Private Function HttpContent(ByVal url As String) As String
        Try
            Dim objRequest As WebRequest = System.Net.HttpWebRequest.Create(url)
            Dim sr As New StreamReader(objRequest.GetResponse().GetResponseStream())
            Dim result As String = sr.ReadToEnd()
            sr.Close()
            Return result
        Catch ex As Exception
            Return ex.ToString
        End Try

    End Function

    Private Sub SendData()
        Dim HG As HtmlGenericControl
        Try
            If gsReceiverEMail <> "" Then
                DataSend = Request.Form("DataSend") & ""
                Msg = SendMail(txtMail.Text, gsReceiverEMail, "แจ้งเปลี่ยนแปลงข้อมูลผู้ติดต่อประสานงาน", DataSend, , True)
                If Msg = "" Then
                    URLLink = "Thankyou.aspx"
                Else
                    URLLink = "Sorry.aspx"
                End If
            End If
        Catch ex As Exception
            URLLink = "Sorry.aspx"
        End Try

    End Sub

    Private Sub LoadGridData()

        Try
            Session("BillingDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_BILLING='Y') "))
            Session("ContractDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_CONTRACT='Y') "))
            Session("FactoryDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_FACTORY='Y') "))
            Session("ContactDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_CONTACT='Y') "))
            Session("EmergencyDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_EMERGENCY='Y') "))
            Session("SafetyDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_SAFETY='Y') "))
            Session("CDayDT") = GetDT(LoadPersonalData(CompanyID, " (DISABLED IS NULL) AND (FLAG_CDAY='Y') "))
            BindDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดระหว่างการอ่านข้อมูลในตาราง")
        End Try
    End Sub

    Private Sub BindDG()
        Dim DT1 As DataTable
        Dim DT2 As DataTable
        Dim DT3 As DataTable
        Dim DT4 As DataTable
        Dim DT5 As DataTable
        Dim DT6 As DataTable
        Dim DT7 As DataTable
        Try
            DT1 = Session("BillingDT")
            If Not IsNothing(DT1) Then
                dgBilling.Visible = True
                dgBilling.DataSource = DT1
                dgBilling.DataBind()
            Else
                dgBilling.Visible = False
            End If

            DT2 = Session("ContractDT")
            If Not IsNothing(DT2) Then
                dgContract.Visible = True
                dgContract.DataSource = DT2
                dgContract.DataBind()
            Else
                dgContract.Visible = False
            End If

            DT3 = Session("FactoryDT")
            If Not IsNothing(DT3) Then
                dgFactory.Visible = True
                dgFactory.DataSource = DT3
                dgFactory.DataBind()
            Else
                dgFactory.Visible = False
            End If

            DT4 = Session("ContactDT")
            If Not IsNothing(DT4) Then
                dgContact.Visible = True
                dgContact.DataSource = DT4
                dgContact.DataBind()
            Else
                dgContact.Visible = False
            End If

            DT5 = Session("EmergencyDT")
            If Not IsNothing(DT5) Then
                dgEmergency.Visible = True
                dgEmergency.DataSource = DT5
                dgEmergency.DataBind()
            Else
                dgEmergency.Visible = False
            End If
            DT6 = Session("SafetyDT")
            If Not IsNothing(DT6) Then
                dgSafety.Visible = True
                dgSafety.DataSource = DT6
                dgSafety.DataBind()
            Else
                dgSafety.Visible = False
            End If
            DT7 = Session("CDayDT")
            If Not IsNothing(DT7) Then
                dgCDay.Visible = True
                dgCDay.DataSource = DT7
                dgCDay.DataBind()
            Else
                dgCDay.Visible = False
            End If
        Catch ex As Exception
            Session("BillingDT") = Nothing
            Session("ContractDT") = Nothing
            Session("FactoryDT") = Nothing
            Session("ContactDT") = Nothing
            Session("EmergencyDT") = Nothing
            Session("SafetyDT") = Nothing
            Session("CDayDT") = Nothing
        Finally
            If Not IsNothing(DT1) Then DT1.Dispose()
            If Not IsNothing(DT2) Then DT2.Dispose()
            If Not IsNothing(DT3) Then DT3.Dispose()
            If Not IsNothing(DT4) Then DT4.Dispose()
            If Not IsNothing(DT5) Then DT5.Dispose()
            If Not IsNothing(DT6) Then DT6.Dispose()
            If Not IsNothing(DT7) Then DT7.Dispose()
        End Try
    End Sub

    Public Sub LoadData()
        Dim DR As DataRow
        Try

            DR = GetDR(LoadCompanyData(CompanyID))
            If Not IsNothing(DR) Then
                lblCompany.Text = "(" & DR("SHIP_TO") & ") " & DR("CUST_NAME") & ""
            End If
            LoadGridData()
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


    Private Sub SaveData()
        Dim GasRep, Rep, RTime, Desc As String
        Dim Title, FName, LName, Pos, Tel As String
        Dim RDate As Date
        Try

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "savedata", "")
        End Try
    End Sub

End Class
