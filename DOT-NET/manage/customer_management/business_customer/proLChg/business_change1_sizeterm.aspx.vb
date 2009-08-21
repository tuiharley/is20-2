Public Class business_change1_sizeterm
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents oldPack As System.Web.UI.WebControls.Label
    Protected WithEvents oldMonth As System.Web.UI.WebControls.Label
    Protected WithEvents packageList As System.Web.UI.WebControls.Label
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents oldPack1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents oldMonth1 As System.Web.UI.WebControls.Label

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
        Dim myNotice As noticeS
        Dim myInvoice As invoice

        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../../public/login/login.aspx")
        'Else
        If Not IsPostBack Then
            Session("invoiceid") = Request.QueryString("invoiceid")
            Session("cust_id") = Request.QueryString("cust_id")
            myInvoice = InvoiceDB.getInvoiceInfo(Session("invoiceid"))
            myNotice = NoticeDB.getNoticesInfoD(myInvoice.noticeid)

            Session("noticeid") = myNotice.id
            Session("packageid") = myNotice.pacakgeId
            Session("invPackage") = myInvoice.packageid
            Session("cat") = myNotice.category

        End If

        showOPack(Session("packageid"), Session("invPackage"))
        listPackage(Session("packageid"), Session("invPackage"))
        'End If
        AjaxPro.Utility.RegisterTypeForAjax(GetType(business_change1_sizeterm))
    End Sub
    <AjaxPro.AjaxMethod()> _
    Public Function setNewPackage(ByVal newPack As Integer) As Integer

        Session("newPack") = newPack

        Return 1
    End Function

    Private Sub showOPack(ByVal packageid As Integer, ByVal invPack As Integer)

        oldPack.Text = PackageDB.getPackageName(packageid)
        oldMonth.Text = PackageDB.getPackageWeek(packageid)

        oldPack1.Text = PackageDB.getPackageName(invPack)
        oldMonth1.Text = PackageDB.getPackageWeek(invPack)

    End Sub
    Private Sub listPackage(ByVal packageid As Integer, ByVal invPack As Integer)

        Dim myQGroup As Queue

        Dim myPackage As String
        Dim myPackName As String = PackageDB.getPackageName(packageid)


        myQGroup = PackageDB.listPackageGroup(Session("cat"), 2, myPackName)
        For Each myPackage In myQGroup
            packageList.Text = packageList.Text & showPackage(PackageDB.getPackages(Session("cat"), 2, myPackage), packageid, invPack)
        Next

    End Sub
    Private Function showPackage(ByVal myQPackage As Queue, ByVal packageid As Integer, ByVal invPack As Integer) As String
        Dim sql As String
        Dim round As Integer = 1
        Dim rows As Integer = myQPackage.Count
        Dim myPackage As Package


        For Each myPackage In myQPackage
            If round = 1 Then
                sql = sql & "           <tr>"
                sql = sql & "             <td width=""139"" height=""78"" rowspan='" & rows & "'><div align=""center"">" & myPackage.Package_Name & "</div></td>"
                sql = sql & "             <td width=""139"" height=""78"" rowspan='" & rows & "'><div align=""center"">" & myPackage.Package_AreaStop & "</div></td>"
                sql = sql & "             <td width=""90"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
                sql = sql & "             <td width=""48"" height=""26""></td>"
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "             <td width=""139"" height=""26""><div align=""center"">"
                If packageid = myPackage.Package_Id Or invPack = myPackage.Package_Id Then
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
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "             <td width=""139"" height=""26""><div align=""center"">"
                If packageid = myPackage.Package_Id Or invPack = myPackage.Package_Id Then
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
        Dim noticeid As Integer = Session("noticeid")
        Dim cust_id As Integer = Session("cust_id")

        Session("noticeid") = Nothing
        Session("cust_id") = Nothing

        Response.Redirect("business_change_package.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid)
    End Sub
End Class
