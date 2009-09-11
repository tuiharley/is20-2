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
        Dim i As Integer


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


        txt &= "<TR><TD></TD></TR>"


        txt &= "</TABLE>"


        Label1.Text = txt
    End Sub

End Class
