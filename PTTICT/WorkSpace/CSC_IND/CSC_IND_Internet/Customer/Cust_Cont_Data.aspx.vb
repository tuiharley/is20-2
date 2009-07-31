Public Class Cust_Cont_Data
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents dgExecutive As System.Web.UI.WebControls.DataGrid
    Protected WithEvents dgOffice As System.Web.UI.WebControls.DataGrid
    Protected WithEvents txtSale As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtRegion As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtGas As System.Web.UI.WebControls.TextBox
    Protected WithEvents dgFactory As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlEquip As System.Web.UI.WebControls.Panel
    Protected WithEvents dgEquip As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlDetail As System.Web.UI.WebControls.Panel
    Protected WithEvents txtEquip As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtProducer As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFuel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtBurner As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtQuantity As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtProduction As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtRate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstFuel As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtUseGas As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEquipID As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents btnCancel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnSave As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents lblCompany As System.Web.UI.WebControls.Label
    Protected WithEvents txtCDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContID As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCFName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCLName As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtPos As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTel As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFax As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMobile As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtOther As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDetail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtWorker As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtWPos As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtWUnit As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtRDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlPlant As System.Web.UI.WebControls.Panel
    Protected WithEvents lnkImgAttach As System.Web.UI.WebControls.HyperLink
    Protected WithEvents txtFileImg As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtPlan As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlPerson As System.Web.UI.WebControls.Panel
    Protected WithEvents txtPerson1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPos1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMobile1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPerson2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPos2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMobile2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPID1 As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtPID2 As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtCodeId As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtUnitID As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtActual As System.Web.UI.WebControls.TextBox
    Protected WithEvents frmContDetail As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents txtCompany As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtType As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMethod As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtInplant As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtStatus As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCloseID As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCloseName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtClosePos As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCloseUnit As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCloseDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlApprover As System.Web.UI.WebControls.Panel
    Protected WithEvents txtCloseUnitId As System.Web.UI.HtmlControls.HtmlInputText

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public ServerAction, Msg, URLLink As String
    Public CompanyID As String
    Public GenScript As String = ""
    Public ContactID As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load



        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            CompanyID = Request.QueryString("CompanyID") & ""
            ContactID = Request.QueryString("ContactID") & ""
        Else
            ServerAction = Request.Form("ServerAction") & ""
            CompanyID = Request.Form("CompanyID") & ""
            ContactID = Request.Form("ContactID") & ""
        End If


        Select Case ServerAction
            Case "LOAD"
                LoadData(ContactID)
            Case "SHOW"
                LoadData(ContactID)
            Case "SEARCH"
                LoadPTTData(txtCodeId.Text)
        End Select
        InitControl()
    End Sub

    Private Sub InitControl()
        LockCtrl(txtContID)
        LockControls(pnlData.Controls)
        LockControls(pnlPerson.Controls)
        If pnlPlant.Visible = True Then LockControls(pnlPlant.Controls)
        If pnlApprover.Visible = True Then LockControls(pnlApprover.Controls)
    End Sub



    Private Sub LoadPTTData(ByVal employeeId As String)
        Dim DR As DataRow
        Dim DIService As New DirectoryWS.DirectoryService
        Try
            DR = GetDR(DIService.GetDirectoryInfo(employeeId))
            If Not IsNothing(DR) Then
                txtCodeId.Text = DR("EmployeeId") & ""
                txtWorker.Text = DR("EmployeeNameTH") & ""
                txtWPos.Text = DR("PositionNameTH") & ""
                txtWUnit.Text = DR("DepartmentNameTH") & ""
                txtUnitID.Value = DR("DepartmentCode") & ""
            Else
                Msg = "ไม่พบข้อมูลรหัสพนักงานที่ค้นหา"
                txtCodeId.Text = ""
                txtWorker.Text = ""
                txtWPos.Text = ""
                txtWUnit.Text = ""
                txtUnitID.Value = ""
            End If
            DIService = Nothing
        Catch ex As Exception
            DIService = Nothing
            Msg = GetErrorMsg(ex, "LOADDATA")
        End Try

    End Sub



    Public Sub LoadData(ByVal DataID As String)
        Dim DR As DataRow
        Dim FileURL As String
        Try
            'FileURL = "http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL")
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/"))  ' + "ReportEvent.aspx"
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/") + 1) + "Files/Attach/"

            FileURL = "../Files/Attach/"
            If DataID <> "" Then
                DR = GetDR(LoadContactData(DataID))
                If Not IsNothing(DR) Then
                    txtCompany.Text = DR("CUSTOMER") & ""
                    txtContID.Text = DR("CONT_ID") & ""
                    txtCDate.Text = AppFormatDate(DR("CONT_DATE"))
                    txtCTime.Text = DR("CONT_TIME") & ""
                    txtFax.Text = DR("CONT_FAX") & ""
                    txtTel.Text = DR("CONT_TEL") & ""
                    txtMail.Text = DR("CONT_EMAIL") & ""
                    txtMethod.Text = DR("METHOD_NAME") & ""
                    txtOther.Text = DR("CONT_METHOD_OTHER") & ""
                    txtType.Text = DR("TYPE_NAME") & ""
                    txtDetail.Text = DR("DETAIL") & ""
                    txtStatus.Text = DR("STATUS_NAME") & ""
                    txtCodeId.Text = DR("WORK_EMP_ID") & ""
                    txtWorker.Text = DR("WORK_NAME") & ""
                    txtWPos.Text = DR("WORK_POSITION") & ""
                    txtWUnit.Text = DR("WORK_UNIT") & ""
                    txtUnitID.Value = DR("WORK_UNITCODE") & ""
                    txtRDate.Text = AppFormatDate(DR("RECEIVE_DATE"))
                    pnlPlant.Visible = (ToInt(DR("CONT_TYPE") & "") = 1)
                    If pnlPlant.Visible Then
                        txtInplant.Text = DR("INPL_NAME") & ""
                        txtActual.Text = DR("ACTUAL_DESC") & ""
                        txtPlan.Text = DR("PLAN_DESC") & ""
                    End If
                    txtFileImg.Value = DR("INPL_FILE") & ""
                    lnkImgAttach.Visible = (DR("INPL_FILE") & "" <> "")
                    lnkImgAttach.Text = DR("INPL_FILE") & ""
                    lnkImgAttach.NavigateUrl = FileURL & "CONTACT/" & DR("INPL_FILE") & ""

                    If pnlApprover.Visible = True Then
                        txtCloseID.Text = DR("CLOSE_EMP_ID") & ""
                        txtCloseName.Text = DR("CLOSE_NAME") & ""
                        txtClosePos.Text = DR("CLOSE_POSITION") & ""
                        txtCloseUnit.Text = DR("CLOSE_UNIT") & ""
                        txtCloseUnitId.Value = DR("CLOSE_UNITCODE") & ""
                        txtCloseDate.Text = AppFormatDate(DR("CLOSE_DATE"))
                    End If

                    LoadContactPerson(txtContID.Text)
                Else
                    Msg = "ไม่พบข้อมูลการติดต่อ"
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "LOAD")
        End Try
    End Sub



    Private Sub LoadContactPerson(ByVal DataID As String)
        Dim DR As DataRow
        Dim DT As DataTable
        Try
            If DataID <> "" Then
                DT = GetDT(LoadPersonContData(DataID))
                For Each DR In DT.Rows
                    If Not IsNothing(DR) Then
                        Select Case ToInt(DR("RANK_NO") & "")
                            Case 1
                                txtPID1.Value = DR("PERSON_ID") & ""
                                txtPerson1.Text = DR("PERSON_NAME") & ""
                                txtPos1.Text = DR("POSITION") & ""
                                txtMobile1.Text = DR("MOBILE_NO") & ""
                            Case 2
                                txtPID2.Value = DR("PERSON_ID") & ""
                                txtPerson2.Text = DR("PERSON_NAME") & ""
                                txtPos2.Text = DR("POSITION") & ""
                                txtMobile2.Text = DR("MOBILE_NO") & ""
                        End Select
                    End If
                Next
            End If
        Catch ex As Exception

        End Try
    End Sub

End Class
