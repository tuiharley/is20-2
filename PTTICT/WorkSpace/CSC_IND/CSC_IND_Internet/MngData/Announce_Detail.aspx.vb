Public Class Announce_Detail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents frmSearchCust As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnSave As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnCancel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnDel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Img1 As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtHeadLine As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtExpireDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnDelImg As System.Web.UI.WebControls.Image
    Protected WithEvents lnkImgAttach As System.Web.UI.WebControls.HyperLink
    Protected WithEvents txtFileImg As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents frmNewsDetail As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents FileImg As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents txtTitle As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtAnnDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstAnnType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtAnnID As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtDetail As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstDisplay As System.Web.UI.WebControls.DropDownList
    Protected WithEvents lnkDocAttach As System.Web.UI.WebControls.HyperLink
    Protected WithEvents btnDelDoc As System.Web.UI.WebControls.Image
    Protected WithEvents FileDoc As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents txtFileDoc As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents chkDisplay As System.Web.UI.WebControls.CheckBox
    Protected WithEvents frmAnnDetail As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnAdd As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents lblRemark As System.Web.UI.WebControls.Label
    Protected WithEvents pnlDisplay As System.Web.UI.WebControls.Panel
    Protected WithEvents txtFile As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents lblNewsAttach As System.Web.UI.WebControls.Label
    Protected WithEvents lblNewsDesc As System.Web.UI.WebControls.Label
    Protected WithEvents txtNewsDesc As System.Web.UI.WebControls.TextBox
    Protected WithEvents dtgNews As System.Web.UI.WebControls.DataGrid
    Protected WithEvents btnNewsAttach As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents pnlNews As System.Web.UI.WebControls.Panel
    Protected WithEvents pnlImg As System.Web.UI.WebControls.Panel

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
        ReadConfigurations()

    End Sub

