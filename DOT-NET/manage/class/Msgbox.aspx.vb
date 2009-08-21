Imports System
Imports System.Collections
Imports System.ComponentModel
Imports System.Data
Imports System.Drawing
Imports System.Web
Imports System.Web.SessionState
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.HtmlControls
Imports System.Text

Public Class Msgbox
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents imgIcon As System.Web.UI.WebControls.Image
    Protected WithEvents lblHeader As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents phErrors As System.Web.UI.WebControls.PlaceHolder
    Protected WithEvents title As System.Web.UI.HtmlControls.HtmlGenericControl
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
        If Not Page.IsPostBack Then

            ' Check if a header was passed; if so, set the header.
            If Request.QueryString("header") <> "" Then
                lblHeader.Text = Request.QueryString("header")
            Else
                lblHeader.Text = "Invalid Form Data"
            End If


            ' Check if a title was passed and set the window title.
            If Request.QueryString("title") <> "" Then
                title.InnerText = Request.QueryString("title")
            End If


            'Set the page icon.  You could also easily modify this project to allow
            'the user to specify an image filename in the <asp:ValidationSummary> tag. 
            If Request.QueryString("icon") <> "" Then
                Select Case Request.QueryString("icon")
                    Case "info"
                        imgIcon.ImageUrl = "../images/error_pic/information.png"
                    Case "warning"
                        imgIcon.ImageUrl = "../images/error_pic/warning.png"
                    Case Else
                        imgIcon.ImageUrl = "../images/error_pic/error.png"
                End Select

            Else
                imgIcon.ImageUrl = "../images/error_pic/error.png"

            End If


            ' Build error list 
            If Request.QueryString("err") <> "" Then


                'All errors are separated by '|', meaning that your error messages cannot
                'contain this character. 
                Dim errors As Array = Request.QueryString("err").Split("|")

                'Strings are immutable.  This means that everytime you "change" one, the
                'framework has to create a new string object.  Always use StringBuilder
                'instead of repeated 'str += "textgoeshere";' statements.

                Dim sb As New StringBuilder

                'HTML code for a bulleted list
                sb.Append("<font color='red'><ul>")

                'Append each error to the bulleted list
                Dim x As String
                For Each x In errors
                    sb.Append("<li>" + x + "</li>")
                Next

                sb.Append("</ul></font>")

                'Create a <div> tag using an HtmlGenericControl
                Dim gc As New HtmlGenericControl("div")
                gc.Attributes.Add("id", "errorList")

                'Set its InnerHtml to the error list.
                gc.InnerHtml = sb.ToString()

                'Add it to the PlaceHolder on the page.
                phErrors.Controls.Add(gc)
            Else

                'If no error list was specified in the query string, close the window.
                Response.Write("<script>window.close();</script>")
            End If


        End If
    End Sub

End Class
