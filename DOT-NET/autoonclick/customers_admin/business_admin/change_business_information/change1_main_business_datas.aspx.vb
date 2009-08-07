Public Class change1_main_business_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents Buz As System.Web.UI.WebControls.Label

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
        'Session("cust_id") = 3
        Dim myQuest As infoQuestion
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else

            If Not IsPostBack Then
                myQuest = InfoQuestionDB.getMainQuestion(Session("cust_id"))
                Buz.Text = showBuz(myQuest)
            End If
        End If
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Session("mainBuz") = Request.Form("mainBuz")
        Response.Redirect("dealer_admin_additionals_datas.aspx")
    End Sub
    Private Function showBuz(ByVal myQuest As infoQuestion) As String
        Dim ans As String

        ans = "<table border='0' align='center' cellpadding='0' cellspacing='0' class='All_Border_blue'>"
        ans = ans & "<tr bgcolor='#ffffff'>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "<td height='20'>"
        If InfoQuestionDB.questionTypeRev(myQuest.type) = 1 Then
            ans = ans & "<input type='radio' name='mainBuz' value='1' id='mainBuz' CHECKED>"
        Else
            ans = ans & "<input type='radio' name='mainBuz' value='1' id='mainBuz' >"
        End If
        ans = ans & " &#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;"
        ans = ans & "</td>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#2a60ae'>"
        ans = ans & "<td height='1' colspan='3'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#eceef0'>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "<td height='20'>"
        If InfoQuestionDB.questionTypeRev(myQuest.type) = 2 Then
            ans = ans & "<input type='radio' name='mainBuz' value='2' id='mainBuz' CHECKED>"
        Else
            ans = ans & "<input type='radio' name='mainBuz' value='2' id='mainBuz' >"
        End If
        ans = ans & " &#3624;&#3641;&#3609;&#3618;&#3660;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3629;&#3641;&#3656;&#3619;&#3606;</td>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#2a60ae'>"
        ans = ans & "<td height='1' colspan='3'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#ffffff'>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "<td height='20'>"
        If InfoQuestionDB.questionTypeRev(myQuest.type) = 3 Then
            ans = ans & "<input type='radio' name='mainBuz' value='3' id='mainBuz' CHECKED>"
        Else
            ans = ans & "<input type='radio' name='mainBuz' value='3' id='mainBuz'>"
        End If
        ans = ans & " &#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</td>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#2a60ae'>"
        ans = ans & "<td height='1' colspan='3'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#eceef0'>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "<td height='20'>"
        If InfoQuestionDB.questionTypeRev(myQuest.type) = 4 Then
            ans = ans & "<input type='radio' name='mainBuz' value='4' id='mainBuz' CHECKED>"
        Else
            ans = ans & "<input type='radio' name='mainBuz' value='4' id='mainBuz'>"
        End If
        ans = ans & " &#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3648;&#3594;&#3656;&#3634;</td>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#2a60ae'>"
        ans = ans & "<td height='1' colspan='3'></td>"
        ans = ans & "</tr>"
        ans = ans & "<tr bgcolor='#ffffff'>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "<td height='20'>"
        If InfoQuestionDB.questionTypeRev(myQuest.type) = 5 Then
            ans = ans & "<input type='radio' name='mainBuz' value='5' id='mainBuz' CHECKED>"
        Else
            ans = ans & "<input type='radio' name='mainBuz' value='5' id='mainBuz'>"
        End If
        ans = ans & " &#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3635;&#3585;&#3634;&#3619;&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3629;&#3634;&#3604;/&#3610;&#3635;&#3619;&#3640;&#3591;&#3619;&#3633;&#3585;&#3625;&#3634;&#3619;&#3606;</td>"
        ans = ans & "<td width='5' height='20'></td>"
        ans = ans & "</tr>"
        ans = ans & "</table>"

        Return ans
    End Function
End Class
