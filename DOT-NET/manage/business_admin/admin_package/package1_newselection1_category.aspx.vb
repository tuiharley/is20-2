Public Class package1_newselection1_category
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents package As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button

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
        Dim myQ As Queue
        Dim packType As PackageType
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'Session("cust_id") = 28

        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else
            If Not IsPostBack Then
                myQ = PackageTypeDB.getPackageType(Session("cust_id"))
                For Each packType In myQ
                    package.Text = package.Text & showPackage(packType.Package_Type, packType.Package_TypeDesc)
                Next
            End If
        'End If

    End Sub
    Private Function showPackage(ByVal packtype As Integer, ByVal packdesc As String) As String
        Dim x As String

        x = "<tr>"
        x = x & "				<td width='133' height='26' ><div align='center'>"
        x = x & "						<input type='radio' name='packtype' value='" & packtype & "' onClick=""disableBtn('next_page',false);"">"
        x = x & "					</div>"
        x = x & "				</td>"
        x = x & "				<td width='11' ></td>"
        x = x & "				<td width='549' height='26'>" & packdesc & "</td>"
        x = x & "			</tr>"

        Return x
    End Function

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("../startpage/startpage_example_with_package.aspx?cust_id=" & Session("cust_id"))
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Session("package_type") = Request.Form("packtype")
        Response.Redirect("package1_newselection2_sizeterm.aspx")
    End Sub
End Class
