Imports System.Globalization
Imports System.Threading
Public Class business_package_list
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents personData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents webLink As System.Web.UI.WebControls.HyperLink
    Protected WithEvents PackList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents soList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents jobList As System.Web.UI.WebControls.HyperLink
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents custTel As System.Web.UI.WebControls.Label
    Protected WithEvents hisList As System.Web.UI.WebControls.Label
    Protected WithEvents delBtn As System.Web.UI.WebControls.Label
    Protected WithEvents submitBtn As System.Web.UI.WebControls.Label
    Protected WithEvents ConPt As System.Web.UI.WebControls.Label

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

        'cust_id = 26
        showInfo(cust_id)
        showHis(cust_id)

        AjaxPro.Utility.RegisterTypeForAjax(GetType(business_package_list))
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

    Private Sub showHis(ByVal cust_id As Integer)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")

        Dim myTxt As String
        Dim i As Integer = 1
        Dim myCol As String
        Dim myQ As Queue
        Dim myNotice As noticeS
        Dim sum As Double = 0
        Dim nColor As String

        Dim DateSt As DateTime
        Dim DateEn As DateTime

        Dim NoticeDay As Integer
        Dim packageid As Integer
        Dim invoiceid As Integer


        myQ = NoticeDB.getDealerNotices(cust_id, "(CategoryType.CategoryType = 1 OR  CategoryType.CategoryType = 2)")
        For Each myNotice In myQ


            If i Mod 2 = 0 Then
                myCol = "f4f4f4"
            Else
                myCol = "e6e6e6"
            End If
            Select Case myNotice.status
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


            myTxt = myTxt & "<tr bgcolor='#" & myCol & "' " & nColor & ">"
            myTxt = myTxt & "<td nowrap><div align='center'>"
            myTxt = myTxt & "<input name='chkB' id='chkB' type='checkbox' class='standard_font' value='" & myNotice.id & "'>"
            myTxt = myTxt & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>" & NoticeDB.getNoticeCode(myNotice.id) & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>" & myNotice.postDate.ToString("dd-MM-yyyy") & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>" & PackageDB.getPackageName(myNotice.pacakgeId) & "/" & PackageDB.getPackageWeek(myNotice.pacakgeId) & "m</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap>" & FormatNumber(PackageDB.getPackagePrice(myNotice.pacakgeId), 2, , , TriState.True) & "</span></td>"
            Dim startD As String
            Dim stopD As String
            If myNotice.startDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
                startD = "-"
            ElseIf myNotice.stopDate.ToString("dd/MM/yyyy") = ConfigurationSettings.AppSettings("firstDateTH") Then
                stopD = "-"
            Else
                startD = myNotice.startDate.ToString("dd/MM/yyyy")
                stopD = myNotice.stopDate.ToString("dd/MM/yyyy")
            End If

            myTxt = myTxt & "<td nowrap><div align='center'>" & startD & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>" & stopD & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'><span class='Stil6'><a href='business_ad_list_of_package.aspx?cust_id=" & cust_id & "&noticeid=" & myNotice.id & "' target='_parent'><img src='../../../pics/icons/detail_16x16.gif' width='16' height='16' border='0' align='textTop'></a></span></div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>0</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center' > "
            myTxt = myTxt & "</div>"
            myTxt = myTxt & "</td>"
            Dim status As Array
            status = NoticeTypeDB.getStatusName(myNotice.status).Split(":")

            myTxt = myTxt & "<td nowrap><div align='center' >" & status.GetValue(0)
            myTxt = myTxt & "</div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'>"

            ' ---------------------  PROLONG BEGIN ----------------------
            NoticeDay = 0
            myCol = ""

            NoticeDay = DateDiff(DateInterval.Day, myNotice.startDate, DB.getToday())

            ' ----------- ถ้าประกาศ Offline ต่ออายุไม่ได้ ----------------------
            If myNotice.status = 1 Then
                myCol = "disabled"
                '    ' ----------- ถ้าประกาศ Online < 7 วันต่ออายุไม่ได้ ----------------------
            ElseIf NoticeDay < 7 Or myNotice.prolong <> "" Then
                myCol = "disabled"
            Else
                myCol = ""
            End If
            'If myNotice.prolong = "" Or myNotice.prolong <> "P" Then
            '    myCol = "disabled"
            'Else
            '    myCol = ""
            'End If
            myTxt = myTxt & "<input name='prolong' type='button' " & myCol & " class='standard_font' value='Prolong' onClick='goProlong(" & cust_id & "," & myNotice.id & "," & myNotice.pacakgeId & "," & myNotice.category & ");' style='WIDTH:60px'>"
            ' ---------------------  PROLONG END ----------------------


            ' ---------------------  CHANGE BEGIN ----------------------
            'NoticeDay = 0
            myCol = ""
            ''--------------  ถ้ามีแจ้งจ่ายเงินมาแล้วยังไม่ยืนยันไม่ให้เปลี่ยน  CHANGE BEGIN ---------------------------

            packageid = NoticeDB.isNoticeNotStart(myNotice.id)
            If packageid = -1 Then  ' ------------  Online ------------------------
                If NoticeDay >= 7 And myNotice.prolong = "" Then  ' ----------- ถ้าประกาศ Online >= 7 วันเปลี่ยนประกาศได้  ----------------------
                    '        sql = sql & " <td><a href='../package6_change1_sizeterm.aspx?noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "&cat=" & myNotice.category & "' class='A60'>&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;</a></td>"
                    myCol = ""
                Else
                    myCol = "disabled"
                End If

            Else ' ------------  Offline ------------------------

                invoiceid = InvoiceDB.getChangeInvoice(myNotice.id, packageid)

                If TmpPaymentDb.getChangedTmpPay(invoiceid) <> -1 Then  ' -------------  แจ้งชำระเงินแล้ว -----------------
                    myCol = "disabled"
                Else
                    '        sql = sql & " <td><a href='../package6_change1_sizeterm.aspx?noticeid=" & myNotice.id & "&packageid=" & myNotice.pacakgeId & "&cat=" & myNotice.category & "' class='A60'>&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;</a></td>"
                    myCol = ""
                End If
            End If

            'If myNotice.prolong = "" Or myNotice.prolong <> "C" Then
            '    myCol = "disabled"
            'Else
            '    myCol = ""
            'End If
            myTxt = myTxt & "<input name='change' type='button' " & myCol & " class='standard_font' value='Change' onClick='goChange(" & cust_id & "," & myNotice.id & ");' style='WIDTH:60px'>"
            ' ---------------------  CHANGE END ----------------------

            myTxt = myTxt & "</div>"
            myTxt = myTxt & "</td>"

            If myNotice.prolong <> "" Then
                If myNotice.prolong = "P" Then
                    myTxt = myTxt & "<td nowrap><div align='center'><a href='../proLChg/business_prolong_package.aspx?cust_id=" & cust_id & "&noticeid=" & myNotice.id & "' class='" & myNotice.prolong_color & "'>" & myNotice.prolong & "</a></div>"
                Else
                    myTxt = myTxt & "<td nowrap><div align='center'><a href='../proLChg/business_change_package.aspx?cust_id=" & cust_id & "&noticeid=" & myNotice.id & "' class='" & myNotice.prolong_color & "'>" & myNotice.prolong & "</a></div>"
                End If
            Else
                myTxt = myTxt & "<td nowrap><div align='center'>---</div>"
            End If


            myTxt = myTxt & "</td>"
            myTxt = myTxt & "<td nowrap><div align='center'><a href='../histories/business_package_history.aspx?cust_id=" & cust_id & "&cat=" & myNotice.category & "' target='_parent'><img src='../../../pics/icons/history_16x16.gif' width='16' height='16' border='0' align='textTop'></a></div>"
            myTxt = myTxt & "</td>"
            myTxt = myTxt & "</tr>"

            i = i + 1
        Next

        hisList.Text = myTxt

        If i = 1 Then
            myTxt = "disabled"
        Else
            myTxt = ""
        End If
        delBtn.Text = "<input onClick='delAd();' value='Delete' name='del' id='del' type='button' class='standard_font' " & myTxt & ">"

        If i >= 5 Then
            myTxt = "disabled"
        Else
            myTxt = ""
        End If
        submitBtn.Text = "<input name='adPack' onClick='addPack(" & cust_id & ");' type='button' class='standard_font' value='Add Package Category' " & myTxt & ">"


    End Sub


    <AjaxPro.AjaxMethod()> _
    Public Function deleteAds(ByVal selectCase As Integer, ByVal noticeid As String) As String
        Dim myAns As String = "YES"

        If noticeid <> "" Then
            If selectCase = 1 Then
                Dim myNotice As Integer = noticeid
                DeleteExpire.DeleteNoticeExpire(myNotice)
            Else
                Dim myTxt As String
                myTxt = Right(noticeid, noticeid.Length - 1)
                DeleteExpire.DeleteNoticeExpire(myTxt)
            End If
        Else
            myAns = "NO"
        End If

        Return myAns
    End Function
End Class
