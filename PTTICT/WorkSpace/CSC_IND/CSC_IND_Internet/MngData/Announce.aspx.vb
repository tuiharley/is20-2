Public Class Announce
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnSearch As System.Web.UI.WebControls.ImageButton
    Protected WithEvents Imagebutton1 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents dgResult As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlResult As System.Web.UI.WebControls.Panel
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents btnDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Img1 As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtTitle As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtStartDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEndDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnAdd As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents lblHead As System.Web.UI.WebControls.Label
    Protected WithEvents frmSearchAnn As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents lstAnnType As System.Web.UI.WebControls.DropDownList

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
    Public ServerAction As String
    Public Msg As String
    Public APP_ID As Integer
    Public User_ID As Integer
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'CheckRoles(Session("ROLE_ID") & "" = "99")

        'Permission = Session("PERMISSIONS")
        'If CannotDo(TaskUser, actRead, Permission) And CannotDo(TaskUser, actModify, Permission) Then
        '    Response.Redirect("..\noRight.aspx")
        'End If
        'CountIntraPage(33, "pAnnounce")
        If Request.QueryString("Username") & "" <> "" Then Session("USER_NAME") = Request.QueryString("Username") & ""
        If Request.QueryString("Permission") & "" <> "" Then
            Session("PERMISSIONS") = Request.QueryString("Permission") & ""
            Session("RIGHTS") = Session("PERMISSIONS")
        End If

        btnAdd.Visible = CanDo(TaskAnnounceData, actModify, Session("PERMISSIONS"))

        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            InitListCombo()
        Else
            ServerAction = Request.Form("ServerAction") & ""
        End If

        Select Case ServerAction
            Case "LOAD"
                LoadData()
        End Select
    End Sub

    Private Sub InitListCombo()
        Dim SQL As String
        SQL = " SELECT * FROM LSTANNOUNCE_TYPE ORDER BY ANNOUNCE_TYPE"
        LoadNullList(lstAnnType, GetDT(LoadQueryList("ANN", SQL, "")), "ANNOUNCE_TYPE_DESC", "ANNOUNCE_TYPE")
    End Sub

    Private Sub LoadData()
        Try
            Session("AnnounceList") = GetDT(LoadAnnounce(0, FormatSearchText(txtTitle.Text), txtStartDate.Text, txtEndDate.Text, ToInt(lstAnnType.SelectedValue)))
            dgResult.CurrentPageIndex = 0
            BindDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("AnnounceList")
            If Not IsNothing(DT) Then
                lblHead.Visible = True
                pnlResult.Visible = True
                lblNotFound.Visible = False
                dgResult.DataSource = DT
                dgResult.DataBind()
            Else
                lblHead.Visible = False
                pnlResult.Visible = False
                lblNotFound.Visible = True
            End If
        Catch ex As Exception
            Session("AnnounceList") = Nothing
        End Try
    End Sub

    Private Sub dgResult_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles dgResult.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            e.Item.Attributes.Add("onclick", "javascript:SelectItem(" & dgResult.DataKeys(e.Item.ItemIndex) & ");")
            e.Item.Attributes.Add("onmouseover", "javascript:ShowBar(this);")
            e.Item.Attributes.Add("onmouseout", "javascript:HideBar(this)")
        End If
    End Sub

    Private Sub dgResult_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles dgResult.PageIndexChanged
        dgResult.CurrentPageIndex = e.NewPageIndex
        BindDG()
    End Sub
End Class
