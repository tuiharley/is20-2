Public Class request2_response_saved
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents reqBike As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqTruck As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqPart As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqCAr As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqDel As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqDel2 As System.Web.UI.WebControls.HyperLink

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
        If Not IsPostBack Then

            Dim requested As RequestSearch
            Dim i As Integer

            requested.cat = Request.QueryString("cat")
            requested.statement = Session("searchSQL1")
            requested.orderBy = Session("searchOrderBY1").GetValue(0)
            requested.keyOrder = Session("searchOrderBY1").GetValue(1)
            requested.password = Session("pass")
            requested.email = Session("email")

            i = insertSearch(requested)

            Session.Remove("searchSQL1")
            Session.Remove("searchOrderBY1")
            Session.Remove("pass")
            Session.Remove("email")

            Session.Remove("brandIndex")
            Session.Remove("modelIndex")
            Session.Remove("proinceIndex")
            Session.Remove("districtIndex")

        End If

        setLink()
    End Sub
    Private Sub setLink()

        reqCAr.NavigateUrl = "request1_car.aspx"
        reqBike.NavigateUrl = "request1_moto.aspx"
        reqTruck.NavigateUrl = "request1_truck.aspx"
        reqPart.NavigateUrl = "request1_part.aspx"
        reqDel.NavigateUrl = "request3_deletion_form.aspx"
        reqDel2.NavigateUrl = "request3_deletion_form.aspx"
    End Sub

End Class
