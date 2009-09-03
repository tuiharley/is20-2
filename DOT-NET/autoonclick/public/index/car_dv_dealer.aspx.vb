Imports System.Web.Mail

Public Class car_dv_dealer
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
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
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents operateTime As System.Web.UI.WebControls.Label
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents EmailRequiredFieldValidator As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents EmailRegularExpressionValidator As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents question As System.Web.UI.WebControls.TextBox
    Protected WithEvents carBrand As System.Web.UI.WebControls.Label
    Protected WithEvents head_year As System.Web.UI.WebControls.Label
    Protected WithEvents head_price As System.Web.UI.WebControls.Label
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_home As System.Web.UI.WebControls.HyperLink
    Protected WithEvents savePak As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sendFr As System.Web.UI.WebControls.HyperLink
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents warnDel As System.Web.UI.WebControls.HyperLink


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
        Dim carid As Integer
        Dim myCar As Car
        Dim myInfo As A_Customer


        If Not IsPostBack Then
            carid = Request.QueryString("carid")
            carid = 2

            myCar = CarDB.getCar(carid)
            myInfo = CustomerDB.getA_customer(NoticeDB.getCustID(carid, 1))
            If myInfo.type = 0 Then
                Response.Redirect("car_dv_private.aspx?curData=" & Request.QueryString("curData") & "&fmp=" & Request.QueryString("fmp") & "&carid=" & carid)

            End If

            setTools(carid)
            showCar(myCar)
            showMyInfo(myInfo)

            Session("custID") = myInfo.id
            Session("mailto") = myInfo.email
            Session("carID") = myCar.id
            Session("fmp") = Request.QueryString("fmp")
        End If

        AjaxPro.Utility.RegisterTypeForAjax(GetType(car_dv_dealer))
    End Sub

    Private Sub setTools(ByVal carid As Integer)
        printThis.NavigateUrl = "../../print_form/print_car_detail.aspx?carid=" & carid
        printThis.Target = "_blank"
        printThis.Text = "พิมพ์หน้านี้"

        savePak.NavigateUrl = "javascript:saveAdv(" & carid & ");"
        savePak.Text = "บันทึกประกาศ"

        sendFr.NavigateUrl = "../sendFriend/sending.aspx?carid=" & carid & "&cat=1"
        sendFr.Target = "_blank"
        sendFr.Text = "ส่งให้เพื่อน"

        warnDel.Text = "แจ้งลบประกาศ"
        warnDel.Target = "_blank"
        warnDel.NavigateUrl = "../warn/warning.aspx?detail_id=" & NoticeDetailDB.getNoticeDetailID2(carid, "1")
    End Sub
    Private Sub carBrandLabel(ByVal b As String, ByVal m As String, ByVal sm As String, ByVal price As Double, ByVal year As String)
        carBrand.Text = b & " " & m
        If sm <> "" Then
            carBrand.Text = carBrand.Text & " " & sm
        End If


        If year = "" Then
            head_year.Text = "ใหม่!"
        Else
            head_year.Text = year
        End If


        If price = 0 Then
            head_price.Text = "-"
        Else
            head_price.Text = FormatNumber(price, 0, , , TriState.True)
        End If

    End Sub
    Private Sub showCar(ByRef myCar As Car)

        category.Text = CarTypeDB.getStatusName(myCar.Type, 1)

        carBrandLabel(BrandDB.getBrandName(myCar.Brand), ModelDB.getModelName(myCar.Model), myCar.SubModel, myCar.Price, myCar.Year)

        If myCar.Price = 0 Then
            Price.Text = "-  บาท"
        Else
            Price.Text = FormatNumber(myCar.Price) & "  บาท"
        End If

        status.Text = CarStatusDB.getStatusName(myCar.Status)

        If myCar.Year = "" Then
            yearcar.Text = "-"
        Else
            yearcar.Text = myCar.Year
        End If

        If myCar.Miles = 0 Then
            miles.Text = "-  km/mi"
        Else
            miles.Text = myCar.Miles & "  " & myCar.MilesType
        End If

        enginetype.Text = EngineTypeDB.getEngineName(myCar.EngineType)

        If myCar.Power = 0 Then
            power.Text = "-  hp/kw"
        Else
            power.Text = myCar.Power & "  " & myCar.PowerType
        End If

        colors.Text = ColorDB.getColorName(myCar.Color)
        If myCar.Metalic = 1 Then
            colors.Text = colors.Text & " เมทาลิค"
        End If

        gear.Text = GearDB.getGearType(myCar.Gears)

        If myCar.NumGear = 0 Then
            numgear.Text = "-"
        Else
            numgear.Text = myCar.NumGear
        End If

        If myCar.NumPump = 0 Then
            numpump.Text = "-"
        Else
            numpump.Text = myCar.NumPump
        End If

        If myCar.CC = 0 Then
            cc.Text = "-  ซีซี/CC"
        Else
            cc.Text = myCar.CC & "  ซีซี/CC"
        End If

        If myCar.NumDoor = 0 Then
            numdoor.Text = "-"
        Else
            numdoor.Text = myCar.NumDoor
        End If

        If myCar.NumSeat = 0 Then
            numseat.Text = "-"
        Else
            numseat.Text = myCar.NumSeat
        End If

        If myCar.FuelConsume = 0 Then
            fuelconsume.Text = "-  km/ลิตร"
        Else
            fuelconsume.Text = myCar.FuelConsume & "  km/ลิตร"
        End If

        If myCar.FuelTank = 0 Then
            fueltank.Text = "-  ลิตร"
        Else
            fueltank.Text = myCar.FuelTank & "  ลิตร"
        End If

        If myCar.LastCheck = "" Then
            lastcheck.Text = "-"
        Else
            lastcheck.Text = myCar.LastCheck
        End If

        If myCar.Accident = 999 Then
            accident.Text = "-"
        Else
            If myCar.Accident = -1 Then
                accident.Text = "รถมีอุบัติเหตุ"
            Else
                accident.Text = "รถไม่มีอุบัติเหตุ"
            End If
        End If

        If myCar.Insurrance = 999 Then
            insurrunce.Text = "-"
        Else
            If myCar.Insurrance = -1 Then
                insurrunce.Text = "รถมีประกัน"
            Else
                insurrunce.Text = "รถไม่มีประกัน"
            End If
        End If

        If myCar.BodyId = "" Then
            carid.Text = "-"
        Else
            carid.Text = myCar.BodyId
        End If

        accessory.Text = CarDB.getAccesory(myCar.id)
        description.Text = myCar.Information

    End Sub
    Private Sub showMyInfo(ByRef myinfo As A_Customer)
        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        If myinfo.type = 0 Then
            custName.Text = "-"
        Else
            custName.Text = myinfo.name
        End If

        Addr.Text = myinfo.address & ", อำเภอ " & DistrictDB.getDistrictName(myinfo.district) & " จังหวัด " & ProvinceDB.getProvinceName(myinfo.province)
        Tel.Text = myinfo.phone1
        If myinfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myinfo.phone2
        End If
        fax.Text = myinfo.fax

        If myinfo.timeStart <> 0 Then
            operateTime.Text = myinfo.timeStart & " - " & myinfo.timeStop
        Else
            operateTime.Text = "-"
        End If

        If myinfo.map_txt <> "" Then
            de_map.NavigateUrl = "business_homepage/dealer_business_web_map.aspx?dealer_id=" & myinfo.id
            de_map.Target = "_blank"
        End If

        de_home.NavigateUrl = userURL & myinfo.username & "/index.html"
        de_home.Target = "_blank"
    End Sub


    <AjaxPro.AjaxMethod()> _
        Public Function sendQuestion(ByVal name As String, ByVal email As String, ByVal phone1 As String, ByVal question As String) As String
        Dim EQuestion As mailQuestion


        EQuestion.name = name
        EQuestion.mail = email
        EQuestion.tel = phone1
        EQuestion.question = question

        EmailDB.sendMailQuestion(Session("mailto"), Session("custID"), Session("carID"), 1, EQuestion)

        Return "Email ได้ถูกจัดส่งเรียบร้อย"
    End Function
End Class
