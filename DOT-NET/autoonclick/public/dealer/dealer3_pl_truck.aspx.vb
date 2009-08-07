Public Class dealer3_pl_truck
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents packageList As System.Web.UI.WebControls.Label

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

        Dim Q As Queue, M As Queue
        Dim myGroup As Package
        Dim i As Integer, n As Integer

        M = PackageDB.getPackageGroup(3, 2)
        n = M.Count
        For i = 0 To n - 1
            myGroup = M.Dequeue
            Q = PackageDB.getPackages(3, 2, myGroup.Package_Name)
            packageList.Text = packageList.Text & PackageDB.packageHTML(Q)
        Next

    End Sub

End Class