#End Region
    Public ServerAction, Msg, URLLink As String
    Public AnnID As Decimal
    Public Permission

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'CheckRoles(Session("ROLE_ID") & "" = "99")

        'Permission = Session("PERMISSIONS")
        'If CannotDo(TaskAnnounceData, actRead, Permission) And CannotDo(TaskAnnounceData, actModify, Permission) Then
        '    Response.Redirect("..\noRight.aspx")
        'End If
        CheckRole(TaskAnnounceData)
        btnAdd.Visible = CanDo(TaskAnnounceData, actModify, Session("PERMISSIONS"))
        btnSave.Visible = CanDo(TaskAnnounceData, actModify, Session("PERMISSIONS"))
        btnDel.Visible = CanDo(TaskAnnounceData, actModify, Session("PERMISSIONS"))

        CountIntraPage(34, "pAnnounceDetail")
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            AnnID = ToDec(Request.QueryString("AnnID") & "")
            InitListCombo()
        Else
            ServerAction = Request.Form("ServerAction") & ""
            AnnID = ToDec(Request.Form("AnnID") & "")
        End If

        Select Case ServerAction
            Case "ADD"
                ClearData()
            Case "SAVE"
                SaveData()
            Case "LOAD"
                LoadData()
            Case "DOC_CLEAR", "IMG_CLEAR"
                DeleteFileData(AnnID, ServerAction)
                LoadData()
            Case "DELETE"
                DeleteData()
            Case "ATTACH"
                AttachFile(AnnID)
                LoadFileData(AnnID)
            Case "DELETEFILE"
                DoFileItemCommand("Delete", dtgNews.Items(Request.Form("ItemIndex")))
                LoadFileData(AnnID)
        End Select
        InitDisplay()
    End Sub

    Private Sub InitListCombo()
        Dim SQL As String
        Try
            SQL = " SELECT * FROM LSTANNOUNCE_TYPE ORDER BY ANNOUNCE_TYPE"
            LoadNullList(lstAnnType, GetDT(LoadQueryList("ANN", SQL, "")), "ANNOUNCE_TYPE_DESC", "ANNOUNCE_TYPE", "", "ระบุประเภทข้อมูล")
        Catch ex As Exception
        End Try
    End Sub

    Private Sub InitDisplay()
        pnlDisplay.Visible = False
        'pnlDisplay.Visible = (ToInt(lstAnnType.SelectedValue & "") = 1)
        pnlImg.Visible = (ToInt(lstAnnType.SelectedValue & "") <> 1)
        pnlNews.Visible = (ToInt(lstAnnType.SelectedValue & "") = 1) AndAlso (txtAnnID.Value <> "")
        'dtgNews.Visible = (txtAnnID.Value <> "")
        lstAnnType.Enabled = (txtAnnID.Value = "")
    End Sub

    Private Sub ClearData()
        txtAnnID.Value = ""
        AnnID = 0
        txtTitle.Text = ""
        txtDetail.Text = ""
        lstDisplay.SelectedIndex = -1
        lstAnnType.SelectedIndex = -1
        txtAnnDate.Text = AppFormatDate(Today)
        txtFileDoc.Value = ""
        lnkDocAttach.Visible = False
        FileDoc.Visible = True
        btnDelDoc.Visible = False
        txtFileImg.Value = ""
        lnkImgAttach.Visible = False
        FileImg.Visible = True
        btnDelImg.Visible = False
        txtExpireDate.Text = ""
        chkDisplay.Checked = True
        If pnlNews.Visible = True Then
            txtFile.Visible = True
            txtNewsDesc.Text = ""
        End If
    End Sub

    Private Sub LoadData()
        Dim DR As DataRow
        Dim FileURL As String
        Dim AnnType As Integer
        Dim AnnFolder As String
        Dim Detail As String

        Try
            'FileURL = "https://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL")
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/"))  ' + "ReportEvent.aspx"
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/") + 1) + "Files/Attach/"

            FileURL = "../Files/Attach/"


            If AnnID <> 0 Then
                DR = GetDR(LoadAnnounce(AnnID, "", "", "", 0))
                If Not IsNothing(DR) Then
                    AnnID = ToDec(DR("ANNOUNCE_ID") & "")
                    txtAnnID.Value = ToInt(DR("ANNOUNCE_ID") & "")
                    txtTitle.Text = DR("TITLE") & ""
                    Detail = DR("DETAIL") & ""
                    Detail = Replace(Detail, "<br>", vbCrLf)
                    Detail = Replace(Detail, "&nbsp;", " ")
                    txtDetail.Text = Detail
                    txtAnnDate.Text = AppFormatDate(DR("ANNOUNCE_DATE"))
                    txtExpireDate.Text = AppFormatDate(DR("EXPIRE_DATE"))
                    SetListValue(lstAnnType, DR("ANNOUNCE_TYPE"))
                    SetListValue(lstDisplay, DR("SOURCE_FLAG"))
                    AnnType = ToInt(DR("ANNOUNCE_TYPE") & "")
                    chkDisplay.Checked = (DR("DISPLAY_FLAG") & "" <> "")

                    Select Case AnnType
                        Case 1 'What s news
                            AnnFolder = FileURL & "NEWS/"
                        Case 2 ' จุลสาร
                            AnnFolder = FileURL & "JOURNALS/"
                        Case 3 ' Download
                            AnnFolder = FileURL & "DOWNLOADS/"
                        Case 4 ' จดหมายแจ้ง
                            AnnFolder = FileURL & "LETTERS/"
                        Case 5 'สาระน่ารู้
                            AnnFolder = FileURL & "KNOWLEDGES/"
                    End Select


                    txtFileImg.Value = DR("IMAGE_FILE") & ""
                    lnkImgAttach.Text = DR("IMAGE_FILE") & ""
                    lnkImgAttach.NavigateUrl = AnnFolder & DR("IMAGE_FILE") & ""
                    FileImg.Visible = (DR("IMAGE_FILE") & "" = "")
                    btnDelImg.Visible = (DR("IMAGE_FILE") & "" <> "")
                    lnkImgAttach.Visible = (DR("IMAGE_FILE") & "" <> "")

                    txtFileDoc.Value = DR("ATTACH_FILE") & ""
                    lnkDocAttach.Text = DR("ATTACH_FILE") & ""
                    lnkDocAttach.NavigateUrl = AnnFolder & DR("ATTACH_FILE") & ""
                    FileDoc.Visible = (DR("ATTACH_FILE") & "" = "")
                    btnDelDoc.Visible = (DR("ATTACH_FILE") & "" <> "")
                    lnkDocAttach.Visible = (DR("ATTACH_FILE") & "" <> "")
                    If ToInt(lstAnnType.SelectedValue & "") = 1 Then LoadFileData(AnnID)

                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

    Private Sub SaveData()
        Dim DataID, AnnType As Integer
        Dim TITLE, SourceFlag, AnnDate, ExpireDate, Detail, Display As String

        Try
            If AnnID = 0 Then AnnID = ToDec(txtAnnID.Value)
            DataID = ToDec(AnnID)

            TITLE = txtTitle.Text
            AnnType = ToInt(lstAnnType.SelectedValue & "")
            AnnDate = txtAnnDate.Text
            Detail = Replace(txtDetail.Text, vbCrLf, "<br>")
            Detail = Replace(Detail, " ", "&nbsp;")
            SourceFlag = lstDisplay.SelectedValue & ""
            ExpireDate = txtExpireDate.Text
            Display = ""
            If chkDisplay.Checked = True Then Display = "Y"


            If Msg = "" Then Msg = SaveAnnounceData(DataID, TITLE, AnnDate, AnnType, SourceFlag, Detail, ExpireDate, Display)
            If FileDoc.Visible = True And FileDoc.Value & "" <> "" Then Msg = SaveDataFile("DOC_ATTACH", DataID)
            If FileImg.Visible = True And FileImg.Value & "" <> "" Then Msg = SaveDataFile("IMG_ATTACH", DataID)
            AnnID = DataID
            If Msg = "" Then Msg = "เสร็จสิ้นการบันทึกข้อมูล"
            LoadData()

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "savedata")
        End Try
    End Sub

    Private Sub DeleteData()
        Try
            If AnnID = 0 Then AnnID = ToDec(txtAnnID.Value)
            If AnnID <> 0 Then
                Msg = DeleteFileData(AnnID, "DOC_CLEAR")
                If Msg = "" Then Msg = DeleteAnnounceData(AnnID)
                If Msg = "" Then Msg = "เสร็จสิ้นการลบข้อมูล"
                ClearData()
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "deletedata")
        End Try
    End Sub

    Private Function SaveDataFile(ByVal AttachType As String, Optional ByVal DataID As Decimal = 0) As String
        Dim FileName As String, FileType As String
        Dim SysfileName As String
        Dim AnnType As Integer
        Dim AnnPath As String
        Dim AnnDesc As String

        Try
            If DataID <> 0 Then
                AnnType = ToInt(lstAnnType.SelectedValue & "")
                Select Case AnnType
                    Case 1
                        AnnPath = Server.MapPath(gsFilePath) & "NEWS\"
                        AnnDesc = "NEWS"
                    Case 2
                        AnnPath = Server.MapPath(gsFilePath) & "JOURNALS\"
                        AnnDesc = "JOURNALS"
                    Case 3
                        AnnPath = Server.MapPath(gsFilePath) & "DOWNLOADS\"
                        AnnDesc = "DOWNLOADS"
                    Case 4
                        AnnPath = Server.MapPath(gsFilePath) & "LETTERS\"
                        AnnDesc = "LETTERS"
                    Case 5
                        AnnPath = Server.MapPath(gsFilePath) & "KNOWLEDGES\"
                        AnnDesc = "KNOWLEDGES"
                End Select
                Msg = ""
                Select Case AttachType
                    Case "IMG_ATTACH"
                        FileName = GetFileName(FileImg.Value)
                        FileType = GetFileType(FileImg.Value)
                        If FileType & "" <> "" Then
                            If FileImg.PostedFile.ContentLength > 204800 Then
                                SaveDataFile = " ไม่สามารถแนบไฟล์ได้ ! เนื่องจากไฟล์มีขนาดเกิน 200 KB. "
                            Else
                                Msg = SaveAnnounceFile(DataID, FileType, Session("USER_NAME"), SysfileName, AttachType, AnnDesc)
                                FileImg.PostedFile.SaveAs(AnnPath & SysfileName)
                                SaveDataFile = Msg
                            End If
                        End If
                    Case "DOC_ATTACH"
                        FileName = GetFileName(FileDoc.Value)
                        FileType = GetFileType(FileDoc.Value)
                        If FileType & "" <> "" Then
                            'If FileDoc.PostedFile.ContentLength > 204800 Then
                            '    SaveDataFile = " ไม่สามารถแนบไฟล์ได้ ! เนื่องจากไฟล์มีขนาดเกิน 200 KB. "
                            'Else
                            Msg = SaveAnnounceFile(DataID, FileType, Session("USER_NAME"), SysfileName, AttachType, AnnDesc)
                            FileDoc.PostedFile.SaveAs(AnnPath & SysfileName)
                            SaveDataFile = Msg
                            'End If
                        End If
                End Select
            Else
                SaveDataFile = "ไม่สามารถแนบเอกสารได้ ! เนื่องจากยังไม่ได้มีการบันทึกข้อมูลข่าว"
            End If
        Catch ex As Exception
            SaveDataFile = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดจากการแนบไฟล์เอกสาร")
        End Try
    End Function

    Private Function DeleteFileData(ByVal DataID As Decimal, ByVal FileType As String) As String
        Dim FileName As String
        Dim AnnType As Integer
        Dim AnnPath As String

        Try
            If DataID = 0 Then DataID = ToDec(txtAnnID.Value)
            If DataID <> 0 Then
                Select Case AnnType
                    Case 1
                        AnnPath = Server.MapPath(gsFilePath) & "NEWS\"
                    Case 2
                        AnnPath = Server.MapPath(gsFilePath) & "JOURNALS\"
                    Case 3
                        AnnPath = Server.MapPath(gsFilePath) & "DOWNLOADS\"
                    Case 4
                        AnnPath = Server.MapPath(gsFilePath) & "LETTERS\"
                    Case 5
                        AnnPath = Server.MapPath(gsFilePath) & "KNOWLEDGES\"
                End Select
                Select Case FileType
                    Case "IMG_CLEAR"
                        FileName = txtFileImg.Value
                    Case "DOC_CLEAR"
                        FileName = txtFileDoc.Value
                End Select
                If FileName <> "" Then
                    Try
                        DeleteFile(AnnPath & FileName)
                    Catch
                    End Try
                    DeleteAnnounceFile(DataID, Session("USER_NAME"), FileType)
                    Return ""
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดระหว่างการลบไฟล์เอกสาร")
            Return Msg
        End Try
    End Function

    Private Sub lstAnnType_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lstAnnType.SelectedIndexChanged
        InitDisplay()
    End Sub

    Private Sub LoadFileData(Optional ByVal DataId As Decimal = 0)

        Try
            Session("FileDetail") = Nothing
            If DataId <> 0 Then
                Session("FileDetail") = GetDT(LoadNewsFile(DataId))
            End If
            BindFileDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex)
        End Try
    End Sub

    Private Sub BindFileDG()
        Dim DT As DataTable

        DT = Session("FileDetail")
        If IsNothing(DT) OrElse (DT.Rows.Count = 0) Then
            dtgNews.Visible = False
        Else
            dtgNews.Visible = True
            dtgNews.DataSource = DT
            dtgNews.DataBind()
        End If
    End Sub

    Private Function DeleteNewsData(Optional ByVal usrAttachID As Decimal = 0, Optional ByVal FileName As String = "") As String
        Try
            If usrAttachID <> 0 Then
                If FileName <> "" Then
                    Try
                        DeleteFile(Server.MapPath(gsFilePath) & "NEWS\" & FileName)
                    Catch
                    End Try
                    DeleteNewsFile(usrAttachID)
                    Return ""
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดระหว่างการลบไฟล์เอกสาร")
            Return Msg
        End Try
    End Function

    Private Sub AttachFile(Optional ByVal DataID As Decimal = 0)
        Dim FileName As String, FileType As String
        Dim NewsName As String, NewsDesc As String
        Dim SysfileName As String


        Try
            If DataID <> 0 Then

                FileName = GetFileName(txtFile.Value)
                FileType = GetFileType(txtFile.Value)
                NewsName = FileName
                NewsDesc = txtNewsDesc.Text
                Msg = SaveNewsFile(DataID, NewsName, NewsDesc, FileType, SysfileName)
                txtFile.PostedFile.SaveAs(Server.MapPath(gsFilePath) & "NEWS\" & SysfileName)
                txtNewsDesc.Text = ""

            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดจากการแนบไฟล์เอกสาร")
        End Try
    End Sub

    Private Sub DoFileItemCommand(ByVal CommandName As String, ByVal item As DataGridItem)
        Dim SQL1, SQL2, SQLStr As String
        Dim ITEM_ID
        Dim DV As DataView
        Dim DR As DataRowView
        Dim status As Boolean
        Dim I As Integer
        Dim txtKeyID As HtmlInputText, txtKeyDesc As HtmlInputText
        'Dim info As New MasterDataWS.DocumentTypeInfo

        Try
            If CommandName <> "Add" Then
                ITEM_ID = dtgNews.DataKeys(item.ItemIndex)
            End If

            Select Case CommandName.ToLower
                Case "delete"
                    Msg = DeleteNewsData(ITEM_ID, item.Cells(item.Cells.Count - 2).Text)
                    If Msg = "" Then Msg = "ลบข้อมูลเรียบร้อย"
                    dtgNews.EditItemIndex = -1
                Case Else
                    Msg = CommandName
            End Select

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "DoItemCommand", "เกิดข้อผิดพลาดระหว่างการลบข้อมูลไฟล์เอกสาร")
        End Try
    End Sub

End Class
