Public Class form_internal_status_changing_of_ad
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents change As System.Web.UI.WebControls.Button
    Protected WithEvents cancelBtn As System.Web.UI.WebControls.Button
    Protected WithEvents changeRem As System.Web.UI.WebControls.TextBox

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
        Dim fromP As String
        Dim showNotice As String

        Dim noticeid As Integer
        Dim cust_id As Integer
        Dim curPos As Integer
        Dim detailid As Integer
        Dim carid As Integer

        'page=car&showNotice=" & tmp2 & "&cust_id=" & cust_id & "&noticeid=" & noticeid & "
        '&detailid=" & detailid & "&carid=" & carId & "&curPos=" & curPos

        If Not IsPostBack Then
            fromP = Request.QueryString("page")
            showNotice = Request.QueryString("showNotice")

            noticeid = Request.QueryString("noticeid")
            cust_id = Request.QueryString("cust_id")
            curPos = Request.QueryString("curPos")
            detailid = Request.QueryString("detailid")
            carid = Request.QueryString("carid")



            Session("fromP") = fromP
            Session("showNotice") = showNotice

            Session("noticeid") = noticeid
            Session("cust_id") = cust_id
            Session("curPos") = curPos
            Session("detailid") = detailid
            Session("carid") = carid

            showInfo(noticeid)
        End If


    End Sub

    Private Sub showInfo(ByVal noticeid As Integer)

        changeRem.Text = Now.ToString("hh:m/dd-mm-yyyy:")
    End Sub

    Private Sub change_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles change.Click
        Dim fromP As String = Session("fromP")
        Dim showNotice As String = Session("showNotice")
        Dim noticeid As Integer = Session("noticeid")
        Dim cust_id As Integer = Session("cust_id")
        Dim curPos As Integer = Session("curPos")
        Dim detailid As Integer = Session("detailid")
        Dim carid As Integer = Session("carid")


        Session("fromP") = ""
        Session("noticeid") = ""
        Session("showNotice") = ""
        Session("cust_id") = ""
        Session("curPos") = ""
        Session("detailid") = ""
        Session("carid") = ""

        If showNotice <> "" Then
            If showNotice = "OFF" Then
                NoticeDetailDB.setOpenNoticeDetail(detailid, 1, changeRem.Text)
            Else
                NoticeDetailDB.setOpenNoticeDetail(detailid, 0, changeRem.Text)
            End If
        End If

        If fromP = "adList" Then
            Response.Redirect("../lists/business_ad_list_of_package.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid)
        Else
            Response.Redirect(getPage(fromP) & "?cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & detailid & "&carid=" & carid & "&curPos=" & curPos)
        End If


    End Sub

    Private Sub cancelBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancelBtn.Click
        Dim fromP As String = Session("fromP")
        Dim showNotice As String = Session("showNotice")
        Dim noticeid As Integer = Session("noticeid")
        Dim cust_id As Integer = Session("cust_id")
        Dim curPos As Integer = Session("curPos")
        Dim detailid As Integer = Session("detailid")
        Dim carid As Integer = Session("carid")


        Session("fromP") = ""
        Session("noticeid") = ""
        Session("showNotice") = ""
        Session("cust_id") = ""
        Session("curPos") = ""
        Session("detailid") = ""
        Session("carid") = ""

        If fromP = "adList" Then
            Response.Redirect("../lists/business_ad_list_of_package.aspx?cust_id=" & cust_id & "&noticeid=" & noticeid)
        Else
            Response.Redirect(getPage(fromP) & "?cust_id=" & cust_id & "&noticeid=" & noticeid & "&detailid=" & detailid & "&carid=" & carId & "&curPos=" & curPos)
        End If
    End Sub

    Function getPage(ByVal fromP As String) As String
        Dim myPage As String

        Select Case fromP
            Case "car"
                myPage = "business_vehicle_detail.aspx"
            Case "moto"
                myPage = "business_moto_detail.aspx"
            Case "truck"
                myPage = "business_truck_detail.aspx"
            Case "part"
                myPage = "business_part_detail.aspx"
        End Select


        Return myPage
    End Function
End Class
