Public Class parking1_intro_01_moto
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents searchResult2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList2 As System.Web.UI.WebControls.Label
    Protected WithEvents searchResult1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList1 As System.Web.UI.WebControls.Label

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

        setLink(Session("CurPage"))
    End Sub
    Private Sub setLink(ByVal cur_Page As String)

        searchResult1.NavigateUrl = "search2_result_moto.aspx?cur_Page=" & cur_Page
        searchAgain1.NavigateUrl = "search1_moto2.aspx?again=yes"
        requestSearch1.NavigateUrl = "request1_moto.aspx"
        'parkingList1.NavigateUrl = "parking2_example_01.htm"

        searchResult2.NavigateUrl = "search2_result_moto.aspx?cur_Page=" & cur_Page
        searchAgain2.NavigateUrl = "search1_moto2.aspx?again=yes"
        requestSearch2.NavigateUrl = "request1_moto.aspx"
        'parkingList2.NavigateUrl = "parking2_example_01.htm"

    End Sub
End Class
