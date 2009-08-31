Imports System.Data
Imports System.Data.OleDb
Public Class Parts
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents province As System.Web.UI.WebControls.DropDownList
    Protected WithEvents district_txt As System.Web.UI.WebControls.TextBox

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

        If Page.IsPostBack = False Then
            province.SelectedIndex = 0

            bind_Province()
            Bind()
        End If
    End Sub

    Private Sub Bind()
        strsql = "SELECT     Category.Category_Name, PartsType.PartsType_Name, PartsType.PartsType,REPLACE(REPLACE(PartsType.Show, 1, 'Show'), 0, 'NotShow') AS Status_Name"
        strsql = strsql & " FROM         CategoryType INNER JOIN"
        strsql = strsql & " Category ON CategoryType.CategoryType = Category.Category_CategoryType INNER JOIN"
        strsql = strsql & " PartsType ON Category.Category = PartsType.PartsType_Category"
        strsql = strsql & " WHERE     (CategoryType.CategoryType = 2)"
        strsql &= " AND Category.Category = " & province.SelectedValue
        strsql = strsql & " Order by   PartsType.PartsType_Category "


        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Parts")
        Datagrid1.DataSource = ds.Tables("Parts")
        Datagrid1.DataBind()
        myconn.Close()
    End Sub
    Private Sub bind_Province()

        strsql = "SELECT     Category.Category_Name, Category.Category"
        strsql = strsql & " FROM         CategoryType INNER JOIN"
        strsql = strsql & " Category ON CategoryType.CategoryType = Category.Category_CategoryType"
        strsql = strsql & " WHERE     (CategoryType.CategoryType = 2)"


        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Category")
        province.DataSource = ds.Tables("Category")
        province.DataBind()
        myconn.Close()
        'province.SelectedValue = 1
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

        Dim title As TextBox = CType(E.Item.Cells(2).Controls(0), TextBox)
        Dim strstatus As String = CType(E.Item.FindControl("cmbStatus"), DropDownList).SelectedItem.Value

        strsql = "Update PartsType Set PartsType_Name = '" & title.Text & "' "
        strsql &= ",show=" & strstatus
        strsql &= " Where  PartsType = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub

    Private Function getNewPrtype() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(PartsType) as PartsType FROM PartsType"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("PartsType") + 1
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
            If district_txt.Text <> "" Then

                strsql = "Insert into PartsType(PartsType, PartsType_Category, PartsType_Name) Values(" & getNewPrtype() & "," & province.SelectedValue & ",'" & district_txt.Text & "') "
                'Response.Write(strsql)
                mycommand = New OleDbCommand(strsql, myconn)
                myconn.Open()
                mycommand.ExecuteNonQuery()
                myconn.Close()
                Bind()
                district_txt.Text = ""
                '  bind_brand(category_rd.SelectedValue)
            End If
        End If
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

    Private Sub province_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles province.SelectedIndexChanged
        Bind()
    End Sub
End Class
