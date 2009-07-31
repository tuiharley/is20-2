Public Class Emergency_Detail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents frmSearchCust As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnSave As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnDel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents txtFile As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents btnCancel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtTitle As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTime As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDetail As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnExpireDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnCDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtExpireDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lnkImgAttach As System.Web.UI.WebControls.HyperLink
    Protected WithEvents btnDelImg As System.Web.UI.WebControls.Image
    Protected WithEvents txtFileImg As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtEventID As System.Web.UI.HtmlControls.HtmlInputText

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
    Public EventID As Integer
    Public Permission

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        'Permission = Session("PERMISSIONS")
        'If CannotDo(TaskEmergencyData, actRead, Permission) And CannotDo(TaskEmergencyData, actModify, Permission) Then
        '    Response.Redirect("..\noRight.aspx")
        'End If

        CheckRole(TaskEmergencyData)
        'btnAdd.Visible = CanDo(TaskEmergencyData, actModify, Session("PERMISSIONS"))
        btnSave.Visible = CanDo(TaskEmergencyData, actModify, Session("PERMISSIONS"))
        btnDel.Visible = CanDo(TaskEmergencyData, actModify, Session("PERMISSIONS"))

        CountIntraPage(32, "pEmergencyDetail")
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            EventID = ToInt(Request.QueryString("EventID") & "")
        Else
            ServerAction = Request.Form("ServerAction") & ""
            EventID = ToInt(Request.Form("EventID") & "")
        End If

        Select Case ServerAction
            Case "ADD"
                ClearData()
            Case "SAVE"
                SaveData()
            Case "LOAD"
                LoadData()
            Case "DOC_CLEAR"
                DeleteFileData(EventID, ServerAction)
                LoadData()
            Case "DELETE"
                DeleteData()
        End Select
    End Sub

    'Private Sub InitListCombo()
    '    Dim SQL As String

    '    SQL = " SELECT DISTINCT TITLE FROM EMERGENCY_EVENT "
    '    LoadNullList(lstTitle, GetDT(LoadQueryList("EVENT", SQL, "TITLE")), "TITLE", "TITLE")
    'End Sub

    Private Sub ClearData()
        txtEventID.Value = ""
        EventID = 0
        txtTitle.Text = ""
        txtDate.Text = AppFormatDate(Today)
        txtTime.Text = ""
        txtDetail.Text = ""
        txtFileImg.Value = ""
        txtExpireDate.Text = AppFormatDate(Today.AddDays(14))
        lnkImgAttach.Visible = False
        txtFile.Visible = True
        btnDelImg.Visible = False
    End Sub

    Private Sub LoadData()
        Dim DR As DataRow
        Dim FileURL As String

        Try
            'FileURL = "http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL")
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/"))
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/") + 1) + "Files/Attach/"
            FileURL = "../Files/Attach/"
            If EventID <> 0 Then
                DR = GetDR(LoadEmergencyEvent(EventID, "", "", ""))
                If Not IsNothing(DR) Then
                    EventID = ToInt(DR("EVENT_ID") & "")
                    txtTitle.Text = DR("TITLE") & ""
                        txtDate.Text = AppFormatDate(DR("EVENT_DATE"))
                        txtTime.Text = DR("EVENT_TIME") & ""
                        txtDetail.Text = DR("DESTINATION") & ""
                        If ToInt(DR("DEST_TYPE") & "") = 1 Then
                            txtFileImg.Value = DR("FILENAME") & ""
                            lnkImgAttach.Visible = (DR("FILENAME") & "" <> "")
                            lnkImgAttach.Text = DR("FILENAME") & ""
                            lnkImgAttach.NavigateUrl = FileURL & "EMERGENCY/" & DR("FILENAME") & ""
                            txtFile.Visible = (DR("FILENAME") & "" = "")
                            btnDelImg.Visible = (DR("FILENAME") & "" <> "")
                        End If
                        txtExpireDate.Text = AppFormatDate(DR("EXPIRE_DATE"))
                    End If
                End If

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

    Private Sub SaveData()
        Dim EID, DestType As Integer
        Dim Title, Destination, EventDate, EventTime, ExpireDate, Uname, FileName As String

        Try
            If EventID = 0 Then EventID = ToInt(txtEventID.Value)
            EID = ToInt(EventID)


            If txtTitle.Text <> "" Then Title = txtTitle.Text
            DestType = 1
            Destination = txtDetail.Text
            EventDate = txtDate.Text
            EventTime = txtTime.Text
            ExpireDate = txtExpireDate.Text
            Uname = Session("USER_NAME") & ""

            If Msg = "" Then Msg = SaveEmergencyEvent(EID, Title, DestType, Destination, EventDate, EventTime, ExpireDate, Uname, FileName)
            If txtFile.Visible = True And txtFile.Value & "" <> "" Then Msg = SaveDataFile("DOC_ATTACH", EID)
            If Msg = "" Then Msg = "เสร็จสิ้นการบันทึกข้อมูล"
            LoadData()

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "savedata")
        End Try
    End Sub

    Private Sub DeleteData()
        Try
            If EventID = 0 Then EventID = ToInt(txtEventID.Value)
            If EventID <> 0 Then
                Msg = DeleteFileData(EventID, "DOC_CLEAR")
                If Msg = "" Then Msg = DeleteEmergencyEvent(EventID)
                If Msg = "" Then Msg = "เสร็จสิ้นการลบข้อมูล"
                ClearData()
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "deletedata")
        End Try
    End Sub

    Private Function SaveDataFile(ByVal AttachType As String, Optional ByVal DataID As Integer = 0) As String
        Dim FileName As String, FileType As String
        Dim SysfileName As String

        Try
            If DataID = 0 Then DataID = ToInt(txtEventID.Value)
            If DataID <> 0 Then
                Select Case AttachType
                    Case "DOC_ATTACH"
                        FileName = GetFileName(txtFile.Value)
                        FileType = GetFileType(txtFile.Value)
                        If FileType & "" <> "" Then
                            If txtFile.PostedFile.ContentLength > 204800 Then
                                SaveDataFile = " ไม่สามารถแนบไฟล์ได้ ! เนื่องจากไฟล์มีขนาดเกิน 200 KB. "
                            Else
                                Msg = SaveAttachFileEmergencyEvent(DataID, FileType, Session("USER_NAME"), SysfileName, AttachType)
                                txtFile.PostedFile.SaveAs(Server.MapPath(gsFilePath) & "EMERGENCY\" & SysfileName)
                                SaveDataFile = Msg
                            End If
                        End If
                End Select
            Else
                SaveDataFile = "ไม่สามารถแนบเอกสารได้ ! เนื่องจากยังไม่ได้มีการบันทึกข้อมูลเหตุการณ์ฉุกเฉิน"
            End If
        Catch ex As Exception
            SaveDataFile = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดจากการแนบไฟล์เอกสาร")
        End Try
    End Function

    Private Function DeleteFileData(ByVal DataID As String, ByVal FileType As String) As String
        Dim FileName As String
        Try
            If DataID = 0 Then DataID = ToInt(txtEventID.Value)
            If DataID <> 0 Then
                Select Case FileType
                    Case "DOC_CLEAR"
                        FileName = txtFileImg.Value
                End Select
                If FileName <> "" Then
                    Try
                        DeleteFile(Server.MapPath(gsFilePath) & "EMERGENCY\" & FileName)
                    Catch
                    End Try
                    DeleteAttachFileEmergencyEvent(DataID, Session("USER_NAME"))
                    Return ""
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดระหว่างการลบไฟล์เอกสาร")
            Return Msg
        End Try
    End Function
End Class
