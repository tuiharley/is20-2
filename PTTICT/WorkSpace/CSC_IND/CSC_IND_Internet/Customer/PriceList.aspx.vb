Public Class PriceList
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents lstMonth As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtYear As System.Web.UI.WebControls.TextBox
    Protected WithEvents dgResult As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlResult As System.Web.UI.WebControls.Panel
    Protected WithEvents lblMName As System.Web.UI.WebControls.Label
    Protected WithEvents lblExRate As System.Web.UI.WebControls.Label
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

    Public FilePath As String = ""
    Public Msg As String = ""
    Public ServerAction As String
    Public URLLink

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim MM, YY
        CountVisitPage(27, "pPriceList", Request.UserHostAddress)
        ReadConfigurations()
        Session("CURRENT_HEADER_MENU") = "CUSTOMER"
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            InitControl()
            MM = Request.QueryString("lstMonth") & ""
            If MM = "" Then MM = Today.Month
            YY = Request.QueryString("txtYear") & ""
            If YY = "" Then YY = Today.Year : If YY < 2400 Then YY += 543
            'If Request.Item("mode") & "" = "excel" Then Me.EnableViewState = False
        Else
            ServerAction = Request.Form("ServerAction") & ""
            MM = ToInt(lstMonth.SelectedValue)
            YY = ToInt(txtYear.Text)
            If YY < 2400 Then YY += 543
        End If
        SetListValue(lstMonth, MM)
        txtYear.Text = YY

        Select Case ServerAction
            Case "LOAD", "SEARCH"
                ShowReport()
                'LoadData()

        End Select

    End Sub

    Private Sub InitControl()
        InitMonthYear(lstMonth, txtYear)
    End Sub

    'Private Sub LoadData()
    '    Dim DT As DataTable
    '    Try
    '        lblMName.Text = TMonth(lstMonth.SelectedValue) & " ปี " & txtYear.Text
    '        DT = GetDT(LoadCurrencyList(ToInt(lstMonth.SelectedValue), ToInt(txtYear.Text)))
    '        Session("CurrencyList") = DT
    '        BindDG()
    '    Catch ex As Exception
    '        Msg = GetErrorMsg(ex, "loaddata")
    '    End Try

    'End Sub

    Private Sub ShowReport()
        Dim TRow As TableRow
        Dim TCell As TableCell
        Dim TLbl As Label
        Dim TSign As String = """"
        Dim CClass, Dclass
        Dim FixDay()
        Dim ShowDate()
        Dim ShowEx()
        Dim I As Integer
        Dim DT As DataTable
        Dim DR As DataRow
        Dim Twidth As Integer = 0
        Dim ChkDay As Integer
        Dim X As Integer
        Dim RTotal As Integer, MSum As Double, MAvg As Double

        Try
            ReDim FixDay(31) : ReDim ShowDate(31) : ReDim ShowEx(31)
            For I = 1 To 31
                FixDay(I) = I
                ShowDate(I) = "&nbsp;"
                ShowEx(I) = "&nbsp;"
            Next

            lblMName.Text = TMonth(lstMonth.SelectedValue) & " ปี " & txtYear.Text

            RTotal = 0 : MSum = 0 : MAvg = 0

            DT = GetDT(LoadCurrencyList(ToInt(lstMonth.SelectedValue), ToInt(txtYear.Text)))
            If Not IsNothing(DT) Then
                tabDisplay.Visible = True
                lblNotFound.Visible = False

                TRow = New TableRow
                TCell = New TableCell
                TCell.HorizontalAlign = HorizontalAlign.Center
                TCell.VerticalAlign = VerticalAlign.Top
                TCell.CssClass = "GridHead1"
                TCell.Width = TCell.Width.Pixel(100)
                TCell.Text = "วันที่"
                TRow.Cells.Add(TCell)
                Twidth += TCell.Width.Value


                TCell = New TableCell
                TCell.HorizontalAlign = HorizontalAlign.Center
                TCell.VerticalAlign = VerticalAlign.Top
                TCell.CssClass = "GridHead1"
                TCell.Width = TCell.Width.Pixel(150)
                TCell.Text = "อัตราแลกเปลี่ยน"
                TRow.Cells.Add(TCell)
                Twidth += TCell.Width.Value

                tabDisplay.Rows.Add(TRow)



                For Each DR In DT.Rows
                    If Not IsNothing(DR) Then
                        If Day(DR("EX_DATE")) = FixDay(Day(DR("EX_DATE"))) Then
                            X = Day(DR("EX_DATE"))
                            ShowDate(X) = AppFormatDate(DR("EX_DATE"), "EN", "DD-MON-YY")
                            ShowEx(X) = FormatNumber(DR("M_VALUE"), 4)
                        End If
                    End If
                Next
                For Each DR In DT.Rows
                    If Not IsNothing(DR) Then
                        RTotal += 1
                        MSum += ToNum(DR("M_VALUE") & "")
                    End If
                Next
                If RTotal <> 0 Then
                    MAvg = MSum / RTotal
                    MAvg = Math.Round(MAvg, 2)
                End If

                For I = 1 To 31
                    If (I Mod 2) = 0 Then
                        CClass = "TableAlternatingItem"
                    Else
                        CClass = "TableItem"
                    End If

                    TRow = New TableRow
                    TRow.CssClass = CClass

                    TCell = New TableCell
                    TCell.HorizontalAlign = HorizontalAlign.Center
                    TCell.Text = ShowDate(I)
                    TRow.Cells.Add(TCell)

                    TCell = New TableCell
                    TCell.HorizontalAlign = HorizontalAlign.Right
                    TCell.Text = ShowEx(I)
                    TRow.Cells.Add(TCell)

                    tabDisplay.Rows.Add(TRow)

                Next

                TRow = New TableRow
                TRow.CssClass = "TableTotal"
                TCell = New TableCell
                TCell.HorizontalAlign = HorizontalAlign.Center
                TCell.Text = "อัตราเฉลี่ย"
                TRow.Cells.Add(TCell)

                TCell = New TableCell
                TCell.HorizontalAlign = HorizontalAlign.Right
                TCell.Text = MAvg
                TRow.Cells.Add(TCell)

                tabDisplay.Rows.Add(TRow)

                If Twidth <> 0 Then tabDisplay.Width = tabDisplay.Width.Pixel(Twidth)
            Else
                tabDisplay.Visible = False
                lblNotFound.Visible = True
            End If


        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

    'Private Sub BindDG()
    '    Dim DT As DataTable
    '    Dim DR As DataRow
    '    Dim RTotal As Integer, MSum As Double, MAvg As Double
    '    Try
    '        RTotal = 0 : MSum = 0 : MAvg = 0
    '        DT = Session("CurrencyList")
    '        If Not IsNothing(DT) Then
    '            lblNotFound.Visible = False
    '            dgResult.Visible = True
    '            dgResult.DataSource = DT
    '            dgResult.DataBind()
    '            For Each DR In DT.Rows
    '                If Not IsNothing(DR) Then
    '                    RTotal += 1
    '                    MSum += ToNum(DR("M_VALUE") & "")
    '                End If
    '            Next
    '            If RTotal <> 0 Then
    '                MAvg = MSum / RTotal
    '                MAvg = Math.Round(MAvg, 2)
    '                lblExRate.Text = "อัตราแลกเปลี่ยนเฉลี่ย&nbsp;&nbsp;:&nbsp;&nbsp;" & MAvg
    '            End If
    '        Else
    '            dgResult.Visible = False
    '            lblNotFound.Visible = True
    '        End If
    '    Catch ex As Exception
    '        Session("CurrencyList") = Nothing
    '    End Try
    'End Sub

End Class
