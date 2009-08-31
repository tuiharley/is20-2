Imports System.Data
Imports System.Data.OleDb
Public Class Models
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents category_rd As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents brand_ddl As System.Web.UI.WebControls.DropDownList
    Protected WithEvents txtModel As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnAdd As System.Web.UI.WebControls.Button
    Protected WithEvents cmbStatus As System.Web.UI.WebControls.DropDownList
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
    Dim strstatus As String
    Protected StatusView As DataTable

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        myconn = New OleDbConnection(Session("conn"))
        Dim brand As String = Request.QueryString("brand")

        If Page.IsPostBack = False Then
            bind_cat()
            category_rd.SelectedIndex = 0
            bind_brand()

            If brand <> "" Then
                brand_ddl.SelectedValue = brand
            Else
                brand_ddl.SelectedIndex = 0
            End If

            Bind()


        End If
    End Sub

    Private Sub Bind()
        strsql = "SELECT Model.Model, Category.Category_Name, Brand.Brand_name, Model.Model_Name,REPLACE(REPLACE(Model.Show, 1, 'Show'), 0, 'NotShow') AS Status_Name"
        strsql &= " FROM Model INNER JOIN Category ON Model.Category = Category.Category INNER JOIN Brand ON Model.Brand = Brand.Brand WHERE (Model.Category = " & category_rd.SelectedValue & ") AND Brand.Brand = " & brand_ddl.SelectedValue
        strsql &= " GROUP BY Category.Category_Name, Brand.Brand_name, Model.Model_Name, Model.Model,REPLACE(REPLACE(Model.Show, 1, 'Show'), 0, 'NotShow')"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Model")
        
        Datagrid1.DataSource = ds.Tables("Model")
        Datagrid1.DataBind()
        myconn.Close()
    End Sub
    Private Sub bind_cat()
        strsql = "SELECT Category, Category_Name FROM Category WHERE Category <= 2"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Category")
        category_rd.DataSource = ds.Tables("Category")
        category_rd.DataBind()
        myconn.Close()
        category_rd.SelectedValue = 1
    End Sub
    Private Sub bind_brand()
        strsql = "SELECT DISTINCT Brand.Brand_name, Brand.Brand"
        strsql &= " FROM  Model INNER JOIN "
        strsql &= " Brand ON dbo.Model.Brand = dbo.Brand.Brand"
        strsql &= " WHERE Model.Category = " & category_rd.SelectedValue
        strsql &= " ORDER BY Brand_name"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Brand")
        brand_ddl.DataSource = ds.Tables("Brand")
        brand_ddl.DataBind()
        myconn.Close()

    End Sub

    Public Sub EditBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        strstatus = CType(E.Item.FindControl("lblStatusName"), Label).Text

        bindDropDown()
        Datagrid1.EditItemIndex = E.Item.ItemIndex
        Bind()
    End Sub
    Public Sub CancelBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub UpdateBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)

        Dim title As TextBox = CType(E.Item.Cells(3).Controls(0), TextBox)
        Dim strstatus As String = CType(E.Item.FindControl("cmbStatus"), DropDownList).SelectedItem.Value
       

        strsql = "Update Model Set Model_Name = '" & title.Text & "' "
        strsql &= " ,show=" & strstatus
        strsql &= "Where  Model = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
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
    Private Sub category_rd_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles category_rd.SelectedIndexChanged
        bind_brand()
        brand_ddl.SelectedIndex = 0
        Bind()
    End Sub
    Private Sub brand_ddl_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles brand_ddl.SelectedIndexChanged
        Bind()
    End Sub
    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("AddModel.aspx?brand=" & brand_ddl.SelectedValue)
    End Sub



    Public Sub bindDropDown()
        Dim Dset As New DataSet
        Dim DRow As DataRow

        With Dset
            .Tables.Add("status")
            .Tables("status").Columns.Add("status_id")
            .Tables("status").Columns.Add("status_desc")
            DRow = .Tables("status").NewRow
            DRow.Item("status_id") = 0
            DRow.Item("status_desc") = "NotShow"
            .Tables("status").Rows.InsertAt(DRow, 0)

            DRow = .Tables("status").NewRow
            DRow.Item("status_id") = 1
            DRow.Item("status_desc") = "Show"
            .Tables("status").Rows.InsertAt(DRow, 1)




        End With
        StatusView = Dset.Tables("status")

    End Sub
    Public Sub setIndex(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.DropDownList
        ed = sender
        ed.SelectedIndex = ed.Items.IndexOf(ed.Items.FindByText(strstatus))

    End Sub
End Class
