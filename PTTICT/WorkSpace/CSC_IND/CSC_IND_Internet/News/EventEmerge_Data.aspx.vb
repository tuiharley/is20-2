Public Class EventEmerge_Data
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents frmSearchCust As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnSave As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnDel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents btnCancel As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents lnkImgAttach As System.Web.UI.WebControls.HyperLink
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblTitle As System.Web.UI.WebControls.Label
    Protected WithEvents lblDate As System.Web.UI.WebControls.Label
    Protected WithEvents lblTime As System.Web.UI.WebControls.Label
    Protected WithEvents lblDetail As System.Web.UI.WebControls.Label

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

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Session("CURRENT_HEADER_MENU") = "B_NEWS"
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            EventID = ToInt(Request.QueryString("EventID") & "")
        Else
            ServerAction = Request.Form("ServerAction") & ""
            EventID = ToInt(Request.Form("EventID") & "")
        End If

        Select Case ServerAction


            Case "LOAD"
                LoadData()
        End Select
        InitControl()

    End Sub

    Private Sub InitControl()
        LockControls(pnlData.Controls)
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
                    lblTitle.Text = DR("TITLE") & ""
                    lblDate.Text = AppFormatDate(DR("EVENT_DATE"))
                    lblTime.Text = DR("EVENT_TIME") & ""
                    lblDetail.Text = DR("DESTINATION") & ""

                    lnkImgAttach.Text = DR("FILENAME") & ""
                    lnkImgAttach.NavigateUrl = FileURL & "EMERGENCY/" & DR("FILENAME") & ""
                    lnkImgAttach.Target = "_blank"

                    'If ToInt(DR("DEST_TYPE") & "") = 1 Then
                    '    txtFileImg.Value = DR("FILENAME") & ""
                    '    lnkImgAttach.Visible = (DR("FILENAME") & "" <> "")
                    '    lnkImgAttach.Text = DR("FILENAME") & ""
                    '    lnkImgAttach.NavigateUrl = gsIntranetURL & "EMERGENCY/" & DR("FILENAME") & ""
                    '    txtFile.Visible = (DR("FILENAME") & "" = "")
                    '    btnDelImg.Visible = (DR("FILENAME") & "" <> "")
                    'End If
                    'txtExpireDate.Text = AppFormatDate(DR("EXPIRE_DATE"))
                End If
            End If

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

End Class
