
Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Imports System.Drawing.Imaging
Public Class test1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents RadioButtonList1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents DropDownList1 As System.Web.UI.WebControls.DropDownList
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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
        'Put user code to initialize the page here userData\tuicar\1\1
        'Dim a As New Bitmap(Server.MapPath("/userData/tuicar/1/1/Copy of _J__A__A__240149405.jpg"))
        'Dim imageWidth As Integer
        'Dim imageHeight As Integer

        'Dim p_cent As Double


        'resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
        'Image1.ImageUrl = Server.MapPath("/userData/tuicar/1/1/Copy of _J__A__A__240149405.jpg")
        'Image1.Width = Unit.Pixel(imageWidth)
        'Image1.Height = Unit.Pixel(imageHeight)



        'Dim fullSizeImg As System.Drawing.Image = System.Drawing.Image.FromFile(Server.MapPath("/userData/tuicar/1/1/Copy of _J__A__A__240149405.jpg"))
        'Dim dummyCallBack As System.Drawing.Image.GetThumbnailImageAbort


        'Dim thumbNailImg As System.Drawing.Image = fullSizeImg.GetThumbnailImage(imageWidth, imageHeight, dummyCallBack, IntPtr.Zero)

        'thumbNailImg.Save(Server.MapPath("/userData/tuicar/1/1/Copy2 of _J__A__A__240149405.jpg"), ImageFormat.Jpeg)


        'thumbNailImg.Dispose()
        AjaxPro.Utility.RegisterTypeForAjax(GetType(test1))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Function test() As String
        Return "hello world!!!"
    End Function
    <AjaxPro.AjaxMethod()> _
       Function test2() As String
        Dim x As String

        x = "<table boder=1><tr><td>1td</td><td>2td</td></tr></table>"

        Return x
    End Function


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'carStatusValidate.IsValid = False
        Dim invoiceno As Integer
        'Response.Write(Now())
        'invoiceno = InvoiceDB.insertInvoice(100, 2, 4, 2000, 1, Now())
        'Response.Write(invoiceno)

        'Response.Write(ProlongDB.getMaxDate(8))
        'If ProlongDB.getMaxDate(4) = "1/1/0544 0:00:00" Then
        '    Response.Write("ojfk")
        'End If
        Response.Write(RadioButtonList1.SelectedValue)
    End Sub



    'Private Sub status_Init(ByVal sender As System.Object, ByVal e As System.EventArgs)
    '    Dim conn As OleDbConnection
    '    Dim da As OleDbDataAdapter
    '    Dim ds As New DataSet
    '    Dim Sql As String

    '    conn = New OleDbConnection(Session("conn"))

    '    Sql = "SELECT STATUS, STATUS_NAME FROM STATUS WHERE STATUS IN (1,2) ORDER BY STATUS"
    '    da = New OleDbDataAdapter(Sql, conn)
    '    da.Fill(ds, "status")

    '    Dim DRow As DataRow = ds.Tables("status").NewRow()
    '    DRow.Item("STATUS") = 0
    '    DRow.Item("STATUS_NAME") = "โปรดระบุ"
    '    ds.Tables("status").Rows.InsertAt(DRow, 0)
    '    status.DataSource = ds.Tables("status")
    '    status.DataBind()

    '    ds.Dispose()
    '    da.Dispose()
    '    conn.Close()
    'End Sub

    'Private Sub carStatusValidate_ServerValidate(ByVal source As System.Object, ByVal args As System.Web.UI.WebControls.ServerValidateEventArgs)
    '    args.IsValid = False
    'End Sub
End Class
