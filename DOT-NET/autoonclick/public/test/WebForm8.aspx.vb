Imports System.Drawing.Imaging
Public Class WebForm8
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

        'Read in the image filename to create a thumbnail of
        Dim imageUrl2 As String = Request.QueryString("img")
        Dim imageUrl As String

        'Read in the width and height
        Dim imageHeight As Integer = Request.QueryString("h")
        Dim imageWidth As Integer = Request.QueryString("w")

        'My Code +++++++++++++++++++++++++++
        Dim a As Bitmap
        Dim myImageWidth As Integer
        Dim myImageHeight As Integer
        Dim IUrl As String
        Dim result As String

        'Make sure that the image URL doesn't contain any /'s or \'s
        If imageUrl2.IndexOf("/") >= 0 Or imageUrl2.IndexOf("\") >= 0 Then
            'We found a / or \
            Response.End()
        End If

        'Add on the appropriate directory
        imageUrl = "/userData/tuituitui/7/16/" & imageUrl2
        'imageUrl = "/autoonclick/images/photos/" & imageUrl

        a = New Bitmap(Server.MapPath(imageUrl))
        resize.doResize(a.Width, a.Height, myImageWidth, myImageHeight, imageWidth)

        Dim fullSizeImg As System.Drawing.Image
        fullSizeImg = System.Drawing.Image.FromFile(Server.MapPath(imageUrl))

        'Do we need to create a thumbnail?
        Response.ContentType = "image/gif"
        If myImageHeight > 0 And myImageWidth > 0 Then
            Dim dummyCallBack As System.Drawing.Image.GetThumbnailImageAbort
            dummyCallBack = New System.Drawing.Image.GetThumbnailImageAbort(AddressOf ThumbnailCallback)

            Dim thumbNailImg As System.Drawing.Image
            thumbNailImg = fullSizeImg.GetThumbnailImage(myImageWidth, myImageHeight, dummyCallBack, IntPtr.Zero)

            thumbNailImg.Save(Response.OutputStream, ImageFormat.Gif)

            'Clean up / Dispose...
            thumbNailImg.Dispose()
        Else
            fullSizeImg.Save(Response.OutputStream, ImageFormat.Gif)
        End If

        'Clean up / Dispose...
        fullSizeImg.Dispose()

    End Sub
    Function ThumbnailCallback() As Boolean
        Return False
    End Function

End Class
