Imports System.Globalization
Imports System.Threading
Imports System.Data
Imports System.Data.OleDb

Public Class check_records
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents bankList As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents chkCust As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkNo As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSearch As System.Web.UI.WebControls.Button
    Protected WithEvents chkStatus As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkDateF As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkMonthF As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkYearF As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkDateT As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkYearT As System.Web.UI.WebControls.DropDownList
    Protected WithEvents chkMonthT As System.Web.UI.WebControls.DropDownList

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
        AjaxPro.Utility.RegisterTypeForAjax(GetType(check_records))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function showCheck(ByVal bankCode As Integer, ByVal DFrom As String, ByVal DTo As String, ByVal cust As String, ByVal chkNo As String, ByVal chkStatus As String) As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim str As String
        Dim txt As String
        Dim myQ As New Queue
        Dim myCheck As CheckSt
        Dim myCust As A_Customer
        Dim MyDs As DataSet
        Dim runNo As Integer = 1

        myCheck.BANK_CODE = bankCode
        myCheck.CHECK_DATE = DFrom.Replace("-", "/")
        myCheck.CHECK_DATE_TO = DTo.Replace("-", "/")
        myCheck.CUST_ID = cust
        myCheck.CK_NO = chkNo
        myCheck.CK_STATUS = chkStatus


        myQ = CheckDB.getChecks(makeSQL(myCheck))


        If myQ.Count > 0 Then
            For Each myCheck In myQ

                MyDs = New DataSet
                MyDs = BankDB.getBankDSById(myCheck.BANK_CODE, 18)

                str = str & "<table  width='100%' border='2' cellpadding='10' cellspacing='0' bgcolor='#CCFF33' bordercolor='#7DB357' bordercolordark='#7DB357'>"
                str = str & "<tr height='30'>"
                str &= "<td rowspan=3 width='3%' align='center' bgcolor='#FFFF99'> " & runNo & " </td>"
                str = str & "<td width='12%' bgcolor='#99FFFF'>�ѹ���</td>"
                str = str & "<td width='17%' class='CheckData'>" & myCheck.CHECK_DATE.ToString("dd/MM/yyyy") & "</td>"
                str = str & "<td width='13%' bgcolor='#99FFFF'>�����觨���</td>"

                myCust = CustomerDB.getA_customer(myCheck.CUST_ID)
                str = str & "<td width='23%' colspan='2' class='CheckData'>" & TitleDB.getTitleName(myCust.CUST_TITLE) & " " & myCust.CUST_NAME & " " & myCust.CUST_SURNAME & "</td>"
                str = str & "<td width='10%' bgcolor='#99FFFF' >��Ҥ��</td>"
                str = str & "<td width='22%' colspan='2' align='center' class='CheckData'>" & MyDs.Tables("bank").Rows(0).Item("BANK_NAME") & "</td>"
                str = str & "</tr>"
                str = str & "<tr height='30'>"
                str = str & "<td bgcolor='#99FFFF'>�Ţ���</td>"
                str = str & "<td class='CheckData'>" & myCheck.CK_NO & "</td>"
                str = str & "<td bgcolor='#99FFFF'>�ӹǹ�Թ</td>"
                str = str & "<td colspan='2' align='right' class='CheckData'>" & FormatNumber(myCheck.AMOUNT, 2, , , TriState.True) & " </td>"
                str = str & "<td bgcolor='#99FFFF'>ʶҹ�</td>"
                str = str & "<td colspan='2' align='center' class='CheckData'>" & StatusDB.getStatusName(myCheck.CK_STATUS) & "</td>"
                str = str & "</tr>"
                str = str & "<tr height='30'>"
                str = str & "<td bgcolor='#99FFFF'>�����˵�</td>"
                str = str & "<td colspan='4' class='CheckData'> " & myCheck.CK_DETAIL & " </td>"
                str = str & "<td colspan='3'>"
                str = str & " <input name='btnDel' type='button' class='btn' id='btnDel' value='ź' onClick=""delCheck('" & myCheck.CHECK_ID & "')""/>"
                str = str & " <input name='btnEdit' type='button' class='btn' id='btnEdit' value='���' onClick=""goEdit('" & myCheck.CHECK_ID & "');"" /></td>"
                str = str & "</tr>"
                str = str & "</table>"
                str = str & "<table>"
                str = str & "<tr height='1'>"
                str = str & "<td></td>	"
                str = str & "</tr>"
                str = str & "</table>"

                MyDs.Dispose()
                runNo += 1
            Next
        Else
            str = str & "<table width='100%' border='2' cellpadding='10' cellspacing='0' bgcolor='#CCFF33' bordercolor='#7DB357' bordercolordark='#7DB357'>"
            str = str & "<tr><td colspan=6 align=center>�������¡��</td></tr></table>"
        End If



        txt = txt & str
        'test()

        Return txt
    End Function

    Private Function makeSQL(ByVal MyCheck As CheckSt) As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim ans As String
        'MyCheck.BANK_CODE = bankCode
        'MyCheck.CHECK_DATE = m & "/" & d & "/" & y
        'MyCheck.CUST_ID = cust
        'MyCheck.CK_NO = chkNo
        'MyCheck.CK_STATUS = chkStatus

        ans = " CHECK_DATE >= CONVERT(datetime, '" & MyCheck.CHECK_DATE.ToString("dd/MM/yyyy") & " 00:00:00', 103) AND CHECK_DATE <= CONVERT(datetime, '" & MyCheck.CHECK_DATE_TO.ToString("dd/MM/yyyy") & " 23:59:59', 103)"
        If MyCheck.BANK_CODE > -1 Then
            ans &= " AND BANK_CODE = " & MyCheck.BANK_CODE
        End If
        If MyCheck.CUST_ID > 0 Then
            ans &= " AND CUST_ID = " & MyCheck.CUST_ID
        End If
        If MyCheck.CK_NO <> "" Then
            ans &= " AND CK_NO = '" & MyCheck.CK_NO & "'"
        End If
        If MyCheck.CK_STATUS > 0 Then
            ans &= " AND CK_STATUS = " & MyCheck.CK_STATUS
        End If

        Return ans
    End Function

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
        DRow.Item("CUST_NAME") = "������"
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

        Dim DRow As DataRow = myDS.Tables("ck_status").NewRow()
        DRow.Item("STATUS_ID") = 0
        DRow.Item("STATUS_NAME") = "������"
        myDS.Tables("ck_status").Rows.InsertAt(DRow, 0)

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
            .RepeatColumns = 3
            .DataSource = myDS
            .DataBind()

        End With
        myDS.Dispose()
    End Sub

    Private Sub chkDateF_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkDateF.Init
        Dim MyTable As DataTable = DateTable()

        With chkDateF
            .DataValueField = "DAY"
            .DataTextField = "DAY_NAME"
            .DataSource = MyTable
            .DataBind()
            .SelectedValue = Day(Now)
        End With

        MyTable.Dispose()

    End Sub
    Private Sub chkDateT_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkDateT.Init
        Dim MyTable As DataTable = DateTable()

        With chkDateT
            .DataValueField = "DAY"
            .DataTextField = "DAY_NAME"
            .DataSource = MyTable
            .DataBind()
            .SelectedValue = Day(Now)
        End With

        MyTable.Dispose()
    End Sub
    Private Sub chkMonthF_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkMonthF.Init
        Dim MyTable As DataTable = MonthTable()

        With chkMonthF
            .DataValueField = "MONTH"
            .DataTextField = "MONTH_NAME"
            .DataSource = MyTable
            .DataBind()
            .SelectedValue = Month(Now)
        End With

        MyTable.Dispose()
    End Sub
    Private Sub chkMonthT_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkMonthT.Init
        Dim MyTable As DataTable = MonthTable()

        With chkMonthT
            .DataValueField = "MONTH"
            .DataTextField = "MONTH_NAME"
            .DataSource = MyTable
            .DataBind()
            .SelectedValue = Month(Now)
        End With

        MyTable.Dispose()
    End Sub
    Private Sub chkYearF_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkYearF.Init
        Dim MyTable As DataTable = YearTable()

        With chkYearF
            .DataValueField = "YEAR"
            .DataTextField = "YEAR_NAME"
            .DataSource = MyTable
            .DataBind()
        End With

        MyTable.Dispose()
    End Sub
    Private Sub chkYearT_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkYearT.Init
        Dim MyTable As DataTable = YearTable()

        With chkYearT
            .DataValueField = "YEAR"
            .DataTextField = "YEAR_NAME"
            .DataSource = MyTable
            .DataBind()
        End With

        MyTable.Dispose()
    End Sub

    Private Function DateTable() As DataTable
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

        Return DTable
    End Function
    Private Function MonthTable() As DataTable
        Dim DTable As New DataTable
        Dim DRow As DataRow

        DTable.Columns.Add(New DataColumn("MONTH", GetType(String)))
        DTable.Columns.Add(New DataColumn("MONTH_NAME", GetType(String)))
        Dim i As Integer
        For i = 0 To 11
            DRow = DTable.NewRow()
            DRow.Item("MONTH") = i + 1
            DRow.Item("MONTH_NAME") = Right("0" & i + 1, 2)
            DTable.Rows.Add(DRow)
        Next

        Return DTable
    End Function
    Private Function YearTable() As DataTable
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        Dim i As Integer
        Dim thisYear As Integer
        Year(New Date)
        thisYear = Year(Now()) - ConstYear
        For i = 0 To thisYear - (thisYear - 5)
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(thisYear - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(thisYear - i), 4)
            DTable.Rows.Add(DRow)
        Next

        Return DTable
    End Function
End Class
