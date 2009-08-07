Public Class dealer3_pl_car
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

        'Dim Q As Queue, M As Queue
        'Dim myGroup As Package
        'Dim i As Integer, n As Integer

        'M = PackageDB.getPackageGroup(1, 2)
        'n = M.Count
        'For i = 0 To n - 1
        '    myGroup = M.Dequeue
        '    Q = PackageDB.getPackages(1, 2, myGroup.Package_Name)
        '    packageList.Text = packageList.Text & PackageDB.packageHTML(Q)
        'Next

        Dim myQGroup As Queue

        Dim myPackage As String
        'Dim myPackName As String = PackageDB.getPackageName(packageid)


        myQGroup = PackageDB.listPackageGroup2(1, 2)
        For Each myPackage In myQGroup
            packageList.Text = packageList.Text & showPackage(PackageDB.getPackages(1, 2, myPackage))
        Next

    End Sub
   
    Private Function showPackage(ByVal myQPackage As Queue) As String
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
                sql = sql & "           </tr>"
            Else
                sql = sql & "           <tr>"
                sql = sql & "             <td width=""90"" height=""26""><div align=""right"">" & myPackage.Package_Week & " &#3648;&#3604;&#3639;&#3629;&#3609;</div></td>"
                sql = sql & "             <td width=""48"" height=""26""></td>"
                sql = sql & "             <td width=""86"" height=""26""><div align=""right"">" & myPackage.Package_Price & "</div></td>"
                sql = sql & "             <td width=""52"" height=""26""></td>"
                sql = sql & "           </tr>"

            End If
            round = round + 1
        Next

        Return sql
    End Function
End Class
