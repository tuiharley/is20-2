Public Class WebForm2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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
        showCalendar()
    End Sub

    Private Sub showCalendar()
        Dim txt As String
        Dim i As Integer, y As Integer, x As Integer
        Dim cal(,) As Integer
        Dim week As Integer
        Dim dayNo As Integer = 1
        Dim FstDay As DateTime
        Dim totalDay As Integer
        Dim today As DateTime = Now


        txt = "<TABLE border=1 cellspacing=5>"
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

        FstDay = Month(Now) & "/1" & "/" & Year(Now)
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


        txt &= "<TR>"
        For i = 1 To week
            For y = 1 To 7
                If cal(y, i) = 0 Then
                    txt &= "<TD>&nbsp</TD>"
                Else
                    txt &= "<TD>" & cal(y, i) & "</TD>"
                End If
            Next
            txt &= "</TR>"
        Next


        txt &= "</TABLE>"


        Label1.Text = txt
    End Sub

End Class
