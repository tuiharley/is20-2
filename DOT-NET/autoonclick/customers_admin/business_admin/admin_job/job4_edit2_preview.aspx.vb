Public Class job4_edit2_preview
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents editCarData As System.Web.UI.WebControls.HyperLink
    Protected WithEvents compOffer As System.Web.UI.WebControls.Label
    Protected WithEvents introMainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents moreBuz As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents JEdu As System.Web.UI.WebControls.Label
    Protected WithEvents JBranch As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents JNum As System.Web.UI.WebControls.Label
    Protected WithEvents JPhone As System.Web.UI.WebControls.Label
    Protected WithEvents JPlace As System.Web.UI.WebControls.Label
    Protected WithEvents JDistrict As System.Web.UI.WebControls.Label
    Protected WithEvents JProvince As System.Web.UI.WebControls.Label
    Protected WithEvents compname As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents officeHour As System.Web.UI.WebControls.Label
    Protected WithEvents JInfo As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button

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

        'Session("cust_id") = 3
        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else
            If Not IsPostBack Then
                initLink(Session("myJob").Job_Id)
                showData(Session("myJob"))
                showCustInfo(Session("cust_id"))
                showHead(Session("cust_id"), Session("myJob"))
            End If
        End If
    End Sub

    Private Sub initLink(ByVal jobID As Integer)
        editCarData.NavigateUrl = "job4_edit1_datas.aspx?jobID=" & jobID & "&verb=edit"
        'editContact.NavigateUrl = "../change_contact/change_contact_datas.aspx"
    End Sub
    Private Sub showCustInfo(ByVal custID As Integer)
        Dim myInfo As A_Customer
        myInfo = CustomerDB.getA_customer(Session("cust_id"))
        compname.Text = myInfo.name
        Addr.Text = myInfo.address & " อ." & DistrictDB.getDistrictName(myInfo.district) & " จ." & ProvinceDB.getProvinceName(myInfo.province)
        Tel.Text = myInfo.phone1
        If myInfo.phone2 <> "" Then
            Tel.Text = Tel.Text & ", " & myInfo.phone2
        End If
        fax.Text = checkNullStr_Line(myInfo.fax)

        If myInfo.timeStart <> 0 Then
            officeHour.Text = myInfo.timeStart & " - " & myInfo.timeStop & " น."
        Else
            officeHour.Text = "-"
        End If
    End Sub
    Private Sub showData(ByVal myJob As Job)


        JEdu.Text = checkNullStr_Line(myJob.Job_Education)
        JBranch.Text = checkNullStr_Line(myJob.Job_Branch)
        If myJob.Job_Salary <> 0 Then
            Price.Text = myJob.Job_Salary
            If myJob.Job_SalaryType = "M" Then
                Price.Text = Price.Text & " ต่อเดือน"
            Else
                Price.Text = Price.Text & " ต่อวัน"
            End If
        Else
            Price.Text = checkNullStr_Line(myJob.Job_Salary)
        End If

        JNum.Text = checkNullStr_Line(myJob.Job_Num)
        JPhone.Text = myJob.Job_Phone
        JPlace.Text = myJob.Job_Location
        JDistrict.Text = DistrictDB.getDistrictName(myJob.Job_District)
        JProvince.Text = ProvinceDB.getProvinceName(myJob.Job_Province)

        JInfo.Text = checkNullStr_Line(myJob.Job_Information)

    End Sub

    Private Sub showHead(ByVal dealerid As Integer, ByVal myJob As Job)
        Dim mySubQ As New Queue
        mySubQ = InfoQuestionDB.getInfoQuestions(dealerid)
        Dim myMainB As infoQuestion = InfoQuestionDB.getMainQuestion(dealerid)
        Dim myCust As A_Customer = CustomerDB.getA_customer(dealerid)
        Dim myQ As New Queue
        Dim tmp As Position
        Dim txt As String


        myQ = getPosition(myJob.Job_Pos)
        For Each tmp In myQ
            txt = tmp.Position_Name
        Next

        'Jurias Carhouse เป็นผู้ลงประกาศตำแหน่งงานนี้: ตำแหน่งงาน
        compOffer.Text = myCust.name & " เป็นผู้ลงประกาศตำแหน่งงานนี้: " & txt
        introMainBuz.Text = showIntroMain(myMainB)
        moreBuz.Text = showIntroSub(mySubQ)
        image1.Text = showLogo(myCust)


    End Sub
    Private Function showIntroMain(ByVal mainB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(mainB.type)

        buzType = BusinessTypeDB.getBuZName(x)
        result = buzType.typeName
        If mainB.q1 = 1 Then
            result = result & " รถยนต์"
            flag = True
        End If
        If mainB.q2 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " รถจักรยานยนต์"
            flag = True
        End If
        If mainB.q3 = 1 Then
            If flag Then
                result = result & ","
            End If
            result = result & " รถบรรทุก"
        End If

        flag = False

        Select Case x
            Case 1
                Dim myBuz As infoSaleCar = InfoSaleCarDB.getInfoSaleCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 2
                Dim myBuz As infoServiceCar = InfoServiceCarDB.getInfoServiceCar(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
            Case 3
                Dim myBuz As infoSalePart = InfoSalePartDB.getInfoSalePart(mainB.cust_id)
                If myBuz.Official_Dealer = 1 Then
                    result = result & " (เป็นตัวแทนที่ได้รับการแต่งตั้งอย่างเป็นทางการโดย: " & myBuz.Official_Dealer_txt
                    flag = True
                End If
                If flag Then
                    result = result & " / - " & myBuz.Dealer_Type & ")"
                Else
                    result = result & "(" & myBuz.Dealer_Type & ")"
                End If
        End Select

        If result.Length > 175 Then
            result = Left(result, 170) & "..."
        End If

        Return result
    End Function
    Private Function showIntroSub(ByVal subQ As Queue) As String
        Dim result As String = ""
        Dim presult As String
        Dim myBuz As infoQuestion

        For Each myBuz In subQ
            presult = showSub(myBuz)
            If presult <> "-" Then
                result = result & presult & "; "
            End If
        Next

        If Len(result) > 0 Then
            result = Left(result, Len(result) - 2)
        Else
            result = "-"
        End If


        If result.Length > 175 Then
            result = Left(result, 170) & "..."
        End If


        Return result
    End Function
    Private Function showSub(ByVal subB As infoQuestion) As String
        Dim result As String
        Dim flag As Boolean = False
        Dim buzType As BusinessType
        Dim x As Integer = InfoQuestionDB.questionTypeRev(subB.type)

        If subB.q1 <> 0 Or subB.q2 <> 0 Or subB.q3 <> 0 Then
            buzType = BusinessTypeDB.getBuZName(x)
            result = buzType.typeName
            If subB.q1 = 1 Then
                result = result & " รถยนต์"
                flag = True
            End If
            If subB.q2 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " รถจักรยานยนต์"
                flag = True
            End If
            If subB.q3 = 1 Then
                If flag Then
                    result = result & ","
                End If
                result = result & " รถบรรทุก"
            End If

        Else
            result = "-"
        End If

        Return result
    End Function
    Private Function showLogo(ByVal myCust As A_Customer) As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim img1 As String

        If myCust.logo_txt <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myCust.username & "/logo/" & myCust.logo_txt))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            IUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt
        Else
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_120x120.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            IUrl = "../../../images/objects/no_image_120x120.gif"
        End If
        img1 = "<img src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'>"
        Return img1
    End Function

    Private Sub saveData(ByVal myJob As Job)
        Dim jobID As Integer
        Dim noticeid As Integer
        Dim noticeDetail As Integer
        ' ------------ package หางาน มีอันเดียว ณ ขณะนี้    105------------
        Dim packageID As Integer = 105

        JobDB.editJob(myJob)

        'noticeid = NoticeDB.addNewNotice(6, packageID, 1, Session("cust_id"), 0, 1, getStopDate(packageID))
        'noticeDetail = NoticeDetailDB.addNewNoticeDetail(noticeid, jobID)
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        saveData(Session("myJob"))
        Session.Remove("myJob")

        Response.Redirect("job1_list.aspx")
    End Sub
End Class
