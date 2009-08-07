Public Class compare_main_part
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents carCompare As System.Web.UI.WebControls.Label

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

        Dim showCars As Array
        Dim myCar As Part

        Dim KeyOrderBy As String
        Dim group_Car_Comp As String
        Dim i As Integer
        Dim j As Integer



        If Request.QueryString("sort_by") = "" Then
            KeyOrderBy = "0"
        Else
            KeyOrderBy = Request.QueryString("sort_by")
        End If

        If Request.QueryString("want_comp") <> "" Then
            Session("want_comp") = Request.QueryString("want_comp")
        End If

        'Session("want_comp") = "1:2"
        showCars = PartsDB.getParts(Session("want_comp").replace(":", ","), Compare_Parts.OrderBY(KeyOrderBy))

        '============Set Session all car id =========
        Dim x As Integer
        Dim allC As New Queue

        For x = 1 To showCars.Length - 1
            allC.Enqueue(showCars(x).id)
        Next
        Session.Add("allCar", allC)
        '============================================

        'For i = 1 To showCars.Length - 1
        '    'Response.Write(showCars(i).id)
        'Next
        carCompare.Text = ""
        carCompare.Text = showCompare(showCars)


    End Sub

    Private Function showCompare(ByRef cars As Array) As String
        Dim sql As String

        Dim n As Integer, i As Integer
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim tableWidth As Integer = 0

        n = cars.Length

        tableWidth = 160 + (261 * (n - 1))
        sql = "<TABLE width='" & tableWidth & "' cellSpacing=""0"" cellPadding=""0"" bgColor=""#f2f5f9"" border=""0"" class=""Font_black_LH_17px"">"
        sql = sql & "       <tr >"
        sql = sql & "<td width=""5"" height=""21"" background=""../../../images/header/h_o_L5.gif""></td>"
        sql = sql & "<td width=""150"" height=""21"" background=""../../../images/header/h_o_1.gif""></td>"


        '--------------------ยี่ห้อ -----------------------------------
        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "<td width=""5""><img src=""../../../images/header/h_o_R5.gif"" width=""5"" height=""21""></td>"
            Else
                sql = sql & "<td width=""5""><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
            End If
            sql = sql & "<td width=""1"" bgcolor=""#ffffff""></td>"
            sql = sql & "<td width=""5""><img src=""../../../images/header/h_b_L5.gif"" width=""5"" height=""21""></td>"
            sql = sql & "<td width=""250"" height=""21"" background=""../../../images/header/h_b_1.gif"" class=""H1_white"">"
            sql = sql & "<div align=""center"">"
            'sql = sql & "<a href='../search3_detail_car.aspx?fmp=compare&carid=" & cars(i).id & "' target='_parent' class=""A_H_bold_white_underline"">" & BrandDB.getBrandName(cars(i).Brand) & " " & ModelDB.getModelName(cars(i).model) & " " & cars(i).submodel & "</a></div></td>"
            sql = sql & "<a href='../search3_detail_part.aspx?curData=" & i & "&fmp=result&carid=" & cars(i).id & "&cur_Page=" & Session("CurPage") & "' onClick=""return targetopener(this)"" class=""A_H_bold_white_underline"">" & cars(i).Brand & "/" & cars(i).Model & "</a></div></td>"

        Next
        'sql = sql & "         <td width=""5""><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "<td width=""5"" height=""21"" background=""../../../images/header/h_b_R5.gif""></td>"
        sql = sql & "</tr>"
        '---------------------จบ row  1 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td  height=""5"" bgcolor=""#ebf2ff""></td>"

        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/b_g_11.gif""></td>"
            Else
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/g_11.gif""></td>"
            End If
            sql = sql & "         <td  height=""5""></td>"
        Next

        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        ''---------------------จบ row  2 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  bgcolor=""#ebf2ff""></td>"

        For i = 1 To n - 1
            If PartsDB.getMainPic(cars(i).id) = "no_image_60x45.gif" Then
                Pics = "../../images/objects/no_image_250x188.gif"
            Else
                Pics = PartsDB.getMainPic(cars(i).id)
            End If
            'If i = 2 Then
            '    Response.Write(Pics)
            '    Response.End()
            'End If
            a = New Bitmap(Server.MapPath(Pics))

            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 248)
            sql = sql & "         <td ><div align=""center"" ><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></div></td>"

        Next

        sql = sql & "       </tr>"
        '---------------------จบ row  3 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  height=""5"" bgcolor=""#ebf2ff""></td>"

        For i = 1 To n - 1
            sql = sql & "         <td  height=""5""></td>"
        Next

        sql = sql & "   </tr>"
        '---------------------จบ row  4 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td bgcolor=""#ebf2ff""></td>"

        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td colspan=""3"" background=""../../../images/separator/b_g_11.gif""></td>"
            Else
                sql = sql & "         <td colspan=""3"" background=""../../../images/separator/g_11.gif""></td>"
            End If

            sql = sql & "<td>&nbsp;</td>"
        Next

        sql = sql & "         <td background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  5 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td height=""5"" bgcolor=""#ebf2ff""></td>"

        For i = 1 To n - 1
            sql = sql & "         <td colspan=""3"" background=""../../../images/separator/b_g_11.gif""></td>"
            sql = sql & "         <td height=""5""></td>"
        Next

        sql = sql & "         <td background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  6 ----------------------------

        sql = sql & "       <tr>"
        sql = sql & "         <td ><img src=""../../../images/header/h_o_L5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "         <td  height=""21"" background=""../../../images/header/h_o_1.gif""></td>"


        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td ><img src=""../../../images/header/h_o_R5.gif"" width=""5"" height=""21""></td>"
            Else
                sql = sql & "         <td ><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
            End If
            sql = sql & "         <td  bgcolor=""#FFFFFF""></td>"
            sql = sql & "         <td ><img src=""../../../images/header/h_b_L5.gif"" width=""5"" height=""21""></td>"
            sql = sql & "         <td  height=""21"" background=""../../../images/header/h_b_1.gif"" class=""H1_white""><div align=""center"">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;</div></td>"

        Next
        sql = sql & "         <td ><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  7 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td  height=""3"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/b_g_11.gif""></td>"
            Else
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/g_11.gif""></td>"
            End If
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  8 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  bgcolor=""#ebf2ff""><table width=""100%"" border=""0"" cellpadding=""0"" cellspacing=""0"" bgcolor=""#ebf2ff"">"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">ประเภทสินค้า</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">ราคา</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">สภาพสินค้า</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">ปี</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">เลขไมล์</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">สี</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">รหัสสี</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">ชำรุด(ยังไม่ซ่อม)</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">สินค้ามีประกัน</div></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><img src=""../../../images/dividers/b_3.gif"" width=""100%"" height=""3""></td>"
        sql = sql & "           </tr>"
        sql = sql & "           <tr>"
        sql = sql & "             <td><div align=""right"">รหัสสินค้า</div></td>"
        sql = sql & "           </tr>"

        sql = sql & "         </table></td>"

        Dim price As String, yearcar As String, miles As String, power As String
        Dim colors As String, colorCode As String, numpump As String, cc As String
        Dim numdrive As String, Gears As String, Drive As String, fueltank As String
        Dim accident As String, lastcheck As String, insurrunce As String, carid As String

        For i = 1 To n - 1
            sql = sql & "         <td ><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
            sql = sql & "           <tr>"
            sql = sql & "             <td height=""17""><div align='center'>" & PartsTypeDB.getPartTypeName(cars(i).Type) & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Price = 0 Then
                price = "-  บาท"
            Else
                price = FormatNumber(cars(i).Price) & "  บาท"
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & price & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td height=""17""><div align='center'>" & CarStatusDB.getStatusName(cars(i).Status) & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Year = "" Then
                yearcar = "-"
            Else
                yearcar = cars(i).Year
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & yearcar & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Miles = 0 Then
                miles = "-  km/mi"
            Else
                miles = cars(i).Miles & "  " & cars(i).MilesType
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & miles & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).color = "" Then
                colors = "-"
            Else
                colors = cars(i).color
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & colors & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Colorcode = "" Then
                colorCode = "-"
            Else
                colorCode = cars(i).Colorcode
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & colorCode & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Accident = 999 Then
                accident = "-"
            Else
                If cars(i).Accident = 1 Then
                    accident = "ชำรุด"
                Else
                    accident = "สินค้าไม่ชำรุด"
                End If
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & accident & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Insurrance = 999 Then
                insurrunce = "-"
            Else
                If cars(i).Insurrance = 1 Then
                    insurrunce = "สินค้ามีประกัน"
                Else
                    insurrunce = "สินค้าไม่มีประกัน"
                End If
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & insurrunce & "</div></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            sql = sql & "             <td><img src=""../../../images/dividers/g_3.gif"" width=""100%"" height=""3""></td>"
            sql = sql & "           </tr>"
            sql = sql & "           <tr>"
            If cars(i).Code = "" Then
                carid = "-"
            Else
                carid = cars(i).Code
            End If
            sql = sql & "             <td height=""17""><div align='center'>" & carid & "</div></td>"
            sql = sql & "           </tr>"


            sql = sql & "         </table></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  9 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  height=""3"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  10 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td ><img src=""../../../images/header/h_o_L5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "         <td  height=""21"" background=""../../../images/header/h_o_1.gif""></td>"

        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td ><img src=""../../../images/header/h_o_R5.gif"" width=""5"" height=""21""></td>"
            Else
                sql = sql & "         <td ><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
            End If
            sql = sql & "         <td  bgcolor=""#ffffff""></td>"
            sql = sql & "         <td ><img src=""../../../images/header/h_b_L5.gif"" width=""5"" height=""21""></td>"
            sql = sql & "         <td  height=""21"" background=""../../../images/header/h_b_1.gif"" class=""H1_white""><div align=""center"">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</div></td>"

        Next
        sql = sql & "         <td ><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  11 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td  height=""3"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/b_g_11.gif""></td>"
            Else
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/g_11.gif""></td>"
            End If
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  12 ----------------------------
        Dim info As String
        sql = sql & "       <tr>"
        sql = sql & "         <td  bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            If cars(i).Information = "" Then
                info = "-"
            Else
                info = cars(i).Information
            End If
            sql = sql & "         <td  height=""51"" valign=""top""><div align='center'>" & info & "</div></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  13 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  height=""3"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  14 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td ><img src=""../../../images/header/h_o_L5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "         <td  height=""21"" background=""../../../images/header/h_o_1.gif""></td>"


        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td ><img src=""../../../images/header/h_o_R5.gif"" width=""5"" height=""21""></td>"
            Else
                sql = sql & "         <td ><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
            End If
            sql = sql & "         <td  bgcolor=""#ffffff""></td>"
            sql = sql & "         <td ><img src=""../../../images/header/h_b_L5.gif"" width=""5"" height=""21""></td>"
            sql = sql & "         <td  height=""21"" background=""../../../images/header/h_b_1.gif"" class=""H1_white""><div align=""center"">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;</div></td>"

        Next
        sql = sql & "         <td ><img src=""../../../images/header/h_b_R5.gif"" width=""5"" height=""21""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  15 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td  height=""3"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/b_g_11.gif""></td>"
            Else
                sql = sql & "         <td colspan=""3"" rowspan=""3"" background=""../../../images/separator/g_11.gif""></td>"
            End If
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  16 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  height=""51"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            sql = sql & "         <td  height=""51"" valign=""top""><div align='center'>" & CustomerDB.getCustomerContact(cars(i).id, 4) & "</div></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  17 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  height=""3"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  18 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td ><img src=""../../../images/lines/l_o_1.gif"" width=""5"" height=""5""></td>"
        sql = sql & "         <td  height=""5"" background=""../../../images/lines/l_o_1.gif""></td>"


        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td ><img src=""../../../images/lines/l_o_1.gif"" width=""5"" height=""5""></td>"
            Else
                sql = sql & "         <td ><img src=""../../../images/lines/l_b_1.gif"" width=""5"" height=""5""></td>"
            End If
            sql = sql & "         <td  bgcolor=""#ffffff""></td>"
            sql = sql & "         <td ><img src=""../../../images/lines/l_b_1.gif"" width=""5"" height=""5""></td>"
            sql = sql & "         <td  height=""5"" background=""../../../images/lines/l_b_1.gif"" class=""H1_white""></td>"

        Next
        sql = sql & "         <td ><img src=""../../../images/lines/l_b_1.gif"" width=""5"" height=""5""></td>"
        sql = sql & "       </tr>"

        '---------------------จบ row  18 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td height=""5"" rowspan=""3"" background=""../../../images/separator/b_L5.gif""></td>"
        sql = sql & "         <td  height=""5"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td height=""5"" colspan=""3"" rowspan=""3"" background=""../../../images/separator/b_g_11.gif"" bgcolor=""#ebf2ff""></td>"
            Else
                sql = sql & "         <td height=""5"" colspan=""3"" rowspan=""3"" background=""../../../images/separator/g_11.gif""></td>"
            End If
            sql = sql & "         <td  height=""3""></td>"
        Next
        sql = sql & "         <td  rowspan=""3"" background=""../../../images/separator/g_R5.gif""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  19 ----------------------------

        '---------------------จบ row  20 ----------------------------
        sql = sql & "         <tr>"
        sql = sql & "         <td  bgcolor=""#ebf2ff""><div align=""right""><strong>&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</strong></div></td>"
        For i = 1 To n - 1
            sql = sql & "         <td ><table width=""100%""  border=""0"" cellspacing=""0"" cellpadding=""0"" >"
            sql = sql & "           <tr>"
            sql = sql & "             <td><SELECT name='commands" & cars(i).id & "' id='commands" & cars(i).id & "' class=Font_black style=""WIDTH: 150px"">"
            sql = sql & "               <option value=""0"" selected>&#3650;&#3611;&#3619;&#3604;&#3648;&#3621;&#3639;&#3629;&#3585;&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</option>"
            sql = sql & "               <option value=""1"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</option>"
            sql = sql & "               <option value=""2"">&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</option>"
            sql = sql & "               <option value=""3"">&#3621;&#3610;</option>"
            sql = sql & "             </SELECT></td>"
            sql = sql & "             <td width=""4""></td>"
            sql = sql & "             <td>"
            sql = sql & "             <input id='addAllCook' onmouseover=""document.all.addAllCook.className='buttonover'"" style=""CURSOR: hand"" "
            sql = sql & "               onmouseout=""document.all.addAllCook.className='button'"" class='button' type='button' value='GO!' "
            sql = sql & "              onClick=""removeCompare(document.form1.commands" & cars(i).id & ".value," & cars(i).id & "," & i & ",'result'," & Session("CurPage") & ");"">"
            sql = sql & "             </td>"
            sql = sql & "           </tr>"
            sql = sql & "         </table></td>"
        Next
        sql = sql & "       </tr>"
        '---------------------จบ row  21 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td  height=""5"" bgcolor=""#ebf2ff""></td>"
        For i = 1 To n - 1
            sql = sql & "         <td  height=""5""></td>"
        Next
        sql = sql & "   </tr>"
        '---------------------จบ row  22 ----------------------------
        sql = sql & "       <tr>"
        sql = sql & "         <td ><img src=""../../../images/lines/l_o_1.gif"" width=""5"" height=""5""></td>"
        sql = sql & "         <td  height=""5"" background=""../../../images/lines/l_o_1.gif""></td>"


        For i = 1 To n - 1
            If i = 1 Then
                sql = sql & "         <td ><img src=""../../../images/lines/l_o_1.gif"" width=""5"" height=""5""></td>"
            Else
                sql = sql & "         <td ><img src=""../../../images/lines/l_b_1.gif"" width=""5"" height=""5""></td>"
            End If
            sql = sql & "         <td  bgcolor=""#ffffff""></td>"
            sql = sql & "         <td ><img src=""../../../images/lines/l_b_1.gif"" width=""5"" height=""5""></td>"
            sql = sql & "         <td  height=""5"" background=""../../../images/lines/l_b_1.gif"" class=""H1_white""></td>"

        Next
        sql = sql & "         <td ><img src=""../../../images/lines/l_b_1.gif"" width=""5"" height=""5""></td>"
        sql = sql & "       </tr>"
        '---------------------จบ row  23 ----------------------------

        sql = sql & " </table>"

        Return sql
    End Function
End Class
