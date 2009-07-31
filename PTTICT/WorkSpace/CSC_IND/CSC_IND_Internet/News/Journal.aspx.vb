Public Class Journal
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lstYear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dlJournal As System.Web.UI.WebControls.DataList
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public FilePath As String = ""
    Public Msg As String = ""

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        CountVisitPage(32, "pJournal", Request.UserHostAddress)
        ReadConfigurations()
        Session("CURRENT_HEADER_MENU") = "B_NEWS"
        FilePath = "../Files/Attach/JOURNALS/"
        If Not Page.IsPostBack Then
            InitControl()
        Else
        End If
        LoadData()
    End Sub

    Private Sub InitControl()
        Dim InitYY, YY As Integer
        Dim I As Integer
        InitYY = 2544
        YY = Today.Year
        If YY < 2400 Then YY += 543

        For I = 0 To (YY - InitYY)
            With lstYear
                .Items.Insert(I, YY - I)
                .Items(I).Value = YY - I
            End With
        Next
    End Sub

    Private Sub LoadData()
        Dim DR As DataRow
        Dim DT As DataTable
        Dim Tlink As HtmlAnchor
        Dim AddTable As String
        Dim TImg As HtmlImage
        Dim Section As String
        Dim I, R As Integer
        Dim CriYY As Integer

        Try
            CriYY = ToInt(lstYear.SelectedValue)
            DT = GetDT(LoadAnnounce(0, "", "", "", 2, " ANN.DISPLAY_FLAG='Y' AND (TO_CHAR(ANN.ANNOUNCE_DATE,'YYYY')=" & CriYY & " OR TO_CHAR(ANN.ANNOUNCE_DATE,'YYYY')=" & CriYY - 543 & ")"))
            Session("JournalList") = DT
                'dgResult.CurrentPageIndex = 0
                BindDG()
                'DR = DT.Rows(0)
                'If Not IsNothing(DR) Then
                '    lblJournal.Text = "<table width='95%' border='0' cellspacing='0' cellpadding='0'>" & _
                '                                     "<tr><td align='center' class='T_blue13'><a href='Files/Attach/JOURNALS/" & DR("ATTACH_FILE") & "' target=_blank><img src='Files/Attach/JOURNALS/" & DR("IMAGE_FILE") & "' width='120' height='163' border='0'></a></td></tr>" & _
                '                                     "<tr><td align='center' class='T_vior13'>" & DR("TITLE") & "<br>" & DR("DETAIL") & "</td></tr></table>"
                'End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try

    End Sub

    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("JournalList")
            If Not IsNothing(DT) Then
                lblNotFound.Visible = False
                dlJournal.Visible = True
                dlJournal.DataSource = DT
                dlJournal.DataBind()
            Else
                dlJournal.Visible = False
                lblNotFound.Visible = True
            End If
        Catch ex As Exception
            Session("JournalList") = Nothing
        End Try
    End Sub

    Private Sub lstYear_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lstYear.SelectedIndexChanged
        LoadData()
    End Sub
End Class
