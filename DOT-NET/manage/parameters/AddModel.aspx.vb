Imports System.Data
Imports System.Data.OleDb
Public Class AddModel
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents AddBTN As System.Web.UI.WebControls.Button
    Protected WithEvents category_rd As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents brand_ddl As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnAdd As System.Web.UI.WebControls.Button
    Protected WithEvents modelTxt As System.Web.UI.WebControls.TextBox

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim myconn As OleDbConnection
    Dim da As OleDbDataAdapter
    Dim mycommand As OleDbCommand
    Dim ds As New DataSet
    Dim strsql As String
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        myconn = New OleDbConnection(Session("conn"))
        Dim brand As String = Request.QueryString("brand")


        If Page.IsPostBack = False Then
            bind_cat()
            category_rd.SelectedIndex = 0
            bind_brand()

            If brand <> "" Then
                brand_ddl.SelectedValue = brand
            Else
                brand_ddl.SelectedIndex = 0
            End If



        End If
    End Sub

    Private Sub bind_cat()
        strsql = "SELECT Category, Category_Name FROM Category WHERE Category <= 2"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Category")
        category_rd.DataSource = ds.Tables("Category")
        category_rd.DataBind()
        myconn.Close()
        category_rd.SelectedValue = 1
    End Sub
    Private Sub bind_brand()
        strsql = "SELECT DISTINCT Brand.Brand_name, Brand.Brand"
        strsql &= " FROM  Model INNER JOIN "
        strsql &= " Brand ON dbo.Model.Brand = dbo.Brand.Brand"
        strsql &= " WHERE Model.Category = " & category_rd.SelectedValue
        strsql &= " ORDER BY Brand_name"
        da = New OleDbDataAdapter(strsql, myconn)
        da.Fill(ds, "Brand")
        brand_ddl.DataSource = ds.Tables("Brand")
        brand_ddl.DataBind()
        myconn.Close()

    End Sub


    Private Function getNewmodel() As Integer
        Dim myconn2 As New OleDbConnection(Session("conn"))
        myconn2.Open()

        Dim mycommand As OleDbCommand
        Dim businessid As Integer
        strsql = "SELECT Max(Model) as Model FROM Model"
        mycommand = New OleDbCommand(strsql, myconn2)
        Dim BUZ_ID As OleDbDataReader = mycommand.ExecuteReader()
        If BUZ_ID.Read Then
            If Not BUZ_ID.IsDBNull(0) Then
                businessid = BUZ_ID.Item("Model") + 1
            Else
                businessid = 1
            End If
        End If
        mycommand.Dispose()
        BUZ_ID.Close()

        myconn.Close()

        Return businessid

    End Function

    Private Sub category_rd_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles category_rd.SelectedIndexChanged
        bind_brand()
        brand_ddl.SelectedIndex = 0
    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        If IsPostBack Then


            If modelTxt.Text <> "" Then

                strsql = "Insert into Model Values(" & getNewmodel() & "," & category_rd.SelectedValue & "," & brand_ddl.SelectedValue & ",'" & modelTxt.Text & "') "
                mycommand = New OleDbCommand(strsql, myconn)
                myconn.Open()
                mycommand.ExecuteNonQuery()
                myconn.Close()
            End If
            Response.Redirect("Models.aspx?brand=" & brand_ddl.SelectedValue)


        End If
    End Sub
End Class
