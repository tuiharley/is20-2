Public Class editBanner
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents bLink As System.Web.UI.WebControls.TextBox
    Protected WithEvents btxt As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSave As System.Web.UI.WebControls.Button
    Protected WithEvents btnCancel As System.Web.UI.WebControls.Button
    Protected WithEvents bannerName As System.Web.UI.WebControls.Label
    Protected WithEvents bPIC As System.Web.UI.WebControls.Label
    Protected WithEvents bimage As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents picErr As System.Web.UI.WebControls.Label

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
        Dim bName As String
        Dim myBanner As Banner
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        picErr.Text = ""
        If Not IsPostBack Then
            bName = Request.QueryString("bName")
            'bName = "Logo Full Banner"
            Session("bName") = bName
            myBanner = Bannerdb.getBanner(bName)
            showInfo(myBanner)
        End If
    End Sub
    Private Sub showInfo(ByVal myBanner As Banner)
        Dim IUrl As String
        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")

        bannerName.Text = myBanner.Banner_Name & " - " & myBanner.Banner_Page
        bLink.Text = myBanner.Banner_link
        btxt.Text = myBanner.Banner_txt
        IUrl = picURL & "images/banner/" & myBanner.Banner_img & "?" & Now
        IUrl = "<img id='bannerimg' name='bannerimg' src='" & IUrl & "' width='" & myBanner.BWidth & "' height='" & myBanner.BHeight & "' >"
        bPIC.Text = IUrl
    End Sub

    Private Sub btnSave_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSave.Click
        Dim IUrl As String
        Dim picVD As String = ConfigurationSettings.AppSettings("picVD")
        Dim myBanner As Banner
        Dim newBanner As Banner
        Dim temppath As String

        myBanner = Bannerdb.getBanner(Session("bName"))
        newBanner.Banner_Name = myBanner.Banner_Name
        newBanner.Banner_link = bLink.Text
        newBanner.Banner_txt = btxt.Text
        Bannerdb.updateBanner(newBanner)

        If bimage.PostedFile.FileName = "" Then
            Session("bName") = ""
            Response.Redirect("banner.aspx")
        ElseIf (bimage.PostedFile.FileName <> "") Or (bimage.PostedFile.ContentLength > 0) And (bimage.PostedFile.ContentLength <= 4096000) Then
            IUrl = picVD & "/images/banner/"
            temppath = Server.MapPath(IUrl)
            Utilities.UploadFile(bimage, temppath, myBanner.Banner_img)

            Session("bName") = ""
            Response.Redirect("banner.aspx")
        Else
            picErr.Text = "รูปมีขนาดใหญ่กว่า 4 M ไม่สามารถ upload ได้"
            picErr.ForeColor = Color.Red
        End If



    End Sub

    Private Sub btnCancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        Response.Redirect("banner.aspx")
    End Sub
End Class
