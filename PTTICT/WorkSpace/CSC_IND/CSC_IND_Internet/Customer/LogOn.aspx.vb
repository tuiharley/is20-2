Public Class LogOn
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtUsername As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnLogon As System.Web.UI.WebControls.Button
    Protected WithEvents frmLogon As System.Web.UI.HtmlControls.HtmlForm

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public IsLinkTo As Boolean = False
    Public LinkURL
    Public Msg, ServerAction As String
    Public ToPage As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Session("USER_NAME") = ""

        Msg = ""
        LinkURL = ""

        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            ToPage = Request.QueryString("ToPage") & ""
        Else
            ServerAction = Request.Form("ServerAction") & ""
            ToPage = Request.QueryString("ToPage") & ""
        End If

        Select Case ServerAction
            Case "LOGON"
                DoLogOn()
        End Select
    End Sub

    Private Sub DoLogOn()
        Dim UserName, Password As String

        Try
            UserName = Trim(txtUsername.Text).ToUpper
            If UserName <> "" And txtPassword.Text <> "" Then
                txtPassword.Text = DecodeKey("Password", txtPassword.Text)
                'Password = Encrypted(UserName, txtPassword.Text.ToUpper)
                Password = txtPassword.Text.ToUpper
                Msg = LoadInternetUser(UserName, Password)
            Else
                Msg = "กรุณาตรวจสอบข้อมูลอีกครั้ง ! เนื่องจากระบบไม่พบ User name และ Password"
            End If

            If Msg = "" Then
                'WriteAppLog("Log On")
                Initialize()
                'Session("USER_NAME") = "ADMIN"
                If ToPage = "" Then
                    Response.Redirect("Letter.aspx")
                Else
                    Response.Redirect(ToPage)
                End If
            Else
                If Msg = "PWD_EXPIRE" Then
                    Msg = " รหัสผ่านหมดอายุ ! กรุณาเปลี่ยนรหัสผ่านใหม่ "
                    IsLinkTo = True
                End If
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

End Class
