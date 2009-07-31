Public Class _default
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblNews1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblNews2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblJournal As System.Web.UI.WebControls.Label
    Protected WithEvents lblFAQ As System.Web.UI.WebControls.Label
    Protected WithEvents lblHighlight As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public PageScript As String = ""
    Public JournalScript As String = ""
    Public Msg As String = ""
    Public IsShowEvent As String = ""

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        CountVisitPage(1, "pDefault", Request.UserHostAddress)
        LoadData()
        LoadInformation()
    End Sub

    Private Sub LoadData()
        Dim DR As DataRow
        Dim DT As DataTable
        Dim DTImg As DataTable
        Dim DRImg As DataRow
        Dim Tlink As HtmlAnchor
        Dim AddTable As String
        Dim TImg As HtmlImage
        Dim Section As String
        Dim I, R As Integer
        Dim NFolder, JFolder, FixFolder As String
        Dim FaqShow As String
        Dim ImgFile As String
        Dim DRShow As DataRow

        Try

            DR = GetDR(ShowEmergencyEvent(0, "", "", ""))
            If Not IsNothing(DR) Then
                IsShowEvent = ""
            Else
                IsShowEvent = "FALSE"
            End If

            NFolder = "../Files/Attach/NEWS/"
            JFolder = "../Files/Attach/JOURNALS/"
            FixFolder = "../Images/Icon/"

            R = 3
            DT = GetDT(LoadAnnounce(0, "", "", "", 1, " ANN.DISPLAY_FLAG='Y' AND ANN.EXPIRE_DATE>=" & SQLDate(Today)))
            If Not IsNothing(DT) Then
                If DT.Rows.Count <= R Then R = DT.Rows.Count - 1
                For I = 0 To R
                    If I = 0 Then
                        DR = DT.Rows(I)
                        If Not IsNothing(DR) Then
                            DTImg = GetDT(LoadNewsFile(ToDec(DR("ANNOUNCE_ID") & "")))
                            If Not IsNothing(DTImg) Then
                                DRImg = DTImg.Rows(0)
                                If Not IsNothing(DRImg) Then ImgFile = DRImg("SYS_FILE") & ""
                            End If
                            AddTable = "<table width='215' border='0' cellspacing='0' cellpadding='0'><tr><td>&nbsp;</td></tr>"
                            AddTable += "<tr><td><img src='" & NFolder & ImgFile & "' width='187' height='115'></td></tr>"
                            AddTable += "<tr>	<td height='20' class='T_blue13'><strong><u>" & AppFormatDate(DR("ANNOUNCE_DATE"), "", "ÇÇ ´´´ »»»»") & "</u></strong>&nbsp;<img src='" & FixFolder & "newred.gif' width='30' height='15'></td></tr>"
                            AddTable += "<tr><td class='T_gray13'><a href='../News/News_Detail.aspx?ServerAction=LOAD&AnnID=" & DR("ANNOUNCE_ID") & "' target=_blank>" & DR("TITLE") & "</a></td></tr>	<tr><td>&nbsp;</td></tr></table>"
                            lblNews1.Text = AddTable
                        End If
                    Else
                        DR = DT.Rows(I)
                        If Not IsNothing(DR) Then
                            Section += "<tr><td>&nbsp;</td></tr>" & _
                                  "	<tr><td height='20' class='T_blue13'><strong><u>" & AppFormatDate(DR("ANNOUNCE_DATE"), "", "ÇÇ ´´´ »»»»") & "</u></strong></td></tr>" & _
                                  "<tr><td class='T_gray13'><a href='../News/News_Detail.aspx?ServerAction=LOAD&AnnID=" & DR("ANNOUNCE_ID") & "' target=_blank>" & DR("TITLE") & "</a></td></tr>"
                        End If

                    End If
                Next
                lblNews2.Text = "<table width='96%' border='0' align='center' cellpadding='0' cellspacing='0'>" & Section & "</table>"

            End If

            DT = GetDT(LoadAnnounce(0, "", "", "", 2, " ANN.DISPLAY_FLAG='Y' "))
            If Not IsNothing(DT) Then
                DR = DT.Rows(0)
                If Not IsNothing(DR) Then
                    'lblJournal.Text = "<table width='95%' border='0' cellspacing='0' cellpadding='0'>" & _
                    '                                 "<tr><td align='center' class='T_blue13'><a href='" & JFolder & DR("ATTACH_FILE") & "' target=_blank><img src='" & JFolder & DR("IMAGE_FILE") & "' width='120' height='163' border='0'></a></td></tr>" & _
                    '                                 "<tr><td align='center' class='T_vior13'>" & DR("TITLE") & "<br>" & DR("DETAIL") & "</td></tr></table>"
                    JournalScript += "nS = new slide();" + vbCrLf + _
                                                    "nS.src = """ & JFolder & DR("IMAGE_FILE") & """ ;" + vbCrLf + _
                                                    "nS.text = unescape(""<span class='T_blue13' align='center'><b>" & DR("TITLE") & "</b></span><br><span class='T_gray12' align='center'>" & DR("DETAIL") & "</span>"");" + vbCrLf + _
                                                    "nS.link = '" & JFolder & DR("ATTACH_FILE") & "'" & ";" + vbCrLf + _
                                                    "nS.target = '_blank'" & ";" + vbCrLf + _
                                                    "nS.attr = """" ;" + vbCrLf + _
                                                    "nS.filter = """" ;" + vbCrLf + _
                                                    "nSLIDES.add_slide(nS);" + vbCrLf + vbCrLf
                End If
            End If

            R = 3
            DT = GetDT(LoadFaqList(0))
            If Not IsNothing(DT) Then
                If DT.Rows.Count <= R Then R = DT.Rows.Count - 1
                For I = 0 To R
                    DR = DT.Rows(I)
                    If Not IsNothing(DR) Then
                        FaqShow += "<table width='200' border='0' align='center' cellpadding='0' cellspacing='0'>" + _
                                               "<tr>	<td width='10' height='20' valign='top' class='T_gray13'>•</td>" + _
                                               "<td class='T_gray13'><a class='T_gray13' href='../News/FAQ.aspx'>" & DR("FAQ_QUESTION") & "</a></td></tr>" + _
                                               "<tr>	<td colspan='2' class='T_gray13'><table width='92%' border='0' align='center' cellpadding='0' cellspacing='0'>" + _
                                               "<tr>	<td height='3' background='../images/line_menu.jpg'></td></tr></table></td></tr></table>"
                    End If
                Next
                lblFAQ.Text = FaqShow
            End If

        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try

    End Sub

    Private Sub LoadInformation()
        Dim DT As DataTable
        Dim DR As DataRow
        Dim R, I As Integer
        Dim PageFolder As String
        Dim ImgName As String
        Try

            R = 4
            PageFolder = "../Files/Attach/KNOWLEDGES/"
            DT = GetDT(LoadAnnounce(0, "", "", "", 5))
            If Not IsNothing(DT) Then
                If DT.Rows.Count <= R Then R = DT.Rows.Count - 1
                For I = 0 To R
                    DR = DT.Rows(I)
                    If Not IsNothing(DR) Then
                        If DR("IMAGE_FILE") & "" = "" Then
                            ImgName = "../images/nopic.gif"
                        Else
                            ImgName = PageFolder & DR("IMAGE_FILE")
                        End If
                        PageScript += "s = new slide();" + vbCrLf + _
                                                     "s.src = """ & ImgName & """ ;" + vbCrLf + _
                                                     "s.text = unescape(""<span class='T_blue13'><b>" & DR("TITLE") & "</b></span><br><span class='T_gray13'>" & DR("DETAIL") & "</span>"");" + vbCrLf + _
                                                     "s.link = """";" + vbCrLf + _
                                                     "s.target = """";" + vbCrLf + _
                                                     "s.attr = """" ;" + vbCrLf + _
                                                     "s.filter = """" ;" + vbCrLf + _
                                                     "SLIDES.add_slide(s);" + vbCrLf + vbCrLf
                    End If
                Next
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

End Class
