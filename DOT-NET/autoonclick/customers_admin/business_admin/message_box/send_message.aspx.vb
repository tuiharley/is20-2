Public Class send_message
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents topic As System.Web.UI.WebControls.TextBox
    Protected WithEvents detail As System.Web.UI.WebControls.TextBox
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel As System.Web.UI.WebControls.Button
    Protected WithEvents topicRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents inMsg As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sentMsg As System.Web.UI.WebControls.HyperLink

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
        'Session("cust_id") = 27
        setLink()
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Dim myInbox As InboxSt

        myInbox.From_CustID = Session("cust_id")
        myInbox.To_CustID = -1
        myInbox.Topic_Msg = String_chk.cleanSQ(topic.Text)
        myInbox.Msg = String_chk.cleanSQ(detail.Text)
        'myInbox.Status = 1

        InboxDB.addNewInbox(myInbox)

        Response.Redirect("sent_messages.aspx")
    End Sub

    Private Sub cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel.Click
        Response.Redirect("inbox.aspx")
    End Sub
    Private Sub setLink()


        sentMsg.NavigateUrl = "sent_messages.aspx"
        inMsg.NavigateUrl = "inbox.aspx"
    End Sub
End Class
