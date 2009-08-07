Public Class search1_business
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents doSearch As System.Web.UI.WebControls.Button
    Protected WithEvents err As System.Web.UI.WebControls.Label
    Protected WithEvents toDealer As System.Web.UI.WebControls.HyperLink
    Protected WithEvents newDealer As System.Web.UI.WebControls.Label

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
        If Request.Form("buzType") = "0" Then
            err.Text = "กรุณาเลือกหมวดหมู่"
        Else
            Err.Text = ""
        End If

        'Session("province") = 5
        'Session("district") = 99
        'Session("buzType") = 2
        'Session("carType") = 2

        Session("SearchCond") = ""
        newDealer.Text = showDealer()

        AjaxPro.Utility.RegisterTypeForAjax(GetType(search1_business))
        AjaxPro.Utility.RegisterTypeForAjax(GetType(showBrands))
    End Sub

    '===========================Customer Province===============================
    Function checkProvince(ByVal province_id As Integer) As String
        Dim province_condition As String

        If province_id <> 0 Then
            province_condition = " And (Customer_Province = " & province_id & ") "
            Session("SearchCond") = Session("SearchCond") & ProvinceDB.getProvinceName(province_id) & "; "
            Session("province") = CInt(Request.Form("province"))
        Else
            province_condition = ""
            Session("province") = 0
        End If

        Return province_condition
    End Function
    Function checkDistrict(ByVal district_id As Integer) As String
        Dim district_condition As String

        If district_id <> 0 Then
            district_condition = " And (Customer_District = " & district_id & ") "
            Session("SearchCond") = Session("SearchCond") & DistrictDB.getDistrictName(district_id) & "; "
            Session("district") = CInt(Request.Form("district"))
        Else
            district_condition = ""
            Session("district") = 0
        End If

        Return district_condition
    End Function
    Function checkBuzType(ByVal buzType_id As Integer) As String
        Dim district_condition As String
        Dim myBuz As BusinessType

        If buzType_id <> 0 Then
            district_condition = " And (BusinessType.BusinessType_Id = " & buzType_id & " AND (Info_Questions.q1=1 or Info_Questions.q2=1 or Info_Questions.q3=1)) "
            myBuz = BusinessTypeDB.getBuZName(buzType_id)
            Session("SearchCond") = Session("SearchCond") & myBuz.typeName & "; "
            Session("buzType") = CInt(Request.Form("buztype"))
        Else
            district_condition = ""
            Session("buzType") = 0
        End If

        Return district_condition
    End Function
    Function checkCarType(ByVal carType_id As Integer) As String
        Dim district_condition As String

        If carType_id <> 0 Then
            Select Case carType_id
                Case 1
                    district_condition = " And (Info_Questions.q1 = 1) "
                    Session("SearchCond") = Session("SearchCond") & "รถยนต์; "
                Case 2
                    district_condition = " And (Info_Questions.q2 = 1) "
                    Session("SearchCond") = Session("SearchCond") & "รถจักรยานยนต์; "
                Case 3
                    district_condition = " And (Info_Questions.q3 = 1) "
                    Session("SearchCond") = Session("SearchCond") & "รถบรรทุก; "
            End Select
            Session("carType") = CInt(carType_id)
        Else
            district_condition = ""
            Session("carType") = 0
        End If

        Return district_condition
    End Function
    Private Sub doSearch_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles doSearch.Click
        Dim sql As String
        Dim end_sql As String
        Dim buzType As Integer = CInt(Request.Form("buzType"))

        Select Case buzType
            Case 1, 2, 3, 4, 5
                sql = "SELECT     Info_Questions.cust_id, Info_Questions.q1, Info_Questions.q2, Info_Questions.q3, District.District_Name, Province.Province_Name "
                sql = sql & " FROM  Info_Questions INNER JOIN"
                sql = sql & " BusinessType ON Info_Questions.questionType = BusinessType.BusinessType_Word2 INNER JOIN"
                sql = sql & " Customer ON Info_Questions.cust_id = Customer.Customer_Id INNER JOIN"
                sql = sql & " District ON Customer.Customer_District = District.District INNER JOIN"
                sql = sql & " Province ON Customer.Customer_Province = Province.Province"
                sql = sql & " WHERE (1=1) "
                'WHERE (BusinessType.BusinessType_Id = 2) AND (Customer.Customer_District = 1) AND (Customer.Customer_Province = 2)
                'AND (Info_Questions.q1 = 1) AND (Info_Questions.q2 = 1) AND (Info_Questions.q3 = 1)

                sql = sql & checkBuzType(CInt(Request.Form("buzType")))
                sql = sql & checkCarType(CInt(Request.Form("carType")))
                sql = sql & checkDistrict(CInt(Request.Form("district")))
                sql = sql & checkProvince(CInt(Request.Form("province")))

                Session("searchSQL") = sql
                Response.Redirect("search2_result_business.aspx")
                'Response.Write(sql)
        End Select
       

    End Sub

    ' <AjaxPro.AjaxMethod()> _
    Public Function showDealer() As String
        Dim sql As String
        Dim logo As String
        Dim i As Integer = 1
        Dim myNewCust As Queue
        Dim myCust As RandCustomer
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        myNewCust = CustomerDB.getNewCust()


        For Each myCust In myNewCust
            If i = 1 Then
                sql = "<td width='7'></td>"
            End If
            sql = sql & "<td width='130' valign='top'><table width='100%' border='0' cellpadding='0' cellspacing='0' class='Font_blue_LH_15px'>"
            sql = sql & "<tr>"
            sql = sql & "<td><div align='center'><a href='" & userURL & myCust.username & "/index.html' target='_blank'>"
            If myCust.logo_txt <> "" Then
                logo = userURL & myCust.username & "/logo/" & myCust.logo_txt
            Else
                logo = ""
            End If
            sql = sql & showMainPic(logo)
            sql = sql & "</a></div>"
            sql = sql & "</td>"
            sql = sql & "</tr>"
            sql = sql & "<tr>"
            sql = sql & "<td height='5'></td>"
            sql = sql & "</tr>"
            sql = sql & "<tr>"
            sql = sql & "<td><div align='center'>" & myCust.provinceName & "</div>"
            sql = sql & "</td>"
            sql = sql & "</tr>"
            sql = sql & "<tr>"
            sql = sql & "<td><div align='center'>" & myCust.districName & "</div>"
            sql = sql & "</td>"
            sql = sql & "</tr>"
            sql = sql & "</table>"
            sql = sql & "</td>"
            If i = 5 Then
                sql = sql & "<td width='7'></td>"
            Else
                sql = sql & "<td width='7' background='../../images/separator/g_7.gif'></td>"
            End If
            i = i + 1
        Next





        Return sql
    End Function
    Public Function showMainPic(ByVal picUrl As String) As String
        Dim tmp As String, tmp2 As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim x As Integer

        Dim bAns As Boolean
        Dim sErr As String

        'If picUrl = "http://www.auto-onclick.com/images/objects/no_image_60x45.gif" Then
        '    picUrl = "http://www.auto-onclick.com/images/objects/no_image_250x188.gif"

        If picUrl = "" Then
            picUrl = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_80x60.gif"
        End If

        If picUrl.IndexOf("userData") <> -1 Then
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("userData"))
            tmp2 = "/" & tmp2

        Else
            tmp2 = Right(picUrl, picUrl.Length - picUrl.IndexOf("images"))
            tmp2 = "../../" & tmp2

        End If

        'bAns = DealerHP.AppendTextToFile(tmp2 & vbCrLf, "D:\userData\log.tui", sErr)

        a = New Bitmap(Server.MapPath(tmp2))
        autoonclick.resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 80)
        tmp = "<img border='0' style=""CURSOR: hand"" src='" & picUrl & "' width='" & imageWidth & "' height='60" ' >"




        Return tmp
    End Function

    <AjaxPro.AjaxMethod()> _
    Public Function getValue() As String
        Dim result As String

        Dim prov As String
        Dim dist As String
        Dim buzType As String
        Dim carType As String

        If IsNothing(Session("province")) Or Session("province") = 0 Then
            prov = "-1"
        Else
            prov = Session("province")
        End If
        If IsNothing(Session("district")) Or Session("district") = 0 Then
            dist = "-1"
        Else
            dist = Session("district")
        End If
        If IsNothing(Session("buzType")) Or Session("buzType") = 0 Then
            buzType = "-1"
        Else
            buzType = Session("buzType")
        End If
        If IsNothing(Session("carType")) Or Session("carType") = 0 Then
            carType = "-1"
        Else
            carType = Session("carType")
        End If



        result = prov & "|" & dist & "|" & buzType & "|" & carType

        Return result
    End Function
End Class
