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
    Protected WithEvents login_submit As System.Web.UI.WebControls.Button
    Protected WithEvents RequiredUsername As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents User_name As System.Web.UI.WebControls.TextBox
    Protected WithEvents Pass As System.Web.UI.WebControls.TextBox
    Protected WithEvents RequiredPassword As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents resultLogin As System.Web.UI.WebControls.TextBox
    Protected WithEvents loginFail As System.Web.UI.WebControls.CustomValidator

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public flag As Boolean
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        Session.Clear()
        Session.Add("conn", DBConnect.getStrDBConnect)

    End Sub
    
    Function IsSQLInjected(ByVal usr As String, ByVal pass As String) As Boolean

        If InStr(usr, "'") Then
            Return True
        End If
        If InStr(pass, "'") Then
            Return True
        End If

        If InStr(usr, "=") Then
            Return True
        End If
        If InStr(pass, "=") Then
            Return True
        End If

        If InStr(usr, "OR") Then
            Return True
        End If
        If InStr(pass, "OR") Then
            Return True
        End If

        If InStr(usr, "or") Then
            Return True
        End If
        If InStr(pass, "or") Then
            Return True
        End If

        Return False
    End Function
    Private Sub checkUser()
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()
        Dim sql As String
        Dim encryptPass As String

        encryptPass = getPasswd(Pass.Text)

        sql = "SELECT Customer_Id as cust_id, Customer_Username, Customer_Passwd, Customer_Type as type FROM Customer WHERE Customer_Username = '" & User_name.Text & "' and Customer_Passwd = '" & encryptPass & "' "
        Dim mycommand As New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()
        ' Response.Write(sql)
        If reader.Read() Then
            Session.Add("cust_id", reader.Item("cust_id"))
            Session.Add("login", 1)
            If reader.Item("type") = True Then
                Session.Add("isDealer", 1)
                Response.Redirect("../../customers_admin/business_admin/startpage/startpage_example_with_package.aspx")
                'Response.Write(Session("isDealer"))
            Else
                Session.Add("isDealer", 0)
                Response.Redirect("../../customers_admin/private_admin/startpage_example1.aspx")
                'Response.Write(Session("isDealer"))
            End If
        Else
            Response.Redirect("login.aspx?login=fail")
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


    Private Sub login_submit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles login_submit.Click
        If Not IsSQLInjected(User_name.Text, Pass.Text) Then
            checkUser()
        Else
            Response.Redirect("login.aspx?login=fail")
        End If

    End Sub
End Class
