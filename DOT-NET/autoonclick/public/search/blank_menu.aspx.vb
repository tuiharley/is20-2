Public Class blank_menu
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

        AjaxPro.Utility.RegisterTypeForAjax(GetType(blank_menu))
    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function correctCookie(ByVal carNum As Integer, ByVal carSaved As String) As String
        Dim newCookie As String
        Dim test As Queue
        Dim myCar As carCookie



        'test = Cookies.checkCarCookie(carNum, carSaved)
        'myCar = test.Dequeue

        newCookie = Cookies.removeExpireCar(Cookies.checkCarCookie(carNum, carSaved))
        'Response.Redirect("blank2.aspx")
        Return newCookie
    End Function

End Class
