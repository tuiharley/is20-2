Public Class search3_detail_part_p00
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents searchResult1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents upPage As System.Web.UI.WebControls.Label
    Protected WithEvents downPage As System.Web.UI.WebControls.Label
    Protected WithEvents searchResult2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchAgain2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents partBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents question As System.Web.UI.WebControls.TextBox
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents operateTime As System.Web.UI.WebControls.Label
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents savePak As System.Web.UI.WebControls.Label
    Protected WithEvents warnDel As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sendFr As System.Web.UI.WebControls.HyperLink

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

        Dim carid As Integer
        Dim myCar As Part
        Dim myInfo As A_Customer

        If Not IsPostBack Then
            carid = Request.QueryString("carid")
            'carid = 8
            myCar = PartsDB.getPart(carid)
            myInfo = CustomerDB.getA_customer(NoticeDB.getCustID(carid, 4))

            showCar(myCar)
            showPictures(myCar, myInfo)
            showMyInfo(myInfo)
            setLink(carid)

            Session("custID") = myInfo.id
            Session("mailto") = myInfo.email
            Session("carID") = myCar.id
        End If

        AjaxPro.Utility.RegisterTypeForAjax(GetType(search3_detail_part_p00))

    End Sub

    Private Sub setLink(ByVal carid As Integer)
        printThis.NavigateUrl = "../../print_form/print_part_detail.aspx?carid=" & carid
        printThis.Target = "_blank"
        printThis.Text = "พิมพ์หน้านี้"

        savePak.Text = "<font id='savePark' class='Font_black_u' onmouseover = ""document.all.savePark.className='Font_black_u_over'"" onmouseout = ""document.all.savePark.className='Font_black_u'"" "
        savePak.Text = savePak.Text & "Style = 'CURSOR: hand'	onClick='saveAdv(" & carid & ");'>บันทึกประกาศ</font>"

        sendFr.NavigateUrl = "../sendFriend/sending.aspx?carid=" & carid & "&cat=4"
        sendFr.Target = "_blank"
        sendFr.Text = "ส่งให้เพื่อน"

        warnDel.Text = "แจ้งลบประกาศ"
        warnDel.Target = "_blank"
        warnDel.NavigateUrl = "../warn/warning.aspx?f=part&detail_id=" & NoticeDetailDB.getNoticeDetailID2(carid, "(4,5)")
    End Sub
    Private Sub carBrandLabel(ByVal c As String, ByVal b As String, ByVal m As String, ByVal price As Double)
        partBrand.Text = c & ": " & b & "/" & m
        partBrand.ForeColor = Color.White
        partBrand.CssClass = "H1_white"


        If price = 0 Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(price)
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"

    End Sub

    Private Sub showCar(ByRef myCar As Part)

        category.Text = PartsTypeDB.getPartTypeName(myCar.Type)

        carBrandLabel(CategoryDB.getCategoryName(myCar.Category), myCar.Brand, myCar.Model, myCar.Price)

        If myCar.Price = 0 Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(myCar.Price) & "  บาท"
        End If

        status.Text = CarStatusDB.getStatusName(myCar.Status)

        If myCar.Year = "" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = myCar.Year
        End If

        If myCar.Miles = 0 Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = myCar.Miles & "  " & myCar.MilesType
        End If

        If myCar.Color = "" Then
            colors.Text = "-"
        Else
            colors.Text = myCar.Color
        End If

        If myCar.Colorcode = "" Then
            colorcode.Text = "-"
        Else
            colorcode.Text = myCar.Colorcode
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = -1 Then
                accident.Text = "ชำรุด"
            Else
                accident.Text = "สินค้าไม่ชำรุด"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = -1 Then
                insurrunce.Text = "สินค้ามีประกัน"
            Else
                insurrunce.Text = "สินค้าไม่มีประกัน"
            End If
        End If

        If myCar.Code = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.Code
        End If

        description.Text = myCar.Information

    End Sub
    Private Sub showPictures(ByRef car As Part, ByRef myinfo As A_Customer)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim detailId As Integer
        Dim tmpArr As Array
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")


        'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, 1))
        'Response.Write(myinfo.id)

        If car.Image <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 4) & "/" & car.Image))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            'IUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 4) & "/" & car.Image

            tmpArr = NoticeDB.getImgPath(myinfo.id, car.id, 4).Split("/")
            detailId = tmpArr.GetValue(1)
            IUrl = picUrl & "public/test/WebForm10.aspx?custid=" & detailId & "&w=327&h=v"
        Else
            a = New Bitmap(Server.MapPath("../../images/objects/no_image_250x188.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            IUrl = "../../images/objects/no_image_250x188.gif"
        End If
        image1.Text = "<img  src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"


    End Sub
    Private Sub showMyInfo(ByRef myinfo As A_Customer)

        Addr.Text = "อำเภอ " & DistrictDB.getDistrictName(myinfo.district) & " จังหวัด " & ProvinceDB.getProvinceName(myinfo.province)
        Tel.Text = myinfo.phone1
        If myinfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myinfo.phone2
        End If
        fax.Text = myinfo.fax

    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function sendQuestion(ByVal name As String, ByVal email As String, ByVal phone1 As String, ByVal question As String) As String
        Dim EQuestion As mailQuestion

        EQuestion.name = name
        EQuestion.mail = email
        EQuestion.tel = phone1
        EQuestion.question = question

        EmailDB.sendMailQuestion(Session("mailto"), Session("custID"), Session("carID"), 4, EQuestion)

        Return "Email ได้ถูกจัดส่งเรียบร้อย"
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function showMainPic(ByVal picNo As Integer, ByVal picUrl As String) As String
        Dim tmp As String, tmp2 As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim x As Integer
        Dim IUrl As String
        Dim detailId As Integer
        Dim tmpArr As Array
        Dim picUrls As String = ConfigurationSettings.AppSettings("picURL")


        If picNo = 1 Then
            picUrl = PartsDB.getMainPic(Session("carID"))
            tmpArr = picUrl.Split("\")
            detailId = tmpArr.GetValue(4)
            picUrl = picUrls & "public/test/WebForm10.aspx?custid=" & detailId & "&w=327&h=v"
        End If

        'If picUrl = "http://www.auto-onclick.com/images/objects/no_image_60x45.gif" Then
        '    picUrl = "http://www.auto-onclick.com/images/objects/no_image_250x188.gif"


        If picUrl = picUrls & "images/objects/no_image_60x45.gif" Then
            picUrl = picUrls & "images/objects/no_image_250x188.gif"
        End If

        If picUrl.IndexOf("test") <> -1 Then
            tmp = "<img style=""CURSOR: hand"" src='" & picUrl & "' onclick='changeMainPic(1,this.src);'>"

        Else
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("images"))
            tmp2 = "../" & tmp2
            a = New Bitmap(Server.MapPath(tmp2))
            autoonclick.resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            tmp = "<img src='" & picUrl & "' width='" & imageWidth & "' height='" & imageHeight & "' onclick='changeMainPic(1,this.src);'>"

        End If





        Return tmp
    End Function
End Class
