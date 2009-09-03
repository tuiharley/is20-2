Imports System.IO
Imports Microsoft.Office.Interop

Public Class Test3
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

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        ' Creates a new Excel Application Object
        '*** Create Excel.Application ***'
        Dim xlApp As New Excel.Application
        Dim xlSheet1 As Excel.Worksheet
        Dim xlBook As Excel.Workbook
        Dim filename As String = Server.MapPath("../Report/test.xls")

        xlBook = xlApp.Workbooks.Open(filename)
        xlBook.Application.Visible = False

        xlApp.ScreenUpdating = False
        xlSheet1 = xlBook.Worksheets(1)
        xlSheet1.Cells.Item(1, 2).Value = "THIS IS A TEST2"
        xlApp.ScreenUpdating = True
        xlBook.Save()

        xlApp.Quit()

        '*** Quit and Clear Object ***'
        xlSheet1 = Nothing
        xlBook = Nothing
        xlApp = Nothing

    End Sub

End Class
