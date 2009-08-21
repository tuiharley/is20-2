Public Class prolongterm
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
        '
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else
        If Not IsPostBack Then
            Session("Pcust_id") = Request.QueryString("cust_id")
            listPackage(Request.QueryString("packageid"), Request.QueryString("cat"), 2)
            Session("packageid") = Request.QueryString("packageid")
            Session("noticeid") = Request.QueryString("noticeid")
        End If
        'End If

    End Sub
    Private Sub listPackage(ByVal packageid As Integer, ByVal cat As Integer, ByVal packType As Integer)

        Dim myQGroup As Queue
        Dim myPackName As String = PackageDB.getPackageName(packageid)


        package.Text = package.Text & showPack(PackageDB.getPackages2(cat, packType, myPackName))

    End Sub
    Private Function showPack(ByVal myQPackage As Queue) As String
        Dim sql As String
        Dim round As Integer = 1
        Dim rows As Integer = myQPackage.Count
        Dim myPackage As Package

        For Each myPackage In myQPackage
            If round = 1 Then
                sql = sql & " <tr>"
                sql = sql & "             <td width=""139"" height=""78"" rowspan='" & rows & "'><div align=""center"">" & myPackage.Package_Name & "</div></td>"
                sql = sql & "             <td width=""139"" height=""78"" rowspan='" & rows & "'><div align=""center"">" & myPackage.Package_AreaStop & "</div></td>"
                sql = sql & "             <td width=""90"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
                sql = sql & "             <td width=""48"" height=""26""></td>"
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "             <td width=""139"" height=""26""><div align=""center"">"
                sql = sql & "                 <input type=""radio"" name='rdNewPack' value='" & myPackage.Package_Id & "' checked>"
                sql = sql & "             </div></td>"
                sql = sql & "           </tr>"
            Else
                sql = sql & " <tr>"
                sql = sql & "             <td width=""90"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
                sql = sql & "             <td width=""48"" height=""26""></td>"
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "             <td width=""139"" height=""26""><div align=""center"">"
                sql = sql & "                 <input type=""radio"" name='rdNewPack' id='rdNewPack' value='" & myPackage.Package_Id & "'>"
                sql = sql & "             </div></td>"
                sql = sql & "           </tr>"
            End If
            round = round + 1
        Next


        Return sql
    End Function

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Dim cust_id As Integer = Session("Pcust_id")
        Session.Remove("Pcust_id")

        Response.Redirect("../lists/business_package_list.aspx?cust_id=" & cust_id)
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("prolongconclusion.aspx?rdNewPack=" & Request.Form("rdNewPack"))
    End Sub
End Class
