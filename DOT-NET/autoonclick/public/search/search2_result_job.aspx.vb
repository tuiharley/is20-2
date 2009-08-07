Imports System.Data.OleDb

Public Class search2_result_job
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents searchCond As System.Web.UI.WebControls.Label
    Protected WithEvents Up_Pages As System.Web.UI.WebControls.Label
    Protected WithEvents Down_Pages As System.Web.UI.WebControls.Label
    Protected WithEvents carRange As System.Web.UI.WebControls.Label
    Protected WithEvents totalCar As System.Web.UI.WebControls.Label
    Protected WithEvents carResult As System.Web.UI.WebControls.Label

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
        makeList()

        AjaxPro.Utility.RegisterTypeForAjax(GetType(search2_result_job))
    End Sub


    Private Sub showSearchCond(ByVal txt As String)
        searchCond.Text = txt
    End Sub
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
        da.Fill(ds, "All_Search_Job")
        all_records = ds.Tables("All_Search_Job").Rows.Count

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
                allC.Enqueue(ds.Tables("All_Search_Job").Rows(x).Item("Job_Id"))
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
            Dim mySearchJob As SearchJob

            For Each drowview In dview
                mySearchJob.Job_Id = drowview.Item("Job_Id")
                mySearchJob.Notice_Id = drowview.Item("Notice_Id")
                mySearchJob.Notice_StartDate = drowview.Item("Job_Post")
                mySearchJob.Position_Name = drowview.Item("Position_Name")
                mySearchJob.Job_Num = drowview.Item("Job_Num")
                mySearchJob.Customer_Name = drowview.Item("Customer_Name")
                mySearchJob.Job_Province = ProvinceDB.getProvinceName(drowview.Item("Job_Province"))
                mySearchJob.Job_District = DistrictDB.getDistrictName(drowview.Item("Job_District"))


                carResult.Text = carResult.Text & showList(mySearchJob, n, pageSize, cur_Page)

                mySearchJob = Nothing
                n = n + 1
            Next



            ds.Dispose()
            da.Dispose()
        Else    '============Else Not Found Data===============================
            Session("notFound") = True
            Response.Redirect("search1_job.aspx")
        End If

        totalCar.Text = all_records

        If cur_Page * pageSize >= all_records Then
            endRecord = all_records
        Else
            endRecord = cur_Page * pageSize
        End If
        carRange.Text = ((cur_Page - 1) * pageSize) + 1 & " - " & endRecord

    End Sub

    Private Function showList(ByVal mySearchJob As SearchJob, ByVal rowid As Integer, ByVal pageSize As Integer, ByVal curPage As Integer) As String

        Dim n As String
        Dim Pics As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim picUrl As String = ConfigurationSettings.AppSettings("picURL")

        Dim detailPage As Integer = ((curPage - 1) * pageSize) + rowid

        n = n & "<tr>"
        n = n & "<td><table width='693' border='0' cellpadding='0' cellspacing='0' background='../../images/table/result_li_job_b.gif' class='Font_black_LH_15px'>"
        n = n & "<tr>"
        n = n & "<td height='3' colspan='13'></td>"
        n = n & "</tr>"
        n = n & "<tr>"
        n = n & "<td width='3'></td>"
        n = n & "<td width='74'><div align='center'>" & mySearchJob.Notice_StartDate.ToString("dd-MM-yyyy") & "</div></td>"
        n = n & "<td width='5'></td>"
        n = n & "<td width='155'><div align='center'>" & mySearchJob.Position_Name & "</div>"
        n = n & "</td>"
        n = n & "<td width='5'></td>"
        n = n & "<td width='32'><div align='center'>" & mySearchJob.Job_Num & "</div>"
        n = n & "</td>"
        n = n & "<td width='5'></td>"
        n = n & "<td width='204'><div align='center'>" & mySearchJob.Customer_Name & "</div>"
        n = n & "</td>"
        n = n & "<td width='5'></td>"
        n = n & "<td width='135'><div align='center'>" & mySearchJob.Job_Province & ", " & mySearchJob.Job_District & "</div>"
        n = n & "</td>"
        n = n & "<td width='5'></td>"
        n = n & "<td width='62'><div align='center' >"
        n = n & "		<a href='search3_detail_job.aspx?noticeid=" & mySearchJob.Notice_Id & "&jobId=" & mySearchJob.Job_Id & "&curData=" & rowid & "' class='A60'>&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;"
        n = n & "		</a>"
        n = n & "	</div>"
        n = n & "</td>"
        n = n & "<td width='3'></td>"
        n = n & "</tr>"
        n = n & "<tr>"
        n = n & "<td height='3' colspan='13'></td>"
        n = n & "</tr>"
        n = n & "<tr>"
        n = n & "<td colspan='13'><img src='../../images/lines/w.gif' width='693' height='1'></td>"
        n = n & "</tr>"
        n = n & "</table>"
        n = n & "</td>"
        n = n & "</tr>"


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
        a = a & "<tr align='right'><td noWrap ><a href='search2_result_job.aspx?cur_Page=1' class='Font_black'>|<<</a></td>"
        a = a & "<td ><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        If cur_Page = 1 Then
            numPrev = 1
        Else
            numPrev = cur_Page - 1
        End If
        a = a & "<td  noWrap ><a href='search2_result_job.aspx?cur_Page=" & numPrev & "' class='Font_black'><<</a></td>"
        a = a & "<td ><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        a = a & "<td  noWrap ><span class='Font_black'>Page</span>&nbsp;&nbsp;"

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
                    prevPage = prevPage & "<a href='search2_result_job.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                For i = curPage + 1 To lineSize
                    nextPage = nextPage & "<a href='search2_result_job.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                nextPage = nextPage & " .."

            ElseIf curPage >= (total_page - (change_point - 1)) Then

                For i = curPage - Math.Floor(lineSize / 2) To curPage - 1
                    prevPage = prevPage & "<a href='search2_result_job.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                prevPage = ".. " & prevPage


                For i = curPage + 1 To total_page
                    nextPage = nextPage & "<a href='search2_result_job.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
            Else
                For i = curPage - Math.Floor(lineSize / 2) To curPage - 1
                    prevPage = prevPage & "<a href='search2_result_job.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                prevPage = ".. " & prevPage
                For i = curPage + 1 To curPage + Math.Ceiling(lineSize / 2) - 1
                    nextPage = nextPage & "<a href='search2_result_job.aspx?cur_Page=" & i & "'>" & i & "</a> "
                Next
                nextPage = nextPage & " .."
            End If

        End If
        a = a & prevPage
        a = a & "<span class='Font_orange'> " & curPage & " </span>"
        a = a & nextPage

        a = a & "<span class='Font_black'> of " & total_page & "</span></td>"
        a = a & "<td ><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        If cur_Page = total_page Then
            numNext = total_page
        Else
            numNext = cur_Page + 1
        End If
        a = a & "<td  noWrap ><a href='search2_result_job.aspx?cur_Page=" & numNext & "' class='Font_black'>>></a></td>"
        a = a & "<td ><IMG height='1' src='../../images/objects/no.gif' width='13'></td>"
        a = a & "<td  noWrap ><a href='search2_result_job.aspx?cur_Page=" & total_page & "' class='Font_black'>>>|</a></td>"
        a = a & "</tr></table>"
        Return a
    End Function
End Class
