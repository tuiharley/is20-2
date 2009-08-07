Public Class package1_newselection2_sizeterm
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents packageList As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents prev_page As System.Web.UI.WebControls.Button

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
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Len(Session("isFirstTime")) > 0 Then
            Session("isFirstTime") = ""
            Response.Redirect("car/package2_list.aspx")
        End If
        Session("isFirstTime") = ""


        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            M = PackageDB.getPackageGroup(Session("package_type"), 2)
            n = M.Count
            For i = 0 To n - 1
                myGroup = M.Dequeue
                Q = PackageDB.getPackages(Session("package_type"), 2, myGroup.Package_Name)
                packageList.Text = packageList.Text & PackageDB.packageSelectionHTML(Q)
            Next
        End If

    End Sub

    Private Sub prev_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles prev_page.Click
        Response.Redirect("package1_newselection1_category.aspx")
    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("../startpage/startpage_example_with_package.aspx")
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Session("package_id") = Request.Form("package")
        Response.Redirect("package1_newselection3_conclusion.aspx")
    End Sub
End Class
