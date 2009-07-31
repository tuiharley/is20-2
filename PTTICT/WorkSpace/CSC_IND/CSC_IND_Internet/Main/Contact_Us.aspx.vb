Public Class Contact_Us
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtSubject As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtDetail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtMail As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtTel As System.Web.UI.WebControls.TextBox

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public URLLink As String
    Public ServerAction As String
    Public Msg As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        CountVisitPage(30, "pContactUs", Request.UserHostAddress)
        ReadConfigurations()
        Session("CURRENT_HEADER_MENU") = "CONTACT"
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
            InitData()
        Else
            ServerAction = Request.Form("ServerAction") & ""
        End If

        Select Case ServerAction
            Case "CANCEL"
                ClearData()
            Case "SEND"
                SendData()
          
        End Select
    End Sub

    Private Sub InitData()
        txtName.Text = Session("USER_DESC") & ""
        txtMail.Text = Session("EMAIL") & ""
        txtTel.Text = Session("TEL") & ""
    End Sub

    Private Sub ClearData()
        txtMail.Text = ""
        txtSubject.Text = ""
        txtDetail.Text = ""
        txtName.Text = ""
        txtTel.Text = ""
    End Sub

    Private Sub SendData()
        Dim EMailName As String
        Dim SendMsg As String
        Dim Subject As String
        Try
            If gsReceiverEMail <> "" Then
                EMailName = txtMail.Text
                If EMailName.IndexOf("@") > 0 Then
                    Subject = "ศูนย์บริการลูกค้าก๊าซธรรมชาติ (CSC) : " & Server.HtmlEncode(txtSubject.Text)
                    SendMsg = "<br><b>ถึงผู้ดูแลระบบ</b><br><br>"
                    SendMsg += "<b>หัวข้อ</b>&nbsp;:&nbsp;" + Server.HtmlEncode(txtSubject.Text) + "<br><br><br>"
                    SendMsg += "<b>รายละเอียด</b>&nbsp;:&nbsp;" + Server.HtmlEncode(txtDetail.Text) + "<br><br><br>"
                    SendMsg += "<b>จาก&nbsp;:&nbsp;" + Server.HtmlEncode(txtName.Text) + "&nbsp;(&nbsp;โทรศัพท์&nbsp;:&nbsp;" + Server.HtmlEncode(txtTel.Text) + "&nbsp;)&nbsp;</b>"
                    SendMsg = Replace(SendMsg, vbCrLf, "<br>")
                    SendMsg = Replace(SendMsg, " ", "&nbsp;")
                End If

                Msg = SendMail(EMailName, gsReceiverEMail, Subject, SendMsg, Nothing, True)
                If Msg = "" Then
                    URLLink = "../Customer/Thankyou.aspx"
                    ClearData()
                Else
                    URLLink = "../Customer/Sorry.aspx"
                End If
            End If
        Catch ex As Exception
            URLLink = "../Customer/Sorry.aspx"
        End Try

    End Sub

End Class
