Imports System
Imports System.Data
Imports System.Data.OleDb


Public Class Test2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "
    Protected dtgAddresses1 As System.Web.UI.WebControls.DataGrid
    Protected dtgAddresses2 As System.Web.UI.WebControls.DataGrid
    Protected lblSql1 As System.Web.UI.WebControls.Label
    Protected lblSql2 As System.Web.UI.WebControls.Label

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

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
        Dim strConn As String = "Provider=Microsoft.Jet.OleDb.4.0;" _
                          & "data source=f:\inetpub\wwwroot\dotnetjohn\NameAndAddress.xls;" _
                          & "Extended Properties=Excel 8.0;"
        'First DataGrid
        Dim objConn As New OleDbConnection(strConn)
        Dim strSql As String = "Select LastName, FirstName, Address, City, State From Addresses"
        lblSql1.Text = strSql
        Dim objCmd As New OleDbCommand(strSql, objConn)
        Try
            objConn.Open()
            dtgAddresses1.DataSource = objCmd.ExecuteReader()
            dtgAddresses1.DataBind()
        Catch exc As Exception
            Response.Write(exc.ToString())
        Finally
            objConn.Dispose()
        End Try
        'Second DataGrid
        objConn = New OleDbConnection(strConn)
        strSql = "Select * From Addresses Where State='CA'"
        lblSql2.Text = strSql
        objCmd = New OleDbCommand(strSql, objConn)
        Try
            objConn.Open()
            dtgAddresses2.DataSource = objCmd.ExecuteReader()
            dtgAddresses2.DataBind()
        Catch exc As Exception
            Response.Write(exc.ToString())
        Finally
            objConn.Dispose()
        End Try

    End Sub

End Class
