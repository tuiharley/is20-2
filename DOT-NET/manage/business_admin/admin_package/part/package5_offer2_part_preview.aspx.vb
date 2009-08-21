Imports System.Drawing.Imaging
Imports System.IO
Public Class package5_offer2_part_preview
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents editPartData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents editContact As System.Web.UI.WebControls.HyperLink
    Protected WithEvents partBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents colorcode As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents compname As System.Web.UI.WebControls.Label
    Protected WithEvents officeHour As System.Web.UI.WebControls.Label
    Protected WithEvents compmap As System.Web.UI.WebControls.HyperLink

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

        Session("pagename") = "package5_offer2_part_preview.aspx"

        'If Session("cust_id") = 0 Then
        '    Response.Redirect("../../../public/login/login.aspx")
        'Else
        initLink()
        carBrandLabel()
        showData()
        showpictures()
        'End If
    End Sub

    Private Sub initLink()
        editPartData.NavigateUrl = "package5_offer1_part_datas.aspx?edit=edit&noticeid=" & Session("noticeid")
        editContact.NavigateUrl = "../../change_contact/change_contact_datas.aspx"
    End Sub
    Private Sub carBrandLabel()
        partBrand.Text = CategoryDB.getCategoryName(Session("sBrands")) & " : " & Session("brand") & " / " & Session("model")
        partBrand.ForeColor = Color.White
        partBrand.CssClass = "H1_white"

        If Session("price") = "" Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(Session("price"))
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"
    End Sub
    Private Sub showData()

        If PartsTypeDB.getPartTypeName(Session("sModel")) = "อื่นๆ" Then
            If Session("other") <> "" Then
                category.Text = Session("other")
            Else
                category.Text = "-"
            End If
        Else
            category.Text = PartsTypeDB.getPartTypeName(Session("sModel"))
        End If



        If Session("price") = "" Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(Session("price")) & "  บาท"
        End If

        'status.Text = CarStatusDB.getStatusName(Session("other"))
        If Session("status") = "" Then
            status.Text = "-"
        Else
            status.Text = StatusDB.getStatusName(Session("status"))
        End If

        If Session("partyear") = "yyyy" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = Session("partyear")
        End If

        If Session("nummi") = "" Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = Session("nummi") & "  " & Session("mi")
        End If

        If Session("colorcode") = "" Then
            colorcode.Text = "-"
        Else
            colorcode.Text = Session("colorcode") & "  " & Session("colorcode")
        End If

        'colors.Text = ColorDB.getColorName(Session("color"))
        If Session("color") = "" Then
            colors.Text = "-"
        Else
            colors.Text = Session("color")
        End If

        If Session("acc") = "1" Then
            accident.Text = "ชำรุด"
        Else
            accident.Text = "สินค้าไม่ชำรุด"
        End If

        If Session("insur") = "" Then
            insurrunce.Text = "-"
        Else
            If Session("insur") = "1" Then
                insurrunce.Text = "สินค้ามีประกัน"
            Else
                insurrunce.Text = "สินค้าไม่มีประกัน"
            End If
        End If

        If Session("partid") = "" Then
            carid.Text = "-"
        Else
            carid.Text = Session("partid")
        End If
        description.Text = Session("description")



        Dim myInfo As A_Customer
        myInfo = CustomerDB.getA_customer(Session("cust_id"))
        compname.Text = myInfo.name
        Addr.Text = myInfo.address & " อ." & DistrictDB.getDistrictName(myInfo.district) & " จ." & ProvinceDB.getProvinceName(myInfo.province)
        Tel.Text = myInfo.phone1
        If myInfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myInfo.phone2
        End If
        fax.Text = myInfo.fax
        If myInfo.timeStart <> 0 Then
            officeHour.Text = myInfo.timeStart & " - " & myInfo.timeStop
        Else
            officeHour.Text = "-"
        End If
        If myInfo.map_txt <> "" Then
            Dim IUrl As String
            compmap.Target = "_blank"
            IUrl = "/userData/" & myInfo.username & "/map/" & myInfo.map_txt
            compmap.NavigateUrl = IUrl
        End If

    End Sub
    Private Sub showpictures()

        'Session("img2").PostedFile.FileName()
        'Session("img3").PostedFile.FileName()
        'Session("img4").PostedFile.FileName()
        'Session("img5").PostedFile.FileName()
        Image1.Width = Unit.Pixel(327)
        Image1.Height = Unit.Pixel(327)

        If (Session("img1").PostedFile.ContentLength = 0) Or (Session("img1").PostedFile.ContentLength >= 150010) Then
            Image1.ImageUrl = "../../../images/objects/no_image_60x45.gif"
        Else
            Image1.ImageUrl = Session("img1").PostedFile.FileName()
        End If



        'Image1.ImageUrl = Session("Image1").ImageUrl
        'Image2.ImageUrl = Session("Image2").ImageUrl
        'Image3.ImageUrl = Session("Image3").ImageUrl
        'Image4.ImageUrl = Session("Image4").ImageUrl
        'Image5.ImageUrl = Session("Image5").ImageUrl



    End Sub
    Private Sub clearSession()
        '----------car data-----------------------
        Session.Add("cat", "")

        Session.Add("sBrands", "")
        Session.Add("brandIndex", "")
        Session.Add("sModel", "")
        Session.Add("modelIndex", "")
        Session.Add("status", "")

        Session.Add("other", "")
        Session.Add("brand", "")
        Session.Add("model", "")
        Session.Add("partid", "")
        Session.Add("partyear", "")
        Session.Add("color", "")
        Session.Add("colorcode", "")
        Session.Add("nummi", "")
        Session.Add("mi", "")

        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")
        Session.Add("description", "")

        Session.Add("edit", "")
        Session.Add("img1", "")
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        savePartDatabase(Session("noticeid"))
        clearSession()
        Response.Redirect("../../startpage/startpage_example_with_package.aspx?cust_id=" & Session("cust_id"))
    End Sub
    Private Sub savePartDatabase(ByVal noticeid As Integer)

        '-----------------Add Car----------------------------
        Dim carid As Integer = PartsDB.addNewPart(Session("sBrands"), Session("sModel"), Session("other"), Session("brand"), Session("model"), Session("partid"), Session("status"), Session("partyear"), checkFistYear2(Session("partyear")), Session("color"), Session("colorcode"), Session("nummi"), Session("mi"), Session("insur"), Session("acc"), Session("price"), Session("description"), getFileName(Session("img1")))

        '-----------------Add Notice -------------------------
        Dim noticeDetail As Integer
        noticeDetail = NoticeDetailDB.addNewNoticeDetail(noticeid, carid)

        '----------------Upload Files------------------------
        Dim usrName As String = CustomerDB.getUserName(Session("cust_id"))

        Dim pathDirectory As String = Path.GetDirectoryName(Server.MapPath("/userData"))
        Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
        objdir.CreateSubdirectory(usrName & "\" & noticeid & "\" & noticeDetail)

        Dim temppath As String = Server.MapPath("/userData") & "\" & usrName & "\" & noticeid & "\" & noticeDetail
        Dim tempFile As String

        If getFileName(Session("img1")) <> "" Then
            tempFile = Utilities.UploadFile2(Session("img1"), temppath)
        End If


    End Sub


    Private Function getFileName(ByVal Fileupload As Object) As String
        If Fileupload.PostedFile.ContentLength = 0 Or Fileupload.PostedFile.ContentLength >= 150010 Then
            Return ""
        Else
            Dim FileFullName As String = Fileupload.PostedFile.FileName
            Dim FileName As String = Path.GetFileName(FileFullName)
            'Return "'" & FileName & "'"
            Return FileName
        End If
    End Function
    Private Function getStopDate(ByVal package_id As Integer) As String
        Dim temp_date As Date
        Dim ans As String

        'temp_date = DateAdd(DateInterval.WeekOfYear, PackageDB.getPackageWeek(package_id), Now())
        'ans = "CONVERT(DATETIME,'" & temp_date.Year & "-" & temp_date.Month & "-" & temp_date.Day & " " & temp_date.Hour & ":" & temp_date.Minute & ":" & temp_date.Second & "',102)"
        ans = " dateadd(month," & PackageDB.getPackageWeek(package_id) & " ,getdate()) "
        Return ans
    End Function
    Private Function checkFistYear(ByVal v_fmm As String, ByVal v_fyyyy As String) As String
        Dim v_first As String = v_fmm & "/" & v_fyyyy
        If v_first = "/" Or v_first = "mm/yyyy" Then
            v_first = ""
        End If
        Return v_first
    End Function
    Private Function checkFistYear2(ByVal v_fyyyy As String) As Integer
        Dim v_first As String = v_fyyyy
        If v_first = "" Or v_first = "yyyy" Then
            v_first = 0
        End If
        Return v_first
    End Function
    Private Function checkLastYear(ByVal v_lmm As String, ByVal v_lyyyy As String) As String
        Dim v_last As String = v_lmm & "/" & v_lyyyy
        If v_last = "mm/yyyy" Then
            v_last = ""
        End If
        Return v_last
    End Function
End Class
