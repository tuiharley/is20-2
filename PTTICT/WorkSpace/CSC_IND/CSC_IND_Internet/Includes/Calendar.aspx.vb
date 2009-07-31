Public Class Calendar
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "
    Protected WithEvents usrCalendar As System.Web.UI.WebControls.Calendar
    Protected WithEvents lstMonth As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtYear As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnGo As System.Web.UI.HtmlControls.HtmlInputButton
    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public CloseMe As Boolean
    Public ServerAction As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not Page.IsPostBack Then
            'LoadYear()
            lstMonth.SelectedValue = Today.Month
            If Today.Year < 2500 Then
                txtYear.Text = Today.Year + 543
            Else
                txtYear.Text = Today.Year
            End If
        End If
        ServerAction = Request.Form("ServerAction") & ""
        If ServerAction = "SEARCH" Then
            GoSelectDate()
        End If
       
    End Sub

    Private Sub GoSelectDate()
        'If ToInt(txtYear.Text) < 2500 Then
        '    txtYear.Text = ToInt(txtYear.Text) + 543
        'Else
        '    txtYear.Text = ToInt(txtYear.Text)
        'End If
        usrCalendar.VisibleDate = AppDateValue("01" & "/" & IIf(lstMonth.SelectedValue < 10, "0" & lstMonth.SelectedValue, lstMonth.SelectedValue) & "/" & txtYear.Text)
        usrCalendar.TodaysDate = AppDateValue("01" & "/" & IIf(lstMonth.SelectedValue < 10, "0" & lstMonth.SelectedValue, lstMonth.SelectedValue) & "/" & txtYear.Text)
        If ToInt(txtYear.Text) < 2500 Then
            txtYear.Text = ToInt(txtYear.Text) + 543
        Else
            txtYear.Text = ToInt(txtYear.Text)
        End If
        'usrCalendar.SelectedDate = AppDateValue("01" & "/" & IIf(lstMonth.SelectedValue < 10, "0" & lstMonth.SelectedValue, lstMonth.SelectedValue) & "/" & lstYear.SelectedValue)
    End Sub

    Private Sub usrCalendar_SelectionChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles usrCalendar.SelectionChanged
        Dim d As String
        CloseMe = True
        d = " <Script javascript> " + _
         "window.opener.GetDate('" & Request.Item("CtrlName") & "','" & AppFormatDate(usrCalendar.SelectedDate) & "')" + _
          " </Script>"
        Response.Write(d)
    End Sub

    'use for debugging
    Public Function AppThaiFormatDate(ByVal D) As String
        'AppThaiFormatDate = AppFormatDate(D)
    End Function

    'Private Sub LoadYear()
    '    Dim i, YN As Integer
    '    Dim Rng As Integer
    '    Dim ShwYY As String

    '    Rng = 10
    '    YN = Today.Year
    '    If YN < 2500 Then YN = YN + 543
    '    YN = YN - Rng
    '    For i = 0 To (Rng * 2) - 1
    '        ShwYY = CStr(YN + i)
    '        With lstYear
    '            .Items.Insert(i, ShwYY)
    '            .Items(i).Value = ShwYY
    '        End With
    '    Next
    'End Sub

    'Private Sub btnCal_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    '    'usrCalendar.SelectedDate = AppDateValue("01" & "/" & IIf(lstMonth.SelectedValue < 10, "0" & lstMonth.SelectedValue, lstMonth.SelectedValue) & "/" & lstYear.SelectedValue)
    'End Sub

    Private Sub usrCalendar_VisibleMonthChanged(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MonthChangedEventArgs) Handles usrCalendar.VisibleMonthChanged
        usrCalendar.TodaysDate = e.NewDate
        lstMonth.SelectedValue = usrCalendar.TodaysDate.Month
        If usrCalendar.TodaysDate.Year < 2500 Then
            txtYear.Text = usrCalendar.TodaysDate.Year + 543
        Else
            txtYear.Text = usrCalendar.TodaysDate.Year
        End If
    End Sub
End Class
