Public Class sky1
    Inherits System.Web.UI.UserControl

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents skysc As System.Web.UI.WebControls.Label

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
        Dim mybanner As Banner

        mybanner = Bannerdb.getBanner("Skyscraper")
        If mybanner.Banner_link = "" Then
            skysc.Text = "<IMG src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' height='600' width='120'>"
        Else
            skysc.Text = "<a href='" & mybanner.Banner_link & "' target='_blank'><IMG src='../../images/banner/" & mybanner.Banner_img & "?" & Now & "' height='600' width='120'></a>"
        End If
        '<img src="../scripts+pics/images/skyscraper_120x600.gif" alt="" height="600" width="120">
    End Sub

End Class
