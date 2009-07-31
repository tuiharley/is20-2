Public Class ReportContact
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lstZone As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtCustID As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtCust As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtFrDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtToDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstMethod As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnSearch As System.Web.UI.WebControls.ImageButton
    Protected WithEvents dgResult As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlResult As System.Web.UI.WebControls.Panel
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents frmSearchRpt As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnFrDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents btnToDate As System.Web.UI.HtmlControls.HtmlImage

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
    Public ItemIndex
    Public URLLink As String = ""
    Public SortIndex, SortField As String
    Public Permission
    Public CompanyID As String
    Public CONT_ID As String
    Public SoldTo As String
    Public ShipTo As String

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


        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            CompanyID = Request.QueryString("CompanyID") & ""
            SoldTo = Request.QueryString("SoldTo") & ""
            ShipTo = Request.QueryString("ShipTo") & ""
            InitComboList()
        Else
            ServerAction = Request.Form("ServerAction") & ""
            CompanyID = Request.Form("CompanyID") & ""
            SoldTo = Request.Form("SoldTo") & ""
            ShipTo = Request.Form("ShipTo") & ""
        End If
        CompanyID = ShipTo

        SortIndex = Request.Item("SortIndex") & ""
        SortField = Request.Item("SortField") & ""

        Select Case ServerAction
            Case "SEARCH"
                LoadData()
            Case "LOAD"
                If CompanyID <> "" Then LoadData()
        End Select

    End Sub

    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("ContactList")
            If Not IsNothing(DT) Then
                pnlResult.Visible = True
                lblNotFound.Visible = False
                dgResult.DataSource = DT
                dgResult.DataBind()
            Else
                pnlResult.Visible = False
                lblNotFound.Visible = True
            End If
        Catch ex As Exception
            Session("ContactList") = Nothing
        End Try
    End Sub


    Private Sub InitComboList()
        Dim SQL As String
        Try
            SQL = " SELECT * FROM LSTCONT_METHOD "
            LoadNullList(lstMethod, GetDT(LoadQueryList("METHODDS", SQL, " DESCRIPTION")), "DESCRIPTION", "CONT_METHOD")


            SQL = " SELECT * FROM V_OPERATE_ZONES "
            LoadNullList(lstZone, LoadQueryList("OPERATES", SQL, "OPERATE_ID"), "OPERATE_NAME", "OPERATE_ID")


        Catch ex As Exception
        End Try
    End Sub



    Private Sub LoadData()
        Dim AddCri As String
        Dim CustID As String
        Dim CustName As String
        Dim ConFrDate As String, ConToDate As String
        Dim ConMethod As Integer
        Dim ZoneID As String
        Dim EmpID As String
        Dim UnitId As String

        Try
            If CompanyID = "" Then
                'CustID = lstCompany.SelectedValue & ""
                CustID = FormatSearchText(txtCustID.Text)
                CustName = FormatSearchText(txtCust.Text)
                If lstMethod.SelectedValue & "" <> "" Then ConMethod = ToInt(lstMethod.SelectedValue & "")
                If txtFrDate.Text <> "" Then ConFrDate = txtFrDate.Text
                If txtToDate.Text <> "" Then ConToDate = txtToDate.Text
                ZoneID = lstZone.SelectedValue & ""
            Else
                CustID = CompanyID : ConFrDate = Nothing : ConToDate = Nothing : ConMethod = 0 : ZoneID = "" : CustName = ""
            End If
            'UnitId = Session("USER_UNITCODE") & ""
            'EmpID = Session("USER_NAME") & ""
            'If UnitId <> "" Or EmpID <> "" Then
            '    AddCri += " AND (CT.WORK_UNITCODE='" & UnitId & "' OR CT.CLOSE_EMP_ID='" & EmpID & "')"
            'End If

            If ZoneID <> "" Then
                AddCri += " AND (VCM.OPERATE_ID='" & ZoneID & "')"
            End If
            Session("ContactList") = GetDT(SearchContactList(CustID, CustName, ConFrDate, ConToDate, ConMethod, AddCri))
            dgResult.CurrentPageIndex = 0
            BindDG()

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try


    End Sub

    Private Sub dgResult_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles dgResult.ItemDataBound
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            Dim DT As DataTable
            Dim DR As DataRow
            Dim I As Integer
            DT = Session("ContactList")
            If Not IsNothing(DT) Then
                DR = DT.Select("CONT_ID='" & dgResult.DataKeys(e.Item.ItemIndex) & "'")(0)
                If Not IsNothing(DR) Then
                    For I = 0 To e.Item.Cells.Count - 2
                        e.Item.Cells(I).Attributes.Add("onclick", "javascript:SelectItem('" & dgResult.DataKeys(e.Item.ItemIndex) & "');")
                        e.Item.Cells(I).Attributes.Add("onmouseover", "javascript:ShowBar(this);")
                        e.Item.Cells(I).Attributes.Add("onmouseout", "javascript:HideBar(this)")
                    Next
                End If
            End If

        End If
    End Sub

    Private Sub dgResult_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles dgResult.PageIndexChanged
        dgResult.CurrentPageIndex = e.NewPageIndex
        BindDG()
    End Sub

    Private Sub SortColumn(ByVal sortString As String)
        Dim index As Integer
        Dim DV As DataView
        Dim DT As DataTable

        index = InStr(sortString, ",")
        SortIndex = sortString.Substring(0, index - 1) : sortString = sortString.Substring(index)

        DT = Session("ContactList")
        If Not IsNothing(DT) Then
            If InStr(SortField, sortString) > 0 Then
                If SortField = "" Or InStr(SortField, "DESC") > 0 Then
                    SortField = sortString & " ASC"
                ElseIf InStr(SortField, "ASC") > 0 Then
                    SortField = sortString & " DESC"
                End If
            Else
                SortField = sortString & " ASC"
            End If

            DT.DefaultView.Sort = SortField
            Session("ContactList") = DT

            dgResult.CurrentPageIndex = 0
            ChangeDataGridHeader()
        End If
        BindDG()
    End Sub

    Private Sub ChangeDataGridHeader()
        Dim ColName As String
        Dim I, C As Integer

        If IsNumeric(SortIndex) Then
            ' Clear Old Header Text
            For I = 0 To dgResult.Columns.Count - 1
                ColName = "" : ColName = dgResult.Columns(I).HeaderText
                C = -1 : C = InStr((ColName & ""), "<img src")
                If C > 0 Then
                    dgResult.Columns(I).HeaderText = dgResult.Columns(I).HeaderText.Substring(0, C - 1)
                End If
            Next

            ' Create New Header Text
            ColName = dgResult.Columns(SortIndex).HeaderText
            If InStr(SortField, " DESC") > 0 Then
                dgResult.Columns(SortIndex).HeaderText &= "<img src='../images/button/arrow_down.gif' border=0>"
            Else
                dgResult.Columns(SortIndex).HeaderText &= "<img src='../images/button/arrow_up.gif' border=0>"
            End If
        End If
    End Sub

    Private Sub dgResult_SortCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridSortCommandEventArgs) Handles dgResult.SortCommand
        SortColumn(e.SortExpression)
    End Sub

End Class
