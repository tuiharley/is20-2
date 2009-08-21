Imports System.Data
Imports System.Data.OleDb
Imports System.Web.Mail
Imports System.Text
Imports System.Security.Cryptography
Imports System.IO

Public Class lost_password
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
    Protected WithEvents RequiredEmail As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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

        If IsPostBack() Then
            EmailValidate.Validate()

            If EmailValidate.IsValid Then
                If existUser(email.Text) Then
                    sendMailto(email.Text)
                    'email.Text = ""
                End If
            End If
        End If
    End Sub

    Private Function existUser(ByVal email As String) As Boolean
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()
        Dim sql As String

        sql = "SELECT Customer_Id FROM Customer WHERE Customer_Email = '" & email & "'"
        Dim mycommand As New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()

        If reader.Read() Then
            Return True
        Else
            Label1.Text = "ไม่มี Email นี้ในระบบ"
            Return False
        End If
    End Function

    Private Sub sendMailto(ByVal email As String)
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()
        Dim sql As String

        sql = "SELECT Customer_Username,Customer_Passwd FROM Customer WHERE Customer_Email = '" & email & "'"
        Dim mycommand As New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()

        If reader.Read() Then

            Dim d As String
            d = decrypt(reader.Item("Customer_Passwd"))

            Dim myMail As New MailMessage
            Dim mailbody As String
            myMail.To = email
            myMail.From = "auto-onclick@autoonclick.com"
            myMail.Subject = "Password Reminding"
            myMail.BodyFormat = MailFormat.Html
            mailbody = "Username ของท่านคือ : " & reader.Item("Customer_Username") & "<BR>"
            mailbody = mailbody & "พาสเวิสด์ของท่านคือ :" & d
            myMail.Body = mailbody
            SmtpMail.Send(myMail)
            Label1.Text = "Password ได้ถูกส่งทางเมลล์เรียบร้อยแล้วครับ"

        End If


        
    End Sub

    Private Function decrypt(ByVal passwd As String) As String
        Dim key As String = "onclick"
        Dim decrypted As String
        Dim decryptedPassword As New MemoryStream
        Dim RC2 As New RC2CryptoServiceProvider
        RC2.Key = Encoding.ASCII.GetBytes(key)
        Dim iv() As Byte = {11, 12, 33, 50, 78, 25, 72, 84}
        RC2.IV = iv
        Dim myDecryptor As ICryptoTransform = RC2.CreateDecryptor()

        Dim encryptedPassword() As Byte = Convert.FromBase64String(passwd)
        Dim myCryptoStream As New CryptoStream(decryptedPassword, myDecryptor, CryptoStreamMode.Write)
        myCryptoStream.Write(encryptedPassword, 0, encryptedPassword.Length)
        myCryptoStream.Close()
        decrypted = Encoding.ASCII.GetString(decryptedPassword.ToArray())

        Return decrypted
    End Function
End Class
