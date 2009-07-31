Imports System.Security
Imports System.Security.Principal
Imports System.Threading.Thread

Public Module CSC_INDUtil

    Public gDebugLevel As String = "1"
    Public gsFilePath As String = ""
    Public gsReportURL As String

    Public gsSMTPServer As String
    Public gsSenderEMail As String
    Public gsTestEMail As String
    Public gsReceiverEMail As String

    Public gsHRPTTDepartmentCode As String
    Public gsAppAdmins As String

    Public gsAppPath As String
    Public gsErrMsg As String
    Public gsIntranetURL As String


    Public Sub ReadConfigurations()

        gDebugLevel = ConfigurationSettings.AppSettings("DebugLevel")
        gsAppPath = Replace(System.Reflection.Assembly.GetExecutingAssembly().GetName().CodeBase.Substring(8), "/", "\")
        gsAppPath = gsAppPath.Substring(0, gsAppPath.LastIndexOf("\"))
        gsAppPath = gsAppPath.Substring(0, gsAppPath.LastIndexOf("\") + 1)

        gsFilePath = ConfigurationSettings.AppSettings("FilePath")
        gsReportURL = ConfigurationSettings.AppSettings("ReportURL")

        gsSMTPServer = ConfigurationSettings.AppSettings("SMTP_Server")
        gsSenderEMail = ConfigurationSettings.AppSettings("Sender_EMail")
        gsTestEMail = ConfigurationSettings.AppSettings("Test_EMail")
        gsReceiverEMail = ConfigurationSettings.AppSettings("Internet_EMail")

        gsIntranetURL = ConfigurationSettings.AppSettings("IntranetURL")

        gsHRPTTDepartmentCode = ConfigurationSettings.AppSettings("HR_PTT_DepartmentCode")
        gsAppAdmins = ConfigurationSettings.AppSettings("App_Admins")
    End Sub


    Public Function LoadInternetUser(ByVal UserName As String, ByVal Password As String) As String
        Dim DR As DataRow
        Dim INDDAL As New DAL.Component
        Dim Msg As String
        Dim RoleDesc(1) As String
        Dim DB As New DBUTIL

        Try
            DR = DB.GetDR(INDDAL.InternetLogin(UserName, Password))
            If Not IsNothing(DR) Then
                If DR("DISABLED") & "" = "Y" Then
                    Msg = "ไม่สามารถ Log on ได้เนื่องจากผู้ใช้ " & UserName & " นี้ถูกระงับ   กรุณาติดต่อผู้ดูแลระบบ!"
                Else
                    Msg = ""
                    With HttpContext.Current
                        .Session("USER_NAME") = DR("USER_NAME") & ""
                        .Session("USER_DESC") = Replace(DR("USER_DESC") & "", "*", "")
                        .Session("EMAIL") = DR("EMAIL") & ""
                        .Session("POSITION") = DR("POSITION") & ""
                        .Session("TEL") = DR("TELNO") & ""
                        .Session("MOBILE") = DR("MOBILE") & ""
                        .Session("PASSWORD") = DR("PASSWORD") & ""
                        .Session("COMPANY_ID") = DR("CUST_ID") & ""
                    End With
                End If
            Else
                Msg = " User name และ Password ไม่ถูกต้อง ! กรุณาตรวจสอบข้อมูลดังกล่าวอีกครั้ง"
            End If
        Catch ex As Exception
            Msg = GetErrorMsg(ex, "", "เกิดข้อผิดพลาดไม่สามารถ Logon เข้าสู่ระบบได้ ")
        End Try
        Return Msg
    End Function


End Module
