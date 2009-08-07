Public Class sent_messages
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents mailList As System.Web.UI.WebControls.Label
    Protected WithEvents inMsg As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sendMsg As System.Web.UI.WebControls.HyperLink
    Protected WithEvents pageNumber As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public pageSize As Integer = 20

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim myCount As inboxCount
        Dim curPage As Integer
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'Session("cust_id") = 27
        curPage = Request.QueryString("curPage")
        If curPage = 0 Then
            curPage = 1
        End If
        myCount = InboxDB.countOutBox(Session("cust_id"), 1)
        pageNumber.Text = showNum1(myCount, curPage)
        showSent(Session("cust_id"), curPage)
        setLink()
        AjaxPro.Utility.RegisterTypeForAjax(GetType(sent_messages))
    End Sub

    Private Sub showSent(ByVal cust_id As Integer, ByVal curPage As Integer)
        Dim myTxt As String
        Dim myQ As Queue
        Dim myInbox As InboxSt
        Dim i As Integer = 1


        myQ = InboxDB.getInbox_sent(cust_id)
        For Each myInbox In myQ
            If i >= ((curPage - 1) * pageSize) + 1 And i <= (curPage * pageSize) Then
                myTxt = myTxt & "<tr>"
                myTxt = myTxt & "<td><table width='693' border='0' cellpadding='0' cellspacing='0' background='../../../images/table/mb_sent_g.gif'"
                myTxt = myTxt & " class='Font_black_LH_15px'>"
                myTxt = myTxt & "<tr>"
                myTxt = myTxt & "<td height='5' colspan='7'></td>"
                myTxt = myTxt & "</tr>"
                myTxt = myTxt & "<tr>"
                myTxt = myTxt & "<td width='3'></td>"
                myTxt = myTxt & "<td width='20'><input type='checkbox' name='checkbox' value='" & myInbox.Inbox_Id & "'></td>"
                myTxt = myTxt & "<td width='5'></td>"
                myTxt = myTxt & "<td width='150'><div align='center'>" & myInbox.Send_Date.ToString("dd-MM-yyyy") & "</div>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "<td width='5'></td>"
                myTxt = myTxt & "<td width='507'><div align='center'><a href='read_sent_message.aspx?box=" & myInbox.Inbox_Id & "' class='A_black_underline'>" & myInbox.Topic_Msg & "</a></div>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "<td width='3'></td>"
                myTxt = myTxt & "</tr>"
                myTxt = myTxt & "<tr>"
                myTxt = myTxt & "<td height='5' colspan='7'></td>"
                myTxt = myTxt & "</tr>"
                myTxt = myTxt & "<tr>"
                myTxt = myTxt & "<td colspan='7'><img src='../../../images/lines/w.gif' width='693' height='1'></td>"
                myTxt = myTxt & "</tr>"
                myTxt = myTxt & "</table>"
                myTxt = myTxt & "</td>"
                myTxt = myTxt & "</tr>"
            End If
            i = i + 1
        Next


        mailList.Text = myTxt

    End Sub
    Private Sub setLink()


        sendMsg.NavigateUrl = "send_message.aspx"
        inMsg.NavigateUrl = "inbox.aspx"
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function deleteMessage(ByVal msgID As String) As String
        'Dim tmp As Array

        msgID = Right(msgID, msgID.Length - 1)
        'tmp = msgID.Split(",")


        InboxDB.delInbox_box(msgID)


        Return "OK"
    End Function


    Private Function showNum1(ByVal myCount As inboxCount, ByVal curPage As Integer) As String
        Dim sql As String
        Dim pages As Integer

        sql = " <tr>"
        If curPage - 1 <= 0 Then
            sql = sql & "                       <td class=Font_grey>|&lt;&lt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td class=Font_grey>&lt;&lt;</td>"
        Else
            sql = sql & "                       <td onClick='goPage(1);' style=""CURSOR: hand"">|&lt;&lt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td onClick='goPage(" & curPage - 1 & ");' style=""CURSOR: hand"">&lt;&lt;</td>"
        End If
        'sql = sql & "                       <td class=Font_grey>|&lt;&lt;</td>"
        'sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
        'sql = sql & "                       <td class=Font_grey>&lt;&lt;</td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
        sql = sql & "                       <td><strong>Page </strong> "

        pages = Math.Ceiling(myCount.AllMail / pageSize)
        Dim i As Integer

        For i = 1 To pages
            If i = curPage Then
                sql = sql & "                         <strong>" & i & "</strong> "
            Else
                sql = sql & "                         <font class='Font_U_Pages' onClick='goPage(" & i & ");'>" & i & "</font> "
            End If
        Next

        sql = sql & "                         <strong>of " & pages & "</strong>"
        sql = sql & "                       </td>"
        sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
        If pages <= 1 Then
            sql = sql & "                       <td class=Font_grey>&gt;&gt;</td>"
            sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td class=Font_grey >&gt;&gt;|</td>"
        Else
            If curPage = pages Then
                sql = sql & "                       <td class=Font_grey>&gt;&gt;</td>"
            Else
                sql = sql & "                       <td  onClick='goPage(" & curPage + 1 & ");' style=""CURSOR: hand"" >&gt;&gt;</td>"
            End If
            sql = sql & "                       <td><IMG height=1 src=""../../../images/objects/no.gif"" width=7 ></td>"
            sql = sql & "                       <td   onClick='goPage(" & pages & ");' style=""CURSOR: hand"">&gt;&gt;|</td>"
        End If
        sql = sql & " </tr>"

        Return sql
    End Function
End Class
