Imports System.Data
Imports System.Data.OleDb
Imports System.Security.Cryptography
Imports System.IO
Imports System.Text
Public Class checkPassword
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public user_name As String
    Public paswd As String
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        user_name = Request.Form("usrAccount")
        paswd = Request.Form("paswd")
        Response.Write(paswd)
        Response.Write(user_name)
        ' checkUser(user_name, paswd)
    End Sub
    Private Sub checkUser(ByVal user_n As String, ByVal passwd As String)
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()
        Dim sql As String
        Dim encryptPass As String

        encryptPass = getPasswd(passwd)

        sql = "SELECT Customer_Id as cust_id, Customer_Username, Customer_Passwd, Customer_Type as type FROM Customer WHERE Customer_Username = '" & user_n & "' and Customer_Passwd = '" & encryptPass & "' "
        Dim mycommand As New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()
        ' Response.Write(sql)
        If reader.Read() Then
            Session.Add("cust_id", reader.Item("cust_id"))
            Session.Add("login", 1)
            If reader.Item("type") = True Then
                Session.Add("isDealer", 1)
                Response.Redirect("../admin/dealer_admin/dealer_admin_start/dealer_admin_start.aspx")
            Else
                Session.Add("isDealer", 0)
                Response.Redirect("../admin/private_admin/private_admin_start/private_admin_start.aspx")
                'Session.Add("user_id", reader.Item("cust_id"))
            End If

        Else
            Response.Redirect("login.aspx?not_found=Y")
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
