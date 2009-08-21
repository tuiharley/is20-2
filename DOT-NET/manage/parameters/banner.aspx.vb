Imports System.IO
Public Class bannerPage
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents allBanners As System.Web.UI.WebControls.Label
    Protected WithEvents d As System.Web.UI.HtmlControls.HtmlInputText

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
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        AjaxPro.Utility.RegisterTypeForAjax(GetType(bannerPage))

    End Sub

    <AjaxPro.AjaxMethod()> _
    Public Function showAllBanner() As String
        Dim sql As String = ""
        Dim myQBAnner As Queue
        Dim myBanner As Banner

        Dim IUrl As String
        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")


        sql = "<TABLE id='Table1' cellSpacing='1' cellPadding='1' width='100%' border='1'>"
        sql = sql & "<TR align='center' bgcolor='#00aaa0'>"
        sql = sql & "<TD width='15%'><b><FONT face='Tahoma' color='#ffffff'>หน้า</FONT></b></TD>"
        sql = sql & "<TD><b><FONT face='Tahoma' color='#ffffff'>link</FONT></b></TD>"
        sql = sql & "<TD><b><FONT face='Tahoma' color='#ffffff'>รูป</FONT></b></TD>"
        sql = sql & "<TD><b><FONT face='Tahoma' color='#ffffff'>คำสัง</FONT></b></TD>"
        sql = sql & "</TR>"

        myQBAnner = Bannerdb.getAllBanner
        For Each myBanner In myQBAnner
            sql = sql & " <TR align='center'>"
            sql = sql & " 	<TD>" & myBanner.Banner_Name & " - " & myBanner.Banner_Page & "</TD>"
            If myBanner.Banner_link <> "-" Then
                sql = sql & " 	<TD><a href='" & myBanner.Banner_link & "' target='_blank'>" & myBanner.Banner_link & "</a></TD>"
            Else
                sql = sql & " 	<TD>-</TD>"
            End If

            IUrl = picURL & "images/banner/" & myBanner.Banner_img & "?" & Now
            IUrl = "<img src='" & IUrl & "' width='" & myBanner.BWidth & "' height='" & myBanner.BHeight & "' >"
            sql = sql & " 	<TD>" & IUrl & "</TD>"
            sql = sql & " 	<TD><a href='editBanner.aspx?bName=" & myBanner.Banner_Name & "' >เปลี่ยน</a> <u><font onclick='del(" & myBanner.Banner_Id & ");' style=""CURSOR: hand"">ลบ</font><u></TD>"
            sql = sql & " 	</TR>"
        Next

        sql = sql & "</TABLE>"

        Return sql
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Sub getOldPic(ByVal bannerid As Integer)
        Dim sql As String = ""
        Dim myBanner As Banner

        Dim IUrl As String
        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")
        Dim picVD As String = ConfigurationSettings.AppSettings("picVD")

        Dim sContents As String, sErr As String
        Dim bAns As Boolean

        myBanner = Bannerdb.getBannerById(bannerid)
        'sContents = Server.MapPath(picVD)
        'bAns = DealerHP.AppendTextToFile(sContents, "C:\Inetpub\wwwroot\manage\log.txt" & vbCrLf, sErr)
        File.Copy(Server.MapPath(picVD) & "\" & myBanner.Banner_original, Server.MapPath(picVD) & "\images\banner\" & myBanner.Banner_img, True)
        Bannerdb.delBanner(bannerid)

    End Sub
End Class
