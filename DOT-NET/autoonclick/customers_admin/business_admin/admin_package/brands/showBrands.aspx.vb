Imports System.Data
Imports System.Data.OleDb
Public Class showBrands
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        'AjaxPro.Utility.RegisterTypeForAjax(GetType(showBrands))
    End Sub
    <AjaxPro.AjaxMethod()> _
    Public Function showBrands(ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT DISTINCT Brand.Brand, Brand.Brand_name"
        sql = sql & " FROM         Model INNER JOIN"
        sql = sql & " Brand ON Model.Brand = Brand.Brand"
        sql = sql & " WHERE     (Model.Category = " & cat & ")"
        sql &= " AND Brand.show=1"
        sql = sql & " ORDER BY Brand.Brand_name"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("Brand") & ":" & Ans_ID.Item("Brand_name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showModels(ByVal brand As Integer, ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT DISTINCT Brand.Brand, Brand.Brand_name, Model.Model, Model.Model_Name"
        sql = sql & " FROM         Model INNER JOIN"
        sql = sql & " Brand ON Model.Brand = Brand.Brand"
        sql = sql & " WHERE     (Model.Category = " & cat & ") AND (Brand.Brand = " & brand & ")"
        sql &= " AND Model.show=1"
        sql = sql & " ORDER BY Brand.Brand_name,Model.Model_Name"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        'result = "["
        While Ans_ID.Read
            result = result & Ans_ID.Item("Model") & ":" & Ans_ID.Item("Model_Name") & "!"
        End While
        result = Left(result, result.Length - 1)
        'If i = 0 Then
        '    result = ""
        'End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        '[{value:"30", text:"Ankara"},
        '{value:"21", text:"Bangkok"},
        '{value:"49", text:"Beijing"},
        '{value:"76", text:"New Delhi"},
        '{value:"14", text:"Tokyo"}];
        'modeldb["model"] = [{value:"1",text:"test"},
        '			{value:"2",text:"test2"},
        '			{value:"3",text:"test3"}];
        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showType(ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT     CarType, CarType_Name"
        sql = sql & " FROM CarType"
        sql = sql & " WHERE (Category = " & cat & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("CarType") & ":" & Ans_ID.Item("CarType_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showStatus(ByVal status As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT     Status, Status_Name"
        sql = sql & " FROM status"
        sql = sql & " WHERE     (Status in (" & status & "))"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("Status") & ":" & Ans_ID.Item("Status_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showYear() As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT * FROM ListYear Order by ID"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("LYear_Value") & ":" & Ans_ID.Item("LYear") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showPrice1(ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT * FROM ListPrice_Car WHERE Category = " & cat & " Order by ID"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("Price1_Value") & ":" & Ans_ID.Item("Price1") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showPrice2(ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT * FROM ListPrice_Car WHERE Category = " & cat & " Order by ID"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("Price2_Value") & ":" & Ans_ID.Item("Price2") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showCC1(ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT * FROM ListCC WHERE Category = " & cat & " Order by ID"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("LCC_Value") & ":" & Ans_ID.Item("LCC") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showCC2(ByVal cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As String

        sql = "SELECT * FROM ListCC WHERE Category = " & cat & " Order by ID"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("RCC_Value") & ":" & Ans_ID.Item("RCC") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()
        Return result
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showCat(ByVal cat_cat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT Category.Category,Category.Category_Name "
        sql = sql & " FROM Category "
        sql = sql & " WHERE     (Category.Category_CategoryType = " & cat_cat & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("Category") & ":" & Ans_ID.Item("Category_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showBuzType() As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT BusinessType_Id, BusinessType_Name "
        sql = sql & " FROM BusinessType "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("BusinessType_Id") & ":" & Ans_ID.Item("BusinessType_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showPartType(ByVal PartCat As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT     PartsType, PartsType_Name "
        sql = sql & " FROM PartsType "
        sql = sql & " WHERE     (PartsType.PartsType_Category = " & PartCat & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("PartsType") & ":" & Ans_ID.Item("PartsType_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function showProvinces() As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT Province, Province_Name"
        sql = sql & " FROM         Province "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("Province") & ":" & Ans_ID.Item("Province_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showDistricts(ByVal prov As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim sql As String
        Dim result As String
        Dim mycommand As OleDbCommand

        sql = "SELECT District , District_Name"
        sql = sql & " FROM         District "
        sql = sql & " Where Province = " & prov
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        While Ans_ID.Read
            result = result & Ans_ID.Item("District") & ":" & Ans_ID.Item("District_Name") & "!"
        End While
        result = Left(result, result.Length - 1)


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return result
    End Function
End Class
