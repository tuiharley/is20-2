Public Class ReportContact_Data
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents frmRptContact As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnSave As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnCancel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnCDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents FileRpt As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents txtFileRpt As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents lstCompany As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtCDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCTime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtContID As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDetail As System.Web.UI.WebControls.TextBox
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents txtRptName As System.Web.UI.WebControls.TextBox
    Protected WithEvents lnkRpt As System.Web.UI.WebControls.HyperLink
    Protected WithEvents btnDelRpt As System.Web.UI.WebControls.Image
    Protected WithEvents pnlPlant As System.Web.UI.WebControls.Panel


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
    Public ApproverCode As String
    Public Permission
    Public SoldTo As String
    Public ShipTo As String


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        CheckRole(TaskContactData)
        btnSave.Visible = CanDo(TaskContactData, actModify)

        CountIntraPage(9, "pCustContactData")
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            CompanyID = Request.QueryString("CompanyID") & ""
            ContactID = Request.QueryString("ContactID") & ""
            SoldTo = Request.QueryString("SoldTo") & ""
            ShipTo = Request.QueryString("ShipTo") & ""
            InitComboList()
            If CompanyID <> "" Then SetListValue(lstCompany, CompanyID) : lstCompany.Enabled = False
        Else
            ServerAction = Request.Form("ServerAction") & ""
            CompanyID = Request.Form("CompanyID") & ""
            ContactID = Request.Form("ContactID") & ""
            SoldTo = Request.Form("SoldTo") & ""
            ShipTo = Request.Form("ShipTo") & ""
        End If


        Select Case ServerAction
            Case "ADD"
                ClearData()
            Case "LOAD"
                LoadData(ContactID)
            Case "SAVE"
                SaveData()
                LoadData(ContactID)
            Case "RPT_ATTACH"
                Msg = SaveDataFile(ServerAction, ContactID)
                If Msg = "" Then LoadData(ContactID)
            Case "RPT_CLEAR"
                DeleteFileData(ContactID, ServerAction)
                LoadData(ContactID)
        End Select
        InitControl()
    End Sub

    Private Sub InitComboList()
        Dim SQL As String
        Try
            Dim DS As DataSet
            Dim DT As DataTable
            Dim DR As DataRow
            'DS = CType(HttpContext.Current.Cache.Get("ShipIDList"), DataSet)
            DS = LoadCustomerListWithShipto()
            DT = GetDT(DS)
            If Not IsNothing(DT) Then
                DR = DT.NewRow
                DR("CUST_ID") = "0000000000"
                DR("CUSTOMER_DESC") = "0000000000 บุคคลทั่วไป"
                DT.Rows.InsertAt(DR, 0)
            End If
            LoadNullList(lstCompany, DT, "CUSTOMER_DESC", "CUST_ID")

        Catch ex As Exception
        End Try
    End Sub

    Private Sub InitControl()
        LockCtrl(txtContID)
        LockControls(pnlData.Controls)

    End Sub

    Private Sub ClearData()
        txtCDate.Text = ""
        txtCTime.Text = ""
        txtContID.Text = ""
        txtDetail.Text = ""
        If pnlPlant.Visible = True Then
            txtRptName.Text = ""
            FileRpt.Visible = True : lnkRpt.Visible = False : txtFileRpt.Value = "" : btnDelRpt.Visible = False
        End If
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
                    SetListValue(lstCompany, DR("CUST_ID") & "")
                    txtContID.Text = DR("CONT_ID") & ""
                    txtCDate.Text = AppFormatDate(DR("CONT_DATE"))
                    txtCTime.Text = DR("CONT_TIME") & ""
                    txtDetail.Text = DR("DETAIL") & ""
                    If pnlPlant.Visible Then

                        txtRptName.Text = DR("REPORT_NAME") & ""
                        txtFileRpt.Value = DR("REPORT_FILE") & ""
                        lnkRpt.Visible = (DR("REPORT_FILE") & "" <> "")
                        lnkRpt.Text = DR("REPORT_FILE") & ""
                        lnkRpt.NavigateUrl = FileURL & "CONTACT/" & DR("REPORT_FILE") & ""
                        FileRpt.Visible = (DR("REPORT_FILE") & "" = "")
                        btnDelRpt.Visible = (DR("REPORT_FILE") & "" <> "")
                    End If
                Else
                    Msg = "ไม่พบข้อมูลการติดต่อ"
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "LOAD")
        End Try
    End Sub

    Private Sub SaveData()
        Dim EID, DestType As Integer
        Dim Title, Destination, EventDate, EventTime, ExpireDate, Uname, FileName As String
        Dim ContData As New ContactData

        Try
            Msg = SaveRptContData(txtContID.Text, txtRptName.Text)
            If FileRpt.Visible = True And FileRpt.Value & "" <> "" Then Msg = SaveDataFile("RPT_ATTACH", txtContID.Text, txtRptName.Text)
            If Msg = "" Then Msg = "เสร็จสิ้นการบันทึกข้อมูล"
            LoadData(txtContID.Text)

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "savedata")
        End Try
    End Sub


    Private Function SaveDataFile(ByVal AttachType As String, Optional ByVal DataID As String = "", Optional ByVal RptName As String = "") As String
        Dim FileName As String, FileType As String
        Dim SysfileName As String

        Try
            If DataID <> "" Then
                Msg = ""
                Select Case AttachType
                    Case "RPT_ATTACH"
                        FileName = GetFileName(FileRpt.Value)
                        FileType = GetFileType(FileRpt.Value)
                        If FileType & "" <> "" Then
                            'If FileRpt.PostedFile.ContentLength > 204800 Then
                            '    SaveDataFile = " ไม่สามารถแนบไฟล์ได้ ! เนื่องจากไฟล์มีขนาดเกิน 200 KB. "
                            'Else
                            Msg = SaveAttachFile(DataID, FileType, Session("USER_NAME"), SysfileName, AttachType, RptName)
                            FileRpt.PostedFile.SaveAs(Server.MapPath(gsFilePath) & "CONTACT\" & SysfileName)
                            'FileRpt.PostedFile.SaveAs(gsInternetPath & "CONTACT\" & SysfileName)
                            SaveDataFile = Msg
                            'End If
                        End If
                End Select
            Else
                SaveDataFile = "ไม่สามารถแนบเอกสารได้ ! เนื่องจากยังไม่ได้มีการบันทึกข้อมูลการติดต่อ"
            End If
        Catch ex As Exception
            SaveDataFile = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดจากการแนบไฟล์เอกสาร")
        End Try
    End Function

    Private Function DeleteFileData(ByVal DataID As String, ByVal FileType As String) As String
        Dim FileName As String
        Try
            If DataID <> "" Then
                Select Case FileType
                    Case "RPT_CLEAR"
                        FileName = txtFileRpt.Value
                End Select
                If FileName <> "" Then
                    Try
                        DeleteFile(Server.MapPath(gsFilePath) & "CONTACT\" & FileName)
                        'DeleteFile(gsInternetPath & "CONTACT\" & FileName)
                    Catch
                    End Try
                    DeleteAttachFile(DataID, FileType, Session("USER_NAME"))
                    Return ""
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดระหว่างการลบไฟล์เอกสาร")
            Return Msg
        End Try
    End Function
End Class
