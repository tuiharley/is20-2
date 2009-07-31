Public Class Inplant_List
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents frmCarSearch As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents frmReportList As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents dgResult As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlResult As System.Web.UI.WebControls.Panel
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents frmSeachApp As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents frmSearchApp As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents lblCompany As System.Web.UI.WebControls.Label
    Protected WithEvents btnSearch As System.Web.UI.WebControls.ImageButton
    Protected WithEvents btnDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents txtDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents lstMethod As System.Web.UI.WebControls.DropDownList
    Protected WithEvents frmSearchContact As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents lstCompany As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnAdd As System.Web.UI.HtmlControls.HtmlImage
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

    Public ServerAction As String
    Public Msg As String
    Public ItemIndex
    Public URLLink As String = ""
    Public SortIndex, SortField As String
    Public Permission
    Public CompanyID As String
    Public CONT_ID As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here


        CountVisitPage(25, "pInplantList", Request.UserHostAddress)
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            CompanyID = Request.QueryString("CompanyID") & ""
            If CompanyID = "" Then CompanyID = Session("COMPANY_ID") & ""
        Else
            ServerAction = Request.Form("ServerAction") & ""
            CompanyID = Request.Form("CompanyID") & ""
        End If
        SortIndex = Request.Item("SortIndex") & ""
        SortField = Request.Item("SortField") & ""

        LoadCompany()

        Select Case ServerAction
            Case "SEARCH"
                LoadData()
            Case "LOAD"
                If CompanyID <> "" Then LoadData()
        End Select

    End Sub

    Private Sub LoadData()
        Dim AddCri As String
        Dim CustID As String
        Dim ConDate As String
        Dim ConMethod As Integer

        Try
            If CompanyID <> "" Then
                Session("ContactList") = GetDT(LoadInplantList(CompanyID, " CT.CONT_TYPE=1 AND (NOT CT.REPORT_FILE IS NULL)"))
                dgResult.CurrentPageIndex = 0
                BindDG()
            End If

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try


    End Sub

    Private Sub LoadCompany()
        Dim DR As DataRow
        Try
            DR = GetDR(LoadCompanyData(CompanyID))
            If Not IsNothing(DR) Then
                lblCompany.Text = "(" & DR("SHIP_TO") & ") " & DR("CUST_NAME") & ""
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "LOAD")
        End Try
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

    Private Sub dgResult_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataGridItemEventArgs) Handles dgResult.ItemDataBound
        Dim DT As DataTable
        Dim DR As DataRow
        If e.Item.ItemType = ListItemType.Item Or e.Item.ItemType = ListItemType.AlternatingItem Then
            DT = Session("ContactList")
            If Not IsNothing(DT) Then
                DR = DT.Rows(e.Item.ItemIndex)
                If Not IsNothing(DR) Then
                    If DR("REPORT_FILE") & "" <> "" Then
                        e.Item.Attributes.Add("onclick", "javascript:SelectItem('" & DR("REPORT_FILE") & "');")
                        e.Item.Attributes.Add("onmouseover", "javascript:ShowBar(this);")
                        e.Item.Attributes.Add("onmouseout", "javascript:HideBar(this)")
                    End If
                End If
            End If
        End If
    End Sub
End Class
