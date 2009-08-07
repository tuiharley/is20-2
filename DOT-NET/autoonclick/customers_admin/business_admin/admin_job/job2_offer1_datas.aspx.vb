Imports System.Data
Imports System.Data.OleDb

Public Class job2_offer1_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents JobPosDL As System.Web.UI.WebControls.DropDownList
    Protected WithEvents JOther As System.Web.UI.WebControls.TextBox
    Protected WithEvents JEdu As System.Web.UI.WebControls.TextBox
    Protected WithEvents JBranch As System.Web.UI.WebControls.TextBox
    Protected WithEvents JSal As System.Web.UI.WebControls.TextBox
    Protected WithEvents SalPer As System.Web.UI.WebControls.DropDownList
    Protected WithEvents JNum As System.Web.UI.WebControls.TextBox
    Protected WithEvents JPhone As System.Web.UI.WebControls.TextBox
    Protected WithEvents JPlace As System.Web.UI.WebControls.TextBox
    Protected WithEvents description As System.Web.UI.WebControls.TextBox
    Protected WithEvents Province As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents District As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents ProvinceCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents DistrictCustomValidator As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents Phone1RequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents placeRequire As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents JPosReq As System.Web.UI.WebControls.CustomValidator
    Protected WithEvents NumdoorRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents PriceRegularexpressionvalidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim p_province As String
    Dim p_district As String
    Dim provIndex As String
    Dim distrIndex As String


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim verb As String = Request.QueryString("verb")
        'Session("cust_id") = 3

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                If verb = "edit" Then
                    Session("per_province") = Session("myJob").Job_Province
                    Session("per_district") = Session("myJob").Job_District
                    setData(Session("myJob"))
                End If
            End If

            If IsPostBack Then
                p_province = Request.Form("Province")
                p_district = Request.Form("District")
            End If
        End If

    End Sub

    Private Sub JobPosDL_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles JobPosDL.Init
        Dim conn As OleDbConnection
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim Sql As String

        conn = New OleDbConnection(Session("conn"))

        Sql = "SELECT POSITION_ID, POSITION_NAME FROM JOB_POSITION ORDER BY POSITION_ID"
        da = New OleDbDataAdapter(Sql, conn)
        da.Fill(ds, "JobPos")

        Dim DRow As DataRow = ds.Tables("JobPos").NewRow()
        DRow.Item("POSITION_ID") = 0
        DRow.Item("POSITION_NAME") = "โปรดระบุ"
        ds.Tables("JobPos").Rows.InsertAt(DRow, 0)
        JobPosDL.DataSource = ds.Tables("JobPos")
        JobPosDL.DataBind()

        ds.Dispose()
        da.Dispose()
        conn.Close()
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        saveData()
        Response.Redirect("job2_offer2_preview.aspx")
    End Sub

    Private Sub saveData()
        Dim myJob As Job

        myJob.Job_Pos = JobPosDL.SelectedValue
        myJob.Job_Other = JOther.Text
        myJob.Job_Education = JEdu.Text
        myJob.Job_Branch = JBranch.Text
        myJob.Job_Salary = checknullStrInt(JSal.Text)
        myJob.Job_SalaryType = SalPer.SelectedValue
        myJob.Job_Num = checknullStrInt(JNum.Text)
        myJob.Job_Phone = JPhone.Text
        myJob.Job_Location = JPlace.Text
        myJob.Job_Province = p_province
        myJob.Job_District = p_district
        myJob.Job_Information = description.Text


        Session("myJob") = myJob
        'JobDB.addNewJOB(myJob)

    End Sub
    Private Sub setData(ByVal myJob As Job)

      

        JobPosDL.SelectedValue = myJob.Job_Pos
        JOther.Text = myJob.Job_Other
        JEdu.Text = myJob.Job_Education
        JBranch.Text = myJob.Job_Branch
        JSal.Text = checkNullStr_Line2(myJob.Job_Salary)
        SalPer.SelectedValue = myJob.Job_SalaryType
        JNum.Text = checkNullStr_Line2(myJob.Job_Num)
        JPhone.Text = myJob.Job_Phone
        JPlace.Text = myJob.Job_Location
        description.Text = myJob.Job_Information

        Session.Remove("myJob")
        'Session("myJob") = myJob
        'JobDB.addNewJOB(myJob)

    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click

    End Sub
End Class
