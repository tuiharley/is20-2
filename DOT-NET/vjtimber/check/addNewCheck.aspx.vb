Imports System.Globalization
Imports System.Threading
Imports System.Data
Imports System.Data.OleDb

Public Class addNewCheck
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
        bindBank()
        Session("pageName") = "addNewCheck.aspx"
        AjaxPro.Utility.RegisterTypeForAjax(GetType(addNewCheck))
    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function showCheck(ByVal st As String) As String
        Dim str As String
        Dim txt As String
        Dim myQ As New Queue
        Dim myCheck As CheckSt
        Dim myCust As A_Customer
        Dim MyDs As DataSet
        Dim runNo As Integer = 1

        myQ = CheckDB.getChecks("")

        str = str & showPage(myQ.Count)

        If myQ.Count > 0 Then
            For Each myCheck In myQ

                MyDs = New DataSet
                MyDs = BankDB.getBankDSById(myCheck.BANK_CODE, 18)

                str = str & "<table  width='100%' border='2' cellpadding='10' cellspacing='0' bgcolor='#CCFF33' bordercolor='#7DB357' bordercolordark='#7DB357'>"
                str = str & "<tr height='30'>"
                str &= "<td rowspan=3 width='3%' align='center' bgcolor='#FFFF99'> " & runNo & " </td>"
                str = str & "<td width='12%' bgcolor='#99FFFF'>วันที่</td>"
                str = str & "<td width='17%' class='CheckData'>" & myCheck.CHECK_DATE.ToString("dd/MM/yyyy") & "</td>"
                str = str & "<td width='13%' bgcolor='#99FFFF'>ผู้สั่งจ่าย</td>"

                myCust = CustomerDB.getA_customer(myCheck.CUST_ID)
                str = str & "<td width='23%' colspan='2' class='CheckData'>" & TitleDB.getTitleName(myCust.CUST_TITLE) & " " & myCust.CUST_NAME & " " & myCust.CUST_SURNAME & "</td>"
                str = str & "<td width='10%' bgcolor='#99FFFF' >ธนาคาร</td>"
                str = str & "<td width='22%' colspan='2' align='center' class='CheckData'>" & MyDs.Tables("bank").Rows(0).Item("BANK_NAME") & "</td>"
                str = str & "</tr>"
                str = str & "<tr height='30'>"
                str = str & "<td bgcolor='#99FFFF'>เลขที่</td>"
                str = str & "<td class='CheckData'>" & myCheck.CK_NO & "</td>"
                str = str & "<td bgcolor='#99FFFF'>จำนวนเงิน</td>"
                str = str & "<td colspan='2' align='right' class='CheckData'>" & FormatNumber(myCheck.AMOUNT, 2, , , TriState.True) & " </td>"
                str = str & "<td bgcolor='#99FFFF'>สถานะ</td>"
                str = str & "<td colspan='2' align='center' class='CheckData'>" & StatusDB.getStatusName(myCheck.CK_STATUS) & "</td>"
                str = str & "</tr>"
                str = str & "<tr height='30'>"
                str = str & "<td bgcolor='#99FFFF'>หมายเหตุ</td>"
                str = str & "<td colspan='4' class='CheckData'> " & myCheck.CK_DETAIL & " </td>"
                str = str & "<td colspan='3'>"
                str = str & " <input name='btnDel' type='button' class='btn' id='btnDel' value='ลบ' onClick=""delCheck('" & myCheck.CHECK_ID & "')""/>"
                str = str & " <input name='btnEdit' type='button' class='btn' id='btnEdit' value='แก้ไข' onClick=""goEdit('" & myCheck.CHECK_ID & "');"" /></td>"
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
            str = str & "<tr><td colspan=6 align=center>ไม่มีรายการ</td></tr></table>"
        End If


        str = str & showPage(myQ.Count)


        txt = txt & str
        'test()

        Return txt
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function addCheck(ByVal bankCode As String, ByVal d As String, ByVal m As String, ByVal y As String, ByVal cust As String, ByVal amount As String, ByVal chkNo As String, ByVal chkDetail As String) As String
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Dim ans As String
        Dim myCheck As CheckSt

        myCheck.CHECK_DATE = m & "/" & d & "/" & y
        myCheck.CUST_ID = cust
        myCheck.CK_STATUS = 1
        myCheck.AMOUNT = checkNullNum(amount)
        myCheck.BANK_CODE = bankCode
        myCheck.CK_NO = chkNo
        myCheck.CK_DETAIL = chkDetail
        CheckDB.addNewCheck(myCheck)

        Return ans
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function delCheck(ByVal checkID As String) As String

        CheckDB.delCheck(checkID)

        Return "OK"
    End Function

    Private Sub bindBank()
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

    Public Function showPage(ByVal numPage As Integer) As String
        Dim str As String

        str = str & "<table width='100%'>"
        str = str & "<tr>"
        str = str & "<td align='left' width='80%'><FONT face='Tahoma'>ทั้งหมด " & numPage & " รายการ</FONT></td>"
        str = str & "<td width='20%'>"
        str = str & "<table cellSpacing='5' cellPadding='5'>"
        str = str & "<tr>"
        str = str & "<td width='16%'>|&lt;</td>"
        str = str & "<td width='16%'>&lt;</td>"
        str = str & "<td width='16%'>1</td>"
        str = str & "<td width='16%'>2</td>"
        str = str & "<td width='16%'>&gt;</td>"
        str = str & "<td width='16%'>&gt;&gt;|</td>"
        str = str & "</tr>"
        str = str & "</table>"
        str = str & "</td>"
        str = str & "</tr>"
        str = str & "</table>"

        Return str
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
        chkDate.SelectedValue = Day(Now)

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
        chkMonth.SelectedValue = Month(Now)

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
        chkYear.SelectedValue = Year(Now) - ConstYear

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

   
End Class
