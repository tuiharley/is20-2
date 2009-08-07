Imports System.Data
Imports System.Data.OleDb

Public Class so2_offer2_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents carStatusValidate As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents Cat As System.Web.UI.WebControls.DropDownList
    Protected WithEvents spType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents SPprefix As System.Web.UI.WebControls.DropDownList
    Protected WithEvents SP_Topic As System.Web.UI.WebControls.TextBox
    Protected WithEvents ShortDesc As System.Web.UI.WebControls.TextBox
    Protected WithEvents SP_Desc As System.Web.UI.WebControls.TextBox
    Protected WithEvents SPLink As System.Web.UI.WebControls.TextBox
    Protected WithEvents SP_Price As System.Web.UI.WebControls.TextBox
    Protected WithEvents img1 As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents SP_O_Price As System.Web.UI.WebControls.TextBox
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button

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
    End Sub



    Private Sub Cat_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Cat.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT SpacialCategory, SpacialCategory_Name FROM SpecialCategory  ORDER BY SpacialCategory"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        'DRow.Item("STATUS") = 0
        'DRow.Item("STATUS_NAME") = "โปรดระบุ"
        'ds.Tables("status").Rows.InsertAt(DRow, 0)
        Cat.DataSource = ds.Tables("status")
        Cat.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub spType_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles spType.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT SpacialType, SpacialType_Name FROM SpecialType  ORDER BY SpacialType"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
      
        spType.DataSource = ds.Tables("status")
        spType.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub SPprefix_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles SPprefix.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT SP_Prefix_ID, SP_Prefix_Name FROM SpecialPrefix  ORDER BY SP_Prefix_ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()

        SPprefix.DataSource = ds.Tables("status")
        SPprefix.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        'clearSession()
        Dim pageNa As String

        If Session("pagename") = "startpage_example_with_package.aspx" Then
            pageNa = "../../startpage/" & Session("pagename")
        Else
            pageNa = Session("pagename")
        End If
        Response.Redirect(pageNa)
    End Sub
End Class
