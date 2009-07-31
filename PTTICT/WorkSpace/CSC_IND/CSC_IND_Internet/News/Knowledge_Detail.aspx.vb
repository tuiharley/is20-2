Public Class Knowledge_Detail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents pnlData As System.Web.UI.WebControls.Panel
    Protected WithEvents frmSearchCust As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Img1 As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtHeadLine As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents frmNewsDetail As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents lblTitle As System.Web.UI.WebControls.Label
    Protected WithEvents lblAnnDate As System.Web.UI.WebControls.Label
    Protected WithEvents lblDetail As System.Web.UI.WebControls.Label
    Protected WithEvents lnkDoc As System.Web.UI.WebControls.HyperLink
    Protected WithEvents ImgFile As System.Web.UI.WebControls.Image

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
    Public AnnID As Decimal

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'CheckRoles(Session("ROLE_ID") & "" = "99")

        'Permission = Session("PERMISSIONS")
        'If CannotDo(TaskUser, actRead, Permission) And CannotDo(TaskUser, actModify, Permission) Then
        '    Response.Redirect("..\noRight.aspx")
        'End If
        'Session("CURRENT_HEADER_MENU") = "B_NEWS"
        ReadConfigurations()
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            AnnID = ToDec(Request.QueryString("AnnID") & "")

        Else
            ServerAction = Request.Form("ServerAction") & ""
            AnnID = ToDec(Request.Form("AnnID") & "")
        End If

        Select Case ServerAction
            Case "LOAD"
                LoadData()
        End Select
        InitControl()
    End Sub

    Private Sub InitControl()
        'LockControls(pnlData.Controls)
    End Sub


    Private Sub LoadData()
        Dim DR As DataRow
        Dim FileURL As String
        Dim AnnType As Integer
        Dim AnnFolder, SFlag As String

        Try
            'FileURL = "http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL")
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/"))  ' + "ReportEvent.aspx"
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/") + 1) + "Files/Attach/"

            FileURL = "../Files/Attach/"
            'FileURL = "http://" & Request.ServerVariables("SERVER_NAME") & Request.ServerVariables("URL")
            'FileURL = FileURL.Substring(0, FileURL.LastIndexOf("/"))
            'FileURL = gsInternetURL & "Files/Attach/"

            If AnnID <> 0 Then
                DR = GetDR(LoadAnnounce(AnnID, "", "", "", 0))
                If Not IsNothing(DR) Then
                    AnnID = ToDec(DR("ANNOUNCE_ID") & "")
                    'txtAnnID.Value = ToInt(DR("ANNOUNCE_ID") & "")
                    lblTitle.Text = DR("TITLE") & ""
                    SFlag = DR("SOURCE_FLAG") & ""
                    Select Case SFlag
                        Case "T"
                            lblDetail.Text = DR("DETAIL") & ""
                        Case "F"
                            lblDetail.Text = DR("DETAIL") & ""
                        Case "U"
                            lblDetail.Text = "<a href='" & DR("DETAIL") & "' target=_blank>" & DR("DETAIL") & "</a>"
                    End Select
                    'lblDetail.Text = DR("DETAIL") & ""
                    lblAnnDate.Text = AppFormatDate(DR("ANNOUNCE_DATE"))
                    AnnType = ToInt(DR("ANNOUNCE_TYPE") & "")

                    Select Case AnnType
                        Case 1 'What s news
                            AnnFolder = FileURL & "KNOWLEDGES/"
                            'Case 2 ' จุลสาร
                            '    AnnFolder = FileURL & "JOURNALS/"
                            'Case 3 ' Download
                            '    AnnFolder = FileURL & "DOWNLOADS/"
                    End Select
                    lnkDoc.Text = DR("ATTACH_FILE") & ""
                    lnkDoc.NavigateUrl = AnnFolder & DR("ATTACH_FILE") & ""
                    lnkDoc.Target = "_blank"

                    If DR("IMAGE_FILE") & "" <> "" Then
                        ImgFile.ImageUrl = gsFilePath & "KNOWLEDGES/" & DR("IMAGE_FILE")
                    Else
                        ImgFile.ImageUrl = "../images/nopic.gif"
                    End If
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

End Class
