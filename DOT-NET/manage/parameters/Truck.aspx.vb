Imports System.Data
Imports System.Data.OleDb
Public Class Truck
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents brand_ddl As System.Web.UI.WebControls.DropDownList

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

        If Page.IsPostBack = False Then
            bind_brand()
            Bind()


        End If
    End Sub

    Public Sub MyDataGrid_Paging(ByVal Sender As Object, ByVal E As DataGridPageChangedEventArgs)

        Datagrid1.CurrentPageIndex = E.NewPageIndex
        Bind()
    End Sub

    Private Sub Bind()
        strsql = "SELECT Model.Model, Category.Category_Name, Brand.Brand_name, Model.Model_Name FROM Model INNER JOIN Category ON Model.Category = Category.Category INNER JOIN Brand ON Model.Brand = Brand.Brand WHERE (Model.Category = 3) GROUP BY Category.Category_Name, Brand.Brand_name, Model.Model_Name, Model.Model"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Model")

        Datagrid1.DataSource = ds.Tables("Model")
        Datagrid1.DataBind()
        myconn.Close()
    End Sub
    Private Sub bind_brand()
        strsql = "SELECT Brand.Brand,Brand.Brand_name FROM Brand "
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Brand")
        brand_ddl.DataSource = ds.Tables("Brand")
        brand_ddl.DataBind()
        myconn.Close()

    End Sub

    Public Sub EditBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = E.Item.ItemIndex
        AddBTN.Text = "���"
        Bind()
    End Sub
    Public Sub CancelBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = -1
        AddBTN.Text = "����"
        Bind()
    End Sub
    Public Sub UpdateBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)

        'Dim title As TextBox = CType(E.Item.Cells(2).Controls(0), TextBox)
        strsql = "Update Model Set brand = " & brand_ddl.SelectedValue & " Where Model = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub

    Private Function getNewmodel() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(Model) as Model FROM Model"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("Model") + 1
            Else
                businessid = 1
            End If
        End If
        mycommand.Dispose()
        BUZ_ID.Close()

        myconn.Close()

        Return businessid

    End Function

    Private Sub AddBTN_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddBTN.Click
        If IsPostBack Then

            strsql = "Insert into Model Values(" & getNewmodel() & ",3," & brand_ddl.SelectedValue & ",null) "
            mycommand = New OleDbCommand(strsql, myconn)
            myconn.Open()
            mycommand.ExecuteNonQuery()
            myconn.Close()
            Bind()
        End If
    End Sub

End Class
