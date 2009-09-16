Public Class WebForm2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents CmbMonth As System.Web.UI.WebControls.DropDownList
    Protected WithEvents CmbYear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnOk As System.Web.UI.WebControls.Button

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here



        If Not IsPostBack Then
            showCalendar(Now)
        End If
    End Sub

    Private Sub showCalendar(ByVal inputDate As DateTime)
        Dim txt As String
        Dim i As Integer, y As Integer, x As Integer
        Dim cal(,) As Integer
        Dim week As Integer
        Dim dayNo As Integer = 1
        Dim FstDay As DateTime
        Dim totalDay As Integer
        Dim today As DateTime = inputDate
        Dim thatday As DateTime


        txt = "<TABLE border=1 width='80%'>"
        txt &= "<TR><TD colspan='7' align='center'>" & today.ToString("MMMM yyyy") & "</TD></TR>"
        txt &= "<TR>"
        txt &= "<TD>Sun</TD>"
        txt &= "<TD>Mon</TD>"
        txt &= "<TD>Tue</TD>"
        txt &= "<TD>Wed</TD>"
        txt &= "<TD>Thu</TD>"
        txt &= "<TD>Fri</TD>"
        txt &= "<TD>Sat</TD>"
        txt &= "</TR>"

        totalDay = Now.DaysInMonth(Year(today), Month(today))
        week = Math.Ceiling(totalDay / 7) + 1

        ReDim cal(7, week)

        FstDay = Month(today) & "/1" & "/" & Year(today)
        x = FstDay.DayOfWeek() + 1

        For i = 1 To week
            For y = 1 To 7
                If dayNo <= totalDay Then
                    If y = x Then
                        x = 0
                    End If
                    If x = 0 Then
                        cal(y, i) = dayNo
                        dayNo += 1
                    End If
                End If
            Next
        Next

        Dim MyDs As New DataSet
        Dim DTRow As DataRow()
        Dim MyRow As DataRow
        MyDs = ScheduleDB.getSchDS()


        For i = 1 To week
            txt &= "<TR height='80px'>"
            For y = 1 To 7
                If cal(y, i) = 0 Then
                    txt &= "<TD width='50px'>&nbsp</TD>"
                Else
                    thatday = Month(today) & "/" & cal(y, i) & "/" & Year(today)
                    DTRow = MyDs.Tables("Schedule_Task").Select("SCH_DATE >= #" & thatday.ToString("MM/dd/yyyy") & "# and SCH_DATE < #" & DateAdd(DateInterval.Day, 1, thatday).ToString("MM/dd/yyyy") & "#")
                    txt &= "<TD class='CreateTask_Empty' onmouseover=""this.className='CreateTask'"" onmouseout=""this.className='CreateTask_Empty'"" width='50px' "
                    txt &= " valign='top' onclick=""window.location.href='WebForm4.aspx?thatday=" & thatday & "'"">"
                    If DTRow.Length > 0 Then
                        txt &= cal(y, i) & "<BR>"
                        For Each MyRow In DTRow
                            txt &= "<a href='../WebForm1.aspx'>" & MyRow.Item("SCH_ID") & "</a><BR>"
                        Next
                    Else
                        txt &= cal(y, i)
                    End If
                    txt &= "</TD>"
                End If
            Next
            txt &= "</TR>"
        Next


        txt &= "</TABLE>"


        Label1.Text = txt
    End Sub

    Private Sub btnOk_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnOk.Click
        Dim MyDate As DateTime
        MyDate = CmbMonth.SelectedValue & "/1/" & CmbYear.SelectedValue
        showCalendar(MyDate)
    End Sub

    Private Sub CmbMonth_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CmbMonth.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim TmpDate As DateTime

        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        Dim i As Integer
        For i = 1 To 12
            TmpDate = i & "/1/" & Year(Now)

            DRow = DTable.NewRow()
            DRow.Item("MONTH") = TmpDate.ToString("MMMM")
            DRow.Item("MONTH_NAME") = TmpDate.ToString("MMMM")
            DTable.Rows.Add(DRow)
        Next
        CmbMonth.DataValueField = "MONTH"
        CmbMonth.DataTextField = "MONTH_NAME"
        CmbMonth.DataSource = DTable
        CmbMonth.DataBind()
        CmbMonth.SelectedValue = Now.ToString("MMMM")

        DTable.Dispose()
    End Sub
    Private Sub CmbYear_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CmbYear.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        Dim i As Integer
        Dim thisYear As Integer
        Dim minYear As Integer

        thisYear = Year(Now()) - ConstYear
        minYear = ScheduleDB.getMinYear

        For i = thisYear To minYear Step -1
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = i
            DRow.Item("YEAR_NAME") = i
            DTable.Rows.Add(DRow)
        Next
        CmbYear.DataTextField = "YEAR_NAME"
        CmbYear.DataValueField = "YEAR"
        CmbYear.DataSource = DTable
        CmbYear.DataBind()
        CmbYear.SelectedValue = Year(Now) - ConstYear

        DTable.Dispose()
    End Sub
End Class
