Imports System.Data
Imports System.Data.OleDb
Public Class Package
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents category_rd As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents package_name As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Number_start As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Number_stop As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents period As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents price As System.Web.UI.WebControls.TextBox
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim myconn As OleDbConnection
    Dim da As OleDbDataAdapter
    Dim mycommand As OleDbCommand
    Dim ds As New DataSet
    Dim strsql As String
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        myconn = New OleDbConnection(Session("conn"))
        Label1.Text = "Package"

        If Page.IsPostBack = False Then
            Bind()
        End If
    End Sub

    Private Sub Bind()
        strsql = "SELECT Package.Package_Id, Category.Category_Name, Package.Package_Name, Package.Package_AreaStart, Package.Package_AreaStop, Package.Package_Week, Package.Package_Price FROM Package INNER JOIN Category ON Package.Package_Category = Category.Category Where Package_Type = 2"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Package")
        Datagrid1.DataSource = ds.Tables("Package")
        Datagrid1.DataBind()
        myconn.Close()
    End Sub

    Private Function getNewPackage() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(Package_Id) as Package FROM Package"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("Package") + 1
            Else
                businessid = 1
            End If
        End If
        mycommand.Dispose()
        BUZ_ID.Close()

        myconn.Close()

        Return businessid

    End Function
    Public Sub MyDataGrid_Paging(ByVal Sender As Object, ByVal E As DataGridPageChangedEventArgs)
        Datagrid1.CurrentPageIndex = E.NewPageIndex
        Bind()
    End Sub
    Public Sub EditBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = E.Item.ItemIndex
        Bind()
    End Sub
    Public Sub CancelBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub DeleteBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Dim x As Integer = Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        strsql = "Delete From Package Where Package_Id = " & x
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        'Response.Write(strsql)
        strsql = "Update Package Set Package_Id = Package_Id - 1 Where Package_Id > " & x
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        ' Response.Write(strsql)
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub UpdateBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)

        Dim title As TextBox = CType(E.Item.Cells(3).Controls(0), TextBox)
        Dim P_start As TextBox = CType(E.Item.Cells(4).Controls(0), TextBox)
        Dim P_stop As TextBox = CType(E.Item.Cells(5).Controls(0), TextBox)
        Dim P_week As TextBox = CType(E.Item.Cells(6).Controls(0), TextBox)
        Dim P_price As TextBox = CType(E.Item.Cells(7).Controls(0), TextBox)

        strsql = "Update Package Set Package_Name = '" & title.Text & "',Package_AreaStart = '" & P_start.Text & "',Package_AreaStop = '" & P_stop.Text & "',Package_Week = '" & P_week.Text & "',Package_Price = '" & P_price.Text & "' Where Package_Id = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Private Sub AddBTN_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddBTN.Click

        If IsPostBack Then
            If package_name.Text <> "" And Number_start.Text <> "" And Number_stop.Text <> "" And period.Text <> "" And price.Text <> "" Then

                strsql = "INSERT INTO Package (Package_Id, Package_Category, Package_Name, Package_AreaStart, Package_AreaStop, Package_StartDate, Package_StopDate, Package_Week, Package_Type, Package_Price) VALUES (" & getNewPackage() & ", " & category_rd.SelectedValue & ", '" & package_name.Text & "', " & Number_start.Text & ", " & Number_stop.Text & ", getdate(), null, " & period.Text & ", 2, " & price.Text & ")"
                Response.Write(strsql)
                mycommand = New OleDbCommand(strsql, myconn)
                myconn.Open()
                mycommand.ExecuteNonQuery()
                myconn.Close()
                Bind()
                package_name.Text = ""
                Number_start.Text = ""
                Number_stop.Text = ""
                period.Text = ""
                price.Text = ""

            End If

        End If
    End Sub

End Class
