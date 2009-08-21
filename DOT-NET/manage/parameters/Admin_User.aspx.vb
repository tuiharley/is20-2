Imports System.Data
Imports System.Data.OleDb
Public Class Admin_User
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Datagrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents BName As System.Web.UI.WebControls.TextBox
    Protected WithEvents BBranch As System.Web.UI.WebControls.TextBox

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

        End If
    End Sub

    Public Sub MyDataGrid_Paging(ByVal Sender As Object, ByVal E As DataGridPageChangedEventArgs)
        DataGrid1.CurrentPageIndex = E.NewPageIndex
        Bind()
    End Sub

    Private Sub Bind()
        strsql = "SELECT Bank_ID , Bank_Name,Bank_Branch,Bank_AccountName,Bank_AccountNum,Bank_Type from Bank"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Bank")
        Datagrid1.DataSource = ds.Tables("Bank")
        Datagrid1.DataBind()
        myconn.Close()
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
        strsql = "Delete From Bank Where Bank_Id = " & x
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        'Response.Write(strsql)
        strsql = "Update Bank Set Bank_Id = Bank_Id - 1 Where Bank_Id > " & x
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        ' Response.Write(strsql)
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub UpdateBook(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)

        Dim title As TextBox = CType(E.Item.Cells(2).Controls(0), TextBox)
        Dim Branch As TextBox = CType(E.Item.Cells(3).Controls(0), TextBox)
        Dim Account As TextBox = CType(E.Item.Cells(4).Controls(0), TextBox)
        Dim Number As TextBox = CType(E.Item.Cells(5).Controls(0), TextBox)
        Dim BankType As TextBox = CType(E.Item.Cells(6).Controls(0), TextBox)


        'Dim category As DropDownList = CType(E.Item.Cells(4).Controls(0), DropDownList)
        strsql = "UPDATE Bank SET Bank_Name = '" & title.Text & "', Bank_Branch = '" & Branch.Text & "', Bank_AccountName = '" & Account.Text & "', Bank_AccountNum = '" & Number.Text & "', Bank_Type = '" & BankType.Text & "' Where Bank_Id = " & Datagrid1.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        Datagrid1.EditItemIndex = -1
        Bind()
    End Sub

    Private Function getNewBank() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(Bank_Id) as Bank_Id FROM Bank"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("Bank_Id") + 1
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
        'If IsPostBack Then
        '    If (BName.Text <> "") And (BBranch.Text <> "") And (BAccount.Text <> "") And (BNumber.Text <> "") And (BType.Text <> "") Then

        '        strsql = "Insert into Bank Values(" & getNewBank() & ",'" & BName.Text & "','" & BBranch.Text & "','" & BAccount.Text & "','" & BNumber.Text & "','" & BType.Text & "') "
        '        'Response.Write(strsql)
        '        mycommand = New OleDbCommand(strsql, myconn)
        '        myconn.Open()
        '        mycommand.ExecuteNonQuery()
        '        myconn.Close()
        '        Bind()
        '        '  bind_brand(category_rd.SelectedValue)
        '        BName.Text = ""
        '        BBranch.Text = ""
        '        BAccount.Text = ""
        '        BNumber.Text = ""
        '        BType.Text = ""
        '    End If
        'End If
    End Sub

End Class
