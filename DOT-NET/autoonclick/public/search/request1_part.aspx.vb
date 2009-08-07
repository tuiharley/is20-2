Imports System.Data
Imports System.Data.OleDb
Public Class request1_part
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents reqDel As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqCar As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqBike As System.Web.UI.WebControls.HyperLink
    Protected WithEvents reqTruck As System.Web.UI.WebControls.HyperLink
    Protected WithEvents category As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents parttype As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents status As System.Web.UI.WebControls.DropDownList
    Protected WithEvents searchWord As System.Web.UI.WebControls.TextBox
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents password As System.Web.UI.WebControls.TextBox
    Protected WithEvents confirm As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents PasswordRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents PasswordRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents CompareValidator1 As System.Web.UI.WebControls.CompareValidator
    Protected WithEvents ConfirmRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents doSearch As System.Web.UI.WebControls.Button
    Protected WithEvents BrandValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents ModelValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary

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

        reqCar.NavigateUrl = "request1_car.aspx"
        reqBike.NavigateUrl = "request1_moto.aspx"
        reqTruck.NavigateUrl = "request1_truck.aspx"
        reqDel.NavigateUrl = "request3_deletion_form.aspx"

        AjaxPro.Utility.RegisterTypeForAjax(GetType(request1_part))
    End Sub

    Private Sub status_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles status.Init
        Dim conn As OleDbConnection
        Dim command As OleDbCommand
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String

        conn = New OleDbConnection(Session("conn"))

        sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS in (3,4) ORDER BY STATUS"
        da = New OleDbDataAdapter(sql, conn)
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

    Function checkCategory(ByVal b_name As Integer) As String
        Dim brand_condition As String

        If b_name <> 0 Then
            brand_condition = " And (Part_Category = " & b_name & ") "
            Session.Add("SearchCond", PartsTypeDB.getPartTypeName(b_name) & "; ")
            Session("brandIndex") = Request.Form("brandIndex")
        Else
            brand_condition = ""
            Session("brandIndex") = ""
        End If

        Return brand_condition
    End Function
    Function checkParttype(ByVal m_name As Integer) As String
        Dim model_condition As String

        If m_name <> 0 Then
            model_condition = " And (Part_Type = " & m_name & ") "
            Session("SearchCond") = Session("SearchCond") & PartsTypeDB.getPartTypeName(m_name) & "; "
            Session("modelIndex") = Request.Form("modelIndex")
        Else
            model_condition = ""
            Session("modelIndex") = "0"
        End If

        Return model_condition
    End Function
    Function checkStatus(ByVal status As Integer) As String
        Dim status_condition As String

        If status <> 0 Then
            status_condition = " And (Part_Status = " & status & ") "
            Session("SearchCond") = Session("SearchCond") & StatusDB.getStatusName(status) & "; "
        Else
            status_condition = ""
        End If

        Session("status") = status
        Return status_condition
    End Function
    Function checkName(ByVal pName As String) As String
        Dim name_condition As String

        If pName <> "" Then
            name_condition = " And (Part_Name like ''%" & pName & "%'') "
            'Session("SearchCond") = Session("SearchCond") & m_name & "; "
        Else
            name_condition = ""
        End If

        Return name_condition
    End Function
    '===========================Customer Province===============================
    Function checkProvince(ByVal province_id As Integer) As String
        Dim province_condition As String

        If province_id <> 0 Then
            province_condition = " And (Customer_Province = " & province_id & ") "
            Session("SearchCond") = Session("SearchCond") & ProvinceDB.getProvinceName(province_id) & "; "
            Session("proinceIndex") = Request.Form("proinceIndex")
        Else
            province_condition = ""
            Session("proinceIndex") = ""
        End If

        Return province_condition
    End Function
    Function checkDistrict(ByVal district_id As Integer) As String
        Dim district_condition As String

        If district_id <> 0 Then
            district_condition = " And (Customer_District = " & district_id & ") "
            Session("SearchCond") = Session("SearchCond") & DistrictDB.getDistrictName(district_id) & "; "
            Session("districtIndex") = Request.Form("districtIndex")
        Else
            district_condition = ""
            Session("districtIndex") = "0"
        End If

        Return district_condition
    End Function
    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Part_Price"
                KeyOrder_By = "Part_Price"
            Case 1
                Order_By_Condition = " ORDER BY Part_Post DESC"
                KeyOrder_By = "Part_Post DESC"

        End Select

        Return Order_By_Condition & ":" & KeyOrder_By
    End Function

    Private Sub doSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSearch.Click
        Dim sql As String
        Dim end_sql As String
        Dim orderby As Array

        sql = checkCategory(CInt(Request.Form("category")))
        sql = sql & checkParttype(CInt(Request.Form("parttype")))
        sql = sql & checkStatus(status.SelectedValue)
        sql = sql & checkName(searchWord.Text)
        '==========================Customer province =============================
        sql = sql & checkProvince(CInt(Request.Form("Province")))
        sql = sql & checkDistrict(CInt(Request.Form("District")))

        end_sql = checkOrderBy(0)
        orderby = Split(end_sql, ":")

        sql = "SELECT Parts.* FROM Parts INNER JOIN NoticeDetail ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 4) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) " & sql


        Session("searchSQL1") = sql
        Session("searchOrderBY1") = orderby
        Session("pass") = Utilities.getPasswd(password.Text)
        Session("email") = email.Text

        Response.Redirect("request2_response_saved.aspx?cat=4")
        'Response.Write(sql)
    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function emailDuplication(ByVal email As String, ByVal pass As String) As Boolean
        Return SearchDB.emailDup(email, pass)

    End Function
End Class
