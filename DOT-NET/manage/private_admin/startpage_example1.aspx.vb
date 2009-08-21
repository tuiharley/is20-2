Public Class startpage_example1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents cardata As System.Web.UI.WebControls.Label
    Protected WithEvents carOffer As System.Web.UI.WebControls.HyperLink
    Protected WithEvents bikeOffer As System.Web.UI.WebControls.HyperLink
    Protected WithEvents TruckOffer As System.Web.UI.WebControls.HyperLink
    Protected WithEvents partOffer As System.Web.UI.WebControls.HyperLink

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
        Dim cust_id As Integer = Request.QueryString("cust_id")
        'cust_id = 13
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")


        'If cust_id = 0 Then
        '    Response.Redirect("../../public/login/login.aspx")
        'Else
        Session.Clear()
        cust_id = 13
        startSession(cust_id)


        'setLink()
        showData(Session("cust_id"))
        'End If
    End Sub
    Private Sub startSession(ByVal cust_id As Integer)

        Session("cust_id") = cust_id
        Session.Add("conn", DBConnect.getStrDBConnect)
    End Sub
    Private Sub checkShow(ByVal show As String, ByVal noticeid As String)

        If show <> "" Then
            If show = "yes" Then
                NoticeDB.setOpenNotice(noticeid, 1, "")
            Else
                NoticeDB.setOpenNotice(noticeid, 0, "")
            End If
        End If
    End Sub
    Private Sub setLink()
        carOffer.NavigateUrl = "offer1_car_datas_puadmin.aspx?package_id=1"
        bikeOffer.NavigateUrl = "offer1_moto_datas_puadmin.aspx?package_id=2"
        TruckOffer.NavigateUrl = "offer1_truck_datas_puadmin.aspx?package_id=3"
        partOffer.NavigateUrl = "offer1_part_datas_puadmin.aspx?package_id=4"

    End Sub


    Private Sub showData(ByVal cust_id As Integer)

        Dim A_customer_notices As Array

        Dim A_car As Car
        Dim A_bike As Bike
        Dim A_truck As TruckSt
        Dim A_part As Part




        Dim i As Integer

        A_customer_notices = NoticeDB.getNotices(cust_id)


        For i = 1 To A_customer_notices.Length - 1
            A_car = Nothing
            A_bike = Nothing
            A_truck = Nothing
            A_part = Nothing

            Select Case A_customer_notices(i).category
                Case 1
                    A_car = CarDB.getCar(NoticeDB.getDataID(A_customer_notices(i).id))
                    showCar(A_customer_notices(i), A_car, cust_id)
                Case 2
                    A_bike = BikeDB.getBike(NoticeDB.getDataID(A_customer_notices(i).id))
                    showBike(A_customer_notices(i), A_bike, cust_id)
                Case 3
                    A_truck = TruckDB.getTruck(NoticeDB.getDataID(A_customer_notices(i).id))
                    showTruck(A_customer_notices(i), A_truck, cust_id)
                Case 4, 5
                    A_part = PartsDB.getPart(NoticeDB.getDataID(A_customer_notices(i).id))
                    showPart(A_customer_notices(i), A_part, cust_id)
            End Select




        Next


    End Sub



    Private Sub showCar(ByRef notice As noticeS, ByRef car As Car, ByVal cust_id As Integer)

        Dim notice_status As Array
        Dim txtBrand As String
        Dim tmpBrand As Array
        Dim dateDif As Integer
        Dim picStr As String
        Dim priceColor As String
        Dim prolong As String, prolong_color As String
        Dim prolong_href As String
        Dim show As String, txtShow As String

        Dim datestart As String, datestop As String
        Dim maxdate As Date


        cardata.Text = cardata.Text & "             <tr>"
        cardata.Text = cardata.Text & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../images/table/g_693.gif"" class=""Font_black_LH_15px"">"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""3"" colspan=""21""><img src=""../images/dividers/li_bu_so1_g.gif"" width=""693"" height=""3""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3""></td>"
        cardata.Text = cardata.Text & "     <td width=""60""><div align=""center"">" & NoticeDB.getNoticeCode(notice.id) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & FormatDateTime(notice.postDate, DateFormat.ShortDate) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        cardata.Text = cardata.Text & "     <td width=""85""><div align=""center"">C/" & PackageDB.getPackageWeek(notice.pacakgeId) & "m</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------Price color -------------------------------------
        If notice.status = 2 Or notice.status = 3 Then
            priceColor = "Font_black"
        Else
            priceColor = "Font_red"
        End If


        cardata.Text = cardata.Text & "     <td width=""75""><div align=""center"" class=" & priceColor & ">&#3647; " & PackageDB.getPackagePrice(notice.pacakgeId) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------date start and date stop --------------------------------------
        If notice.startDate = "1/1/0544 0:00:00" Then
            datestart = ""
            datestop = ""
        Else
            datestart = FormatDateTime(notice.startDate, DateFormat.ShortDate) & "<BR>"
            datestop = FormatDateTime(notice.stopDate, DateFormat.ShortDate)
        End If

        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & datestart & " - "
        cardata.Text = cardata.Text & "       " & datestop & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""64""><div align=""center""><a href='detail_car.aspx?notice_id=" & notice.id & "'><img src=""../images/icons/small/detail_16x16.gif"" width=""16"" height=""16"" border=""0"" align=""texttop""></a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '--------------notice show----------------
        If notice.show = "เปิด" Then
            txtShow = "ปิด"
            show = "no"
        Else
            txtShow = "เปิด"
            show = "yes"
        End If
        cardata.Text = cardata.Text & "     <td width=""46""><div align=""center""><a href='startpage_example1.aspx?show=" & show & "&noticeid=" & notice.id & "' class=""A_on"">" & txtShow & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '-------------notice status-------------------
        notice_status = Split(NoticeTypeDB.getStatusName(notice.status), ":")

        cardata.Text = cardata.Text & "     <td width=""45""><div align=""center"" class='" & notice_status(1) & "'>" & notice_status(0) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '---------------------prolong condition ----------
        maxdate = ProlongDB.getMaxDate(notice.id)
        If maxdate = "#12:00:00 AM#" Then
            maxdate = notice.postDate
        Else
            maxdate = ProlongDB.getMaxStartDate(notice.id)
        End If
        If (notice.status = 1 Or notice.prolong = "P" Or Not Utilities.checkDateMore7(maxdate)) Then
            cardata.Text = cardata.Text & "     <td width=""60""><a href class='A60_inactive'>&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        Else
            cardata.Text = cardata.Text & "     <td width=""60""><a href='prolong1_confirmation.aspx?noticeid=" & notice.id & "&detailid=' class=""A60"">&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        End If


        'cardata.Text = cardata.Text & "     <td width=""60""><input       type='button' class=""A60_inactive""><!--&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;--></a></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '---------------notice prolong----------------------
        If notice.prolong = "" Then
            prolong = "-"
            prolong_color = "Font_black"
            prolong_href = ""
        Else
            prolong = notice.prolong
            prolong_color = notice.prolong_color

            If notice.prolong_color = "A_PC_red_underline" Then
                prolong_href = "href='orderdetail_p_confirmed.aspx?cond=unconfirm&noticeid=" & notice.id & "'"
            Else
                prolong_href = "href='orderdetail_p_confirmed.aspx?noticeid=" & notice.id & "'"
            End If

        End If



        cardata.Text = cardata.Text & "     <td width=""51""><div align=""center"" ><a " & prolong_href & " class='" & prolong_color & "'>" & prolong & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""3""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""7"" colspan=""21""><img src=""../images/dividers/li_pri1_g.gif"" width=""693"" height=""7""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"

        '-----------------notice image---------------------
        If car.Image1 <> "" Then
            picStr = "/userData/" & CustomerDB.getUserName(cust_id) & "/" & NoticeDB.getImgPath(cust_id, car.id, notice.category) & "/" & car.Image1
        Else
            picStr = "../images/objects/no_image_60x45.gif"
        End If

        cardata.Text = cardata.Text & "                   <td rowspan=""2""><div align=""center""><a href='detail_car.aspx?notice_id=" & notice.id & "'><img src='" & picStr & "' width=""60"" height=""45"" border=""0""></a></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""9"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><strong>" & CatTypeDB.getCatName(notice.category) & "/" & CarTypeDB.getStatusName(car.Type, 1) & "</strong></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" background=""../images/separator/g_5.gif"" class=""Padding_B_3px_Border_B_white""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""3"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><div align=""center""><strong>&#3647; " & FormatNumber(car.Price, 2) & "</strong></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" class=""Padding_B_3px""><a href='edit1_car_datas.aspx?car=" & car.id & "&from=start&notice_id=" & notice.id & "' class=""A60"">&#3649;&#3585;&#3657;&#3652;&#3586;</a></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"

        If car.SubModel <> "" Then
            txtBrand = " / " & car.SubModel

        End If
        If car.Year <> "" Then
            tmpBrand = Split(car.Year, "/")
            txtBrand = txtBrand & " / " & tmpBrand(1)
        End If

        cardata.Text = cardata.Text & "                   <td colspan=""13"" class=""Padding_T_3px"" valign=""top"">" & BrandDB.getBrandName(car.Brand) & " / " & ModelDB.getModelName(car.Model) & txtBrand & "</td>"
        cardata.Text = cardata.Text & "                   <td></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""4"" colspan=""21""><img src=""../images/dividers/li_bu_so3_g.gif"" width=""693"" height=""4""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "               </table></td>"
        cardata.Text = cardata.Text & "             </tr>"
    End Sub
    Private Sub showBike(ByRef notice As noticeS, ByRef bike As Bike, ByVal cust_id As Integer)
        Dim notice_status As Array
        Dim txtBrand As String
        Dim tmpBrand As Array
        Dim picStr As String
        Dim priceColor As String
        Dim prolong As String, prolong_color As String
        Dim prolong_href As String
        Dim show As String, txtShow As String

        Dim datestart As String, datestop As String
        Dim maxdate As Date

        cardata.Text = cardata.Text & "             <tr>"
        cardata.Text = cardata.Text & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../images/table/g_693.gif"" class=""Font_black_LH_15px"">"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""3"" colspan=""21""><img src=""../images/dividers/li_bu_so1_g.gif"" width=""693"" height=""3""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3""></td>"
        cardata.Text = cardata.Text & "     <td width=""60""><div align=""center"">" & NoticeDB.getNoticeCode(notice.id) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & FormatDateTime(notice.postDate, DateFormat.ShortDate) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""85""><div align=""center"">M/" & PackageDB.getPackageWeek(notice.pacakgeId) & "m</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------Price color -------------------------------------
        If notice.status = 2 Or notice.status = 3 Then
            priceColor = "Font_black"
        Else
            priceColor = "Font_red"
        End If


        cardata.Text = cardata.Text & "     <td width=""75""><div align=""center"" class=" & priceColor & ">&#3647; " & PackageDB.getPackagePrice(notice.pacakgeId) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------date start and date stop --------------------------------------
        If notice.startDate = "1/1/0544 0:00:00" Then
            datestart = ""
            datestop = ""
        Else
            datestart = FormatDateTime(notice.startDate, DateFormat.ShortDate) & "<BR>"
            datestop = FormatDateTime(notice.stopDate, DateFormat.ShortDate)
        End If

        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & datestart & " - "
        cardata.Text = cardata.Text & "       " & datestop & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""64""><div align=""center""><a href='detail_bike.aspx?notice_id=" & notice.id & "'><img src=""../images/icons/small/detail_16x16.gif"" width=""16"" height=""16"" border=""0"" align=""texttop""></a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '--------------notice show----------------
        If notice.show = "เปิด" Then
            txtShow = "ปิด"
            show = "no"
        Else
            txtShow = "เปิด"
            show = "yes"
        End If
        cardata.Text = cardata.Text & "     <td width=""46""><div align=""center""><a href='startpage_example1.aspx?show=" & show & "&noticeid=" & notice.id & "' class=""A_on"">" & txtShow & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '-------------notice status-------------------
        notice_status = Split(NoticeTypeDB.getStatusName(notice.status), ":")

        cardata.Text = cardata.Text & "     <td width=""45""><div align=""center"" class='" & notice_status(1) & "'>" & notice_status(0) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '---------------------prolong condition ----------
        maxdate = ProlongDB.getMaxDate(notice.id)
        If maxdate = "#12:00:00 AM#" Then
            maxdate = notice.postDate
        Else
            maxdate = notice.startDate
        End If
        If (notice_status(0) = "OFFLINE" Or notice.prolong = "P" Or Not Utilities.checkDateMore7(maxdate)) Then
            cardata.Text = cardata.Text & "     <td width=""60""><a href class='A60_inactive'>&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        Else
            cardata.Text = cardata.Text & "     <td width=""60""><a href='prolong1_confirmation.aspx?noticeid=" & notice.id & "&detailid=' class=""A60"">&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        End If
        'cardata.Text = cardata.Text & "     <td width=""60""><input type='button' class=""A60_inactive""><!--&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;--></a></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '---------------notice prolong----------------------
        If notice.prolong = "" Then
            prolong = "-"
            prolong_color = "Font_black"
            prolong_href = ""
        Else
            prolong = notice.prolong
            prolong_color = notice.prolong_color

            If notice.prolong_color = "A_PC_red_underline" Then
                prolong_href = "href='orderdetail_p_confirmed.aspx?cond=unconfirm&noticeid=" & notice.id & "'"
            Else
                prolong_href = "href='orderdetail_p_confirmed.aspx?noticeid=" & notice.id & "'"
            End If

        End If

        cardata.Text = cardata.Text & "     <td width=""51""><div align=""center"" ><a " & prolong_href & " class='" & prolong_color & "'>" & prolong & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""3""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""7"" colspan=""21""><img src=""../images/dividers/li_pri1_g.gif"" width=""693"" height=""7""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"

        '-----------------notice image---------------------
        If bike.Image1 <> "" Then
            picStr = "/userData/" & CustomerDB.getUserName(cust_id) & "/" & NoticeDB.getImgPath(cust_id, bike.id, notice.category) & "/" & bike.Image1
        Else
            picStr = "../images/objects/no_image_60x45.gif"
        End If

        cardata.Text = cardata.Text & "                   <td rowspan=""2""><div align=""center""><a href='detail_bike.aspx?notice_id=" & notice.id & "'><img src='" & picStr & "' width=""60"" height=""45"" border=""0""></a></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""9"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><strong>" & CatTypeDB.getCatName(notice.category) & "/" & CarTypeDB.getStatusName(bike.Type, 2) & "</strong></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" background=""../images/separator/g_5.gif"" class=""Padding_B_3px_Border_B_white""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""3"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><div align=""center""><strong>&#3647; " & FormatNumber(bike.Price, 2) & "</strong></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" class=""Padding_B_3px""><a href='edit1_moto_datas.aspx?car=" & bike.id & "&from=start&notice_id=" & notice.id & "' class=""A60"">&#3649;&#3585;&#3657;&#3652;&#3586;</a></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"

        If bike.SubModel <> "" Then
            txtBrand = " / " & bike.SubModel

        End If
        If bike.Year <> "" Then
            tmpBrand = Split(bike.Year, "/")
            txtBrand = txtBrand & " / " & tmpBrand(1)
        End If

        cardata.Text = cardata.Text & "                   <td colspan=""13"" class=""Padding_T_3px"" valign=""top"">" & BrandDB.getBrandName(bike.Brand) & " / " & ModelDB.getModelName(bike.Model) & txtBrand & "</td>"
        cardata.Text = cardata.Text & "                   <td></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""4"" colspan=""21""><img src=""../images/dividers/li_bu_so3_g.gif"" width=""693"" height=""4""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "               </table></td>"
        cardata.Text = cardata.Text & "             </tr>"
    End Sub
    Private Sub showTruck(ByRef notice As noticeS, ByRef truck As TruckSt, ByVal cust_id As Integer)
        Dim notice_status As Array
        Dim txtBrand As String
        Dim tmpBrand As Array
        Dim picStr As String
        Dim priceColor As String
        Dim prolong As String, prolong_color As String
        Dim prolong_href As String
        Dim show As String, txtShow As String

        Dim datestart As String, datestop As String
        Dim maxdate As Date

        cardata.Text = cardata.Text & "             <tr>"
        cardata.Text = cardata.Text & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../images/table/g_693.gif"" class=""Font_black_LH_15px"">"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""3"" colspan=""21""><img src=""../images/dividers/li_bu_so1_g.gif"" width=""693"" height=""3""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3""></td>"
        cardata.Text = cardata.Text & "     <td width=""60""><div align=""center"">" & NoticeDB.getNoticeCode(notice.id) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & FormatDateTime(notice.postDate, DateFormat.ShortDate) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""85""><div align=""center"">T/" & PackageDB.getPackageWeek(notice.pacakgeId) & "m</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------Price color -------------------------------------
        If notice.status = 2 Or notice.status = 3 Then
            priceColor = "Font_black"
        Else
            priceColor = "Font_red"
        End If


        cardata.Text = cardata.Text & "     <td width=""75""><div align=""center"" class=" & priceColor & ">&#3647; " & PackageDB.getPackagePrice(notice.pacakgeId) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------date start and date stop --------------------------------------
        If notice.startDate = "1/1/0544 0:00:00" Then
            datestart = ""
            datestop = ""
        Else
            datestart = FormatDateTime(notice.startDate, DateFormat.ShortDate) & "<BR>"
            datestop = FormatDateTime(notice.stopDate, DateFormat.ShortDate)
        End If

        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & datestart & " - "
        cardata.Text = cardata.Text & "       " & datestop & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""64""><div align=""center""><a href='detail_truck.aspx?notice_id=" & notice.id & "'><img src=""../images/icons/small/detail_16x16.gif"" width=""16"" height=""16"" border=""0"" align=""texttop""></a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '--------------notice show----------------
        If notice.show = "เปิด" Then
            txtShow = "ปิด"
            show = "no"
        Else
            txtShow = "เปิด"
            show = "yes"
        End If
        cardata.Text = cardata.Text & "     <td width=""46""><div align=""center""><a href='startpage_example1.aspx?show=" & show & "&noticeid=" & notice.id & "' class=""A_on"">" & txtShow & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '-------------notice status-------------------
        notice_status = Split(NoticeTypeDB.getStatusName(notice.status), ":")

        cardata.Text = cardata.Text & "     <td width=""45""><div align=""center"" class='" & notice_status(1) & "'>" & notice_status(0) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"


        '---------------------prolong condition ----------
        maxdate = ProlongDB.getMaxDate(notice.id)
        If maxdate = "#12:00:00 AM#" Then
            maxdate = notice.postDate
        Else
            maxdate = notice.startDate
        End If
        If (notice_status(0) = "OFFLINE" Or notice.prolong = "P" Or Not Utilities.checkDateMore7(maxdate)) Then
            cardata.Text = cardata.Text & "     <td width=""60""><a href class='A60_inactive'>&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        Else
            cardata.Text = cardata.Text & "     <td width=""60""><a href='prolong1_confirmation.aspx?noticeid=" & notice.id & "&detailid=' class=""A60"">&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        End If

        'cardata.Text = cardata.Text & "     <td width=""60""><input type='button' class=""A60_inactive""><!--&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;--></a></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '---------------notice prolong----------------------
        If notice.prolong = "" Then
            prolong = "-"
            prolong_color = "Font_black"
            prolong_href = ""
        Else
            prolong = notice.prolong
            prolong_color = notice.prolong_color

            If notice.prolong_color = "A_PC_red_underline" Then
                prolong_href = "href='orderdetail_p_confirmed.aspx?cond=unconfirm&noticeid=" & notice.id & "'"
            Else
                prolong_href = "href='orderdetail_p_confirmed.aspx?noticeid=" & notice.id & "'"
            End If

        End If

        cardata.Text = cardata.Text & "     <td width=""51""><div align=""center"" ><a " & prolong_href & " class='" & prolong_color & "'>" & prolong & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""3""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""7"" colspan=""21""><img src=""../images/dividers/li_pri1_g.gif"" width=""693"" height=""7""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"

        '-----------------notice image---------------------
        If truck.Image1 <> "" Then
            picStr = "/userData/" & CustomerDB.getUserName(cust_id) & "/" & NoticeDB.getImgPath(cust_id, truck.id, notice.category) & "/" & truck.Image1
        Else
            picStr = "../images/objects/no_image_60x45.gif"
        End If

        cardata.Text = cardata.Text & "                   <td rowspan=""2""><div align=""center""><a href='detail_truck.aspx?notice_id=" & notice.id & "'><img src='" & picStr & "' width=""60"" height=""45"" border=""0""></a></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""9"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><strong>" & CatTypeDB.getCatName(notice.category) & "/" & CarTypeDB.getStatusName(truck.Type, 3) & "</strong></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" background=""../images/separator/g_5.gif"" class=""Padding_B_3px_Border_B_white""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""3"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><div align=""center""><strong>&#3647; " & FormatNumber(truck.Price, 2) & "</strong></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" class=""Padding_B_3px""><a href='edit1_truck_datas.aspx?car=" & truck.id & "&from=start&notice_id=" & notice.id & "' class=""A60"">&#3649;&#3585;&#3657;&#3652;&#3586;</a></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"

        If truck.SubModel <> "" Then
            txtBrand = " / " & truck.SubModel

        End If
        If truck.Year <> "" Then
            tmpBrand = Split(truck.Year, "/")
            txtBrand = txtBrand & " / " & tmpBrand(1)
        End If

        cardata.Text = cardata.Text & "                   <td colspan=""13"" class=""Padding_T_3px"" valign=""top"">" & BrandDB.getBrandName(truck.Brand) & " / " & truck.Model & txtBrand & "</td>"
        cardata.Text = cardata.Text & "                   <td></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""4"" colspan=""21""><img src=""../images/dividers/li_bu_so3_g.gif"" width=""693"" height=""4""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "               </table></td>"
        cardata.Text = cardata.Text & "             </tr>"
    End Sub
    Private Sub showPart(ByRef notice As noticeS, ByRef part As Part, ByVal cust_id As Integer)
        Dim notice_status As Array
        Dim txtBrand As String
        Dim tmpBrand As Array
        Dim picStr As String
        Dim priceColor As String
        Dim prolong As String, prolong_color As String
        Dim prolong_href As String
        Dim show As String, txtShow As String

        Dim datestart As String, datestop As String
        Dim maxdate As Date

        cardata.Text = cardata.Text & "             <tr>"
        cardata.Text = cardata.Text & "               <td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../images/table/g_693.gif"" class=""Font_black_LH_15px"">"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""3"" colspan=""21""><img src=""../images/dividers/li_bu_so1_g.gif"" width=""693"" height=""3""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3""></td>"
        cardata.Text = cardata.Text & "     <td width=""60""><div align=""center"">" & NoticeDB.getNoticeCode(notice.id) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & FormatDateTime(notice.postDate, DateFormat.ShortDate) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""85""><div align=""center"">P/" & PackageDB.getPackageWeek(notice.pacakgeId) & "m</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------Price color -------------------------------------
        If notice.status = 2 Or notice.status = 3 Then
            priceColor = "Font_black"
        Else
            priceColor = "Font_red"
        End If


        cardata.Text = cardata.Text & "     <td width=""75""><div align=""center"" class=" & priceColor & ">&#3647; " & PackageDB.getPackagePrice(notice.pacakgeId) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '------------------date start and date stop --------------------------------------
        If notice.startDate = "1/1/0544 0:00:00" Then
            datestart = ""
            datestop = ""
        Else
            datestart = FormatDateTime(notice.startDate, DateFormat.ShortDate) & "<BR>"
            datestop = FormatDateTime(notice.stopDate, DateFormat.ShortDate)
        End If

        cardata.Text = cardata.Text & "     <td width=""78""><div align=""center"">" & datestart & " - "
        cardata.Text = cardata.Text & "       " & datestop & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "     <td width=""64""><div align=""center""><a href='detail_part.aspx?notice_id=" & notice.id & "'><img src=""../images/icons/small/detail_16x16.gif"" width=""16"" height=""16"" border=""0"" align=""texttop""></a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '--------------notice show----------------
        If notice.show = "เปิด" Then
            txtShow = "ปิด"
            show = "no"
        Else
            txtShow = "เปิด"
            show = "yes"
        End If
        cardata.Text = cardata.Text & "     <td width=""46""><div align=""center""><a href='startpage_example1.aspx?show=" & show & "&noticeid=" & notice.id & "' class=""A_on"">" & txtShow & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '-------------notice status-------------------
        notice_status = Split(NoticeTypeDB.getStatusName(notice.status), ":")

        cardata.Text = cardata.Text & "     <td width=""45""><div align=""center"" class='" & notice_status(1) & "'>" & notice_status(0) & "</div></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"


        '---------------------prolong condition ----------
        maxdate = ProlongDB.getMaxDate(notice.id)
        If maxdate = "#12:00:00 AM#" Then
            maxdate = notice.postDate
        Else
            maxdate = notice.startDate
        End If
        If (notice_status(0) = "OFFLINE" Or notice.prolong = "P" Or Not Utilities.checkDateMore7(maxdate)) Then
            cardata.Text = cardata.Text & "     <td width=""60""><a href class='A60_inactive'>&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        Else
            cardata.Text = cardata.Text & "     <td width=""60""><a href='prolong1_confirmation.aspx?noticeid=" & notice.id & "&detailid=' class=""A60"">&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;</a></td>"
        End If

        'cardata.Text = cardata.Text & "     <td width=""60""><input type='button' class=""A60_inactive""><!--&#3605;&#3656;&#3629;&#3629;&#3634;&#3618;&#3640;--></a></td>"
        cardata.Text = cardata.Text & "     <td width=""5"" background=""../images/separator/g_5.gif""></td>"

        '---------------notice prolong----------------------
        If notice.prolong = "" Then
            prolong = "-"
            prolong_color = "Font_black"
            prolong_href = ""
        Else
            prolong = notice.prolong
            prolong_color = notice.prolong_color

            If notice.prolong_color = "A_PC_red_underline" Then
                prolong_href = "href='orderdetail_p_confirmed.aspx?cond=unconfirm&noticeid=" & notice.id & "'"
            Else
                prolong_href = "href='orderdetail_p_confirmed.aspx?noticeid=" & notice.id & "'"
            End If

        End If

        cardata.Text = cardata.Text & "     <td width=""51""><div align=""center"" ><a " & prolong_href & " class='" & prolong_color & "'>" & prolong & "</a></div></td>"
        cardata.Text = cardata.Text & "     <td width=""3""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""7"" colspan=""21""><img src=""../images/dividers/li_pri1_g.gif"" width=""693"" height=""7""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"

        '-----------------notice image---------------------
        If part.Image <> "" Then
            picStr = "/userData/" & CustomerDB.getUserName(cust_id) & "/" & NoticeDB.getImgPath(cust_id, part.id, notice.category) & "/" & part.Image
        Else
            picStr = "../images/objects/no_image_60x45.gif"
        End If

        cardata.Text = cardata.Text & "                   <td rowspan=""2""><div align=""center""><a href='detail_part.aspx?notice_id=" & notice.id & "'><img src='" & picStr & "' width=""60"" height=""45"" border=""0""></a></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""9"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><strong>" & CatTypeDB.getCatName(notice.category) & "/" & PartsTypeDB.getPartTypeName(part.Type) & "</strong></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" background=""../images/separator/g_5.gif"" class=""Padding_B_3px_Border_B_white""></td>"
        cardata.Text = cardata.Text & "                   <td colspan=""3"" valign=""bottom"" class=""Padding_B_3px_Border_B_white""><div align=""center""><strong>&#3647; " & FormatNumber(part.Price, 2) & "</strong></div></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2"" background=""../images/separator/g_5.gif""></td>"
        cardata.Text = cardata.Text & "                   <td valign=""bottom"" class=""Padding_B_3px""><a href='edit1_part_datas.aspx?car=" & part.id & "&from=start&notice_id=" & notice.id & "' class=""A60"">&#3649;&#3585;&#3657;&#3652;&#3586;</a></td>"
        cardata.Text = cardata.Text & "                   <td width=""5"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                   <td width=""3"" rowspan=""2""></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"


        If part.Year <> "" Then
            txtBrand = part.Year
        End If

        cardata.Text = cardata.Text & "                   <td colspan=""13"" class=""Padding_T_3px"" valign=""top"">" & part.Brand & " / " & part.Model & "</td>"
        cardata.Text = cardata.Text & "                   <td></td>"
        cardata.Text = cardata.Text & "                 </tr>"
        cardata.Text = cardata.Text & "                 <tr>"
        cardata.Text = cardata.Text & "                   <td height=""4"" colspan=""21""><img src=""../images/dividers/li_bu_so3_g.gif"" width=""693"" height=""4""></td>"
        cardata.Text = cardata.Text & "                   </tr>"
        cardata.Text = cardata.Text & "               </table></td>"
        cardata.Text = cardata.Text & "             </tr>"
    End Sub




End Class
