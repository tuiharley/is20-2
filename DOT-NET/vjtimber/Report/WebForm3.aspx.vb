Public Class WebForm3
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents CrystalReportViewer1 As CrystalDecisions.Web.CrystalReportViewer

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
        Dim objReportDocument As New CrystalDecisions.CrystalReports.Engine.ReportDocument
        Dim tliCurrent As CrystalDecisions.Shared.TableLogOnInfo
        Dim tbl As CrystalDecisions.CrystalReports.Engine.Table
        Dim mstrConn_ServerName As String = ConfigurationSettings.AppSettings("mstrConn_ServerName")
        Dim mstrConn_DatabaseName As String = ConfigurationSettings.AppSettings("mstrConn_DatabaseName")
        Dim mstrConn_UserID As String = ConfigurationSettings.AppSettings("mstrConn_UserID")
        Dim mstrConn_Password As String = ConfigurationSettings.AppSettings("mstrConn_Password")


        Dim filepath As String = Server.MapPath("CheckByCust.rpt")
        objReportDocument.Load(filepath)


        For Each tbl In objReportDocument.Database.Tables
            tliCurrent = tbl.LogOnInfo
            tliCurrent.ConnectionInfo.ServerName = mstrConn_ServerName
            tliCurrent.ConnectionInfo.DatabaseName = mstrConn_DatabaseName
            tliCurrent.ConnectionInfo.UserID = mstrConn_UserID
            tliCurrent.ConnectionInfo.Password = mstrConn_Password
            tbl.ApplyLogOnInfo(tliCurrent)
        Next



        With CrystalReportViewer1
            .ReportSource = objReportDocument
        End With

    End Sub

End Class
