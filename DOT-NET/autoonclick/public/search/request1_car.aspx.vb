Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Public Class request1_car
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Brands As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents Model As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents cartype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents enginetype As System.Web.UI.WebControls.DropDownList
    Protected WithEvents gear As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Price1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Price2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Year1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Year2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents CC1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents CC2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents power1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents power2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents mile1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents mile2 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents color As System.Web.UI.WebControls.DropDownList
    Protected WithEvents metalic As System.Web.UI.WebControls.CheckBox
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents Insurrance As System.Web.UI.WebControls.DropDownList
    Protected WithEvents accident As System.Web.UI.WebControls.DropDownList
    Protected WithEvents showPrice As System.Web.UI.WebControls.DropDownList
    Protected WithEvents showPic As System.Web.UI.WebControls.DropDownList
    Protected WithEvents SaleType As System.Web.UI.WebControls.DropDownList
    Protected WithEvents order_by As System.Web.UI.WebControls.DropDownList
    Protected WithEvents accessory1 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents accessory2 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents accessory3 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents doSearch As System.Web.UI.WebControls.Button
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents password As System.Web.UI.WebControls.TextBox
    Protected WithEvents confirm As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents PasswordRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents PasswordRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents CompareValidator1 As System.Web.UI.WebControls.CompareValidator
    Protected WithEvents ConfirmRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents reqBike As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqTruck As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqDel As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqPart As System.Web.UI.WebControls.HyperLink
    Protected WithEvents BrandValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents ModelValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents duplicateCheck As System.Web.UI.WebControls.CustomValidator

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

        reqBike.NavigateUrl = "request1_moto.aspx"
        reqTruck.NavigateUrl = "request1_truck.aspx"
        reqPart.NavigateUrl = "request1_part.aspx"
        reqDel.NavigateUrl = "request3_deletion_form.aspx"

        AjaxPro.Utility.RegisterTypeForAjax(GetType(request1_car))
    End Sub
    Private Sub status_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles status.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS IN (1,2) ORDER BY STATUS"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "status")

        Dim DRow As DataRow = ds.Tables("status").NewRow()
        DRow.Item("STATUS") = 0
        DRow.Item("STATUS_NAME") = "ทุกสภาพ"
        ds.Tables("status").Rows.InsertAt(DRow, 0)
        status.DataSource = ds.Tables("status")
        status.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub cartype_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cartype.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT CARTYPE, CARTYPE_NAME FROM CARTYPE WHERE CATEGORY=1"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "cartype")

        Dim DRow As DataRow = ds.Tables("cartype").NewRow()
        DRow.Item("CARTYPE") = 0
        DRow.Item("CARTYPE_NAME") = "ทุกประเภท"
        ds.Tables("cartype").Rows.InsertAt(DRow, 0)
        cartype.DataSource = ds.Tables("cartype")
        cartype.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub enginetype_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles enginetype.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ENGINETYPE, ENGINETYPE_NAME FROM ENGINETYPE ORDER BY ENGINETYPE"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "enginetype")

        Dim DRow As DataRow = ds.Tables("enginetype").NewRow()
        DRow.Item("ENGINETYPE") = 0
        DRow.Item("ENGINETYPE_NAME") = "ทุกประเภท"
        ds.Tables("enginetype").Rows.InsertAt(DRow, 0)
        enginetype.DataSource = ds.Tables("enginetype")
        enginetype.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub color_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles color.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT COLOR, COLOR_NAME FROM COLOR ORDER BY COLOR"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "color")

        Dim DRow As DataRow = ds.Tables("color").NewRow()
        DRow.Item("COLOR") = 0
        DRow.Item("COLOR_NAME") = "ทุกสี"
        ds.Tables("color").Rows.InsertAt(DRow, 0)
        color.DataSource = ds.Tables("color")
        color.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub gear_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles gear.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT GEAR, GEAR_NAME FROM GEAR ORDER BY GEAR"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "gear")

        Dim DRow As DataRow = ds.Tables("gear").NewRow()
        DRow.Item("GEAR") = 0
        DRow.Item("GEAR_NAME") = "ทุกระบบ"
        ds.Tables("gear").Rows.InsertAt(DRow, 0)
        gear.DataSource = ds.Tables("gear")
        gear.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles accessory1.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM CAR_ACCESSORY WHERE ACCESSORY_TYPE=1 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory1")

        accessory1.DataSource = ds.Tables("accessory1")
        accessory1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles accessory2.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM CAR_ACCESSORY WHERE ACCESSORY_TYPE=2 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory2")

        accessory2.DataSource = ds.Tables("accessory2")
        accessory2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub accessory3_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles accessory3.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM CAR_ACCESSORY WHERE ACCESSORY_TYPE=3 ORDER BY ACCESSORY"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "accessory3")

        accessory3.DataSource = ds.Tables("accessory3")
        accessory3.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showPrice1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Price1.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListPrice_Car WHERE Category = 1 Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "ListPrice_Car")

        Dim DRow As DataRow = ds.Tables("ListPrice_Car").NewRow()
        DRow.Item("Price1_Value") = 0
        DRow.Item("Price1") = "จากทุกราคา"
        ds.Tables("ListPrice_Car").Rows.InsertAt(DRow, 0)

        Price1.DataSource = ds.Tables("ListPrice_Car")
        Price1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showPrice2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Price2.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListPrice_Car WHERE Category = 1 Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "ListPrice_Car2")
        Dim DRow As DataRow = ds.Tables("ListPrice_Car2").NewRow()
        DRow.Item("Price2_Value") = 0
        DRow.Item("Price2") = "ถึงทุกราคา"
        ds.Tables("ListPrice_Car2").Rows.InsertAt(DRow, 0)
        Price2.DataSource = ds.Tables("ListPrice_Car2")
        Price2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showYear1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Year1.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListYear Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "LYear")
        Dim DRow As DataRow = ds.Tables("LYear").NewRow()
        DRow.Item("LYear_Value") = 0
        DRow.Item("LYear") = "จากทุกปี"
        ds.Tables("LYear").Rows.InsertAt(DRow, 0)

        Year1.DataSource = ds.Tables("LYear")
        Year1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showYear2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Year2.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListYear Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "RYear")
        Dim DRow As DataRow = ds.Tables("RYear").NewRow()
        DRow.Item("RYear_Value") = 0
        DRow.Item("RYear") = "ถึงทุกปี"
        ds.Tables("RYear").Rows.InsertAt(DRow, 0)

        Year2.DataSource = ds.Tables("RYear")
        Year2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showCC1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CC1.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListCC WHERE Category = 1 Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "LCC")
        Dim DRow As DataRow = ds.Tables("LCC").NewRow()
        DRow.Item("LCC_Value") = 0
        DRow.Item("LCC") = "จากทุกขนาด"
        ds.Tables("LCC").Rows.InsertAt(DRow, 0)

        CC1.DataSource = ds.Tables("LCC")
        CC1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showCC2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CC2.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListCC WHERE Category = 1 Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "RCC")
        Dim DRow As DataRow = ds.Tables("RCC").NewRow()
        DRow.Item("RCC_Value") = 0
        DRow.Item("RCC") = "ถึงทุกขนาด"
        ds.Tables("RCC").Rows.InsertAt(DRow, 0)

        CC2.DataSource = ds.Tables("RCC")
        CC2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showPower1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles power1.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListPower WHERE Category = 1 Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "LPower")
        Dim DRow As DataRow = ds.Tables("LPower").NewRow()
        DRow.Item("LPower_Value") = 0
        DRow.Item("LPower") = "จากทุกขนาด"
        ds.Tables("LPower").Rows.InsertAt(DRow, 0)

        power1.DataSource = ds.Tables("LPower")
        power1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showPower2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles power2.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListPower WHERE Category = 1 Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "RPower")
        Dim DRow As DataRow = ds.Tables("RPower").NewRow()
        DRow.Item("RPower_Value") = 0
        DRow.Item("RPower") = "ถึงทุกขนาด"
        ds.Tables("RPower").Rows.InsertAt(DRow, 0)

        power2.DataSource = ds.Tables("RPower")
        power2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showMile1_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mile1.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListMile Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "LMile")
        Dim DRow As DataRow = ds.Tables("LMile").NewRow()
        DRow.Item("LMile_Value") = 0
        DRow.Item("LMile") = "จากทุกขนาด"
        ds.Tables("LMile").Rows.InsertAt(DRow, 0)

        mile1.DataSource = ds.Tables("LMile")
        mile1.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub
    Private Sub showMile2_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles mile2.Init

        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String
        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT * FROM ListMile Order by ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "RMile")
        Dim DRow As DataRow = ds.Tables("RMile").NewRow()
        DRow.Item("RMile_Value") = 0
        DRow.Item("RMile") = "ถึงทุกขนาด"
        ds.Tables("RMile").Rows.InsertAt(DRow, 0)

        mile2.DataSource = ds.Tables("RMile")
        mile2.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Function isMax(ByVal price As Double, ByVal type As Integer) As Boolean
        Dim ans As Boolean
        Dim myconn As New OleDbConnection(Session("conn"))
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        Select Case type
            Case 1 : sql = "SELECT max(Price2_Value) as Price FROM ListPrice_Car WHERE Category = 1 "

            Case 2 : sql = "SELECT min(Price1_Value) as Price FROM ListPrice_Car WHERE Category = 1"

            Case 3 : sql = "SELECT min(RYear_Value) as Price FROM ListYear "

            Case 4 : sql = "SELECT min(LYear_Value) as Price FROM ListYear "

            Case 5 : sql = "SELECT min(LCC_Value) as Price FROM ListCC WHERE Category = 1"

            Case 6 : sql = "SELECT max(RCC_Value) as Price FROM ListCC WHERE Category = 1"

            Case 7 : sql = "SELECT max(Rpower_Value) as Price FROM ListPower WHERE Category = 1 "

            Case 8 : sql = "SELECT min(Lpower_Value) as Price FROM ListPower WHERE Category = 1"

            Case 9 : sql = "SELECT max(Rmile_Value) as Price FROM ListMile "

            Case 10 : sql = "SELECT min(Lmile_Value) as Price FROM ListMile "

        End Select

        mycommand = New OleDbCommand(sql, myconn)
        Dim reader As OleDbDataReader = mycommand.ExecuteReader()

        If reader.Read() Then
            If CDbl(reader.Item("Price")) = price Then
                ans = True
            Else
                ans = False
            End If
        End If

        mycommand.Dispose()
        reader.Close()

        myconn.Close()

        Return ans
    End Function

    Function checkBrand(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Car_Brand = " & b_name & ") "
            'Session.Add("SearchCond", BrandDB.getBrandName(b_name) & "; ")
            'Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            'Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkModel(ByVal m_name As Integer) As String
        Dim model_condition As String

        If m_name <> 0 Then
            model_condition = " And (Car_Model = " & m_name & ") "
            'Session("SearchCond") = Session("SearchCond") & ModelDB.getModelName(m_name) & "; "
            'Session("modelIndex") = Request.Form("modelIndex")
        Else
            model_condition = ""
            'Session("modelIndex") = "0"
        End If

        Return model_condition
    End Function
    Function checkStatus(ByVal status As Integer) As String
        Dim status_condition As String

        If status <> 0 Then
            status_condition = " And (Car_Status = " & status & ") "
            'Session("SearchCond") = Session("SearchCond") & StatusDB.getStatusName(status) & "; "
        Else
            status_condition = ""
        End If

        'Session("status") = status
        Return status_condition
    End Function
    Function checkCarType(ByVal car_type As Integer) As String
        Dim car_type_condition As String

        If car_type <> 0 Then
            car_type_condition = " And (car_type = " & car_type & ") "
            'Session("SearchCond") = Session("SearchCond") & CarTypeDB.getStatusName(car_type) & "; "
        Else
            car_type_condition = ""
        End If

        'Session("carType") = car_type
        Return car_type_condition
    End Function
    Function checkEngineType(ByVal engine_type As Integer) As String
        Dim engine_type_condition As String

        If engine_type <> 0 Then
            engine_type_condition = " And (car_EngineType = " & engine_type & ") "
            'Session("SearchCond") = Session("SearchCond") & EngineTypeDB.getEngineName(engine_type) & "; "
        Else
            engine_type_condition = ""
        End If

        'Session("engine_type") = engine_type
        Return engine_type_condition
    End Function
    Function checkGear(ByVal gear_id As Integer) As String
        Dim gear_condition As String

        If gear_id <> 0 Then
            gear_condition = " And (car_Gears = " & gear_id & ") "
            'Session("SearchCond") = Session("SearchCond") & GearDB.getGearType(gear_id) & "; "
        Else
            gear_condition = ""
        End If

        'Session("gear_id") = gear_id
        Return gear_condition
    End Function
    Function checkColor(ByVal color_id As Integer) As String
        Dim color_condition As String

        If color_id <> 0 Then
            color_condition = " And (car_Color = " & color_id & ") "
            'Session("SearchCond") = Session("SearchCond") & ColorDB.getColorName(color_id) & "; "
        Else
            color_condition = ""
        End If

        'Session("color_id") = color_id
        Return color_condition
    End Function
    Function checkColorMetalic(ByVal metalic_check As Boolean) As String
        Dim metalic_condition As String

        If metalic_check Then
            metalic_condition = " And (car_Metalic = 1) "
            'Session("SearchCond") = Session("SearchCond") & "Metalic; "
        Else
            metalic_condition = ""
        End If

        'Session("metalic_check") = metalic_check
        Return metalic_condition
    End Function
    '===========================Customer Province===============================
    Function checkProvince(ByVal province_id As Integer) As String
        Dim province_condition As String

        If province_id <> 0 Then
            province_condition = " And (Customer_Province = " & province_id & ") "
            'Session("SearchCond") = Session("SearchCond") & ProvinceDB.getProvinceName(province_id) & "; "
            'Session("proinceIndex") = Request.Form("proinceIndex")
        Else
            province_condition = ""
            'Session("proinceIndex") = ""
        End If

        Return province_condition
    End Function
    Function checkDistrict(ByVal district_id As Integer) As String
        Dim district_condition As String

        If district_id <> 0 Then
            district_condition = " And (Customer_District = " & district_id & ") "
            'Session("SearchCond") = Session("SearchCond") & DistrictDB.getDistrictName(district_id) & "; "
            'Session("districtIndex") = Request.Form("districtIndex")
        Else
            district_condition = ""
            'Session("districtIndex") = "0"
        End If

        Return district_condition
    End Function
    '===========================Car Insurance===================================
    Function checkInsurrance(ByVal ins As Integer) As String
        Dim insurrance_condition As String

        If ins = 1 Then
            insurrance_condition = " And (car_Insurrance = 0) "
            'Session("SearchCond") = Session("SearchCond") & "ไม่มีประกัน; "
        Else
            insurrance_condition = ""
        End If

        'Session("ins") = ins
        Return insurrance_condition
    End Function
    Function checkAccident(ByVal acc As Integer) As String
        Dim accident_condition As String

        Select Case acc
            Case 0 : accident_condition = " And ((car_accident = 0) or (car_accident is null)) "
            Case 1 : accident_condition = ""
            Case 2
                accident_condition = " And (car_accident = 1) "
                'Session("SearchCond") = Session("SearchCond") & "รถมีอุบัติเหตุ; "
        End Select

        'Session("acc") = acc
        Return accident_condition
    End Function
    '==========================Customer isDealer=================================
    Function checkDealer(ByVal Cust_type As Integer) As String
        Dim customer_type_condition As String

        Select Case Cust_type
            Case 0 : customer_type_condition = ""
            Case 1
                customer_type_condition = " And (Customer_Type = 0) "
                'Session("SearchCond") = Session("SearchCond") & "บุคคลทั่วไป; "
            Case 2
                customer_type_condition = " And (Customer_Type = 1) "
                'Session("SearchCond") = Session("SearchCond") & "ผู้ประกอบการ; "
        End Select

        'Session("Cust_type") = Cust_type
        Return customer_type_condition
    End Function
    Function checkPrice(ByVal p1 As Double, ByVal p2 As Double) As String
        ' ----------------------------------------  PRICE ------------------------------------------------------

        Dim price_condition As String

        If (p1 = 0) And (p2 = 0) Then
            price_condition = ""
        ElseIf (p1 <> 0) And (p2 = 0) Then

            If isMax(p1, 2) Then
                price_condition = " And (Car_Price <= " & p1 + 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
            Else
                price_condition = " And (Car_Price >= " & p1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
            End If

        ElseIf (p1 = 0) And (p2 <> 0) Then

            If isMax(p2, 1) Then
                price_condition = " And (Car_Price >= " & p2 - 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
            Else
                price_condition = " And (Car_Price <= " & p2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
            End If


        ElseIf (p1 <> 0) And (p2 <> 0) Then

            If p1 < p2 Then
                If isMax(p1, 2) Then
                    If p2 <> 0 Then
                        price_condition = " And (Car_Price <= " & p2 & " ) "
                        'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p2 & "; "
                    Else
                        price_condition = " And (Car_Price <= " & p1 + 1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & "<= ฿" & p1 + 1 & "; "
                    End If

                Else
                    If isMax(p2, 1) Then
                        price_condition = " And (Car_Price >= " & p1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p1 & "; "
                    Else
                        price_condition = " And (Car_Price between " & p1 & " and " & p2 & ") "
                        'Session("SearchCond") = Session("SearchCond") & "฿ " & p1 & "-" & p2 & "; "
                    End If
                End If
            Else
                If isMax(p2, 1) Then
                    price_condition = " And (Car_Price >= " & p2 - 1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & ">= ฿" & p2 - 1 & "; "
                Else
                    price_condition = " And (Car_Price between " & p2 & " and " & p1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & "฿ " & p2 & "-" & p1 & "; "
                End If

            End If

        End If
        'Session("p1") = p1
        'Session("p2") = p2

        Return price_condition
    End Function
    Function checkYear(ByVal y1 As Double, ByVal y2 As Double) As String
        ' ---------------------------------------- YEAR ------------------------------------------------------
        Dim year_condition As String
        If y1 = 0 And y2 = 0 Then

            year_condition = ""

        ElseIf y1 <> 0 And y2 = 0 Then

            year_condition = " And (Car_Year_Ord <= " & y1 & ") "
            'Session("SearchCond") = Session("SearchCond") & "<= " & y1 & "; "

        ElseIf y1 = 0 And y2 <> 0 Then

            If isMax(y2, 3) Then
                '  txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
            Else
                year_condition = " And (Car_Year_Ord <= " & y2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
            End If


        ElseIf y1 <> 0 And y2 <> 0 Then

            If (y1 <= y2) Then
                If isMax(y1, 4) Then
                    year_condition = " And (Car_Year_Ord <= " & y2 & ") "
                    'Session("SearchCond") = Session("SearchCond") & "<= " & y2 & "; "
                Else
                    year_condition = " And (Car_Year_Ord between " & y1 & " and " & y2 & ") "
                    'Session("SearchCond") = Session("SearchCond") & y1 & "-" & y2 & "; "
                End If

            Else
                If isMax(y1, 3) Then
                    '   txt_err.Text = "กรุณาเลือกปีที่จะค้นหาใหม่"
                Else
                    year_condition = " And (Car_Year_Ord between " & y2 & " and " & y1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & y2 & "-" & y1 & "; "
                End If


            End If


        End If
        'Session("y1") = y1
        'Session("y2") = y2

        Return year_condition
    End Function
    Function checkCC(ByVal cc1 As Double, ByVal cc2 As Double) As String
        ' ---------------------------------------- CC ------------------------------------------------------
        Dim cc_condition As String
        If cc1 = 0 And cc2 = 0 Then
            cc_condition = ""
        ElseIf cc1 <> 0 And cc2 = 0 Then
            If isMax(cc1, 5) Then
                cc_condition = " And (Car_CC <= " & cc1 + 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
            Else
                cc_condition = " And (Car_CC >= " & cc1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
            End If

        ElseIf cc1 = 0 And cc2 <> 0 Then
            If isMax(cc2, 6) Then
                cc_condition = " And (Car_CC >= " & cc2 - 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
            Else
                cc_condition = " And (Car_CC <= " & cc2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
            End If

        ElseIf cc1 <> 0 And cc2 <> 0 Then
            If cc1 < cc2 Then
                If isMax(cc1, 5) Then
                    If cc2 <> 0 Then
                        cc_condition = " And (Car_CC <= " & cc2 & " ) "
                        'Session("SearchCond") = Session("SearchCond") & "<= " & cc2 & "cc; "
                    Else
                        cc_condition = " And (Car_CC <= " & cc1 + 1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & "<= " & cc1 + 1 & "cc; "
                    End If

                Else
                    If isMax(cc2, 6) Then
                        cc_condition = " And (Car_CC >= " & cc1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & ">= " & cc1 & "cc; "
                    Else
                        cc_condition = " And (Car_CC between " & cc1 & " and " & cc2 & ") "
                        'Session("SearchCond") = Session("SearchCond") & cc1 & "-" & cc2 & "cc; "
                    End If
                End If
            Else
                If isMax(cc2, 6) Then
                    cc_condition = " And (Car_CC >= " & cc2 - 1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & ">= " & cc2 - 1 & "cc; "
                Else
                    cc_condition = " And (Car_CC between " & cc2 & " and " & cc1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & cc2 & "-" & cc1 & "cc; "
                End If

            End If

        End If
        'Session("cc1") = cc1
        'Session("cc2") = cc2

        Return cc_condition
    End Function
    Function checkPower(ByVal pow1 As Double, ByVal pow2 As Double) As String
        ' ----------------------------------------  Power ------------------------------------------------------

        Dim power_condition As String

        If (pow1 = 0) And (pow2 = 0) Then
            power_condition = ""
        ElseIf (pow1 <> 0) And (pow2 = 0) Then

            If isMax(pow1, 8) Then
                power_condition = " And (Car_Power <= " & pow1 + 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & pow1 + 1 & "hp; "
            Else
                power_condition = " And (Car_Power >= " & pow1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= " & pow1 & "hp; "
            End If

        ElseIf (pow1 = 0) And (pow2 <> 0) Then

            If isMax(pow2, 7) Then
                power_condition = " And (Car_Power >= " & pow2 - 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= " & pow2 - 1 & "hp; "
            Else
                power_condition = " And (Car_Power <= " & pow2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & pow2 & "hp; "
            End If


        ElseIf (pow1 <> 0) And (pow2 <> 0) Then

            If pow1 < pow2 Then
                If isMax(pow1, 8) Then
                    If pow2 <> 0 Then
                        power_condition = " And (Car_Power <= " & pow2 & " ) "
                        'Session("SearchCond") = Session("SearchCond") & "<= " & pow2 & "hp; "
                    Else
                        power_condition = " And (Car_Power <= " & pow1 + 1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & "<= " & pow1 + 1 & "hp; "
                    End If

                Else
                    If isMax(pow2, 7) Then
                        power_condition = " And (Car_Power >= " & pow1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & ">= " & pow1 & "hp; "
                    Else
                        power_condition = " And (Car_Power between " & pow1 & " and " & pow2 & ") "
                        'Session("SearchCond") = Session("SearchCond") & pow1 & "-" & pow2 & "hp; "
                    End If
                End If
            Else
                If isMax(pow2, 7) Then
                    power_condition = " And (Car_Power >= " & pow2 - 1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & ">= " & pow2 - 1 & "hp; "
                Else
                    power_condition = " And (Car_Power between " & pow2 & " and " & pow1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & pow2 & "-" & pow1 & "hp; "
                End If

            End If

        End If
        'Session("pow1") = pow1
        'Session("pow2") = pow2

        Return power_condition
    End Function
    Function checkMile(ByVal mi1 As Double, ByVal mi2 As Double) As String
        ' ----------------------------------------  MILES ------------------------------------------------------

        Dim mile_condition As String

        If (mi1 = 0) And (mi2 = 0) Then
            mile_condition = ""
        ElseIf (mi1 <> 0) And (mi2 = 0) Then

            mile_condition = " And (Car_Miles >= " & mi1 & ") "
            'Session("SearchCond") = Session("SearchCond") & ">= " & mi1 & "km; "
        ElseIf (mi1 = 0) And (mi2 <> 0) Then

            If isMax(mi2, 9) Then
                mile_condition = " And (Car_Miles >= " & mi2 - 1 & ") "
                'Session("SearchCond") = Session("SearchCond") & ">= " & mi2 - 1 & "km; "
            Else
                mile_condition = " And (Car_Miles <= " & mi2 & ") "
                'Session("SearchCond") = Session("SearchCond") & "<= " & mi2 & "km; "
            End If


        ElseIf (mi1 <> 0) And (mi2 <> 0) Then

            If mi1 < mi2 Then
                If isMax(mi1, 10) Then
                    mile_condition = " And (Car_Miles <= " & mi2 & " ) "
                    'Session("SearchCond") = Session("SearchCond") & "<= " & mi2 & "km; "
                Else
                    If isMax(mi2, 9) Then
                        mile_condition = " And (Car_Miles >= " & mi1 & ") "
                        'Session("SearchCond") = Session("SearchCond") & ">= " & mi1 & "km; "
                    Else
                        mile_condition = " And (Car_Miles between " & mi1 & " and " & mi2 & ") "
                        'Session("SearchCond") = Session("SearchCond") & mi1 & "-" & mi2 & "km; "
                    End If
                End If
            Else
                If isMax(mi2, 9) Then
                    mile_condition = " And (Car_Miles >= " & mi2 - 1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & ">= " & mi2 - 1 & "km; "
                Else
                    mile_condition = " And (Car_Miles between " & mi2 & " and " & mi1 & ") "
                    'Session("SearchCond") = Session("SearchCond") & mi2 & "-" & mi1 & "km; "
                End If

            End If

        End If

        'Session("mi1") = mi1
        'Session("mi2") = mi2

        Return mile_condition
    End Function
    Function checkShowPic(ByVal show_PIC As Integer) As String
        Dim showpic_condition As String

        If show_PIC <> 0 Then
            showpic_condition = " And (car_Image1 is not null) "
        Else
            showpic_condition = ""
        End If

        'Session("show_PIC") = show_PIC
        Return showpic_condition
    End Function
    Function checkShowPrice(ByVal show_Price As Integer) As String
        Dim showprice_condition As String

        If show_Price <> 0 Then
            showprice_condition = " And (car_Price is not null) "
        Else
            showprice_condition = ""
        End If

        'Session("show_Price") = show_Price
        Return showprice_condition
    End Function
    Function checkAcc() As String
        Dim acc1 As String
        Dim acc2 As String
        Dim acc3 As String
        Dim accessory As String

        Dim tmp As Accessory
        Dim v_access As Queue
        v_access = New Queue


        Dim i, v_count As Integer
        v_count = 0
        For i = 0 To accessory1.Items.Count - 1
            If accessory1.Items(i).Selected Then
                acc1 = acc1 & "," & accessory1.Items(i).Value()
                'Session("SearchCond") = Session("SearchCond") & AccesoryDB.getCarAccessName(accessory1.Items(i).Value, 1) & "; "
                v_count = v_count + 1

                tmp = New Accessory
                tmp.id = accessory1.Items(i).Value
                tmp.name = accessory1.Items(i).Text
                tmp.type = 1
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next
        For i = 0 To accessory2.Items.Count - 1
            If accessory2.Items(i).Selected Then
                acc1 = acc1 & "," & accessory2.Items(i).Value()
                'Session("SearchCond") = Session("SearchCond") & AccesoryDB.getCarAccessName(accessory2.Items(i).Value, 2) & "; "
                v_count = v_count + 1

                tmp = New Accessory
                tmp.id = accessory2.Items(i).Value
                tmp.name = accessory2.Items(i).Text
                tmp.type = 2
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next
        For i = 0 To accessory3.Items.Count - 1
            If accessory3.Items(i).Selected Then
                acc1 = acc1 & "," & accessory3.Items(i).Value()
                'Session("SearchCond") = Session("SearchCond") & AccesoryDB.getCarAccessName(accessory3.Items(i).Value, 3) & "; "
                v_count = v_count + 1

                tmp = New Accessory
                tmp.id = accessory3.Items(i).Value
                tmp.name = accessory3.Items(i).Text
                tmp.type = 3
                v_access.Enqueue(tmp)
                tmp = Nothing
            End If
        Next

        If acc1 <> "" Then
            accessory = Right(acc1, acc1.Length - 1)
            accessory = "  AND (Car.Car_Id in (SELECT   CAccessory_CarID FROM CAccessory WHERE (CAccessory_AccID in (" & accessory & "))group by CAccessory_CarID having count(*) >= " & v_count & "))"
        Else
            accessory = ""
        End If


        'Session.Add("v_access", v_access)
        Return accessory
    End Function
    '==========================Order By=================================
    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Car_Price"
                KeyOrder_By = "Car_Price"
            Case 1
                Order_By_Condition = " ORDER BY Car_Year_Ord "
                KeyOrder_By = "Car_Year_Ord"
            Case 2
                Order_By_Condition = " ORDER BY Car_CC"
                KeyOrder_By = "Car_CC"
            Case 3
                Order_By_Condition = " ORDER BY Car_Power"
                KeyOrder_By = "Car_Power"
            Case 4
                Order_By_Condition = " ORDER BY Car_Miles"
                KeyOrder_By = "Car_Miles"
            Case 5
                Order_By_Condition = " ORDER BY Car_Post DESC"
                KeyOrder_By = "Car_Post DESC"

        End Select

        'Session("orderby") = orderby
        Return Order_By_Condition & ":" & KeyOrder_By
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function emailDuplication(ByVal email As String, ByVal pass As String) As Boolean
        Return SearchDB.emailDup(email, pass)

    End Function


    Private Sub doSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSearch.Click
        Dim sql As String
        Dim end_sql As String
        Dim orderby As Array

        sql = checkBrand(CInt(Request.Form("Brands")))
        sql = sql & checkModel(CInt(Request.Form("Model")))
        sql = sql & checkStatus(status.SelectedValue)
        sql = sql & checkCarType(cartype.SelectedValue)
        sql = sql & checkEngineType(enginetype.SelectedValue)
        sql = sql & checkGear(gear.SelectedValue)

        '==========================Check Length 0f value===========================
        sql = sql & checkPrice(Price1.SelectedValue, Price2.SelectedValue)
        sql = sql & checkYear(Year1.SelectedValue, Year2.SelectedValue)
        sql = sql & checkCC(CC1.SelectedValue, CC2.SelectedValue)
        sql = sql & checkPower(power1.SelectedValue, power2.SelectedValue)
        sql = sql & checkMile(mile1.SelectedValue, mile2.SelectedValue)
        sql = sql & checkColor(color.SelectedValue)
        sql = sql & checkColorMetalic(metalic.Checked)
        '==========================Customer province =============================

        sql = sql & checkProvince(CInt(Request.Form("Province")))
        sql = sql & checkDistrict(CInt(Request.Form("District")))
        '===========================Car Insurance===================================
        sql = sql & checkInsurrance(Insurrance.SelectedValue)
        sql = sql & checkDealer(SaleType.SelectedValue)
        sql = sql & checkAccident(accident.SelectedValue)
        sql = sql & checkAcc()


        sql = sql & checkShowPic(showPic.SelectedValue)
        sql = sql & checkShowPrice(showPrice.SelectedValue)


        end_sql = checkOrderBy(order_by.SelectedValue)
        orderby = Split(end_sql, ":")

        sql = "SELECT Car.* FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 1) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) " & sql


        Session("searchSQL1") = sql
        Session("searchOrderBY1") = orderby
        Session("pass") = Utilities.getPasswd(password.Text)
        Session("email") = email.Text

        Response.Redirect("request2_response_saved.aspx?cat=1")
        'Response.Write(sql)
    End Sub
End Class
