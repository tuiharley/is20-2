Public Class dealer_top
    Inherits System.Web.UI.UserControl

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents banner As System.Web.UI.WebControls.Label

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
        Dim banner1 As String
        Dim mybanner As Banner

        mybanner = Bannerdb.getBanner("Logo Full Banner")

        If mybanner.Banner_link = "" Then
            banner1 = "<img src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='467' height='58' alt='' border='0' hspace='0' vspace='0'>"
        Else
            banner1 = "<a href='" & mybanner.Banner_link & "' target='_blank'><img src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' width='467' height='58' alt='' border='0' hspace='0' vspace='0'></a>"
        End If
        banner.Text = banner1
    End Sub

End Class
