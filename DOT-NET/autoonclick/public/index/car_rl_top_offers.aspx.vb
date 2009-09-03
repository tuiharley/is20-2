Imports System.Data.OleDb

Public Class car_rl_top_offers
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents searchCond As System.Web.UI.WebControls.Label
    Protected WithEvents carResult As System.Web.UI.WebControls.Label
    Protected WithEvents Order_By As System.Web.UI.WebControls.DropDownList
    Protected WithEvents doSort As System.Web.UI.WebControls.LinkButton
    Protected WithEvents want_comp As System.Web.UI.HtmlControls.HtmlInputHidden

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


        showSearchCond(Session("SearchCond"))
        If Not IsPostBack Then
            Order_By.SelectedValue = checkOrderBySelected(Session("searchOrderBY"))
        End If

        makeList()

        AjaxPro.Utility.RegisterTypeForAjax(GetType(car_rl_top_offers))
    End Sub


    Private Sub showSearchCond(ByVal txt As String)
        searchCond.Text = txt
    End Sub

    Private Sub makeList()

        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim dview As DataView

        Dim all_records As Integer, endRecord As Integer




        Dim KeyOrderBy As String
        KeyOrderBy = Session("searchOrderBY").GetValue(1)
        'KeyOrderBy = "Car_Post DESC"
        'Dim testtxt As String = "SELECT Car.* FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 1) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) AND (NoticeDetail.Detail_show = 1) "
        'Dim testtxt2 As String = " ORDER BY Car_Post DESC"

        da = SearchDB.getSearch(Session("searchSQL") & " " & Session("searchOrderBY").GetValue(0))
        'da = SearchDB.getSearch(testtxt & " " & testtxt2)
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
            Dim x As Integer
            Dim allC As New Queue
            For x = 0 To all_records - 1
                allC.Enqueue(ds.Tables("All_Search_Car").Rows(x).Item("Car_ID"))
            Next
            Session.Add("allCar", allC)
            '============================================


            'Up_Pages.Text = showPages(cur_Page)
            'Down_Pages.Text = Up_Pages.Text

            '==================== Get paging rows ============================================
            curIndex = ((cur_Page - 1) * pageSize)
            ds = Paging.GetPagedData(da, curIndex, pageSize, "Searched_Car")
            ' curIndex = curIndex + pageSize

            dview = ds.Tables("Searched_Car").DefaultView
            dview.Sort = KeyOrderBy
            '====================== Show paging rows ===========================================
            Dim n As Integer
            n = 1
            Dim drowview As DataRowView

            For Each drowview In dview
                carResult.Text &= showList(drowview.Item("Car_Id"), n, pageSize, cur_Page)
                n = n + 1
            Next



            ds.Dispose()
            da.Dispose()
        Else    '============Else Not Found Data===============================
            'carResult.Text = "<tr><td><center>ไม่พบข้อมูล</center></td></tr>"
            Session("notFound") = True
            Response.Redirect("search1_car2.aspx")
        End If

        'totalCar.Text = all_records

        If cur_Page * pageSize >= all_records Then
            endRecord = all_records
        Else
            endRecord = cur_Page * pageSize
        End If
        'carRange.Text = ((cur_Page - 1) * pageSize) + 1 & " - " & endRecord

    End Sub
    Private Function showList(ByVal carid As Integer, ByVal rowid As Integer, ByVal pageSize As Integer, ByVal curPage As Integer) As String

        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        Dim detailPage As Integer = ((curPage - 1) * pageSize) + rowid
        Dim myCar As Car = CarDB.getCar(carid)

        If rowid Mod 2 <> 0 Then
            n = "<ul class='vehicle_1'> "
        Else
            n = "<ul class='vehicle_2'> "
        End If

        n &= " <li>"
        n &= " <div>"
        n &= " <input  name='carCheck' type='checkbox' value='" & carid & "' onClick='getCheckBox(this.checked," & carid & "," & Session("CurPage") & ")'>"
        n &= " <h1><a href='search3_detail_car.aspx?curData=" & detailPage & "&fmp=result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & CarDB.getBrand(carid) & "</a></h1>"

        If myCar.Year <> "" Then
            n &= " <h6>" & myCar.Year & "</h6>"
        Else
            n &= " <h6 class='orange'>ใหม่ !</h6>"
        End If

        n &= " <h2>฿ " & FormatNumber(myCar.Price, 0, , , TriState.True) & "</h2>"
        n &= " <span>"
        Dim myTmp As Array
        Dim myTxt As String

        If CarDB.getMainPic2(carid) = "no_image_60x45.gif" Then
            Pics = "../scripts+pics/images/pic_80x60.gif"
            a = New Bitmap(Server.MapPath(Pics))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            myTxt = "<img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0"">"
        Else
            Pics = CarDB.getMainPic(carid)
            myTmp = Pics.Split("\")
            myTxt = "<img src='" & picUrl & "/public/test/WebForm10.aspx?custid=" & myTmp.GetValue(4) & "&w=80&h=v'  border=""0"">"
        End If

        n &= " <h3><a href='#'>" & myTxt & "</a></h3>"
        n &= " <h4>" & CarDB.getCarInfo(carid) & "</h4>"
        n &= " </span>"
        n &= " <h5><a class='b100_2' href='#'>รายละเอียด</a> <a class='b100_2' href='javascript:saveAdv(" & carid & ");'>บันทึกประกาศ</a></h5>"
        n &= " </div>"

        If CarDB.getNumPic(carid) > 1 Then
            n &= " <IMG onClick='picPopUp(" & carid & ");' style='CURSOR: hand' class='icon2' src='../scripts+pics/images/moreimages.gif' border='0'>"
        Else
            n &= ""
        End If
        If DateDiff(DateInterval.Day, CarDB.getPostDate(carid), Now) + 1 <= 7 Then
            n &= "<img class='icon1' src='../scripts+pics/images/star.gif' alt=''>"
        Else
            n &= ""
        End If

        n &= "</li>"
        n &= " </ul>"


        'n = " 										<tr>"
        'n = n & " 											<td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"""
        'n = n & " 													class=""Font_black_LH_15px"">"
        'n = n & " 													<tr>"
        'n = n & " 														<td width=""26"" height=""21""><div align=""center"">"
        ''n = n & " 																<input type=""checkbox"" name='carCheck" & rowid & "' id='carCheck" & rowid & "' value='" & carid & "' onClick='getCheckBox(this.checked," & carid & "," & Session("CurPage") & ")'>"
        'n = n & " 																<input type=""checkbox"" name='carCheck' id='carCheck' value='" & carid & "' onClick='getCheckBox(this.checked," & carid & "," & Session("CurPage") & ")'>"
        'n = n & " 															</div>"
        'n = n & " 														</td>"
        'n = n & " 														<td width=""5"" height=""21""></td>"
        'n = n & " 														<td width=""80"" height=""21""></td>"
        'n = n & " 														<td width=""11"" height=""21""></td>"
        'n = n & " 														<td width=""455"" height=""21""><a href='search3_detail_car.aspx?curData=" & detailPage & "&fmp=result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & CarDB.getBrand(carid) & "</a></td>"
        'n = n & " 														<td width=""11"" height=""21""></td>"
        'n = n & " 														<td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(CarDB.getPrice(carid), 0, , , TriState.True) & "</div>"
        'n = n & " 														</td>"
        'n = n & " 														<td width=""5"" height=""21""></td>"
        'n = n & " 													</tr>"
        'n = n & " 													<tr>"
        'n = n & " 														<td height=""5"" colspan=""8""></td>"
        'n = n & " 													</tr>"
        'n = n & " 													<tr>"
        'n = n & " 														<td width=""26"" rowspan=""3""></td>"
        'n = n & " 														<td width=""5"" rowspan=""3""></td>"
        'Dim myTmp As Array
        'Dim myTxt As String

        'If CarDB.getMainPic2(carid) = "no_image_60x45.gif" Then
        '    Pics = "../../images/objects/no_image_80x60.gif"
        '    a = New Bitmap(Server.MapPath(Pics))
        '    resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
        '    myTxt = "<img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div>"
        'Else
        '    Pics = CarDB.getMainPic(carid)
        '    myTmp = Pics.Split("\")
        '    myTxt = "<img src='" & picUrl & "/public/test/WebForm10.aspx?custid=" & myTmp.GetValue(4) & "&w=80&h=v'  border=""0""></a></div>"
        'End If



        ''n = n & " 														<td width=""80"" rowspan=""3""><div align=""center""><img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' onclick='picPopUp(" & carid & ");'></div>"
        'n = n & " 														<td rowspan=""3"" width=""80"" height=""80""><div align=""center""><a href='search3_detail_car.aspx?curData=" & detailPage & "&fmp=result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "'>"

        'n = n & myTxt
        'n = n & " 														</td>"
        'n = n & " 														<td width=""11"" rowspan=""3""></td>"
        'n = n & " 														<td width=""455"" valign=""top"">" & CarDB.getCarInfo(carid) & "</td>"
        'n = n & " 														<td width=""11"" rowspan=""3""></td>"
        'n = n & " 														<td width=""100"" rowspan=""3""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        'n = n & " 																<tr>"
        'n = n & " 																	<td><a href='search3_detail_car.aspx?curData=" & detailPage & "&fmp=result&carid=" & carid & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        'n = n & " 																</tr>"
        'n = n & " 																<tr>"
        'n = n & " 																	<td height=""2""></td>"
        'n = n & " 																</tr>"
        'n = n & " 																<tr>"
        'n = n & " 																	<td ><input id='addCook" & rowid & "' onmouseover=""document.all.addCook" & rowid & ".className='buttonover'"" style=""CURSOR: hand"" onmouseout=""document.all.addCook" & rowid & ".className='button'"" class='button' type='button' value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;' onClick='saveAdv(" & carid & ");'></td>"
        'n = n & " 																</tr>"
        'n = n & " 															</table>"
        'n = n & " 														</td>"
        'n = n & " 														<td width=""5"" rowspan=""3""></td>"
        'n = n & " 													</tr>"
        'n = n & " 													<tr>"
        'n = n & " 														<td height=""3""></td>"
        'n = n & " 													</tr>"
        'n = n & " 													<tr><td width=""455"" valign=""bottom"" >"
        'If CarDB.getNumPic(carid) > 1 Then
        '    '
        '    n = n & "<div onClick='picPopUp(" & carid & ");' style=""CURSOR: hand""><IMG height='9' src='../../images/objects/moreimages.gif' width='12' border=""0""></div>"
        'Else
        '    n = n & "&nbsp;"
        'End If
        'If DateDiff(DateInterval.Day, CarDB.getPostDate(carid), Now) + 1 <= 7 Then
        '    n = n & "<IMG height='12' src='../../images/objects/star.gif' width='13'>"
        'Else
        '    n = n & "&nbsp;"
        'End If

        'n = n & "                                                       </td>"
        'n = n & " 													</tr>"
        'n = n & " 													<tr>"
        'n = n & " 														<td height=""5"" colspan=""8""><img src=""../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        'n = n & " 													</tr>"
        'n = n & " 												</table>"
        'n = n & " 											</td>"
        'n = n & " 										</tr>"


        Return n
    End Function


    Private Sub doSort_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSort.Click
        Dim end_sql As String
        Dim orderby As Array

        end_sql = checkOrderBy(Order_By.SelectedValue)
        orderby = Split(end_sql, ":")

        Session("searchOrderBY") = orderby

        Response.Redirect("car_rl_top_offers.aspx?cur_Page=" & cur_Page)
    End Sub
    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Car_Price"
                KeyOrder_By = "Car_Price"
            Case 1
                Order_By_Condition = " ORDER BY Car_Year_Ord DESC"
                KeyOrder_By = "Car_Year_Ord DESC"
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
    Function checkOrderBySelected(ByVal ArrOrdBy As Array) As Integer
        Dim KeyOrder_By As Integer


        Select Case ArrOrdBy.GetValue(1)
            Case "Car_Price"
                KeyOrder_By = 0
            Case "Car_Year_Ord DESC"
                KeyOrder_By = 1
            Case "Car_CC"
                KeyOrder_By = 2
            Case "Car_Power"
                KeyOrder_By = 3
            Case "Car_Miles"
                KeyOrder_By = 4
            Case "Car_Post DESC"
                KeyOrder_By = 5

        End Select

        Return KeyOrder_By
    End Function
End Class
