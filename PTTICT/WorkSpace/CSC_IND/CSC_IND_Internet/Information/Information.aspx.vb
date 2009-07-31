Public Class Information
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
        CheckID = Request.Item("INFO") & ""
        Select Case CheckID
            Case "2"
                CountVisitPage(8, "pInfo2", Request.UserHostAddress)
            Case "3"
                CountVisitPage(9, "pInfo3", Request.UserHostAddress)
            Case "4"
                CountVisitPage(10, "pInfo4", Request.UserHostAddress)
            Case "5"
                CountVisitPage(11, "pInfo5", Request.UserHostAddress)
            Case "6"
                CountVisitPage(12, "pInfo6", Request.UserHostAddress)
            Case "7"
                CountVisitPage(13, "pInfo7", Request.UserHostAddress)
            Case Else
                CountVisitPage(7, "pInfo1", Request.UserHostAddress)
        End Select
    End Sub

End Class
