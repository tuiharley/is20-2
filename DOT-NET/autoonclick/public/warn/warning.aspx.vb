Public Class warning
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents mail_to As System.Web.UI.WebControls.Label
    Protected WithEvents topic As System.Web.UI.WebControls.TextBox
    Protected WithEvents detail As System.Web.UI.WebControls.TextBox
    Protected WithEvents AddrRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator

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



        If Not IsPostBack Then
            'mail_to.Text = Request.QueryString("mail_to")
            Session("detail_id") = Request.QueryString("detail_id")
            'Session("f") = Request.QueryString("f")
        End If



    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click


        If IsValid Then
            Dim myWarn As Warn
            myWarn.Warn_By = name.Text
            myWarn.Warn_Topic = topic.Text
            myWarn.Warn_Email = email.Text
            myWarn.Warn_Remark = detail.Text
            NoticeDetailDB.addNewWarn(myWarn, Session("detail_id"))


            Dim myMail As mailQuestion
            myMail.name = String_chk.cleanSQ(name.Text)
            myMail.topic = String_chk.cleanSQ(topic.Text)
            myMail.mail_From = String_chk.cleanSQ(email.Text)
            'myMail.mail = Session("mail_to")
            myMail.mail = "info@auto-onclick.com"
            'myMail.mail = "tuiharley@yahoo.com"
            myMail.question = String_chk.cleanSQ(detail.Text)

            Dim myWarnMail As WarnMail
            myWarnMail = NoticeDetailDB.getWarnMail(Session("detail_id"))
            EmailDB.sendMailWarn(myMail, myWarnMail)

            'send msg to Inbox
            Dim myInbox As InboxSt
            Dim txtDetail As String
            myInbox.From_CustID = -2
            myInbox.To_CustID = -1
            myInbox.Topic_Msg = String_chk.cleanSQ(topic.Text)
            myInbox.Msg = "FROM : " & String_chk.cleanSQ(name.Text) & "<BR>"
            myInbox.Msg = myInbox.Msg & "EMAIL : " & String_chk.cleanSQ(email.Text) & "<BR>"

            txtDetail = txtDetail & "ประกาศเลขที่: " & myWarnMail.Dealer_Notice_Abc & myWarnMail.Detail_Id & "<BR>"
            txtDetail = txtDetail & "ประเภท: " & myWarnMail.Dealer_Type & "<BR>"
            txtDetail = txtDetail & "ของคุณ: " & myWarnMail.Customer_Username & " - " & myWarnMail.Customer_Name & " " & myWarnMail.Customer_Surname & "<BR><BR>"
            txtDetail = txtDetail & "สิ่งที่ลงประกาศ: " & myWarnMail.Brand_name & "<BR>"
            txtDetail = txtDetail & "Email เจ้าของประกาศ: " & myWarnMail.Customer_Email & "<BR>"
            txtDetail = txtDetail & "เบอร์โทรเจ้าของประกาศ: " & myWarnMail.Customer_Phone1 & "<BR>"
            txtDetail = txtDetail & "สาเหตุการแจ้งลบ : " & String_chk.cleanSQ(detail.Text) & "<BR><BR>"

            myInbox.Msg = myInbox.Msg & (txtDetail)
            'myInbox.Status = 1

            InboxDB.addNewInbox(myInbox)

            Response.Redirect("warnComplete.aspx")
            'Response.Write("dfasdfsdfasd")
        End If


    End Sub

    Function getTopic(ByVal fType As String) As String
        Dim ans As String

        Select Case fType
            Case "job"
                ans = "แจ้งลบประกาศงาน "
            Case "car"
                ans = "แจ้งลบประกาศรถยนต์ "
            Case "bike"
                ans = "แจ้งลบประกาศรถจักรยานยนต์ "
            Case "truck"
                ans = "แจ้งลบประกาศรถบรรทุก "
            Case "part"
                ans = "แจ้งลบประกาศอะไหล่ "
        End Select

        Return ans
    End Function


End Class
