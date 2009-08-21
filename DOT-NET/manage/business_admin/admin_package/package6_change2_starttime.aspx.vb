Imports System.Globalization
Imports System.Threading
Public Class package6_change2_starttime
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtDate As System.Web.UI.WebControls.Label
    Protected WithEvents oldDate As System.Web.UI.WebControls.Label
    Protected WithEvents topic As System.Web.UI.WebControls.Label

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
        Dim noticeid As Integer
        Dim packageid As Integer
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        'noticeid = 24


        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            If Not IsPostBack Then

                packageid = NoticeDB.isNoticeNotStart(Session("noticeid"))
                If packageid = -1 Then ' --------------  Notice online แล้ว
                    noticeid = Session("noticeid")
                    showTopic(Session("newPack"))
                    listDate(noticeid)
                Else ' --------------  notice ยังเป็น Offline อยู่
                    Session("startDate") = ConfigurationSettings.AppSettings("firstDate")
                    Session("noticestatus") = "Offline"
                    Session("packageid") = packageid
                    Response.Redirect("package6_change3_conclusion.aspx")
                End If

            End If
        End If

        AjaxPro.Utility.RegisterTypeForAjax(GetType(package6_change2_starttime))
    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function setStartDate(ByVal startDate As String) As Integer

        Session("startDate") = startDate

        Return 1
    End Function

    Private Sub showTopic(ByVal newPack As Integer)
        Dim myPack As Package

        myPack = PackageDB.getPackage(newPack)
        topic.Text = "วันที่ที่ต้องการเริ่มใช้" & PackageTypeDB.getPackType(myPack.Package_Category) & "/" & myPack.Package_AreaStop & " รายการ/" & myPack.Package_Week & " เดือน"
    End Sub
    Private Sub listDate(ByVal noticeid As Integer)
        Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim i As Integer
        Dim txtD As String
        Dim s As Integer = 1
        Dim DateShow As DateTime = NoticeDB.getNoticeStopDate(noticeid).ToString("dd-MM-yyyy")
        'If DateShow.ToString("dd/MM/yyyy") <> ConfigurationSettings.AppSettings("firstDate") Then
        If DateShow <> "#12:00:00 AM#" Then
            DateShow = DateAdd(DateInterval.Day, 1, DateShow)
            oldDate.Text = showOldPack(DateShow)
            s = 0
        End If


        DateShow = DateAdd(DateInterval.Day, 1, DB.getToday())
        For i = 0 To 6
            If i = 0 Then
                txtD = "วันพรุ่งนี้"
            Else
                txtD = "วันที่" & i + 1
            End If
            txtDate.Text = txtDate.Text & showDate(DateAdd(DateInterval.Day, i, DateShow), txtD, i, s)
        Next
    End Sub
    Private Function showOldPack(ByVal DateShow As String) As String
        Dim sql As String

        sql = sql & "           <tr>"
        sql = sql & "             <td width=""133"" height=""26""><div align=""center"">"
        sql = sql & "               <input type=""radio"" name=""DateST"" id='DateST' value='old' checked>"
        sql = sql & "             </div></td>"
        sql = sql & "             <td width=""11"" rowspan=""8""></td>"
        sql = sql & "             <td width=""549"" height=""26"">&#3648;&#3619;&#3636;&#3656;&#3617;&#3651;&#3594;&#3657;&#3648;&#3617;&#3639;"
        sql = sql & "&#3656;&#3629;&#3588;&#3619;&#3610;&#3585;&#3635;&#3627;&#3609;&#3604;&#3623;&#3633;"
        sql = sql & "&#3609;&#3607;&#3637;&#3656;&#3626;&#3636;&#3657;&#3609;&#3626;&#3640;&#3604;&#3629;"
        sql = sql & "&#3634;&#3618;&#3640;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;"
        sql = sql & "&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3648;&#3604;&#3636;&#3617; (" & DateShow & ")</td>"
        sql = sql & "           </tr>"

        Return sql
    End Function
    Private Function showDate(ByVal DateShow As DateTime, ByVal txtdate As String, ByVal i As Integer, ByVal s As Integer) As String
        Dim sql As String

        sql = sql & "           <tr>"
        sql = sql & "             <td width=""133"" height=""26""><div align=""center"">"
        If s = 1 And i = 0 Then
            sql = sql & "               <input type=""radio"" name=""DateST"" id='DateST' value='" & i & "' checked>"
            sql = sql & "             </div></td>"
            sql = sql & "             <td width=""11"" rowspan=""8""></td>"
        Else
            sql = sql & "               <input type=""radio"" name=""DateST"" id='DateST' value='" & i & "' >"
            sql = sql & "             </div></td>"
        End If

        sql = sql & "             <td width=""549"" height=""26"">" & txtdate & " (" & DateShow.ToString("dd/MM/yyyy") & ")</td>"
        sql = sql & "           </tr>"

        Return sql
    End Function


End Class
