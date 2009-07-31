Imports System.Globalization
Imports System.Threading
Public Class DCQInfo
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblNotFound As System.Web.UI.WebControls.Label
    Protected WithEvents lstGroup As System.Web.UI.WebControls.DropDownList
    Protected WithEvents dgResult As System.Web.UI.WebControls.DataGrid
    Protected WithEvents pnlResult As System.Web.UI.WebControls.Panel
    Protected WithEvents lblHead As System.Web.UI.WebControls.Label
    Protected WithEvents pnlHead As System.Web.UI.WebControls.Panel
    Protected WithEvents frmSearchCust As System.Web.UI.HtmlControls.HtmlForm
    Protected WithEvents lstCondType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ValidFromD As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ValidFromM As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ValidFromY As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ValidToD As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ValidToM As System.Web.UI.WebControls.DropDownList
    Protected WithEvents ValidToY As System.Web.UI.WebControls.DropDownList
    Protected WithEvents BtnSearch As System.Web.UI.WebControls.ImageButton

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Public FilePath As String = ""
    Public Msg As String = ""

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")

        If Not Page.IsPostBack Then
            InitDate()
            CountVisitPage(40, "pVendorList", Request.UserHostAddress)
            ReadConfigurations()
            Session("CURRENT_HEADER_MENU") = "CUSTOMER"
            FilePath = "../Files/Attach/DOWNLOADS/"
        Else
            If lstGroup.SelectedValue <> "" Then
                Dim shipto As String = lstGroup.SelectedValue
                Dim contype As String = lstCondType.SelectedValue
                Dim Vfrom As DateTime
                Dim vto As DateTime

                If AllFormValid() Then
                    Vfrom = ValidFromM.SelectedValue & "/" & ValidFromD.SelectedValue & "/" & ValidFromY.SelectedValue
                    vto = ValidToM.SelectedValue & "/" & ValidToD.SelectedValue & "/" & ValidToY.SelectedValue
                    LoadData(shipto, contype, Vfrom, vto)
                Else
                    pnlResult.Visible = False
                    lblNotFound.Visible = True
                End If
            Else
                InitComboList()
            End If
        End If

        'LoadData()

    End Sub

    Private Sub InitDate()

        With ValidFromD
            .Items.Clear()
            .DataSource = MakeTableDay()
            .DataTextField = "Day_Name"
            .DataValueField = "Day"
            .DataBind()
        End With

        With ValidFromM
            .Items.Clear()
            .DataSource = MakeTableMonth()
            .DataTextField = "Month_Name"
            .DataValueField = "Month"
            .DataBind()
        End With

        With ValidFromY
            .Items.Clear()
            .DataSource = MakeTableYear()
            .DataTextField = "YEAR_NAME"
            .DataValueField = "YEAR"
            .DataBind()
        End With

        With ValidToD
            .Items.Clear()
            .DataSource = MakeTableDay()
            .DataTextField = "Day_Name"
            .DataValueField = "Day"
            .DataBind()
        End With

        With ValidToM
            .Items.Clear()
            .DataSource = MakeTableMonth()
            .DataTextField = "Month_Name"
            .DataValueField = "Month"
            .DataBind()
        End With

        With ValidToY
            .Items.Clear()
            .DataSource = MakeTableYear()
            .DataTextField = "YEAR_NAME"
            .DataValueField = "YEAR"
            .DataBind()
        End With

    End Sub
    Private Sub InitComboList()
        Dim SQL As String
        Try

            SQL = " SELECT SHIP_TO FROM SAP_GAS_NGR_DCQ@TMASTER.WORLD WHERE COND_TYPE='" & lstCondType.SelectedValue & "' AND SOLD_TO='00" & Session("USER_NAME") & "'"
            LoadNullList(lstGroup, GetDT(LoadQueryList("ShipTo", SQL, "SHIP_TO")), "SHIP_TO", "SHIP_TO", "", "--- กรุณาเลือกรหัสสาขา ---")
        Catch ex As Exception
        End Try
    End Sub

    Private Sub LoadData(ByVal ShipTo As String, ByVal CondType As String, ByVal VFrom As DateTime, ByVal VTo As DateTime)
        Try

            'pnlHead.Visible = (lstGroup.SelectedValue & "" <> "")
            'lblHead.Text = lstGroup.SelectedItem.Text
            If ShipTo & "" <> "" Then
                Session("DCQInfo") = GetDT(LoadDCQList(ShipTo, CondType, VFrom, VTo))
            End If
            'dgResult.CurrentPageIndex = 0

            BindDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub
    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("DCQInfo")
            If Not IsNothing(DT) Then
                pnlResult.Visible = True
                lblNotFound.Visible = False
                dgResult.DataSource = DT
                dgResult.DataBind()
            Else
                pnlResult.Visible = False
                lblNotFound.Visible = True
            End If
        Catch ex As Exception
            Session("DCQInfo") = Nothing
        End Try
    End Sub


    Private Function MakeTableYear() As DataTable
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim i As Integer
        Dim thisYear As Integer
        Dim ConstYear As String = ConfigurationSettings.AppSettings("ConstYear")

        DTable.Columns.Add(New DataColumn("YEAR", GetType(String)))
        DTable.Columns.Add(New DataColumn("YEAR_NAME", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("YEAR") = "0"
        DRow.Item("YEAR_NAME") = "yyyy"
        DTable.Rows.InsertAt(DRow, 0)

        Year(New Date)
        thisYear = Year(Now())
        For i = 0 To thisYear - 2006
            DRow = DTable.NewRow()
            DRow.Item("YEAR") = Right(Str(thisYear - i), 4)
            DRow.Item("YEAR_NAME") = Right(Str(thisYear - i), 4)
            DTable.Rows.Add(DRow)
        Next

        Return DTable

    End Function
    Private Function MakeTableMonth() As DataTable
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim i As Integer

        DTable.Columns.Add(New DataColumn("Month", GetType(String)))
        DTable.Columns.Add(New DataColumn("Month_Name", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("Month") = "0"
        DRow.Item("Month_Name") = "mm"
        DTable.Rows.InsertAt(DRow, 0)

        For i = 1 To 12
            DRow = DTable.NewRow()
            DRow.Item("Month") = i
            DRow.Item("Month_Name") = i
            DTable.Rows.Add(DRow)
        Next

        Return DTable

    End Function
    Private Function MakeTableDay() As DataTable
        Dim DTable As New DataTable
        Dim DRow As DataRow
        Dim i As Integer

        DTable.Columns.Add(New DataColumn("Day", GetType(String)))
        DTable.Columns.Add(New DataColumn("Day_Name", GetType(String)))
        DRow = DTable.NewRow()
        DRow.Item("Day") = "0"
        DRow.Item("Day_Name") = "dd"
        DTable.Rows.InsertAt(DRow, 0)

        For i = 1 To 31
            DRow = DTable.NewRow()
            DRow.Item("Day") = i
            DRow.Item("Day_Name") = i
            DTable.Rows.Add(DRow)
        Next

        Return DTable

    End Function

    Private Function AllFormValid() As Boolean
        If ValidFromM.SelectedValue = 0 Then Return False
        If ValidFromD.SelectedValue = 0 Then Return False
        If ValidFromY.SelectedValue = 0 Then Return False
        If ValidToM.SelectedValue = 0 Then Return False
        If ValidToD.SelectedValue = 0 Then Return False
        If ValidToY.SelectedValue = 0 Then Return False

        Return True
    End Function
End Class
