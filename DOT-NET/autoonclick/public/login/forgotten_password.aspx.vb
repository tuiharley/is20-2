Imports System.Web.Mail
Public Class forgotten_password
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

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here



        AjaxPro.Utility.RegisterTypeForAjax(GetType(forgotten_password))
    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function sendPwd(ByVal email As String) As String
        Dim x As String
        Dim MyDs As New DataSet

        If Not Utilities.IsSQLInjected(email, "") Then

            MyDs = CustomerDB.existUser(email)
            If MyDs.Tables("CUSTOMER").Rows.Count > 0 Then
                '###### Mail preparing --------###
                Dim d As String
                d = Utilities.decrypt(MyDs.Tables("CUSTOMER").Rows(0).Item("Customer_Passwd"))

                Dim myMail As New MailMessage
                Dim mailbody As String
                myMail.To = email
                myMail.From = "auto-onclick@autoonclick.com"
                myMail.Subject = "Password Reminding"
                myMail.BodyFormat = MailFormat.Html
                mailbody = "Username ของท่านคือ : " & MyDs.Tables("CUSTOMER").Rows(0).Item("Customer_Username") & "<BR>"
                mailbody = mailbody & "พาสเวิสด์ของท่านคือ :" & d
                myMail.Body = mailbody
                EmailDB.sendMail(myMail)
                '######  Mail Sent #############

                x = "ระบบได้ทำการส่ง User,Password ให้ท่านทาง Email: " & email & " แล้ว"
            Else
                x = "ไม่พบ Email นี้ในระบบ"
            End If
        Else
            x = "ไม่พบ Email นี้ในระบบ"
        End If



        Return x
    End Function
End Class
