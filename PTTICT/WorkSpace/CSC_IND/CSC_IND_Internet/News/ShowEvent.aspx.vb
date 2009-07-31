Public Class ShowEvent
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnSearch As System.Web.UI.WebControls.ImageButton
    Protected WithEvents dgResult As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlResult As System.Web.UI.WebControls.Panel
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents frmSearchCust As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents btnDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Img1 As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Imagebutton1 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents txtStartDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEndDate As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtHeadLine As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCDate As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents tabDisplay As System.Web.UI.WebControls.Table

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


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'CheckRoles(Session("ROLE_ID") & "" = "99")

        'Permission = Session("PERMISSIONS")
        'If CannotDo(TaskUser, actRead, Permission) And CannotDo(TaskUser, actModify, Permission) Then
        '    Response.Redirect("..\noRight.aspx")
        'End If

        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
        Else
            ServerAction = Request.Form("ServerAction") & ""
        End If

        LoadData()
        
    End Sub


    Private Sub LoadData()
        Dim TRow As TableRow
        Dim TCell As TableCell
        Dim TLbl As Label
        Dim TSign As String = """"
        Dim CClass, Dclass
        Dim RNum As Integer = 0
        Dim DT As DataTable
        Dim DR As DataRow
        Dim R As Integer = 0
        Dim TImg As HtmlImage
        Try
            TRow = New TableRow
            TCell = New TableCell
            TCell.HorizontalAlign = HorizontalAlign.Center
            TCell.VerticalAlign = VerticalAlign.Top
            TCell.CssClass = "GridHead1"
            TCell.Width = TCell.Width.Pixel(120)
            TCell.Text = "วันที่ "
            TRow.Cells.Add(TCell)

            TCell = New TableCell
            TCell.HorizontalAlign = HorizontalAlign.Center
            TCell.VerticalAlign = VerticalAlign.Top
            TCell.CssClass = "GridHead1"
            TCell.Width = TCell.Width.Pixel(480)
            TCell.Text = "เรื่อง"
            TRow.Cells.Add(TCell)
            tabDisplay.Rows.Add(TRow)

            R = 0
            DT = GetDT(ShowEmergencyEvent(0, "", "", ""))
            If Not IsNothing(DT) Then
                tabDisplay.Visible = True
                lblNotFound.Visible = False
                For Each DR In DT.Rows
                    If Not IsNothing(DR) Then
                        If (R Mod 2) = 0 Then
                            CClass = "TableItem"
                        Else
                            CClass = "TableAlternatingItem"
                        End If

                        TRow = New TableRow
                        TRow.CssClass = CClass

                        TCell = New TableCell
                        TCell.HorizontalAlign = HorizontalAlign.Center
                        TCell.VerticalAlign = VerticalAlign.Top
                        TCell.Text = AppFormatDate(DR("EVENT_DATE"))
                        TRow.Cells.Add(TCell)

                        If DR("SHOW_HOT") & "" <> "" Then
                            TCell = New TableCell
                            TCell.HorizontalAlign = HorizontalAlign.Left
                            TCell.VerticalAlign = VerticalAlign.Top
                            TCell.Text = DR("TITLE") & "" & "&nbsp;&nbsp;<img src='../images/icon/hot.gif'>"
                            TRow.Cells.Add(TCell)
                        Else
                            TCell = New TableCell
                            TCell.HorizontalAlign = HorizontalAlign.Left
                            TCell.VerticalAlign = VerticalAlign.Top
                            TCell.Text = DR("TITLE") & ""
                            TRow.Cells.Add(TCell)
                        End If
                        TRow.Attributes.Add("onclick", "javascript:SelectItem(" & DR("EVENT_ID") & ");")
                        TRow.Attributes.Add("onmouseover", "javascript:ShowBar(this);")
                        TRow.Attributes.Add("onmouseout", "javascript:HideBar(this)")
                        tabDisplay.Rows.Add(TRow)

                    End If
                    R += 1
                Next
            Else
                tabDisplay.Visible = False
                lblNotFound.Visible = True
            End If


        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub


   

End Class
