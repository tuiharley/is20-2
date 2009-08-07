Imports System.Data.OleDb

Public Class search2_result_part
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Order_By As System.Web.UI.WebControls.DropDownList
    Protected WithEvents searchCond As System.Web.UI.WebControls.Label
    Protected WithEvents carResult As System.Web.UI.WebControls.Label
    Protected WithEvents want_comp As System.Web.UI.HtmlControls.HtmlInputHidden
    Protected WithEvents parking_deck2 As System.Web.UI.WebControls.Button
    Protected WithEvents change_orderby As System.Web.UI.WebControls.Button
    Protected WithEvents Up_Pages As System.Web.UI.WebControls.Label
    Protected WithEvents Down_Pages As System.Web.UI.WebControls.Label
    Protected WithEvents totalCar As System.Web.UI.WebControls.Label
    Protected WithEvents carRange As System.Web.UI.WebControls.Label
    Protected WithEvents searchResult1 As System.Web.UI.WebControls.Label
    Protected WithEvents searchAgain1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchResult2 As System.Web.UI.WebControls.Label
    Protected WithEvents searchAgain2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents requestSearch2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents parkingList2 As System.Web.UI.WebControls.HyperLink

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


        setLink()
        showSearchCond(Session("SearchCond"))
        makeList()


        AjaxPro.Utility.RegisterTypeForAjax(GetType(search2_result_part))
    End Sub

    Private Sub setLink()
        searchAgain1.NavigateUrl = "search1_part2.aspx?again=yes"
        requestSearch1.NavigateUrl = "request1_part.aspx"
        parkingList1.NavigateUrl = "blank.aspx?fromPage=part"

        searchAgain2.NavigateUrl = "search1_part2.aspx?again=yes"
        requestSearch2.NavigateUrl = "request1_part.aspx"
        parkingList2.NavigateUrl = "blank.aspx?fromPage=part"


    End Sub

    Private Sub showSearchCond(ByVal txt As String)
        searchCond.Text = txt
    End Sub
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
        a = a & "<tr><td noWrap width='4%'><a href='search2_result_part.aspx?cur_Page=1' class='Font_black'>|<<</a></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        If cur_Page = 1 Then
            numPrev = 1
        Else
            numPrev = cur_Page - 1
        End If
        a = a & "<td  noWrap width='3%'><a href='search2_result_part.aspx?cur_Page=" & numPrev & "' class='Font_black'><<</a></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
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
                    prevPage = prevPage & "<a href='search2_result_part.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                For i = curPage + 1 To lineSize
                    nextPage = nextPage & "<a href='search2_result_part.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                nextPage = nextPage & " .."

            ElseIf curPage >= (total_page - (change_point - 1)) Then

                For i = curPage - Math.Floor(lineSize / 2) To curPage - 1
                    prevPage = prevPage & "<a href='search2_result_part.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                prevPage = ".. " & prevPage


                For i = curPage + 1 To total_page
                    nextPage = nextPage & "<a href='search2_result_part.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
            Else
                For i = curPage - Math.Floor(lineSize / 2) To curPage - 1
                    prevPage = prevPage & "<a href='search2_result_part.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                prevPage = ".. " & prevPage
                For i = curPage + 1 To curPage + Math.Ceiling(lineSize / 2) - 1
                    nextPage = nextPage & "<a href='search2_result_part.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                nextPage = nextPage & " .."
            End If

        End If
        a = a & prevPage
        a = a & "<span class='Font_orange'> " & curPage & " </span>"
        a = a & nextPage

        a = a & "<span class='Font_black'> of " & total_page & "</span></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        If cur_Page = total_page Then
            numNext = total_page
        Else
            numNext = cur_Page + 1
        End If
        a = a & "<td  noWrap width='3%'><a href='search2_result_part.aspx?cur_Page=" & numNext & "' class='Font_black'>>></a></td>"
        a = a & "<td width='2%'><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        a = a & "<td  noWrap width='32%'><a href='search2_result_part.aspx?cur_Page=" & total_page & "' class='Font_black'>>>|</a></td>"
        a = a & "</tr></table>"
        Return a
    End Function


    Private Function showList(ByVal PartID As Integer, ByVal rowid As Integer, ByVal pageSize As Integer, ByVal curPage As Integer) As String

        Dim n As String
        Dim myPart As Part = PartsDB.getPart(PartID)
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        Dim detailPage As Integer = ((curPage - 1) * pageSize) + rowid

        n = " 										<tr>"
        n = n & " 											<td width=""693""><table width=""693"" border=""0"" cellpadding=""0"" cellspacing=""0"" background=""../../images/table/result_li.gif"""
        n = n & " 													class=""Font_black_LH_15px"">"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" height=""21""><div align=""center"">"
        'n = n & " 																<input type=""checkbox"" name='carCheck" & rowid & "' id='carCheck" & rowid & "' value='" & PartID & "' onClick='getCheckBox(this.checked," & PartID & "," & Session("CurPage") & ")'>"
        n = n & " 																<input type=""checkbox"" name='carCheck' id='carCheck' value='" & PartID & "' onClick='getCheckBox(this.checked," & PartID & "," & Session("CurPage") & ")'>"
        n = n & " 															</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 														<td width=""80"" height=""21""></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        Dim brands As String
        brands = PartsTypeDB.getPartTypeName(myPart.Type) & " : " & myPart.Brand

        If myPart.Model <> "" Then
            brands = brands & "/" & myPart.Model
        End If
        n = n & " 														<td width=""455"" height=""21""><a href='search3_detail_part.aspx?curData=" & detailPage & "&fmp=result&carid=" & PartID & "&cur_Page=" & Session("CurPage") & "' class=""A_H_bold_white_underline"">" & brands & "</a></td>"
        n = n & " 														<td width=""11"" height=""21""></td>"
        n = n & " 														<td width=""100"" height=""21"" class=""H1_white""><div align=""center""> ฿ " & FormatNumber(myPart.Price, 0, , , TriState.True) & "</div>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" height=""21""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""5"" colspan=""8""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td width=""26"" rowspan=""3""></td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"
        Dim myTmp As Array
        Dim myTxt As String

        If PartsDB.getMainPic2(PartID) = "no_image_60x45.gif" Then
            Pics = "../../images/objects/no_image_80x60.gif"
            a = New Bitmap(Server.MapPath(Pics))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
            myTxt = "<img src='" & Pics & "' height='" & imageHeight & "' width='" & imageWidth & "' border=""0""></a></div>"
        Else
            Pics = PartsDB.getMainPic(PartID)
            myTmp = Pics.Split("\")
            myTxt = "<img src='" & picUrl & "/public/test/WebForm10.aspx?custid=" & myTmp.GetValue(4) & "&w=80&h=v'  border=""0""></a></div>"
        End If



        n = n & " 														<td rowspan=""3"" width=""80"" height=""80""><div align=""center""><a href='search3_detail_part.aspx?curData=" & detailPage & "&fmp=result&carid=" & PartID & "&cur_Page=" & Session("CurPage") & "'>"

        n = n & myTxt
        n = n & " 														</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""455"" valign=""top"">" & PartsDB.getPartInfo(PartID) & "</td>"
        n = n & " 														<td width=""11"" rowspan=""3""></td>"
        n = n & " 														<td width=""100"" rowspan=""3""><table width=""100%"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
        n = n & " 																<tr>"
        n = n & " 																	<td><a href='search3_detail_part.aspx?curData=" & detailPage & "&fmp=result&carid=" & PartID & "&cur_Page=" & Session("CurPage") & "' class=""A80"">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</a></td>"
        n = n & " 																</tr>"
        n = n & " 																<tr>"
        n = n & " 																	<td height=""2""></td>"
        n = n & " 																</tr>"
        n = n & " 																<tr>"
        n = n & " 																	<td ><input id='addCook" & rowid & "' onmouseover=""document.all.addCook" & rowid & ".className='buttonover'"" style=""CURSOR: hand"" onmouseout=""document.all.addCook" & rowid & ".className='button'"" class='button' type='button' value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;' onClick='saveAdv(" & PartID & ");'></td>"
        n = n & " 																</tr>"
        n = n & " 															</table>"
        n = n & " 														</td>"
        n = n & " 														<td width=""5"" rowspan=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""3""></td>"
        n = n & " 													</tr>"
        n = n & " 													<tr><td width=""455"" valign=""bottom"" >"
        If DateDiff(DateInterval.Day, myPart.Post, Now) + 1 <= 7 Then
            n = n & "<IMG height='12' src='../../images/objects/star.gif' width='13'>"
        Else
            n = n & "&nbsp;"
        End If

        n = n & "                                                       </td>"
        n = n & " 													</tr>"
        n = n & " 													<tr>"
        n = n & " 														<td height=""5"" colspan=""8""><img src=""../../images/dividers/result.gif"" width=""693"" height=""5""></td>"
        n = n & " 													</tr>"
        n = n & " 												</table>"
        n = n & " 											</td>"
        n = n & " 										</tr>"


        Return n
    End Function
    Private Sub makeList()

        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim dview As DataView

        Dim all_records As Integer, endRecord As Integer



        'Response.Write(Session("searchSQL"))

        Dim KeyOrderBy As String

        KeyOrderBy = Session("searchOrderBY").GetValue(1)
        da = SearchDB.getSearch(Session("searchSQL") & " " & Session("searchOrderBY").GetValue(0))


        '===========================Get Total page ==========================================
        da.Fill(ds, "All_Search_Part")
        all_records = ds.Tables("All_Search_Part").Rows.Count

        '==============Case found Data ==============================
        If all_records <> 0 Then
            total_page = Math.Ceiling(all_records / pageSize)

            '============Set Session total_page =========
            Session.Add("total_page", total_page)
            Session.Add("totalCar", all_records)
            '============================================

            '============Set Session all car id =========
            Dim x As Integer
            Dim allC As New Queue
            For x = 0 To all_records - 1
                allC.Enqueue(ds.Tables("All_Search_Part").Rows(x).Item("Part_ID"))
            Next
            Session.Add("allCar", allC)
            '============================================

            Up_Pages.Text = showPages(cur_Page)
            Down_Pages.Text = Up_Pages.Text

            '==================== Get paging rows ============================================
            curIndex = ((cur_Page - 1) * pageSize)
            ds = Paging.GetPagedData(da, curIndex, pageSize, "Searched_Part")
            ' curIndex = curIndex + pageSize

            dview = ds.Tables("Searched_Part").DefaultView
            dview.Sort = KeyOrderBy
            'rowsid.Value = dview.Count
            '====================== Show paging rows ===========================================
            Dim n As Integer
            n = 1
            Dim drowview As DataRowView

            For Each drowview In dview
                carResult.Text = carResult.Text & showList(drowview.Item("Part_Id"), n, pageSize, cur_Page)
                n = n + 1
            Next



            ds.Dispose()
            da.Dispose()
        Else    '============Else Not Found Data===============================
            'BikeResult.Text = "<tr><td><center>ไม่พบข้อมูล</center></td></tr>"
            Session("notFound") = True
            Response.Redirect("search1_part2.aspx")
        End If

        totalCar.Text = all_records

        If cur_Page * pageSize >= all_records Then
            endRecord = all_records
        Else
            endRecord = cur_Page * pageSize
        End If
        carRange.Text = ((cur_Page - 1) * pageSize) + 1 & " - " & endRecord

    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function goComparePage(ByVal wComp) As String
        Session.Remove("want_comp")
        Session.Add("want_comp", wComp)
        Session("want_comp") = Right(Session("want_comp"), Session("want_comp").length - 1)

        Return "compare/frameset_compare_part.aspx?cur_Page=" & CurrentPage
        'Return wComp
    End Function


    Private Sub change_orderby_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles change_orderby.Click
        Dim end_sql As String
        Dim orderby As Array

        end_sql = checkOrderBy(Order_By.SelectedValue)
        orderby = Split(end_sql, ":")

        Session("searchOrderBY") = orderby

        Response.Redirect("search2_result_part.aspx?cur_Page=" & cur_Page)
    End Sub
    Function checkOrderBy(ByVal orderby As Integer) As String
        Dim Order_By_Condition As String
        Dim KeyOrder_By As String

        Select Case orderby
            Case 0
                Order_By_Condition = " ORDER BY Part_Price"
                KeyOrder_By = "Part_Price"
            Case 1
                Order_By_Condition = " ORDER BY Part_Post DESC"
                KeyOrder_By = "Part_Post DESC"

        End Select

        Return Order_By_Condition & ":" & KeyOrder_By
    End Function

End Class
