Imports System.Drawing.Imaging
Imports System.IO
Public Class package5_offer2_car_preview
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents editCarData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents editContact As System.Web.UI.WebControls.HyperLink
    Protected WithEvents carBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents category As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents status As System.Web.UI.WebControls.Label
    Protected WithEvents yearcar As System.Web.UI.WebControls.Label
    Protected WithEvents miles As System.Web.UI.WebControls.Label
    Protected WithEvents enginetype As System.Web.UI.WebControls.Label
    Protected WithEvents power As System.Web.UI.WebControls.Label
    Protected WithEvents colors As System.Web.UI.WebControls.Label
    Protected WithEvents gear As System.Web.UI.WebControls.Label
    Protected WithEvents numgear As System.Web.UI.WebControls.Label
    Protected WithEvents numpump As System.Web.UI.WebControls.Label
    Protected WithEvents cc As System.Web.UI.WebControls.Label
    Protected WithEvents numdoor As System.Web.UI.WebControls.Label
    Protected WithEvents numseat As System.Web.UI.WebControls.Label
    Protected WithEvents fuelconsume As System.Web.UI.WebControls.Label
    Protected WithEvents fueltank As System.Web.UI.WebControls.Label
    Protected WithEvents lastcheck As System.Web.UI.WebControls.Label
    Protected WithEvents accident As System.Web.UI.WebControls.Label
    Protected WithEvents insurrunce As System.Web.UI.WebControls.Label
    Protected WithEvents carid As System.Web.UI.WebControls.Label
    Protected WithEvents accessory As System.Web.UI.WebControls.Label
    Protected WithEvents description As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents Image2 As System.Web.UI.WebControls.Image
    Protected WithEvents Image3 As System.Web.UI.WebControls.Image
    Protected WithEvents Image4 As System.Web.UI.WebControls.Image
    Protected WithEvents Image5 As System.Web.UI.WebControls.Image
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents compname As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents officeHour As System.Web.UI.WebControls.Label
    Protected WithEvents compmap As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_home As System.Web.UI.WebControls.HyperLink

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

        Session("pagename") = "package5_offer2_car_preview.aspx"

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../../public/login/login.aspx")
        Else
            initLink()
            carBrandLabel()
            showData()
            showpictures()
        End If

    End Sub


    Private Sub initLink()
        editCarData.NavigateUrl = "package5_offer1_car_datas.aspx?edit=edit&noticeid=" & Session("noticeid")
        editContact.NavigateUrl = "../../change_contact/change_contact_datas.aspx"
    End Sub
    Private Sub carBrandLabel()
        carBrand.Text = BrandDB.getBrandName(Session("sBrands")) & " / " & ModelDB.getModelName(Session("sModel"))
        If Session("submodel") <> "" Then
            carBrand.Text = carBrand.Text & " / " & Session("submodel")
        End If
        carBrand.ForeColor = Color.White
        carBrand.CssClass = "H1_white"

        If Session("price") = "" Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(Session("price"))
        End If
        head_price.ForeColor = Color.White
        head_price.CssClass = "H1_white"
    End Sub
    Private Sub showData()
        category.Text = CarTypeDB.getStatusName(Session("cartype"), 1)

        If Session("price") = "" Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(Session("price")) & "  บาท"
        End If

        status.Text = CarStatusDB.getStatusName(Session("status"))

        If (Session("firstmm") = "mm" And Session("firstyyyy") = "yyyy") Or (Session("firstmm") = "" And Session("firstyyyy") = "") Then
            yearcar.Text = "-"
        Else
            If Session("firstmm") <> "mm" And Session("firstyyyy") <> "yyyy" Then
                yearcar.Text = Session("firstmm") & "/" & Session("firstyyyy")
            Else
                If Session("firstmm") = "mm" Then
                    yearcar.Text = "-/" & Session("firstyyyy")
                Else
                    yearcar.Text = Session("firstmm") & "/-"
                End If
            End If
        End If

        If Session("nummi") = "" Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = Session("nummi") & "  " & Session("mi")
        End If

        enginetype.Text = EngineTypeDB.getEngineName(Session("enginetype"))

        If Session("power") = "" Then
            power.Text = "-  hp/kw"
        Else
            power.Text = Session("power") & "  " & Session("pow")
        End If

        colors.Text = ColorDB.getColorName(Session("color"))
        If Session("metalic") Then
            colors.Text = colors.Text & " เมทาลิค"
        End If

        gear.Text = GearDB.getGearType(Session("gear"))

        If Session("numgear") = "" Then
            numgear.Text = "-"
        Else
            numgear.Text = Session("numgear")
        End If

        If Session("numpump") = "" Then
            numpump.Text = "-"
        Else
            numpump.Text = Session("numpump")
        End If

        If Session("cc") = "" Then
            cc.Text = "-  ซีซี/CC"
        Else
            cc.Text = Session("cc") & "  ซีซี/CC"
        End If

        If Session("numdoor") = "" Then
            numdoor.Text = "-"
        Else
            numdoor.Text = Session("numdoor")
        End If

        If Session("numseat") = "" Then
            numseat.Text = "-"
        Else
            numseat.Text = Session("numseat")
        End If

        If Session("fuelconsume") = "" Then
            fuelconsume.Text = "-  km/ลิตร"
        Else
            fuelconsume.Text = Session("fuelconsume") & "  km/ลิตร"
        End If

        If Session("fuelTank") = "" Then
            fueltank.Text = "-  ลิตร"
        Else
            fueltank.Text = Session("fueltank") & "  ลิตร"
        End If

        If Session("lastmm") = "mm" And Session("lastyyyy") = "yyyy" Then
            lastcheck.Text = "-"
        Else
            If Session("lastmm") <> "mm" And Session("lastyyyy") <> "yyyy" Then
                lastcheck.Text = Session("lastmm") & "/" & Session("lastyyyy")
            Else
                If Session("lastmm") = "mm" Then
                    lastcheck.Text = "-/" & Session("lastyyyy")
                Else
                    lastcheck.Text = Session("lastmm") & "/-"
                End If
            End If
        End If

        If Session("acc") = "" Then
            accident.Text = "-"
        Else
            If Session("acc") = "1" Then
                accident.Text = "รถมีอุบัติเหตุ"
            Else
                accident.Text = "รถไม่มีอุบัติเหตุ"
            End If
        End If

        If Session("insur") = "" Then
            insurrunce.Text = "-"
        Else
            If Session("insur") = "1" Then
                insurrunce.Text = "รถมีประกัน"
            Else
                insurrunce.Text = "รถไม่มีประกัน"
            End If
        End If

        If Session("carid") = "" Then
            carid.Text = "-"
        Else
            carid.Text = Session("carid")
        End If


        Dim v_acc As Accessory
        Dim tmp As String = ""
        Dim TempObjQueue As IEnumerator = Session("v_access").GetEnumerator()

        While (TempObjQueue.MoveNext)

            v_acc = TempObjQueue.Current
            tmp = tmp & ", " & v_acc.name
        End While

        If Session("v_access").Count > 0 Then
            accessory.Text = Right(tmp, tmp.Length - 2)
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
        'If myInfo.map_txt <> "" Then
        '    Dim IUrl As String
        '    compmap.Target = "_blank"
        '    IUrl = "/userData/" & myInfo.username & "/map/" & myInfo.map_txt
        '    compmap.NavigateUrl = IUrl
        'End If

        If myInfo.map_txt <> "" Then

            compmap.NavigateUrl = "../../../../public/search/business_homepage/dealer_business_web_map.aspx?dealer_id=" & myInfo.id
            compmap.Target = "_blank"
        End If

        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        de_home.NavigateUrl = userURL & myInfo.username & "/index.html"
        de_home.Target = "_blank"


    End Sub
    Private Sub showpictures()


        Image1.Width = Unit.Pixel(327)
        Image1.Height = Unit.Pixel(327)
        Image2.Width = Unit.Pixel(60)
        Image2.Height = Unit.Pixel(60)
        Image3.Width = Unit.Pixel(60)
        Image3.Height = Unit.Pixel(60)
        Image4.Width = Unit.Pixel(60)
        Image4.Height = Unit.Pixel(60)
        Image5.Width = Unit.Pixel(60)
        Image5.Height = Unit.Pixel(60)

        If (Session("img1").PostedFile.ContentLength = 0) Or (Session("img1").PostedFile.ContentLength >= 150010) Then
            Image1.ImageUrl = "../../../../images/objects/no_image_60x45.gif"
        Else
            Image1.ImageUrl = Session("img1").PostedFile.FileName()
        End If

        If (Session("img2").PostedFile.ContentLength = 0) Or (Session("img2").PostedFile.ContentLength >= 150010) Then
            Image2.ImageUrl = "../../../../images/objects/no_image_60x45.gif"
        Else
            Image2.ImageUrl = Session("img2").PostedFile.FileName()
        End If

        If (Session("img3").PostedFile.ContentLength = 0) Or (Session("img3").PostedFile.ContentLength >= 150010) Then
            Image3.ImageUrl = "../../../../images/objects/no_image_60x45.gif"
        Else
            Image3.ImageUrl = Session("img3").PostedFile.FileName()
        End If

        If (Session("img4").PostedFile.ContentLength = 0) Or (Session("img4").PostedFile.ContentLength >= 150010) Then
            Image4.ImageUrl = "../../../../images/objects/no_image_60x45.gif"
        Else
            Image4.ImageUrl = Session("img4").PostedFile.FileName()
        End If

        If (Session("img5").PostedFile.ContentLength = 0) Or (Session("img5").PostedFile.ContentLength >= 150010) Then
            Image5.ImageUrl = "../../../../images/objects/no_image_60x45.gif"
        Else
            Image5.ImageUrl = Session("img5").PostedFile.FileName()
        End If


    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        saveCarDatabase(Session("noticeid"))
        clearsession()
        Response.Redirect("../../startpage/startpage_example_with_package.aspx")
    End Sub
    Private Sub saveCarDatabase(ByVal noticeid As Integer)

        '-----------------Add Car----------------------------
        Dim carid As Integer = CarDB.addNewCar(Session("sBrands"), Session("sModel"), Session("status"), checkFistYear(Session("firstmm"), Session("firstyyyy")), checkFistYear2(Session("firstyyyy")), Session("submodel"), Session("cartype"), Session("carid"), Session("enginetype"), Session("cc"), Session("color"), Session("metalic"), Session("power"), Session("pow"), Session("gear"), Session("nummi"), Session("mi"), Session("numdoor"), Session("numgear"), Session("numseat"), Session("numpump"), Session("fuelconsume"), Session("fueltank"), checkLastYear(Session("lastmm"), Session("lastyyyy")), Session("insur"), Session("price"), Session("acc"), Session("v_access"), Session("description"), getFileName(Session("img1")), getFileName(Session("img2")), getFileName(Session("img3")), getFileName(Session("img4")), getFileName(Session("img5")))

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
            tempFile = Utilities.UploadFile(Session("img1"), temppath)
        End If
        If getFileName(Session("img2")) <> "" Then
            tempFile = Utilities.UploadFile(Session("img2"), temppath)
        End If
        If getFileName(Session("img3")) <> "" Then
            tempFile = Utilities.UploadFile(Session("img3"), temppath)
        End If
        If getFileName(Session("img4")) <> "" Then
            tempFile = Utilities.UploadFile(Session("img4"), temppath)
        End If
        If getFileName(Session("img5")) <> "" Then
            tempFile = Utilities.UploadFile(Session("img5"), temppath)
        End If


    End Sub
    Private Sub clearSession()

        Session.Add("sBrands", "")
        Session.Add("brandIndex", "")
        Session.Add("sModel", "")
        Session.Add("modelIndex", "")
        Session.Add("status", "")
        Session.Add("firstmm", "")
        Session.Add("firstyyyy", "")
        Session.Add("submodel", "")
        Session.Add("cartype", "")
        Session.Add("carid", "")
        Session.Add("enginetype", "")
        Session.Add("cc", "")
        Session.Add("color", "")
        Session.Add("metalic", "")
        Session.Add("power", "")
        Session.Add("pow", "")
        Session.Add("gear", "")
        Session.Add("nummi", "")
        Session.Add("mi", "")
        Session.Add("numdoor", "")
        Session.Add("numgear", "")
        Session.Add("numseat", "")
        Session.Add("numpump", "")
        Session.Add("fuelconsume", "")
        Session.Add("fueltank", "")
        Session.Add("lastmm", "")
        Session.Add("lastyyyy", "")
        Session.Add("insur", "")
        Session.Add("price", "")
        Session.Add("acc", "")
        Session.Add("v_access", "")

        Session.Add("description", "")
        Session.Add("img1", "")
        Session.Add("img2", "")
        Session.Add("img3", "")
        Session.Add("img4", "")
        Session.Add("img5", "")

        Session.Add("noticeid", "")
        Session.Add("edit", "")
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
