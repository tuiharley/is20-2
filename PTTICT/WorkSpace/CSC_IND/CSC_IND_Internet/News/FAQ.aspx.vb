Public Class FAQ
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents dgFaqs As System.Web.UI.WebControls.DataGrid
    Protected WithEvents txtQuestion As System.Web.UI.WebControls.TextBox
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
        CountVisitPage(34, "pFAQ", Request.UserHostAddress)
        ReadConfigurations()
        Session("CURRENT_HEADER_MENU") = "B_NEWS"

        If Not Page.IsPostBack Then
            ServerAction = Request.QueryString("ServerAction") & ""
        Else
            ServerAction = Request.Form("ServerAction") & ""
        End If

        Select Case ServerAction
            Case "CANCEL"
                ClearData()
            Case "SEND"
                SendData()
            Case Else
                LoadData()
        End Select


    End Sub

    Private Sub ClearData()
        txtMail.Text = ""
        txtQuestion.Text = ""
        txtName.Text = ""
        txtTel.Text = ""
    End Sub

    Private Sub LoadData()
        Try
            Session("FaqList") = GetDT(LoadFaqList(0))
            dgFaqs.CurrentPageIndex = 0
            BindDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("FaqList")
            If Not IsNothing(DT) Then
                dgFaqs.DataSource = DT
                dgFaqs.DataBind()
            Else
            End If
        Catch ex As Exception
            Session("FaqList") = Nothing
        End Try
    End Sub

    Private Sub SendData()
        Dim EMailName As String
        Dim SendMsg As String
        Dim Subject As String
        Try
            If gsReceiverEMail <> "" Then
                EMailName = txtMail.Text
                If EMailName.IndexOf("@") > 0 Then
                    Subject = "»Ÿπ¬Ï∫√‘°“√≈Ÿ°§È“°Í“´∏√√¡™“µ‘ (CSC) : " & Server.HtmlEncode(txtQuestion.Text)
                    SendMsg = "<br><b>∂÷ßºŸÈ¥Ÿ·≈√–∫∫</b><br><br>"
                    SendMsg += "§”∂“¡&nbsp;:&nbsp;" + Server.HtmlEncode(txtQuestion.Text) + "<br><br><br>"
                    SendMsg += "<b>®“°&nbsp;:&nbsp;" + Server.HtmlEncode(txtName.Text) + "&nbsp;(&nbsp;‚∑√»—æ∑Ï&nbsp;:&nbsp;" + Server.HtmlEncode(txtTel.Text) + "&nbsp;)&nbsp;</b>"
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
