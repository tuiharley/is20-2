Imports System.IO
Public Class WebForm7
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
        'Dim sContents As String, sErr As String
        'Dim bAns As Boolean
        'Dim picURL As String = ConfigurationSettings.AppSettings("picVD")
        'Dim userURL As String = ConfigurationSettings.AppSettings("userVD")
        'Dim h_file As String = "\public\webfile\head.txt"
        'Dim t_file As String = "\public\webfile\tail.txt"


        'sContents = DealerHP.GetFileContents(Server.MapPath(picURL) & h_file, sErr)

        'If sErr = "" Then
        '    sContents = sContents & "<input type='hidden' id='cust_id' name='cust_id' value='3'>"
        '    sContents = sContents & DealerHP.GetFileContents(Server.MapPath(picURL) & t_file, sErr)
        '    bAns = DealerHP.SaveTextToFile(sContents, Server.MapPath(userURL) & "\tuiharley\index.html", sErr)
        '    If bAns Then
        '        Response.Write("File Saved!")
        '    Else
        '        Response.Write("Error Saving File: " & sErr)
        '    End If

        'Else
        '    Response.Write("Error retrieving file: " & sErr)
        'End If

    End Sub


End Class
