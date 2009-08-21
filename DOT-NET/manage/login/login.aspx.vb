Imports System.Data
Imports System.Data.OleDb
Imports System.Security.Cryptography
Imports System.IO
Imports System.Text

Public Class login
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Pass As System.Web.UI.WebControls.TextBox
    Protected WithEvents User_name As System.Web.UI.WebControls.TextBox
    Protected WithEvents submit As System.Web.UI.WebControls.ImageButton
    Protected WithEvents RequiredUsername As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredPassword As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ValidationSummary1 As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents submit_email As System.Web.UI.WebControls.ImageButton
    Protected WithEvents EmailValidate As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents Err_login As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Dim flag As Boolean

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        If IsPostBack() Then
            RequiredUsername.Validate()
            RequiredPassword.Validate()

            If RequiredUsername.IsValid And RequiredPassword.IsValid Then
                flag = True
            Else
                flag = False
            End If
        End If


    End Sub

    Private Sub submit_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles submit.Click
        If flag = True Then
            checkUser()
        End If
    End Sub

    Private Sub checkUser()
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()
        Dim sql As String
        Dim encryptPass As String

        encryptPass = getPasswd(Pass.Text)

        sql = "SELECT UserID  FROM BackAdm WHERE UserName = '" & User_name.Text & "' and UserPass = '" & encryptPass & "' "
        Dim mycommand As New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()

        If reader.Read() Then
            Session.Add("cust_id", reader.Item("cust_id"))
            Response.Redirect("../parameters/cars.aspx")

        Else
        Err_login.Text = "ไม่มี Login นี้ในระบบ"
        End If
    End Sub

    Private Function getPasswd(ByVal passwd As String) As String
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

End Class
