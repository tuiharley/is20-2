Public Class business_part_detail
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
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents brand As System.Web.UI.WebControls.Label
    Protected WithEvents editAd As System.Web.UI.WebControls.HyperLink
    Protected WithEvents show_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents del_ad As System.Web.UI.WebControls.HyperLink
    Protected WithEvents st As System.Web.UI.WebControls.Label
    Protected WithEvents AdList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sta_com As System.Web.UI.WebControls.Label
    Protected WithEvents numUp As System.Web.UI.WebControls.Label
    Protected WithEvents numDown As System.Web.UI.WebControls.Label
    Protected WithEvents ConPt As System.Web.UI.WebControls.Label
    Protected WithEvents personData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents webLink As System.Web.UI.WebControls.HyperLink

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
        Dim detailid As Integer
        Dim curPos As Integer
        Dim carId As Integer


        cust_id = Request.QueryString("cust_id")
        noticeid = Request.QueryString("noticeid")
        detailid = Request.QueryString("detailid")
        carId = Request.QueryString("carid")
        curPos = Request.QueryString("curPos")


        'cust_id = 28
        'noticeid = 24
        'detailid = 76
        'carId = 46
        'curPos = 1

        checkDel(detailid, cust_id, curPos, noticeid, carId)
        setLink(NoticeDetailDB.getDetailShow(detailid), noticeid, cust_id, curPos, detailid, carId)
        showInfo(cust_id)
        showdetail(noticeid, cust_id, carId)
        'showNum(curPos, Session("A_customer_notices"), cust_id)
    End Sub
    Private Sub checkDel(ByVal detailid As Integer, ByVal cust_id As Integer, ByVal curPos As Integer, ByVal noticeid As Integer, ByVal carId As Integer)
        Dim del As String = Request.QueryString("del")

        If del = "yes" Then
            NoticeDetailDB.setDetailDelete(detailid, 1)
            'InvoiceDB.updateCancelInvoice(noticeid)
            'TmpPaymentDb.updateCancelTmpPay(InvoiceDB.getInvoice2(noticeid))
            Response.Redirect("../lists/business_ad_list_of_package.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid)
        End If

    End Sub

    Private Sub setLink(ByVal show As String, ByVal noticeid As Integer, ByVal cust_id As Integer, ByVal curPos As Integer, ByVal detailid As Integer, ByVal carId As Integer)
        Dim tmp As String
        Dim tmp2 As String
        Dim myDetail As noticeDetail
        myDetail = NoticeDetailDB.getNoticeDetailInfo(detailid)

        AdTopic.Text = "NDD" & myDetail.id & "/Insertion Date: " & myDetail.Post_date.ToString("dd-MM-yyyy")

        If show = "�Դ" Then
            tmp = "no"
            tmp2 = "ON"
            st.Text = "(Opened)"
            st.ForeColor = Color.Green

        Else
            tmp = "yes"
            tmp2 = "OFF"
            st.Text = "(Closed)"
            st.ForeColor = Color.Red
            sta_com.Text = myDetail.Show_Desc
        End If
        AdTopic.Text = AdTopic.Text & "/<u>" & tmp2 & "</u>"

        editAd.NavigateUrl = "business_edit_part_datas.aspx?from=view&noticeid=" & noticeid & "&cust_id=" & cust_id & "&curPos=" & curPos & "&detailid=" & detailid & "&carid=" & carId
        del_ad.NavigateUrl = "business_part_detail.aspx?del=yes&cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & detailid & "&carid=" & carId & "&curPos=" & curPos
        '--------------------- form_internal_status_changing_of_ad_or_pack.aspx?page=car&noticeid=" & noticeid & "&showNotice=OFF" & "&curPos=" & curPos & "&cust_id=" & cust_id)
        show_ad.NavigateUrl = "form_internal_status_changing_of_ad.aspx?page=part&showNotice=" & tmp2 & "&cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & detailid & "&carid=" & carId & "&curPos=" & curPos
        AdList.NavigateUrl = "../lists/business_ad_list_of_package.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid
    End Sub


    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myCust As A_Customer
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        myCust = CustomerDB.getA_customer(cust_id)
        custName.Text = myCust.name & "(" & myCust.username & ")"
        ConPt.Text = myCust.contactName
        custEmail.Text = myCust.email
        custTel.Text = myCust.phone1
        If myCust.phone2 <> "" Then
            custTel.Text = custTel.Text & "/" & myCust.phone2
        End If

        personData.NavigateUrl = "../personal_datas/business_personal_data.aspx?custid=" & cust_id
        personData.Target = "_blank"

        webLink.NavigateUrl = userURL & myCust.username & "/index.html"
        webLink.Target = "_blank"
    End Sub
    Private Sub showdetail(ByVal notice_id As Integer, ByVal cust_id As Integer, ByVal car_id As Integer)
        Dim myCar As Part
        Dim myInfo As A_Customer = CustomerDB.getA_customer(cust_id)


        myCar = PartsDB.getPart(car_id)

        brand.Text = CategoryDB.getCategoryName(myCar.Category) & ":" & myCar.Brand
        If myCar.Model <> "" Then
            brand.Text = brand.Text & "/" & myCar.Model
        End If

        category.Text = PartsTypeDB.getPartTypeName(myCar.Type)

        If myCar.Price = 0 Then
            Price.Text = "-  �ҷ"
        Else
            Price.Text = FormatNumber(myCar.Price) & "  �ҷ"
        End If

        status.Text = CarStatusDB.getStatusName(myCar.Status)

        If myCar.Year = "yyyy" Then
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
            If myCar.Accident = 1 Then
                accident.Text = "���ش"
            Else
                accident.Text = "�Թ��������ش"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = "1" Then
                insurrunce.Text = "�Թ����ջ�Сѹ"
            Else
                insurrunce.Text = "�Թ�������ջ�Сѹ"
            End If
        End If

        If myCar.Code = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.Code
        End If

        description.Text = myCar.Information


        showPictures(notice_id, myCar, myInfo)
    End Sub
    Private Sub showPictures(ByVal notice_id As Integer, ByVal car As Part, ByVal myinfo As A_Customer)
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



        If car.Image <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, NoticeDB.getCatID(notice_id)) & "/" & car.Image))
            'Response.Write(NoticeDB.getImgPath(myinfo.id, car.id, NoticeDB.getCatID(Session("notice_id"))))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 327)
            Image1.ImageUrl = "/userData/" & myinfo.username & "/" & NoticeDB.getImgPath(myinfo.id, car.id, NoticeDB.getCatID(notice_id)) & "/" & car.Image
            Image1.Width = Unit.Pixel(imageWidth)
            Image1.Height = Unit.Pixel(imageHeight)
        Else
            Image1.ImageUrl = "../../../images/objects/no_image_250x188.gif"
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

        SQL = SQL & " 							<td><IMG height=""1"" src=""../../../pics/objects/no.gif"""
        SQL = SQL & " 									width=""13""></td>"

        If curPos = 1 Then
            SQL = SQL & " 							<td class=""small_standard_font"" noWrap>&lt;&lt;</td>"
        Else
            SQL = SQL & " 							<td class=""small_standard_font"" style=""CURSOR: hand"" noWrap onClick='goPage(" & curPos - 1 & "," & listQ(curPos - 1).id & "," & cust_id & "," & listQ(curPos - 1).category & ");'>&lt;&lt;</td>"
        End If
        SQL = SQL & " 							<td><IMG height=""1"" src=""../../../pics/objects/no.gif"""
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
        SQL = SQL & " 							<td><IMG height=""1"" src=""../../../pics/objects/no.gif"""
        SQL = SQL & " 									width=""13""></td>"
        If curPos = totalPage Then
            SQL = SQL & " 							<td nowrap class=""small_standard_font"">&gt;&gt;</td>"
        Else
            SQL = SQL & " 							<td nowrap class=""small_standard_font"" style=""CURSOR: hand"" onClick='goPage(" & curPos + 1 & "," & listQ(curPos + 1).id & "," & cust_id & "," & listQ(curPos + 1).category & ");'>&gt;&gt;</td>"
        End If
        SQL = SQL & " 							<td><IMG height=""1"" src=""../../../pics/objects/no.gif"""
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
