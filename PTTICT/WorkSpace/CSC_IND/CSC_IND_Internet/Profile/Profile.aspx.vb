Public Class Profile
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

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
        Dim CheckID
        CheckID = Request.Item("PROFILE") & ""
        Select Case CheckID
            Case "2"
                CountVisitPage(3, "pSource", Request.UserHostAddress)
            Case "3"
                CountVisitPage(4, "pMission", Request.UserHostAddress)
            Case "4"
                CountVisitPage(5, "pService", Request.UserHostAddress)
            Case "5"
                CountVisitPage(6, "pInfoContact", Request.UserHostAddress)
            Case Else
                CountVisitPage(2, "pIntro", Request.UserHostAddress)
        End Select
    End Sub

End Class
