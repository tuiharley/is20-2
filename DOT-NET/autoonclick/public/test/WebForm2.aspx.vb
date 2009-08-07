Public Class WebForm2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents PlaceHolder1 As System.Web.UI.WebControls.PlaceHolder

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
        Dim btnClick As HtmlButton = New HtmlButton
        btnClick.InnerText = "Button 1"
        PlaceHolder1.Controls.Add(btnClick)
        btnClick = New HtmlButton
        btnClick.InnerText = "Button 2"
        PlaceHolder1.Controls.Add(btnClick)
        btnClick = New HtmlButton
        btnClick.InnerText = "Button 3"
        PlaceHolder1.Controls.Add(btnClick)


        'Response.Write(NoticeDetailDB.getDetailShow(1, 1))
    End Sub

End Class
