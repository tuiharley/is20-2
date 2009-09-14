Imports System.Globalization
Imports System.Data
Imports System.Data.OleDb

Public Class customer
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents CustTitle As System.Web.UI.WebControls.DropDownList
    Protected WithEvents CustSurname As System.Web.UI.WebControls.TextBox
    Protected WithEvents CustList As System.Web.UI.WebControls.DataGrid
    Protected WithEvents CustName As System.Web.UI.WebControls.TextBox

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Dim MyCust As A_Customer
    Protected StatusView As DataTable
    Protected StatusView2 As DataTable
    Dim searchStatus As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        If Page.IsPostBack = False Then
            Bind()
        End If

        AjaxPro.Utility.RegisterTypeForAjax(GetType(customer))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function AddCust(ByVal CustTitle As String, ByVal CustName As String, ByVal CustSurname As String) As String
        Dim txt As String
        Dim myCust As A_Customer

        myCust.CUST_TITLE = CustTitle
        myCust.CUST_NAME = CustName
        myCust.CUST_SURNAME = CustSurname
        CustomerDB.addNewCust(myCust)


     

        Return txt
    End Function


    Private Sub CustTitle_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CustTitle.Init
        Dim MyDs As New DataSet

        MyDs = TitleDB.getTitleDS

        Dim DRow As DataRow = MyDs.Tables("title").NewRow()
        DRow.Item("Title") = "0"
        DRow.Item("Title_Name") = "โปรดระบุ"
        MyDs.Tables("title").Rows.InsertAt(DRow, 0)

        CustTitle.DataValueField = "Title"
        CustTitle.DataTextField = "Title_Name"
        CustTitle.DataSource = MyDs.Tables("title")
        CustTitle.DataBind()

        MyDs.Dispose()
    End Sub


    'DataGrid
    Private Sub Bind()
        Dim MyDs As New DataSet

        MyDs = CustomerDB.getCustomerDS
        CustList.DataSource = MyDs.Tables("Customer")
        CustList.DataBind()
        MyDs.Dispose()

    End Sub
    Public Sub EditCust(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        MyCust = CustomerDB.getA_customer(CustList.DataKeys.Item(E.Item.ItemIndex))
        searchStatus = CType(E.Item.FindControl("lblShow"), Label).Text

        bindDropDown()
        bindDropDown2()
        CustList.EditItemIndex = E.Item.ItemIndex
        Bind()
    End Sub
    Public Sub CancelCust(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        CustList.EditItemIndex = -1
        Bind()
    End Sub
    Public Sub UpdateCust(ByVal Sender As Object, ByVal E As DataGridCommandEventArgs)
        Dim mycommand As OleDbCommand
        Dim myconn As New OleDbConnection(Session("conn"))
        Dim strsql As String

        Dim CustTitle As String = CType(E.Item.FindControl("cmbTitle"), DropDownList).SelectedItem.Value
        Dim CustName As String = CType(E.Item.FindControl("lblCustName"), TextBox).Text
        Dim CustSurName As String = CType(E.Item.FindControl("lblCustSurName"), TextBox).Text
        Dim searchSt As String = CType(E.Item.FindControl("cmbShow"), DropDownList).SelectedItem.Value

        strsql = "Update CUSTOMER Set CUST_TITLE = " & CustTitle
        strsql &= " ,CUST_NAME=" & checkNullstr(CustName)
        strsql &= " ,CUST_SURNAME=" & checkNullstr(CustSurName)
        strsql &= " ,SHOW=" & searchSt
        strsql &= "  Where  CUST_ID = " & CustList.DataKeys.Item(E.Item.ItemIndex)
        mycommand = New OleDbCommand(strsql, myconn)
        myconn.Open()
        mycommand.ExecuteNonQuery()
        myconn.Close()
        CustList.EditItemIndex = -1
        Bind()
    End Sub

    Public Sub bindDropDown()
        Dim Dset As New DataSet

        Dset = TitleDB.getTitleDS
        StatusView = Dset.Tables("title")

    End Sub
    Public Sub bindDropDown2()
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
        StatusView2 = Dset.Tables("status")

    End Sub
    Public Sub ShowName(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.TextBox
        ed = sender
        ed.Text = MyCust.CUST_NAME
    End Sub
    Public Sub ShowSurName(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.TextBox
        ed = sender
        ed.Text = MyCust.CUST_SURNAME
    End Sub
    Public Sub setIndex1(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.DropDownList
        ed = sender
        ed.SelectedIndex = ed.Items.IndexOf(ed.Items.FindByValue(MyCust.CUST_TITLE))
    End Sub
    Public Sub setIndex2(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ed As System.Web.UI.WebControls.DropDownList
        ed = sender
        ed.SelectedIndex = ed.Items.IndexOf(ed.Items.FindByText(searchStatus))
    End Sub
End Class
