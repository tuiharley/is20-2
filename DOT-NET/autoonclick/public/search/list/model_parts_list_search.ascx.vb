Public Class model_parts_list_search
    Inherits System.Web.UI.UserControl

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public total_brand As Integer
    Public total_no_brand As Integer
    Public listModel As Array
    Public listBrand As Array

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        total_brand = PartsDB.getTotalParts(2)
        'total_no_brand = BrandDB.getTotalNoBrand
        listBrand = PartsDB.getAllParts(total_brand, 2)
        listModel = PartsTypeDB.getAllPartsType(total_brand)

    End Sub

End Class
