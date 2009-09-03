Public Class login
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents User_name As System.Web.UI.WebControls.TextBox
    Protected WithEvents Pass As System.Web.UI.WebControls.TextBox

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

        Session.Clear()
        Session.Add("conn", DBConnect.getStrDBConnect)

        AjaxPro.Utility.RegisterTypeForAjax(GetType(login))
    End Sub

    Private Function checkUser(ByVal usr As String, ByVal pwd As String) As String
        Dim encryptPass As String
        Dim MyDs As New DataSet
        Dim MyResult As String

        encryptPass = Utilities.getPasswd(pwd)
        MyDs = CustomerDB.checkLogin(usr, encryptPass)


        If MyDs.Tables("CUSTOMER").Rows.Count > 0 Then
            Session.Add("cust_id", MyDs.Tables("CUSTOMER").Rows(0).Item("cust_id"))
            Session.Add("login", 1)
            If MyDs.Tables("CUSTOMER").Rows(0).Item("type") = True Then
                Session.Add("isDealer", 1)
                'Response.Redirect("../../customers_admin/business_admin/startpage/startpage_example_with_package.aspx")
                MyResult = "../../customers_admin/business_admin/startpage/startpage_example_with_package.aspx"
            Else
                Session.Add("isDealer", 0)
                'Response.Redirect("../../customers_admin/private_admin/startpage_example1.aspx")
                MyResult = "../../customers_admin/private_admin/startpage_example1.aspx"
            End If
        Else

            MyResult = "ไม่สามารถ Login ได้"
        End If

        Return MyResult
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function doLogin(ByVal usr As String, ByVal pwd As String) As String
        Dim ans As String

        If Not Utilities.IsSQLInjected(usr, pwd) Then
            ans = checkUser(usr, pwd)
        Else
            ans = "ไม่สามารถ Login ได้"
        End If

        Return ans
    End Function

End Class
