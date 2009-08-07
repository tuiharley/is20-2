Public Class show_pics_moto
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txt_model As System.Web.UI.WebControls.Label
    Protected WithEvents txt_price As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents image2 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents image3 As System.Web.UI.WebControls.ImageButton

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public pics As Array
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim carid As String
        Dim carBrand As Array
        Dim cat As Integer


        carid = Request.QueryString("carid")
        cat = Request.QueryString("cat")


        pics = BikeDB.getAllPic(carid)
        showPic(pics)
        carBrand = BikeDB.getBrand(carid).Split(",")
        txt_model.Text = carBrand.GetValue(0)
        txt_price.Text = "THB " & FormatNumber(BikeDB.getPrice(carid))


    End Sub
    Private Sub showPic(ByVal pics As Array)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        'image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"

        If pics.GetValue(1) = "noimage3.gif" Then
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"
            image1.Width = Unit.Pixel(imageWidth)
            image1.Height = Unit.Pixel(imageHeight)
        Else
            a = New Bitmap(Server.MapPath(pics.GetValue(1)))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            image1.ImageUrl = pics.GetValue(1)
            image1.Width = Unit.Pixel(imageWidth)
            image1.Height = Unit.Pixel(imageHeight)
        End If

        If pics.GetValue(2) = "noimage3.gif" Then
            image2.ImageUrl = "../../../images/objects/no_image_60x45.gif"
        Else
            a = New Bitmap(Server.MapPath(pics.GetValue(2)))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            image2.ImageUrl = pics.GetValue(2)
            image2.Width = Unit.Pixel(imageWidth)
            image2.Height = Unit.Pixel(imageHeight)
        End If

        If pics.GetValue(3) = "noimage3.gif" Then
            image3.ImageUrl = "../../../images/objects/no_image_60x45.gif"
        Else
            a = New Bitmap(Server.MapPath(pics.GetValue(3)))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            image3.ImageUrl = pics.GetValue(3)
            image3.Width = Unit.Pixel(imageWidth)
            image3.Height = Unit.Pixel(imageHeight)
        End If


    End Sub



    Private Sub image2_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles image2.Click
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        'image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"

        If image2.ImageUrl = "../../../images/objects/no_image_60x45.gif" Then
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"
            image1.Width = Unit.Pixel(imageWidth)
            image1.Height = Unit.Pixel(imageHeight)
        Else
            a = New Bitmap(Server.MapPath(image2.ImageUrl))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            image1.ImageUrl = image2.ImageUrl
            image1.Width = Unit.Pixel(imageWidth)
            image1.Height = Unit.Pixel(imageHeight)
        End If
    End Sub
    Private Sub image3_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles image3.Click
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        'image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"

        If image3.ImageUrl = "../../../images/objects/no_image_60x45.gif" Then
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"
            image1.Width = Unit.Pixel(imageWidth)
            image1.Height = Unit.Pixel(imageHeight)
        Else
            a = New Bitmap(Server.MapPath(image3.ImageUrl))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            image1.ImageUrl = image3.ImageUrl
            image1.Width = Unit.Pixel(imageWidth)
            image1.Height = Unit.Pixel(imageHeight)
        End If
    End Sub



End Class
