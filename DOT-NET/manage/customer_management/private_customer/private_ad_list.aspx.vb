Public Class private_ad_list
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents noticeList As System.Web.UI.WebControls.Label
    Protected WithEvents AdList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents adHis As System.Web.UI.WebControls.HyperLink

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
        cust_id = Request.QueryString("cust_id")

        Session("A_customer_notices") = ""
        'cust_id = 13
        Session("cust_id") = cust_id

        showInfo(cust_id)
        showNotice(cust_id)


        AjaxPro.Utility.RegisterTypeForAjax(GetType(private_ad_list))
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

        adHis.NavigateUrl = "private_ad_history.aspx?cust_id=" & cust_id

    End Sub
    Private Sub showNotice(ByVal cust_id As Integer)
        Dim A_customer_notices As Array

        Dim txt As String
        Dim i As Integer
        Dim col As String
        Dim show As String
        Dim notice_status As Array
        Dim nPage As String
        Dim nColor As String
        Dim maxdate As Date
        Dim datestart As String, datestop As String

        A_customer_notices = NoticeDB.getNotices(cust_id)
        Session("A_customer_notices") = A_customer_notices

        For i = 1 To A_customer_notices.Length - 1
            'For i = 1 To 1
            If i Mod 2 = 0 Then
                col = "f4f4f4"
            Else
                col = "e6e6e6"
            End If
            Select Case A_customer_notices(i).status
                Case 1
                    nColor = "class='Stil7'"
                Case 2
                    nColor = "class='Stil6'"
                Case 3
                    nColor = "class='Stil9'"
                Case 4
                    nColor = ""
                Case 5
                    nColor = "class='Stil7'"
            End Select
            txt = txt & "<tr bgcolor='#" & col & "' " & nColor & ">"
            txt = txt & "<td nowrap><div align='center'>"
            txt = txt & "<input name='chkB' id='chkB' type='checkbox' class='standard_font' value='" & A_customer_notices(i).id & "'>"
            txt = txt & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & NoticeDB.getNoticeCode(A_customer_notices(i).id) & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & FormatDateTime(A_customer_notices(i).postDate, DateFormat.ShortDate) & " </div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & getCat(A_customer_notices(i).category) & "/" & PackageDB.getPackageWeek(A_customer_notices(i).pacakgeId) & "M</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap>" & PackageDB.getPackagePrice(A_customer_notices(i).pacakgeId) & "</td>"

            '------------------date start and date stop --------------------------------------
            If A_customer_notices(i).startDate = "1/1/0544 0:00:00" Then
                datestart = "-"
                datestop = "-"
            Else
                datestart = FormatDateTime(A_customer_notices(i).startDate, DateFormat.ShortDate) & "<BR>"
                datestop = FormatDateTime(A_customer_notices(i).stopDate, DateFormat.ShortDate)
            End If

            txt = txt & "<td nowrap><div align='center'>" & datestart & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & datestop & "</div>"
            txt = txt & "</td>"
            Select Case A_customer_notices(i).category
                Case 1
                    nPage = "private_vehicle_detail.aspx"
                Case 2
                    nPage = "private_moto_detail.aspx"
                Case 3
                    nPage = "private_truck_detail.aspx"
                Case 4
                    nPage = "private_part_detail.aspx"
            End Select
            txt = txt & "<td nowrap><div align='center'><a href='" & nPage & "?cust_id=" & cust_id & "&noticeid=" & A_customer_notices(i).id & "&curPos=" & i & "' target='_parent'><img src='../../pics/icons/detail_16x16.gif' width='16' height='16' border='0' align='textTop'></a></div>"
            txt = txt & "</td>"
            If A_customer_notices(i).show = "เปิด" Then
                show = "ON"
            Else
                show = "OFF"
            End If
            txt = txt & "<td nowrap bgcolor='#f4f4f4'><div align='center'><a href='form_internal_status_changing_of_ad_or_pack.aspx?page=adList&noticeid=" & A_customer_notices(i).id & "&showNotice=" & show & "' ><span class='Stil29'>" & show & "</a></div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>-</div>"
            txt = txt & "</td>"

            '-------------notice status-------------------
            notice_status = Split(NoticeTypeDB.getStatusName(A_customer_notices(i).status), ":")

            txt = txt & "<td nowrap><div align='center' " & nColor & "><u>" & notice_status(0) & "</u>"
            txt = txt & "</div>"
            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>"

            '---------------------prolong condition ----------
            maxdate = ProlongDB.getMaxDate(A_customer_notices(i).id)
            If maxdate = "#12:00:00 AM#" Then
                maxdate = A_customer_notices(i).postDate
            Else
                maxdate = ProlongDB.getMaxStartDate(A_customer_notices(i).id)
            End If
            If (A_customer_notices(i).status = 1 Or A_customer_notices(i).prolong = "P" Or Not Utilities.checkDateMore7(maxdate)) Then
                txt = txt & "<input name='Submit' type='submit' class='grey_stand_font' value='Prolong' style='WIDTH:60px' disabled>"
            Else
                txt = txt & "<input name='Submit' type='submit' class='grey_stand_font' value='Prolong' style='WIDTH:60px' onClick=""window.location.href='private_prolong1_confirmation.aspx?cust_id=" & cust_id & "&noticeid=" & A_customer_notices(i).id & "'"">"
            End If
            txt = txt & ""

            txt = txt & "</div>"

            txt = txt & "</td>"
            txt = txt & "<td nowrap><div align='center'>" & A_customer_notices(i).prolong & "</div>"
            txt = txt & "</td>"
            txt = txt & "</tr>"
        Next

        noticeList.Text = txt
    End Sub

    Function getCat(ByVal cat As Integer) As String
        Dim myAns As String

        Select Case cat
            Case 1
                myAns = "C"
            Case 2
                myAns = "M"
            Case 3
                myAns = "T"
            Case 4
                myAns = "P"
            Case 5
                myAns = "P"
        End Select

        Return myAns
    End Function


    <AjaxPro.AjaxMethod()> _
    Public Function deleteAds(ByVal selectCase As Integer, ByVal noticeid As String) As String
        Dim myAns As String = "YES"

        If noticeid <> "" Then
            If selectCase = 1 Then
                Dim myNotice As Integer = noticeid
                NoticeDetailDB.setDetailDelete(NoticeDetailDB.getNoticeDetailID(myNotice), 1)
                'InvoiceDB.updateCancelInvoice(myNotice)
                'TmpPaymentDb.updateCancelTmpPay(InvoiceDB.getInvoice2(myNotice))
            Else
                Dim myTxt As String
                myTxt = Right(noticeid, noticeid.Length - 1)
                NoticeDetailDB.setDetailDelete(NoticeDetailDB.getNoticeDetailID(myTxt), 1)
                'InvoiceDB.updateCancelInvoice(noticeid)
                'TmpPaymentDb.updateCancelTmpPay(InvoiceDB.getInvoice2(noticeid))
            End If
        Else
            myAns = "NO"
        End If


        Return myAns
    End Function
    <AjaxPro.AjaxMethod()> _
    Public Function newAds(ByVal selectCase As Integer) As String
        Dim url As String

        Select Case selectCase
            Case 1
                url = "offer1_car_datas_puadmin.aspx?package_id=1"
            Case 2
                url = "offer1_moto_datas_puadmin.aspx?package_id=2"
            Case 3
                url = "offer1_truck_datas_puadmin.aspx?package_id=3"
            Case 4
                url = "offer1_part_datas_puadmin.aspx?package_id=4"
        End Select

        Return url
    End Function

End Class
