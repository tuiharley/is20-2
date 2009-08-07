Public Class package6_change1_sizeterm
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents oldPack As System.Web.UI.WebControls.Label
    Protected WithEvents oldMonth As System.Web.UI.WebControls.Label
    Protected WithEvents packageList As System.Web.UI.WebControls.Label
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
            If Not IsPostBack Then
                Session("noticeid") = Request.QueryString("noticeid")
                Session("packageid") = Request.QueryString("packageid")
                Session("cat") = Request.QueryString("cat")
                'Response.Write(Session("cat"))
                'Session("noticeid") = 28
                'Session("packageid") = 18
                'Session("cat") = 1
            End If

            showOPack(Session("packageid"))
            listPackage(Session("packageid"))
        End If
        AjaxPro.Utility.RegisterTypeForAjax(GetType(package6_change1_sizeterm))
    End Sub
    <AjaxPro.AjaxMethod()> _
    Public Function setNewPackage(ByVal newPack As Integer) As Integer

        Session("newPack") = newPack

        Return 1
    End Function

    Private Sub showOPack(ByVal packageid As Integer)

        oldPack.Text = PackageDB.getPackageName(packageid)
        oldMonth.Text = PackageDB.getPackageWeek(packageid)
    End Sub
    Private Sub listPackage(ByVal packageid As Integer)

        Dim myQGroup As Queue

        Dim myPackage As String
        Dim myPackName As String = PackageDB.getPackageName(packageid)


        myQGroup = PackageDB.listPackageGroup(Session("cat"), 2, myPackName)
        For Each myPackage In myQGroup
            packageList.Text = packageList.Text & showPackage(PackageDB.getPackages(Session("cat"), 2, myPackage), packageid)
        Next

    End Sub
    Private Function showPackage(ByVal myQPackage As Queue, ByVal packageid As Integer) As String
        Dim sql As String
        Dim round As Integer = 1
        Dim rows As Integer = myQPackage.Count
        Dim myPackage As Package
        Dim price As String


        For Each myPackage In myQPackage
            If round = 1 Then
                sql = sql & "           <tr>"
                sql = sql & "             <td width=""139"" height=""78"" rowspan='" & rows & "'><div align=""center"">" & myPackage.Package_Name & "</div></td>"
                sql = sql & "             <td width=""139"" height=""78"" rowspan='" & rows & "'><div align=""center"">" & myPackage.Package_AreaStop & "</div></td>"
                sql = sql & "             <td width=""90"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
                sql = sql & "             <td width=""48"" height=""26""></td>"
                If myPackage.Package_Price = 0 Then
                    price = "©цу"
                Else
                    price = myPackage.Package_Price
                End If
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "             <td width=""139"" height=""26""><div align=""center"">"
                If packageid = myPackage.Package_Id Then
                    sql = sql & "in use"
                Else
                    sql = sql & "                 <input type=""radio"" name='rdNewPack' value='" & myPackage.Package_Id & "' >"
                End If
                sql = sql & "             </div></td>"
                sql = sql & "           </tr>"
            Else
                sql = sql & "           <tr>"
                sql = sql & "             <td width=""90"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
                sql = sql & "             <td width=""48"" height=""26""></td>"
                If myPackage.Package_Price = 0 Then
                    price = "©цу"
                Else
                    price = myPackage.Package_Price
                End If
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "             <td width=""139"" height=""26""><div align=""center"">"
                If packageid = myPackage.Package_Id Then
                    sql = sql & "in use"
                Else
                    sql = sql & "                 <input type=""radio"" name='rdNewPack' value='" & myPackage.Package_Id & "'>"
                End If
                sql = sql & "             </div></td>"
                sql = sql & "           </tr>"

            End If
            round = round + 1
        Next

        Return sql
    End Function

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("../startpage/startpage_example_with_package.aspx")
    End Sub
End Class
