Public Class read_message
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents sendDate As System.Web.UI.WebControls.Label
    Protected WithEvents topic As System.Web.UI.WebControls.Label
    Protected WithEvents del As System.Web.UI.WebControls.Button
    Protected WithEvents cancel As System.Web.UI.WebControls.Button
    Protected WithEvents detail As System.Web.UI.WebControls.Label
    Protected WithEvents sendMsg As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sentMsg As System.Web.UI.WebControls.HyperLink
    Protected WithEvents compName As System.Web.UI.WebControls.Label
    Protected WithEvents Hyperlink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents repy As System.Web.UI.WebControls.HyperLink

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
        Dim boxId As Integer
        Dim fromid As Integer


        If Not IsPostBack Then
            fromid = Request.QueryString("fromid")
            Session("fromid") = fromid

            boxId = Request.QueryString("box")
            Session("box") = boxId
            showDetail(boxId, Session("admin"))
            setLink(boxId, fromid)
            InboxDB.updateInbox_Unread(boxId, Session("admin"))

        End If
    End Sub

    Private Sub showDetail(ByVal boxId As Integer, ByVal cust_id As Integer)

        Dim myInbox As InboxSt

        myInbox = InboxDB.getAInbox_box(boxId, cust_id)
        sendDate.Text = myInbox.Send_Date.ToString("dd-MM-yyyy HH:mm:ss")
        topic.Text = myInbox.Topic_Msg


        If myInbox.From_CustID = -2 Then
            compName.Text = "จาก : บุคคลทั่วไป"
        Else
            compName.Text = "จาก : " & CustomerDB.getCustName(myInbox.From_CustID)
        End If


        detail.Text = Replace(myInbox.Msg, vbCrLf, "<BR>")
        ' Label1.Text = Replace(myInbox.Msg, vbCrLf, "<BR>")

    End Sub

    Private Sub cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel.Click
        Dim fromid As Integer = Session("fromid")

        Session("fromid") = ""
        Response.Redirect("inbox.aspx?fromid=" & fromid)
    End Sub
    Private Sub del_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles del.Click
        Dim fromid As Integer = Session("fromid")

        Session("fromid") = ""
        InboxDB.delAInbox_box(Session("box"))
        Response.Redirect("inbox.aspx?fromid=" & fromid)
    End Sub
    Private Sub setLink(ByVal boxid As Integer, ByVal fromid As Integer)


        sentMsg.NavigateUrl = "sent_messages.aspx?fromid=" & fromid
        repy.NavigateUrl = "send_message.aspx?fromid=" & fromid
    End Sub

End Class
