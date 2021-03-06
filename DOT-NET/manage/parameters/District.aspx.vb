Imports System.Data
Imports System.Data.OleDb
Public Class District
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
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        myconn = New OleDbConnection(Session("conn"))

        If Page.IsPostBack = False Then
            Bind()
            bind_Province()

        End If
    End Sub

    Public Sub MyDataGrid_Paging(ByVal Sender As Object, ByVal E As DataGridPageChangedEventArgs)
        DataGrid1.CurrentPageIndex = E.NewPageIndex
        Bind()
    End Sub

    Private Sub Bind()
        strsql = "SELECT District.District, Province.Province_Name, District.District_Name FROM Province INNER JOIN District ON Province.Province = District.Province"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "District")
        Datagrid1.DataSource = ds.Tables("District")
        Datagrid1.DataBind()
        myconn.Close()
    End Sub
    Private Sub bind_Province()
        strsql = "Select * from Province"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Province")
        province.DataSource = ds.Tables("Province")
        province.DataBind()
        myconn.Close()
        'province.SelectedValue = 1
    End Sub
   
    Public Sub EditBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = E.Item.ItemIndex
        Bind()
    End Sub
    Public Sub CancelBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub UpdateBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)

        Dim title As TextBox = CType(E.Item.Cells(2).Controls(0), TextBox)
        'Dim category As DropDownList = CType(E.Item.Cells(4).Controls(0), DropDownList)
        strsql = "Update District Set District_Name = '" & title.Text & "' Where District = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub

    Private Function getNewDirtrict() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(District) as District FROM District"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("District") + 1
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

                strsql = "Insert into District Values(" & getNewDirtrict() & "," & province.SelectedValue & ",'" & district_txt.Text & "') "
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

End Class
