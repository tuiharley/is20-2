Imports System.Data.OleDb

Public Class dealer_business_web_inventory
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents email As System.Web.UI.WebControls.Label
    Protected WithEvents www As System.Web.UI.WebControls.HyperLink
    Protected WithEvents compName As System.Web.UI.WebControls.Label
    Protected WithEvents introMainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents moreBuz As System.Web.UI.WebControls.Label
    Protected WithEvents contact As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents Up_Pages As System.Web.UI.WebControls.Label
    Protected WithEvents carResult As System.Web.UI.WebControls.Label
    Protected WithEvents Down_Pages As System.Web.UI.WebControls.Label
    Protected WithEvents Order_By As System.Web.UI.WebControls.DropDownList
    Protected WithEvents change_orderby As System.Web.UI.WebControls.Button
    Protected WithEvents want_comp As System.Web.UI.HtmlControls.HtmlInputHidden
    Protected WithEvents stpage As System.Web.UI.WebControls.Label
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public curIndex As Integer
    Public pageSize As Integer
    Public total_page As Integer
    Public cur_Page As Integer
    Public CurrentPage As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        showHead(Session("dealer_id"))

        pageSize = 20
        CurrentPage = Request.QueryString("cur_Page")

        If CurrentPage = "" Or CurrentPage = "0" Then
            cur_Page = 1
        Else
            cur_Page = CInt(CurrentPage)
        End If
        '=================set Session Current Page ===========
        Session.Add("CurPage", cur_Page)
        '=====================================================

        'search_id = 3
        curIndex = 0
        If Not IsPostBack Then
            Order_By.SelectedValue = Session("order_by")
        End If

        setLink(Session("dealer_id"))
        makeList(Session("dealer_id"))
        AjaxPro.Utility.RegisterTypeForAjax(GetType(dealer_business_web_inventory))
    End Sub

    Private Sub setLink(ByVal cust_id As Integer)
        stpage.Text = "<a href='dealer_business_web_start.aspx?cust_id=" & cust_id & "' class='A_BU_bold_white'>"
    End Sub
    Private Sub showHead(ByVal dealerid As Integer)
        Dim mySubQ As New Queue
        mySubQ = InfoQuestionDB.getInfoQuestions(dealerid)
        Dim myMainB As infoQuestion = InfoQuestionDB.getMainQuestion(dealerid)
        Dim myCust As A_Customer = CustomerDB.getA_customer(dealerid)

        If myCust.email <> "" Then
            email.Text = myCust.email & ", "
        End If
        If myCust.homepage <> "" Then
            www.Text = myCust.homepage
            www.NavigateUrl = myCust.homepage
            www.Target = "_blank"
        End If
        compName.Text = myCust.name
        introMainBuz.Text = showIntroMain(myMainB)
        moreBuz.Text = showIntroSub(mySubQ)
        contact.Text = myCust.address
        contact.Text = contact.Text & ", " & DistrictDB.getDistrictName(myCust.district)
        contact.Text = contact.Text & ", " & ProvinceDB.getProvinceName(myCust.province)
        contact.Text = contact.Text & " โทรศัพท์1:" & myCust.phone1
        If myCust.phone2 <> "" Then
            contact.Text = contact.Text & ", โทรศัพท์2:" & myCust.phone2
        End If
        If myCust.fax <> "" Then
            contact.Text = contact.Text & ", Fax:" & myCust.fax
        End If
        If myCust.dateStart = 0 And myCust.dateStop = 0 Then
            contact.Text = contact.Text & " เวลาทำการ: ไม่ระบุ"
        Else
            contact.Text = contact.Text & " เวลาทำการ: " & CustomerDB.getDateOpen(myCust.dateStart) & " - " & CustomerDB.getDateOpen(myCust.dateStop)
        End If
        If myCust.timeStart <> 0 And myCust.timeStop <> 0 Then
            contact.Text = contact.Text & " : " & CustomerDB.getTimeOpen(myCust.timeStart) & " - " & CustomerDB.getTimeOpen(myCust.timeStop) & " น."
        End If

        image1.Text = showLogo(myCust)

        de_map.NavigateUrl = "dealer_business_web_map.aspx?dealer_id=" & dealerid
    End Sub
    Private Function showLogo(ByVal myCust As A_Customer) As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim img1 As String

        If myCust.logo_txt <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myCust.username & "/logo/" & myCust.logo_txt))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 160)
            IUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt
        Else
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_160x120.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 160)
            IUrl = "../../../images/objects/no_image_160x120.gif"
        End If
        img1 = "<img src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'>"
        Return img1
    End Function
    Private Function showIntroMain(ByVal mainB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(mainB.type)

        buzType = BusinessTypeDB.getBuZName(x)
        result = buzType.typeName
        If mainB.q1 = 1 Then
            result = result & " รถยนต์"
            flag = True
        End If
        If mainB.q2 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " รถจักรยานยนต์"
            flag = True
        End If
        If mainB.q3 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " รถบรรทุก"
        End If

        flag = False

        Select Case x
            Case 1
                Dim myBuz As infoSaleCar = InfoSaleCarDB.getInfoSaleCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 2
                Dim myBuz As infoServiceCar = InfoServiceCarDB.getInfoServiceCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 3
                Dim myBuz As infoSalePart = InfoSalePartDB.getInfoSalePart(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
        End Select


        Return result
    End Function
    Private Function showIntroSub(ByVal subQ As Queue) As String
        Dim result As String = ""
        Dim presult As String
        Dim myBuz As infoQuestion

        For Each myBuz In subQ
            presult = showSub(myBuz)
            If presult <> "-" Then
                result = result & presult & "; "
            End If
        Next

        If Len(result) > 0 Then
            result = Left(result, Len(result) - 2)
        Else
            result = "-"
        End If

        Return result
    End Function
    Private Function showSub(ByVal subB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(subB.type)

        If subB.q1 <> 0 Or subB.q2 <> 0 Or subB.q3 <> 0 Then
            buzType = BusinessTypeDB.getBuZName(x)
            result = buzType.typeName
            If subB.q1 = 1 Then
                result = result & " รถยนต์"
                flag = True
            End If
            If subB.q2 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " รถจักรยานยนต์"
                flag = True
            End If
            If subB.q3 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " รถบรรทุก"
            End If


        Else
            result = "-"
        End If

        Return result
    End Function


    Private Sub makeList(ByVal cust_id As Integer)

        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim dview As DataView
        Dim end_sql As String, sql As String
        Dim orderby As Array

        Dim all_records As Integer, endRecord As Integer

        end_sql = checkOrderBy(Order_By.SelectedValue)
        orderby = Split(end_sql, ":")

        sql = "SELECT     Car.*"
        sql = sql & " FROM  Car INNER JOIN"
        sql = sql & " NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id"
        sql = sql & " WHERE  (Notice.Notice_Category = 1) AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), "
        sql = sql & " Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR"
        sql = sql & " NoticeDetail.Detail_delete <> 1) AND (NoticeDetail.Detail_show = 1)"
        sql = sql & " AND (Customer.Customer_Id = " & cust_id & ")"

        Session("searchSQL") = sql
        Session("searchOrderBY") = orderby

        Dim KeyOrderBy As String
        KeyOrderBy = Session("searchOrderBY").GetValue(1)


        da = SearchDB.getSearch(Session("searchSQL") & " " & Session("searchOrderBY").GetValue(0))
        '===========================Get Total page ==========================================
        da.Fill(ds, "All_Search_Car")
        all_records = ds.Tables("All_Search_Car").Rows.Count

        '==============Case found Data ==============================
        If all_records <> 0 Then
            total_page = Math.Ceiling(all_records / pageSize)

            '============Set Session total_page =========
            Session.Add("total_page", total_page)
            Session.Add("totalCar", all_records)
            '============================================

            '============Set Session all car id =========
            Session.Remove("allCar")
            Session.Remove("allCar_Parking")
            Dim x As Integer
            Dim allC As New Queue
            For x = 0 To all_records - 1
                allC.Enqueue(ds.Tables("All_Search_Car").Rows(x).Item("Car_ID"))
            Next
            Session.Add("allCar", allC)
            Session.Add("allCar_Parking", allC)
            '============================================


            Up_Pages.Text = showPages(cur_Page)
            Down_Pages.Text = Up_Pages.Text

            '==================== Get paging rows ============================================
            curIndex = ((cur_Page - 1) * pageSize)
            ds = Paging.GetPagedData(da, curIndex, pageSize, "Searched_Car")
            ' curIndex = curIndex + pageSize

            dview = ds.Tables("Searched_Car").DefaultView
            dview.Sort = KeyOrderBy
            'rowsid.Value = dview.Count
            '====================== Show paging rows ===========================================
            Dim n As Integer
            n = 1
            Dim drowview As DataRowView


            For Each drowview In dview
                '  Response.Write(drowview.Item("Car_Id") & " ")
                '  Response.Write(CarDB.getMainPic(drowview.Item("Car_Id")))
                carResult.Text = carResult.Text & showList(drowview.Item("Car_Id"), n, pageSize, cur_Page)
                n = n + 1
            Next



            ds.Dispose()
            da.Dispose()
        Else    '============Else Not Found Data===============================
            Session("notFound") = True
            carResult.Text = "<tr><td><center>ไม่พบข้อมูล</center></td></tr>"
        End If



    End Sub

    Private Function showList(ByVal carid As Integer, ByVal rowid As Integer, ByVal pageSize As Integer, ByVal curPage As Integer) As String

        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer

        Dim detailPage As Integer = ((curPage - 1) * pageSize) + rowid

        n = " 										<tr>"
        n = n & " 											<td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../../images/table/result_li.gif"""
        n = n & " 													class=""Font_black_LH_15px"">"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" height=""21""><div align=""center"">"
        n = n & " 																<input type=""checkbox"" name='carCheck" & rowid & "' id='carCheck" & rowid & "' value='" & carid & "' onClick='getCheckBox(this.checked," & carid & "," & Session("CurPage") & ")'>"
        n = n & " 															</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 														<td width=""80"" height=""21""></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        n = n & " 														<td width=""455"" height=""21""><a href='dealer_business_web_inventory_detail.aspx?curData=" & detailPage & "&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & CarDB.getBrand(carid) & "</a></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        n = n & " 														<td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(CarDB.getPrice(carid), 0, , , TriState.True) & "</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""5"" colspan=""8""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" rowspan=""3""></td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"

        If CarDB.getMainPic2(carid) = "no_image_60x45.gif" Then
            Pics = "../../../images/objects/no_image_80x60.gif"
        Else
            Pics = CarDB.getMainPic2(carid)
        End If

        a = New Bitmap(Server.MapPath(Pics))
        resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)

        'n = n & " 														<td width=""80"" rowspan=""3""><div align=""center""><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' onclick='picPopUp(" & carid & ");'></div>"
        n = n & " 														<td rowspan=""3"" width=""80"" height=""80""><div align=""center""><a href='dealer_business_web_inventory_detail.aspx?curData=" & detailPage & "&carid=" & carid & "&cur_Page=" & Session("CurPage") & "'><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        'n = n & " 														<td width=""455"" valign=""top"">" & CarDB.getCarInfo(carid) & "</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""100"" rowspan=""3""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        n = n & " 																<tr>"
        n = n & " 																	<td><a href='dealer_business_web_inventory_detail.aspx?curData=" & detailPage & "&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        n = n & " 																</tr>"
        n = n & " 																<tr>"
        n = n & " 																	<td height=""2""></td>"
        n = n & " 																</tr>"
        n = n & " 																<tr>"
        n = n & " 																	<td ><input id='addCook" & rowid & "' onmouseover=""document.all.addCook" & rowid & ".className='buttonover'"" style=""CURSOR: hand"" onmouseout=""document.all.addCook" & rowid & ".className='button'"" class='button' type='button' value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;' onClick='saveAdv(" & carid & ");'></td>"
        n = n & " 																</tr>"
        n = n & " 															</table>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr><td width=""455"" valign=""bottom"" >"
        If CarDB.getNumPic(carid) > 1 Then
            '
            n = n & "<div onClick='picPopUp(" & carid & ");' style=""CURSOR: hand""><IMG height='9' src='../../../images/objects/moreimages.gif' width='12' border=""0""></div>"
        Else
            n = n & "&nbsp;"
        End If
        If DateDiff(DateInterval.Day, CarDB.getPostDate(carid), Now) + 1 <= 7 Then
            n = n & "<IMG height='12' src='../../../images/objects/star.gif' width='13'>"
        Else
            n = n & "&nbsp;"
        End If

        n = n & "                                                       </td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""5"" colspan=""8""><img src=""../../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        n = n & " 													</tr>"
        n = n & " 												</table>"
        n = n & " 											</td>"
        n = n & " 										</tr>"


        Return n
    End Function
    Private Function showPages(ByVal curPage As Integer) As String
        Dim a As String
        Dim prevPage As String
        Dim nextPage As String
        Dim current As String

        Dim numNext As Integer
        Dim numPrev As Integer

        Dim i As Integer
        Dim lineSize As Integer
        Dim change_point As Integer
        lineSize = 9
        a = "<table align='right' cellSpacing='0' cellPadding='0' border='0' class='Page_Number'>"
        a = a & "<tr><td noWrap width='4%'><a href='dealer_business_web_inventory.aspx?cur_Page=1' class='Font_black'>|<<</a></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../../images/objects/no.gif' width='13'></td>"
        If cur_Page = 1 Then
            numPrev = 1
        Else
            numPrev = cur_Page - 1
        End If
        'a = a & "<td  noWrap width='3%'><a href='result_list_car.aspx?cur_Page=" & numPrev & "&searchid=" & search_id & "'><<</a></td>"
        a = a & "<td  noWrap width='3%'><a href='dealer_business_web_inventory.aspx?cur_Page=" & numPrev & "' class='Font_black'><<</a></td>"
        'a = a & "<td  noWrap width='3%'><font class='Font_black' onclick=""changePage(" & numPrev & "," & numPrev & ",document.all['want_comp'].value);""><<</font></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../../images/objects/no.gif' width='13'></td>"
        a = a & "<td  noWrap width='50%'><span class='Font_black'>Page</span>&nbsp;&nbsp;"

        If total_page <= lineSize Then
            If curPage = 1 Then
                prevPage = ""
            Else
                For i = 1 To curPage - 1
                    prevPage = prevPage & i & " "
                Next
            End If
            If curPage = total_page Then
                nextPage = ""
            Else
                For i = curPage + 1 To total_page
                    nextPage = nextPage & i & " "
                Next
            End If
        Else
            change_point = Math.Ceiling(lineSize / 2)
            If curPage <= change_point Then
                For i = 1 To curPage - 1
                    prevPage = prevPage & "<a href='dealer_business_web_inventory.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                For i = curPage + 1 To lineSize
                    nextPage = nextPage & "<a href='dealer_business_web_inventory.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                nextPage = nextPage & " .."

            ElseIf curPage >= (total_page - (change_point - 1)) Then

                For i = curPage - Math.Floor(lineSize / 2) To curPage - 1
                    prevPage = prevPage & "<a href='dealer_business_web_inventory.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                prevPage = ".. " & prevPage


                For i = curPage + 1 To total_page
                    nextPage = nextPage & "<a href='dealer_business_web_inventory.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
            Else
                For i = curPage - Math.Floor(lineSize / 2) To curPage - 1
                    prevPage = prevPage & "<a href='dealer_business_web_inventory.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                prevPage = ".. " & prevPage
                For i = curPage + 1 To curPage + Math.Ceiling(lineSize / 2) - 1
                    nextPage = nextPage & "<a href='dealer_business_web_inventory.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                nextPage = nextPage & " .."
            End If

        End If
        a = a & prevPage
        a = a & "<span class='Font_orange'> " & curPage & " </span>"
        a = a & nextPage

        a = a & "<span class='Font_black'> of " & total_page & "</span></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../../images/objects/no.gif' width='13'></td>"
        If cur_Page = total_page Then
            numNext = total_page
        Else
            numNext = cur_Page + 1
        End If
        'a = a & "<td  noWrap width='3%'><a href='result_list_car.aspx?cur_Page=" & numNext & "&searchid = " & search_id & "'>>></a></td>"
        a = a & "<td  noWrap width='3%'><a href='dealer_business_web_inventory.aspx?cur_Page=" & numNext & "' class='Font_black' >>></a></td>"
        'a = a & "<td  noWrap width='3%'><font class='Font_black' onclick=""changePage(" & numNext & "," & numNext & ",document.all['want_comp'].value);"">>></font></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../../images/objects/no.gif' width='13'></td>"
        a = a & "<td  noWrap width='32%'><a href='dealer_business_web_inventory.aspx?cur_Page=" & total_page & "' class='Font_black'>>>|</a></td>"
        'a = a & "<td  noWrap width='32%'><u><font onclick='secondFormSubmit(" & total_page & "," & search_id & ");'>>>|</font></u></td>"
        a = a & "</tr></table>"
        Return a
    End Function
    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Car_Price"
                KeyOrder_By = "Car_Price"
            Case 1
                Order_By_Condition = " ORDER BY Car_Year_Ord"
                KeyOrder_By = "Car_Year_Ord"
            Case 2
                Order_By_Condition = " ORDER BY Car_CC"
                KeyOrder_By = "Car_CC"
            Case 3
                Order_By_Condition = " ORDER BY Car_Power"
                KeyOrder_By = "Car_Power"
            Case 4
                Order_By_Condition = " ORDER BY Car_Miles"
                KeyOrder_By = "Car_Miles"
            Case 5
                Order_By_Condition = " ORDER BY Car_Post DESC"
                KeyOrder_By = "Car_Post DESC"

        End Select

        Return Order_By_Condition & ":" & KeyOrder_By
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function goComparePage(ByVal wComp) As String
        Session.Remove("want_comp")
        Session.Add("want_comp", wComp)
        Session("want_comp") = Right(Session("want_comp"), Session("want_comp").length - 1)

        Return "compare/frameset_compare_carHP.aspx?cur_Page=" & CurrentPage
        'Return wComp
    End Function

    Private Sub change_orderby_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles change_orderby.Click
        Dim end_sql As String
        Dim orderby As Array


        end_sql = checkOrderBy(Order_By.SelectedValue)
        orderby = Split(end_sql, ":")

        Session("order_by") = Order_By.SelectedValue
        Session("searchOrderBY") = orderby

        Response.Redirect("dealer_business_web_inventory.aspx?cur_Page=" & cur_Page)
    End Sub
End Class
