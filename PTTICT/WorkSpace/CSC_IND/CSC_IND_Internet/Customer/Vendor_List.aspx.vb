Public Class Vendor_List
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
        CountVisitPage(28, "pVendorList", Request.UserHostAddress)
        ReadConfigurations()
        Session("CURRENT_HEADER_MENU") = "CUSTOMER"
        FilePath = "../Files/Attach/DOWNLOADS/"
        If Not Page.IsPostBack Then
            'InitControl()
            InitComboList()
        Else
        End If
   
        LoadData()

    End Sub

    Private Sub InitComboList()
        Dim SQL As String
        Try

            SQL = " SELECT * FROM LSTVENDOR_GROUPS "
            LoadNullList(lstGroup, GetDT(LoadQueryList("Vendor", SQL, "VENDOR_GROUP")), "VENDOR_GROUP_DESC", "VENDOR_GROUP", "", "--- กรุณาระบุประเภท Vendor ---")
        Catch ex As Exception
        End Try
    End Sub

    Private Sub LoadData()
        Try
            pnlHead.Visible = (lstGroup.SelectedValue & "" <> "")
            lblHead.Text = lstGroup.SelectedItem.Text
            If lstGroup.SelectedValue & "" <> "" Then Session("VendorList") = GetDT(LoadVendorList(0, ToInt(lstGroup.SelectedValue)))
            'dgResult.CurrentPageIndex = 0
            BindDG()
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "loaddata")
        End Try
    End Sub

    Private Sub BindDG()
        Dim DT As DataTable
        Try
            DT = Session("VendorList")
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
            Session("VendorList") = Nothing
        End Try
    End Sub

    Private Sub lstGroup_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles lstGroup.SelectedIndexChanged
        LoadData()
    End Sub
End Class
