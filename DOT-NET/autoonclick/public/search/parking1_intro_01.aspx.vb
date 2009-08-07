Public Class parking1_intro_01
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

        setLink(Session("CurPage"), Session("fromPage"))
    End Sub
    Private Sub setLink(ByVal cur_Page As String, ByVal fromPage As String)
        Dim toPage1 As String, toPage2 As String, toPage3 As String

        Select Case fromPage
            Case "car"
                toPage1 = "search2_result_car"
                toPage2 = "search1_car2"
                toPage3 = "request1_car"
            Case "bike"
                toPage1 = "search2_result_moto"
                toPage2 = "search1_moto2"
                toPage3 = "request1_moto"
            Case "truck"
                toPage1 = "search2_result_truck"
                toPage2 = "search1_truck2"
                toPage3 = "request1_truck"
            Case "part"
                toPage1 = "search2_result_part"
                toPage2 = "search1_part2"
                toPage3 = "request1_part"
        End Select


        searchResult1.NavigateUrl = toPage1 & ".aspx?cur_Page=" & cur_Page
        searchAgain1.NavigateUrl = toPage2 & ".aspx?again=yes"
        requestSearch1.NavigateUrl = toPage3 & ".aspx"

        searchResult2.NavigateUrl = toPage1 & ".aspx?cur_Page=" & cur_Page
        searchAgain2.NavigateUrl = toPage2 & ".aspx?again=yes"
        requestSearch2.NavigateUrl = toPage3 & ".aspx"

    End Sub
End Class
