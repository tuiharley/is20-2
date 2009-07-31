Public Class Letter
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents dlDownload As System.Web.UI.WebControls.DataList
    Protected WithEvents frmLetter As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents dlLetter As System.Web.UI.WebControls.DataList
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
        ReadConfigurations()
        CountVisitPage(23, "pLetter", Request.UserHostAddress)
        Session("CURRENT_HEADER_MENU") = "CUSTOMER"
        FilePath = "../Files/Attach/LETTERS/"
        If Not Page.IsPostBack Then
            'InitControl()
        Else
        End If
        LoadData()
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
            'CriYY = ToInt(lstYear.SelectedValue)
            DT = GetDT(LoadAnnounce(0, "", "", "", 4, " ANN.DISPLAY_FLAG='Y'"))
            Session("LetterList") = DT
            BindDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try

    End Sub

    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("LetterList")
            If Not IsNothing(DT) Then
                lblNotFound.Visible = False
                dlLetter.Visible = True
                dlLetter.DataSource = DT
                dlLetter.DataBind()
            Else
                dlLetter.Visible = False
                lblNotFound.Visible = True
            End If
        Catch ex As Exception
            Session("LetterList") = Nothing
        End Try
    End Sub

End Class
