Public Class prolong1_confirmation
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents txtConclude As System.Web.UI.WebControls.Label

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
            Response.Redirect("startpage_example1.aspx")
        End If
        Session("isFirstTime") = ""


        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                Session.Add("noticeid", Request.QueryString("noticeid"))
                showTxtConclude()
            End If
        End If

    End Sub
    Private Sub showTxtConclude()
        Dim pack_id As Integer
        pack_id = NoticeDB.getPackageID(Session("noticeid"))

        txtConclude.CssClass = "Font_black"
        txtConclude.Text = CategoryDB.getCategoryName(NoticeDB.getCatID(Session("noticeid"))) & " เป็นระยะเวลา " & PackageDB.getPackageWeek(pack_id) & " เดือน ค่าบริการ " & PackageDB.getPackagePrice(pack_id) & " บาท"
    End Sub
    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("startpage_example1.aspx")
    End Sub
    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("prolong2_conclusion.aspx")
    End Sub
End Class
