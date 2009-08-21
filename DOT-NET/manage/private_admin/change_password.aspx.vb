Imports System.Security.Cryptography
Imports System.IO
Imports System.Text

Public Class change_password
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents OoldpassNotValid As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents Pass As System.Web.UI.WebControls.TextBox
    Protected WithEvents UsernameRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents UsernameRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents PasswordRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents PasswordRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents CompareValidator1 As System.Web.UI.WebControls.CompareValidator
    Protected WithEvents ConfirmRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents password As System.Web.UI.WebControls.TextBox
    Protected WithEvents confirm As System.Web.UI.WebControls.TextBox
    Protected WithEvents oldPassRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents OldPassValidate As System.Web.UI.WebControls.RegularExpressionValidator

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
    End Sub

    Private Function validOldpass(ByVal cust_id As Integer, ByVal old_pass As String) As Boolean
        Dim encrypted As String
        encrypted = encrypt_text(old_pass)
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Session("cust_id") = 0 Then
            Response.Redirect("../../public/login/login.aspx")
        Else
            If CustomerDB.checkUsrPass(cust_id, encrypted) Then

                CustomerDB.setNewPass(cust_id, encrypt_text(password.Text))
                Response.Redirect("../../public/login/login.aspx")
            Else
                Utilities.showAlert(Page, Pass, "Password เก่าไม่ถูกต้องค่ะ")
            End If
        End If


    End Function

    Private Function encrypt_text(ByVal passwd As String) As String
        Dim key As String = "onclick"
        Dim encrypted As String
        Dim encryptedPassword As New MemoryStream
        Dim RC2 As New RC2CryptoServiceProvider
        RC2.Key = Encoding.ASCII.GetBytes(key)
        Dim iv() As Byte = {11, 12, 33, 50, 78, 25, 72, 84}
        RC2.IV = iv
        Dim myEncryptor As ICryptoTransform = RC2.CreateEncryptor()
        Dim pwd() As Byte = Encoding.ASCII.GetBytes(passwd)
        Dim myCryptoStream As New CryptoStream(encryptedPassword, myEncryptor, CryptoStreamMode.Write)
        myCryptoStream.Write(pwd, 0, pwd.Length)
        myCryptoStream.Close()
        encrypted = Convert.ToBase64String(encryptedPassword.ToArray())

        Return encrypted
    End Function


    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        validOldpass(Session("cust_id"), Pass.Text)
    End Sub

End Class
