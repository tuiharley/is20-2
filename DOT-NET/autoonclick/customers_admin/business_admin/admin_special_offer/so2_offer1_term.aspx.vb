Public Class so2_offer1_term
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents packageList As System.Web.UI.WebControls.Label
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

        Dim Q As Queue, M As Queue
        Dim myGroup As Package
        Dim i As Integer, n As Integer
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Len(Session("isFirstTime")) > 0 Then
            Session("isFirstTime") = ""
            Response.Redirect("so1_list.aspx")
        End If
        Session("isFirstTime") = ""

        Session("cust_id") = 2
        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            M = PackageDB.getPackageGroup(6, 2)
            n = M.Count
            For i = 0 To n - 1
                myGroup = M.Dequeue
                Q = PackageDB.getPackages(6, 2, myGroup.Package_Name)
                'packageList.Text = packageList.Text & PackageDB.packageSelectionHTML(Q)
                packageList.Text = packageList.Text & showPackage(Q)
            Next
        End If


    End Sub

    Public Function showPackage(ByVal package As Queue) As String
        Dim sql As String
        Dim i As Integer, n As Integer = package.Count
        Dim myPackage As Package
        Dim price As String

        myPackage = package.Dequeue

        sql = sql & " 										<tr>"
        sql = sql & " 											<td height='1' colspan='6'></td>"
        sql = sql & " 										</tr>"
        sql = sql & " 										<tr>"
        sql = sql & " 											<td width='278' height='104' rowspan='4'><div align='center'>" & myPackage.Package_Name & "</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width='94' height='26'><div align='right'>" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;"
        sql = sql & " 												</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width='44' height='26'></td>"
        If myPackage.Package_Price = 0 Then
            price = "©цу"
        Else
            price = myPackage.Package_Price
        End If
        sql = sql & " 											<td width='83' height='26'><div align='right'>" & price & "</div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width='55' height='26'><div align='left'></div>"
        sql = sql & " 											</td>"
        sql = sql & " 											<td width='139' height='26'><div align='center'>"
        sql = sql & " 													<input type='radio' name='package' value='" & myPackage.Package_Id & "' onClick=""disableBtn('next_page',false);"">"
        sql = sql & " 												</div>"
        sql = sql & " 											</td>"
        sql = sql & " 										</tr>"

        For i = 0 To n - 2
            myPackage = package.Dequeue

            sql = sql & " 										<tr>"
            sql = sql & " 											<td width='94' height='26'><div align='right'>" & myPackage.Package_Week & "  &#3648;&#3604;&#3639;&#3629;&#3609;"
            sql = sql & " 												</div>"
            sql = sql & " 											</td>"
            sql = sql & " 											<td width='44' height='26'></td>"
            If myPackage.Package_Price = 0 Then
                price = "©цу"
            Else
                price = myPackage.Package_Price
            End If
            sql = sql & " 											<td width='83' height='26'><div align='right'>" & price
            sql = sql & " 												</div>"
            sql = sql & " 											</td>"
            sql = sql & " 											<td width='55' height='26'><div align='left'></div>"
            sql = sql & " 											</td>"
            sql = sql & " 											<td width='139' height='26'><div align='center'>"
            sql = sql & " 													<input type='radio' name='package' value='" & myPackage.Package_Id & "' onClick=""disableBtn('next_page',false);"">"
            sql = sql & " 												</div>"
            sql = sql & " 											</td>"
            sql = sql & " 										</tr>"

        Next
      


       
        sql = sql & " 										<tr>"
        sql = sql & " 											<td height='5' colspan='6'></td>"
        sql = sql & " 										</tr>"


        Return sql
    End Function

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("../startpage/startpage_example_with_package.aspx")
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Session("package_id") = Request.Form("package")
        Response.Redirect("so2_offer2_datas.aspx")
    End Sub
End Class
