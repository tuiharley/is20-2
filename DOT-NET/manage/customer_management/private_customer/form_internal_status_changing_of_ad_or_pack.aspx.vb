Public Class form_internal_status_changing_of_ad_or_pack
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

        'page=car&showNotice=" & tmp & "&noticeid=" & noticeid & "&cust_id=" & cust_id & "&curPos=" & curPos

        If Not IsPostBack Then
            fromP = Request.QueryString("page")
            noticeid = Request.QueryString("noticeid")
            showNotice = Request.QueryString("showNotice")
            cust_id = Request.QueryString("cust_id")
            curPos = Request.QueryString("curPos")

            Session("fromP") = fromP
            Session("noticeid") = noticeid
            Session("showNotice") = showNotice
            Session("cust_id") = cust_id
            Session("curPos") = curPos
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


        Session("fromP") = ""
        Session("noticeid") = ""
        Session("showNotice") = ""
        Session("cust_id") = ""
        Session("curPos") = ""

        If showNotice <> "" Then
            If showNotice = "OFF" Then
                NoticeDB.setOpenNotice(noticeid, 1, changeRem.Text)
            Else
                NoticeDB.setOpenNotice(noticeid, 0, changeRem.Text)
            End If
        End If

        If fromP = "adList" Then
            Response.Redirect("private_ad_list.aspx?cust_id=" & cust_id)
        Else
            '---?cust_id=" & cust_id & "&noticeid=" & A_customer_notices(i).id & "
            Response.Redirect(getPage(fromP) & "?cust_id=" & cust_id & "&noticeid=" & noticeid & "&curPos=" & curPos)
        End If

        
    End Sub

    Private Sub cancelBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancelBtn.Click
        Dim fromP As String = Session("fromP")
        Dim showNotice As String = Session("showNotice")
        Dim noticeid As Integer = Session("noticeid")
        Dim cust_id As Integer = Session("cust_id")
        Dim curPos As Integer = Session("curPos")


        Session("fromP") = ""
        Session("noticeid") = ""
        Session("showNotice") = ""
        Session("cust_id") = ""
        Session("curPos") = ""

        If fromP = "adList" Then
            Response.Redirect("private_ad_list.aspx?cust_id=" & cust_id)
        Else
            '---?cust_id=" & cust_id & "&noticeid=" & A_customer_notices(i).id & "
            Response.Redirect(getPage(fromP) & "?cust_id=" & cust_id & "&noticeid=" & noticeid & "&curPos=" & curPos)
        End If
    End Sub

    Function getPage(ByVal fromP As String) As String
        Dim myPage As String

        Select Case fromP
            Case "car"
                myPage = "private_vehicle_detail.aspx"
            Case "moto"
                myPage = "private_moto_detail.aspx"
            Case "truck"
                myPage = "private_truck_detail.aspx"
            Case "part"
                myPage = "private_part_detail.aspx"
        End Select


        Return myPage
    End Function
End Class
