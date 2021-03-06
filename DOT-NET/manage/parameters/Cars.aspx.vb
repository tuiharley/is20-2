Imports System.Data
Imports System.Data.OleDb
Public Class Cars
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents txtBrand As System.Web.UI.WebControls.TextBox

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
    Dim searchStatus As String
    Dim offerStatus As String
    Protected StatusView As DataTable


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        myconn = New OleDbConnection(Session("conn"))

        If Page.IsPostBack = False Then
            Bind()
        End If
    End Sub

    Public Sub MyDataGrid_Paging(ByVal Sender As Object, ByVal E As DataGridPageChangedEventArgs)
        DataGrid1.CurrentPageIndex = E.NewPageIndex
        Bind()
    End Sub

    Private Sub Bind()
        strsql = "SELECT Brand.Brand, Brand.Brand_name,REPLACE(REPLACE(SearchShow, 1, 'Show'), 0, 'NotShow') AS SearchShow"
        strsql &= " ,REPLACE(REPLACE(OfferShow, 1, 'Show'), 0, 'NotShow') AS OfferShow"
        strsql &= " FROM Brand ORDER BY Brand"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Brand")
        Datagrid1.DataSource = ds.Tables("Brand")
        Datagrid1.DataBind()
        myconn.Close()
    End Sub
    Public Sub EditBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        searchStatus = CType(E.Item.FindControl("lblSearchName"), Label).Text
        offerStatus = CType(E.Item.FindControl("lblOfferName"), Label).Text

        bindDropDown()
        Datagrid1.EditItemIndex = E.Item.ItemIndex
        Bind()
    End Sub
    Public Sub CancelBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub UpdateBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Dim title As TextBox = CType(E.Item.Cells(1).Controls(0), TextBox)
        Dim searchSt As String = CType(E.Item.FindControl("cmbSearch"), DropDownList).SelectedItem.Value
        Dim offerSt As String = CType(E.Item.FindControl("cmdOffer"), DropDownList).SelectedItem.Value

        strsql = "Update Brand Set Brand_Name = '" & title.Text & "' "
        strsql &= " ,SearchShow=" & searchSt
        strsql &= " ,OfferShow=" & offerSt
        strsql &= "  Where  Brand = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub DelBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        strsql = "Update Brand Set Show = 0 Where Brand = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Bind()
    End Sub


    Private Function getNewbrand() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(Brand) as Brand FROM Brand"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("Brand") + 1
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
        strsql = "Insert into Brand Values(" & getNewbrand() & ",'" & txtBrand.Text & "') "

        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Bind()
        txtBrand.Text = ""
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
    Public Sub setIndex1(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.DropDownList
        ed = sender
        ed.SelectedIndex = ed.Items.IndexOf(ed.Items.FindByText(searchStatus))

    End Sub
    Public Sub setIndex2(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.DropDownList
        ed = sender
        ed.SelectedIndex = ed.Items.IndexOf(ed.Items.FindByText(offerStatus))

    End Sub
End Class
