Imports System.Data
Imports System.Data.OleDb

Public Class MainPage
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents menu_list As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button

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
        ' menu_list_rd()
        Response.Redirect("parameters/cars.aspx")
    End Sub
    Private Sub menu_list_rd()
        If Not IsPostBack() Then
            Dim conn As OleDbConnection
            Dim da As OleDbDataAdapter
            Dim Sql As String
            Dim ds As New DataSet

            conn = New OleDbConnection(Session("conn"))

            Sql = "SELECT Menu_ID, Menu_Name FROM  Manage_Menu"
            da = New OleDbDataAdapter(Sql, conn)
            da.Fill(ds, "menu")

            menu_list.DataSource = ds.Tables("menu")
            menu_list.DataBind()
            menu_list.SelectedValue = 1

            ds.Dispose()
            da.Dispose()
            conn.Close()


        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Select Case menu_list.SelectedValue
            Case 1
                Response.Redirect("parameters/Cars.aspx")
            Case 2

            Case 3

            Case 4

        End Select
    End Sub
End Class
