Public Class private_truck_detail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents AdTopic As System.Web.UI.WebControls.Label
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents enginetype As System.Web.UI.WebControls.Label
    Protected WithEvents power As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents gear As System.Web.UI.WebControls.Label
    Protected WithEvents numgear As System.Web.UI.WebControls.Label
    Protected WithEvents numpump As System.Web.UI.WebControls.Label
    Protected WithEvents cc As System.Web.UI.WebControls.Label
    Protected WithEvents numdoor As System.Web.UI.WebControls.Label
    Protected WithEvents numseat As System.Web.UI.WebControls.Label
    Protected WithEvents fuelconsume As System.Web.UI.WebControls.Label
    Protected WithEvents fueltank As System.Web.UI.WebControls.Label
    Protected WithEvents lastcheck As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Image3 As System.Web.UI.WebControls.Image
    Protected WithEvents Image4 As System.Web.UI.WebControls.Image
    Protected WithEvents Image5 As System.Web.UI.WebControls.Image
    Protected WithEvents Prao As System.Web.UI.WebControls.Label
    Protected WithEvents praoDrive As System.Web.UI.WebControls.Label
    Protected WithEvents loadTruck As System.Web.UI.WebControls.Label
    Protected WithEvents weightTruck As System.Web.UI.WebControls.Label
    Protected WithEvents accessory As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents editAd As System.Web.UI.WebControls.HyperLink
    Protected WithEvents show_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents del_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents st As System.Web.UI.WebControls.Label
    Protected WithEvents brand As System.Web.UI.WebControls.Label
    Protected WithEvents AdList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sta_com As System.Web.UI.WebControls.Label
    Protected WithEvents numUp As System.Web.UI.WebControls.Label
    Protected WithEvents numDown As System.Web.UI.WebControls.Label

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
        Dim cust_id As Integer
        Dim noticeid As Integer
        Dim curPos As Integer

        cust_id = Request.QueryString("cust_id")
        noticeid = Request.QueryString("noticeid")
        curPos = Request.QueryString("curPos")
        'cust_id = 13
        'noticeid = 34

        'checkShow()
        checkDel(noticeid, cust_id, curPos)
        setLink(NoticeDB.getNoticeShow(noticeid), noticeid, cust_id, curPos)
        showInfo(cust_id)
        showdetail(noticeid, cust_id)
        showNum(curPos, Session("A_customer_notices"), cust_id)
    End Sub
    Private Sub checkShow()
        Dim showNotice As String = Request.QueryString("show")
        Dim noticeid As String = Request.QueryString("noticeid")

        'Response.Write(noticeid & "--" & showNotice)
        If showNotice <> "" Then
            If showNotice = "yes" Then
                'NoticeDB.setOpenNotice(noticeid, 1)
            Else
                'NoticeDB.setOpenNotice(noticeid, 0)
            End If
        End If
    End Sub
    Private Sub checkDel(ByVal noticeid As Integer, ByVal cust_id As Integer, ByVal curPos As Integer)
        Dim del As String = Request.QueryString("del")

        If del = "yes" Then
            NoticeDetailDB.setDetailDelete(NoticeDetailDB.getNoticeDetailID(noticeid), 1)
            'InvoiceDB.updateCancelInvoice(noticeid)
            'TmpPaymentDb.updateCancelTmpPay(InvoiceDB.getInvoice2(noticeid))
            Response.Redirect("private_ad_list.aspx?cust_id=" & cust_id)
        End If

    End Sub

    Private Sub setLink(ByVal show As String, ByVal noticeid As Integer, ByVal cust_id As Integer, ByVal curPos As Integer)
        Dim tmp As String
        Dim tmp2 As String

        If show = "เปิด" Then
            tmp = "no"
            tmp2 = "ON"
            st.Text = "(Opened)"
            st.ForeColor = Color.Green

        Else
            tmp = "yes"
            tmp2 = "OFF"
            st.Text = "(Closed)"
            st.ForeColor = Color.Red
            sta_com.Text = NoticeDB.getOpenComm1(noticeid)
        End If

        editAd.NavigateUrl = "private_edit1_truck_datas.aspx?from=start&noticeid=" & noticeid & "&cust_id=" & cust_id & "&curPos=" & curPos
        del_ad.NavigateUrl = "private_truck_detail.aspx?del=yes&noticeid=" & noticeid & "&cust_id=" & cust_id & "&curPos=" & curPos

        '--------------------- form_internal_status_changing_of_ad_or_pack.aspx?page=car&noticeid=" & noticeid & "&showNotice=OFF" & "&curPos=" & curPos & "&cust_id=" & cust_id)
        show_ad.NavigateUrl = "form_internal_status_changing_of_ad_or_pack.aspx?page=truck&showNotice=" & tmp2 & "&noticeid=" & noticeid & "&cust_id=" & cust_id & "&curPos=" & curPos
        'show_ad.NavigateUrl = "private_truck_detail.aspx?show=" & tmp & "&noticeid=" & noticeid & "&cust_id=" & cust_id & "&curPos=" & curPos
        AdList.NavigateUrl = "private_ad_list.aspx?cust_id=" & cust_id
    End Sub

    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myCust As A_Customer

        myCust = CustomerDB.getA_customer(cust_id)
        custName.Text = myCust.name & "(" & myCust.username & ")"
        custEmail.Text = myCust.email
        custTel.Text = myCust.phone1
        If myCust.phone2 <> "" Then
            custTel.Text = custTel.Text & "/" & myCust.phone2
        End If
    End Sub
    Private Sub showdetail(ByVal notice_id As Integer, ByVal cust_id As Integer)
        Dim car_id As Integer
        Dim myCar As TruckSt
        Dim myInfo As A_Customer = CustomerDB.getA_customer(cust_id)


        car_id = NoticeDB.getDataID(notice_id)
        myCar = TruckDB.getTruck(car_id)

        brand.Text = BrandDB.getBrandName(myCar.Brand) & "/" & myCar.Model
        If myCar.SubModel <> "" Then
            brand.Text = brand.Text & "/" & myCar.SubModel
        End If

        category.Text = CarTypeDB.getStatusName(myCar.Type, 3)

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

        enginetype.Text = EngineTypeDB.getEngineName(myCar.EngineType)

        If myCar.Power = 0 Then
            power.Text = "-  hp/kw"
        Else
            power.Text = myCar.Power & "  " & myCar.PowerType
        End If

        colors.Text = ColorDB.getColorName(myCar.Color)
        If myCar.Metalic = 1 Then
            colors.Text = colors.Text & " เมทาลิค"
        End If

        If myCar.NumPrao = 0 Then
            Prao.Text = "-"
        Else
            Prao.Text = myCar.NumPrao
        End If

        If myCar.NumPraoDrive = 0 Then
            praoDrive.Text = "-"
        Else
            praoDrive.Text = myCar.NumPraoDrive
        End If

        If myCar.NumWeight = 0 Then
            loadTruck.Text = "-"
        Else
            loadTruck.Text = myCar.NumWeight
        End If

        If myCar.NumWeightLoad = 0 Then
            weightTruck.Text = "-"
        Else
            weightTruck.Text = myCar.NumWeightLoad
        End If

        gear.Text = GearDB.getGearType(myCar.Gears)

        If myCar.NumGear = 0 Then
            numgear.Text = "-"
        Else
            numgear.Text = myCar.NumGear
        End If

        If myCar.NumPump = 0 Then
            numpump.Text = "-"
        Else
            numpump.Text = myCar.NumPump
        End If

        If myCar.CC = 0 Then
            cc.Text = "-  ซีซี/CC"
        Else
            cc.Text = myCar.CC & "  ซีซี/CC"
        End If

        If myCar.NumDoor = 0 Then
            numdoor.Text = "-"
        Else
            numdoor.Text = myCar.NumDoor
        End If

        If myCar.NumSeat = 0 Then
            numseat.Text = "-"
        Else
            numseat.Text = myCar.NumSeat
        End If

        If myCar.FuelConsume = 0 Then
            fuelconsume.Text = "-  km/ลิตร"
        Else
            fuelconsume.Text = myCar.FuelConsume & "  km/ลิตร"
        End If

        If myCar.FuelTank = 0 Then
            fueltank.Text = "-  ลิตร"
        Else
            fueltank.Text = myCar.FuelTank & "  ลิตร"
        End If

        If myCar.LastCheck = "" Then
            lastcheck.Text = "-"
        Else
            lastcheck.Text = myCar.LastCheck
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = 1 Then
                accident.Text = "รถมีอุบัติเหตุ"
            Else
                accident.Text = "รถไม่มีอุบัติเหตุ"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = "1" Then
                insurrunce.Text = "รถมีประกัน"
            Else
                insurrunce.Text = "รถไม่มีประกัน"
            End If
        End If

        If myCar.BodyId = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.BodyId
        End If

        accessory.Text = TruckDB.getAccesory(myCar.id)
        description.Text = myCar.Information


        showPictures(myCar, myInfo)
    End Sub
    Private Sub showPictures(ByVal car As TruckSt, ByVal myinfo As A_Customer)
        'Image1.Width = Unit.Pixel(327)
        'Image1.Height = Unit.Pixel(327)
        'Image2.Width = Unit.Pixel(60)
        'Image2.Height = Unit.Pixel(60)
        'Image3.Width = Unit.Pixel(60)
        'Image3.Height = Unit.Pixel(60)
        'Image4.Width = Unit.Pixel(60)
        'Image4.Height = Unit.Pixel(60)
        'Image5.Width = Unit.Pixel(60)
        'Image5.Height = Unit.Pixel(60)

        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer



        If car.Image1 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image1))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            Image1.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image1
            Image1.Width = Unit.Pixel(imageWidth)
            Image1.Height = Unit.Pixel(imageHeight)
        Else
            Image1.ImageUrl = "../../images/objects/no_image_250x188.gif"
        End If

        If car.Image2 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image2))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image2.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image2
            Image2.Width = Unit.Pixel(imageWidth)
            Image2.Height = Unit.Pixel(imageHeight)
        Else
            Image2.ImageUrl = "../../images/objects/no_image_60x45.gif"
        End If

        If car.Image3 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image3))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image3.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image3
            Image3.Width = Unit.Pixel(imageWidth)
            Image3.Height = Unit.Pixel(imageHeight)
        Else
            Image3.ImageUrl = "../../images/objects/no_image_60x45.gif"
        End If

        If car.Image4 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image4))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image4.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image4
            Image4.Width = Unit.Pixel(imageWidth)
            Image4.Height = Unit.Pixel(imageHeight)
        Else
            Image4.ImageUrl = "../../images/objects/no_image_60x45.gif"
        End If

        If car.Image5 <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image5))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 60)
            Image5.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, 3) & "/" & car.Image5
            Image5.Width = Unit.Pixel(imageWidth)
            Image5.Height = Unit.Pixel(imageHeight)
        Else
            Image5.ImageUrl = "../../images/objects/no_image_60x45.gif"
        End If
    End Sub
    Private Sub showNum(ByVal curPos As Integer, ByVal listQ As Array, ByVal cust_id As Integer)
        Dim SQL As String
        Dim totalPage As Integer
        Dim i As Integer

        totalPage = listQ.Length - 1

        SQL = " <table cellSpacing=""0"" cellPadding=""0"" align=""right"" border=""0"">"
        SQL = SQL & " 						<tr>"
        If curPos = 1 Then
            SQL = SQL & " 							<td class=""small_standard_font"" noWrap>|&lt;&lt;</td>"
        Else
            SQL = SQL & " 							<td class=""small_standard_font"" style=""CURSOR: hand"" noWrap onClick='goPage(1," & listQ(1).id & "," & cust_id & "," & listQ(1).category & ");'>|&lt;&lt;</td>"
        End If

        SQL = SQL & " 							<td><IMG height=""1"" src=""../../pics/objects/no.gif"""
        SQL = SQL & " 									width=""13""></td>"

        If curPos = 1 Then
            SQL = SQL & " 							<td class=""small_standard_font"" noWrap>&lt;&lt;</td>"
        Else
            SQL = SQL & " 							<td class=""small_standard_font"" style=""CURSOR: hand"" noWrap onClick='goPage(" & curPos - 1 & "," & listQ(curPos - 1).id & "," & cust_id & "," & listQ(curPos - 1).category & ");'>&lt;&lt;</td>"
        End If
        SQL = SQL & " 							<td><IMG height=""1"" src=""../../pics/objects/no.gif"""
        SQL = SQL & " 									width=""13""></td>"
        SQL = SQL & " 							<td class=""small_standard_font"" noWrap><strong>Object</strong>&nbsp;&nbsp; "
        For i = 1 To totalPage
            If i = curPos Then
                SQL = SQL & "                         <strong>" & i & "</strong> "
            Else
                SQL = SQL & "                         <font class='Font_U_Pages' style=""CURSOR: hand"" onClick='goPage(" & i & "," & listQ(i).id & "," & cust_id & "," & listQ(i).category & ");'>" & i & "</font> "
            End If
        Next
        SQL = SQL & " 									<strong>of " & totalPage & "</strong></td>"
        SQL = SQL & " 							<td><IMG height=""1"" src=""../../pics/objects/no.gif"""
        SQL = SQL & " 									width=""13""></td>"
        If curPos = totalPage Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">&gt;&gt;</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(" & curPos + 1 & "," & listQ(curPos + 1).id & "," & cust_id & "," & listQ(curPos + 1).category & ");'>&gt;&gt;</td>"
        End If
        SQL = SQL & " 							<td><IMG height=""1"" src=""../../pics/objects/no.gif"""
        SQL = SQL & " 									width=""13""></td>"
        If curPos = totalPage Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">&gt;&gt;|</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(" & totalPage & "," & listQ(totalPage).id & "," & cust_id & "," & listQ(totalPage).category & ");'>&gt;&gt;|</td>"
        End If
        SQL = SQL & " 						</tr>"
        SQL = SQL & " 					</table>"

        numUp.Text = SQL
        numDown.Text = SQL
    End Sub
End Class
