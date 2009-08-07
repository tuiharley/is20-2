Imports System.Drawing.Imaging
Imports System.Drawing.Drawing2D
Public Class WebForm10
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

    Protected ThumbNailSize As Size
    Protected ThumbNailName As String = "thumbnail"


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here

        'Read in the image filename to create a thumbnail of
        Dim imageUrl2 As String = Request.QueryString("custid")
        Dim imageUrl3 As Integer = Request.QueryString("pno")
        Dim imageUrl As String

        'Read in the width and height
        Dim imageHeight As String = Request.QueryString("h")
        Dim imageHeight2 As String = Request.QueryString("h2")
        Dim imageWidth As Integer = Request.QueryString("w")

        'My Code +++++++++++++++++++++++++++
        Dim a As Bitmap
        Dim myImageWidth As Integer
        Dim myImageHeight As Integer
        Dim IUrl As String
        Dim result As String
        Dim myCust As A_Customer
        Dim myDetail As noticeDetail
        Dim myNotice As noticeS
        'Dim usrName As String


        'Make sure that the image URL doesn't contain any /'s or \'s
        If imageUrl2.IndexOf("/") >= 0 Or imageUrl2.IndexOf("\") >= 0 Then
            'We found a / or \
            Response.End()
        End If

        'Add on the appropriate directory

        If imageHeight = "c" Then
            myCust = CustomerDB.getA_customer(imageUrl2)
            'imageUrl = "/userData/tuituitui/7/16/" & imageUrl2
            'imageUrl = "/autoonclick/images/photos/" & imageUrl
            imageUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt
        ElseIf imageHeight = "v" Then
            myDetail = NoticeDetailDB.getNoticeDetailInfo(imageUrl2)
            myNotice = NoticeDB.getNoticesInfoD(myDetail.NoticeId)
            Select Case myNotice.category
                Case 1
                    imageUrl = CarDB.getMainPic2(myDetail.DataId)
                Case 2
                    imageUrl = BikeDB.getMainPic2(myDetail.DataId)
                Case 3
                    imageUrl = TruckDB.getMainPic2(myDetail.DataId)
                Case 4, 5
                    imageUrl = PartsDB.getMainPic2(myDetail.DataId)
            End Select
            'myCust = CustomerDB.getA_customer(myNotice.memberId)
            'imageUrl = "/userData/" & myCust.username & "/" & myDetail.NoticeId & "/" & imageUrl2 & "/" & myCust.logo_txt
            imageUrl = Replace(imageUrl, "\", "/")
        ElseIf imageHeight = "v2" Then
            myDetail = NoticeDetailDB.getNoticeDetailInfo(imageUrl2)
            myNotice = NoticeDB.getNoticesInfoD(myDetail.NoticeId)
            Select Case myNotice.category
                Case 1
                    imageUrl = CarDB.getMainPic2(myDetail.DataId, imageUrl3)
                Case 2
                    imageUrl = BikeDB.getMainPic2(myDetail.DataId, imageUrl3)
                Case 3
                    imageUrl = TruckDB.getMainPic2(myDetail.DataId, imageUrl3)
                Case 4, 5
                    imageUrl = PartsDB.getMainPic2(myDetail.DataId)
            End Select
            'myCust = CustomerDB.getA_customer(myNotice.memberId)
            'imageUrl = "/userData/" & myCust.username & "/" & myDetail.NoticeId & "/" & imageUrl2 & "/" & myCust.logo_txt
            imageUrl = Replace(imageUrl, "\", "/")
        End If


        a = New Bitmap(Server.MapPath(imageUrl))

        If imageHeight2 <> "" Then
            resize.doResize(a.Width, a.Height, myImageWidth, myImageHeight, imageWidth, imageHeight2)
        Else
            resize.doResize(a.Width, a.Height, myImageWidth, myImageHeight, imageWidth)
        End If



        ThumbNailSize = New Size(myImageWidth, myImageHeight)

        If imageUrl.IndexOf(".gif") > 0 Then
            GenerateThumbNail(imageUrl, ImageFormat.Gif)
        ElseIf imageUrl.IndexOf(".jpg") > 0 Then
            GenerateThumbNail(imageUrl, ImageFormat.Jpeg)
        ElseIf imageUrl.IndexOf(".bmp") > 0 Then
            GenerateThumbNail(imageUrl, ImageFormat.Bmp)
        ElseIf imageUrl.IndexOf(".png") > 0 Then
            GenerateThumbNail(imageUrl, ImageFormat.Png)
        End If

    End Sub
    Function ThumbnailCallback() As Boolean
        Return False
    End Function
    Public Sub GenerateThumbNail(ByVal imageUrl2 As String, ByVal oFormat As ImageFormat)

        Dim imageUrl As String

        Dim fullSizeImg As System.Drawing.Image
        Dim oThumbNail As System.Drawing.Image
        Dim oGraphic As Graphics

        'imageUrl = "/userData/tuituitui/7/16/" & imageUrl2
        fullSizeImg = System.Drawing.Image.FromFile(Server.MapPath(imageUrl2))
        oThumbNail = New Bitmap(ThumbNailSize.Width, ThumbNailSize.Height, fullSizeImg.PixelFormat)


        oGraphic = Graphics.FromImage(oThumbNail)
        oGraphic.CompositingQuality = CompositingQuality.HighQuality
        oGraphic.SmoothingMode = SmoothingMode.HighQuality
        oGraphic.InterpolationMode = InterpolationMode.HighQualityBicubic

        Dim oRectangle As Rectangle
        oRectangle = New Rectangle(0, 0, ThumbNailSize.Width, ThumbNailSize.Height)
        oGraphic.DrawImage(fullSizeImg, oRectangle)
        oThumbNail.Save(Response.OutputStream, oFormat)
        fullSizeImg.Dispose()

    End Sub
End Class
