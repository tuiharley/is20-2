Public Class request3_deletion_form
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents reqBike As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqTruck As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqPart As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqCAr As System.Web.UI.WebControls.HyperLink
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents password As System.Web.UI.WebControls.TextBox

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

        reqCar.NavigateUrl = "request1_car.aspx"
        reqBike.NavigateUrl = "request1_moto.aspx"
        reqTruck.NavigateUrl = "request1_truck.aspx"
        reqPart.NavigateUrl = "request1_part.aspx"

        AjaxPro.Utility.RegisterTypeForAjax(GetType(request3_deletion_form))
    End Sub

    <AjaxPro.AjaxMethod()> _
        Public Sub delSearch(ByVal pass As String, ByVal email As String)

        SearchDB.deleteSearch(Utilities.getPasswd(pass), email)

    End Sub
End Class
