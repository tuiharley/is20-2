Public Class ChangePwd
    Inherits System.Web.UI.Page
    Public Msg, ServerAction As String

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents RequiredFieldValidator1 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator2 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents RequiredFieldValidator3 As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents CompareValidator1 As System.Web.UI.WebControls.CompareValidator
    Protected WithEvents ValidationSummary1 As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents lblUsername As System.Web.UI.WebControls.Label
    Protected WithEvents txtOldPwd As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtNewPwd As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtConfirmPwd As System.Web.UI.WebControls.TextBox

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
        ' CountIntraPage(44, "pChangePwd")
        Msg = ""
        lblUsername.Text = Session("USER_NAME")
        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction")
        Else
            ServerAction = Request.Form("ServerAction")
        End If

        Select Case ServerAction
            Case "SAVE"
                SaveData()
        End Select
        
    End Sub

    Private Sub SaveData()
        Dim Username, OldPwd As String
        Dim DR As DataRow

        If txtNewPwd.Text = txtConfirmPwd.Text Then
            Try
                Username = Trim(lblUsername.Text).ToUpper
                OldPwd = txtOldPwd.Text.ToUpper
                'OldPwd = Encrypted(Username, txtOldPwd.Text)
                DR = GetDR(LoadInternetDetail(Username))
                If Not IsNothing(DR) Then
                    If OldPwd <> DR("PASSWORD") & "" Then
                        Msg = "รหัสผ่านเดิมไม่ถูกต้อง"
                        Exit Sub
                    Else
                        Msg = ChangePassword(Username, txtNewPwd.Text.ToUpper, Session("USER_NAME") & "")
                        If Msg = "" Then Msg = "เสร็จสิ้นการบันทึกข้อมูล"
                    End If
                End If
            Catch ex As Exception
                Msg = " เกิดข้อผิดพลาดในการจัดการรหัสผ่าน : " & ex.Message
            End Try
        Else
            Msg = "รหัสผ่านไม่ตรงกัน !"
        End If
    End Sub


End Class
