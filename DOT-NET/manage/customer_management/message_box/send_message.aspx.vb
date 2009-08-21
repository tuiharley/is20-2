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
        'Dim boxid As Integer
        Dim fromid As Integer

        Session("admin") = -1

        If Not IsPostBack Then
            'boxid = Request.QueryString("boxid")
            'Session("boxid") = boxid

            fromid = Request.QueryString("fromid")
            Session("fromid") = fromid
        End If


        setLink(Session("fromid"))
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Dim myInbox As InboxSt
        Dim myInboxRead As InboxSt
        Dim fromid As Integer = Session("fromid")

        'myInboxRead = InboxDB.getAInbox_box(Session("boxid"), Session("admin"))

        myInbox.From_CustID = Session("admin")
        myInbox.To_CustID = fromid
        myInbox.Topic_Msg = String_chk.cleanSQ(topic.Text)
        myInbox.Msg = String_chk.cleanSQ(detail.Text)
        'myInbox.Status = 1

        InboxDB.addNewInbox(myInbox)


        'Session("boxid") = ""
        Session("fromid") = ""
        Response.Redirect("sent_messages.aspx?fromid=" & fromid)
    End Sub

    Private Sub cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel.Click
        Dim fromid As Integer = Session("fromid")

        'Session("boxid") = ""
        Session("fromid") = ""
        Response.Redirect("inbox.aspx?fromid=" & fromid)
    End Sub
    Private Sub setLink(ByVal fromid As Integer)


        sentMsg.NavigateUrl = "sent_messages.aspx?fromid=" & fromid
        inMsg.NavigateUrl = "inbox.aspx?fromid=" & fromid
    End Sub
End Class
