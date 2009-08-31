Imports System.Globalization
Imports System.Threading
Imports System.Data
Imports System.Data.OleDb

Public Class EditCheck
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents bankList As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents chkDate As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkMonth As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkYear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkCust As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkAmount As System.Web.UI.WebControls.TextBox
    Protected WithEvents chkNo As System.Web.UI.WebControls.TextBox
    Protected WithEvents chkDetail As System.Web.UI.WebControls.TextBox
    Protected WithEvents chkStatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnSave As System.Web.UI.WebControls.Label

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
        Dim checkid As String = Request.QueryString("checkid")
        Dim MyCheck As CheckSt = CheckDB.getACheck(checkid)

        setValue(MyCheck)
        AjaxPro.Utility.RegisterTypeForAjax(GetType(EditCheck))
    End Sub

    Private Sub setValue(ByVal MyCheck As CheckSt)
        Dim d As String
        Dim m As String
        Dim y As String
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        bankList.SelectedValue = MyCheck.BANK_CODE

        d = Day(MyCheck.CHECK_DATE)
        m = Month(MyCheck.CHECK_DATE)
        y = Year(MyCheck.CHECK_DATE) - ConstYear
        chkDate.SelectedValue = d
        chkMonth.SelectedValue = m
        chkYear.SelectedValue = y

        chkCust.SelectedValue = MyCheck.CUST_ID
        chkAmount.Text = MyCheck.AMOUNT
        chkNo.Text = MyCheck.CK_NO
        chkDetail.Text = MyCheck.CK_DETAIL
        chkStatus.SelectedValue = MyCheck.CK_STATUS


        btnSave.Text = "<input class='btn' onclick=""doEdit(" & MyCheck.CHECK_ID & ");"" type='button' value='Save'>"
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function editCheck(ByVal chkID As Integer, ByVal bankCode As String, ByVal d As String, ByVal m As String, ByVal y As String, ByVal cust As String, ByVal amount As String, ByVal chkNo As String, ByVal chkDetail As String, ByVal chkStatus As String) As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim ans As String = Session("pageName")
        Dim myCheck As CheckSt

        myCheck.CHECK_ID = chkID
        myCheck.CHECK_DATE = m & "/" & d & "/" & y
        myCheck.CUST_ID = cust
        myCheck.CK_STATUS = chkStatus
        myCheck.AMOUNT = checkNullNum(amount)
        myCheck.BANK_CODE = bankCode
        myCheck.CK_NO = chkNo
        myCheck.CK_DETAIL = chkDetail
        CheckDB.updateCheck(myCheck)

        Return ans
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function getBackPage() As String
        Dim ans As String = Session("pageName")
        Return ans
    End Function

    Private Sub chkDate_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkDate.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow

        DTable.Columns.Add(New DataColumn("DAY", GetType(String)))
        DTable.Columns.Add(New DataColumn("DAY_NAME", GetType(String)))
        Dim i As Int16
        For i = 0 To 30
            DRow = DTable.NewRow()
            DRow.Item("DAY") = i + 1
            DRow.Item("DAY_NAME") = Right("0" & i + 1, 2)
            DTable.Rows.Add(DRow)
        Next
        chkDate.DataValueField = "DAY"
        chkDate.DataTextField = "DAY_NAME"
        chkDate.DataSource = DTable
        chkDate.DataBind()
        'chkDate.SelectedValue = Day(Now)

        DTable.Dispose()

    End Sub
    Private Sub chkMonth_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkMonth.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow

        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        Dim i As Int16
        For i = 0 To 11
            DRow = DTable.NewRow()
            DRow.Item("MONTH") = i + 1
            DRow.Item("MONTH_NAME") = Right("0" & i + 1, 2)
            DTable.Rows.Add(DRow)
        Next
        chkMonth.DataValueField = "MONTH"
        chkMonth.DataTextField = "MONTH_NAME"
        chkMonth.DataSource = DTable
        chkMonth.DataBind()
        'chkMonth.SelectedValue = Month(Now)

        DTable.Dispose()

    End Sub
    Private Sub chkYear_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkYear.Init
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        Dim i As Int16
        Dim thisYear As Integer
        Year(New Date)
        thisYear = Year(Now()) - ConstYear
        For i = 0 To thisYear - (thisYear - 5)
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(thisYear - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(thisYear - i), 4)
            DTable.Rows.Add(DRow)
        Next
        chkYear.DataTextField = "YEAR_NAME"
        chkYear.DataValueField = "YEAR"
        chkYear.DataSource = DTable
        chkYear.DataBind()

        DTable.Dispose()
    End Sub
    Private Sub chkCust_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkCust.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT CUSTOMER.CUST_ID, TITLE.TITLE_NAME + ' ' + CUSTOMER.CUST_NAME + ' ' + ISNULL(CUSTOMER.CUST_SURNAME, '') AS CUST_NAME"
        Sql = Sql & " FROM  CUSTOMER INNER JOIN"
        Sql = Sql & " TITLE ON CUSTOMER.CUST_TITLE = TITLE.TITLE"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("CUST_ID") = 0
        DRow.Item("CUST_NAME") = "โปรดระบุ"
        ds.Tables("status").Rows.InsertAt(DRow, 0)

        chkCust.DataValueField = "CUST_ID"
        chkCust.DataTextField = "CUST_NAME"
        chkCust.DataSource = ds.Tables("status")
        chkCust.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub chkStatus_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkStatus.Init
        Dim myDS As DataSet

        myDS = StatusDB.getStatusDS()

        With chkStatus
            .DataTextField = "STATUS_NAME"
            .DataValueField = "STATUS_ID"
            .DataSource = myDS
            .DataBind()

        End With
        myDS.Dispose()
    End Sub
    Private Sub bankList_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles bankList.Init
        Dim myDS As DataSet

        myDS = BankDB.getBankDS(25)

        With bankList
            .DataTextField = "BANK_NAME"
            .DataValueField = "BANK_CODE"
            .RepeatDirection = RepeatDirection.Vertical
            .RepeatColumns = 2
            .DataSource = myDS
            .DataBind()

        End With
        myDS.Dispose()
    End Sub
End Class
