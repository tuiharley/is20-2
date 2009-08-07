Public Class search3_detail_job
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents introMainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents moreBuz As System.Web.UI.WebControls.Label
    Protected WithEvents JEdu As System.Web.UI.WebControls.Label
    Protected WithEvents JBranch As System.Web.UI.WebControls.Label
    Protected WithEvents Price As System.Web.UI.WebControls.Label
    Protected WithEvents JNum As System.Web.UI.WebControls.Label
    Protected WithEvents JPhone As System.Web.UI.WebControls.Label
    Protected WithEvents JPlace As System.Web.UI.WebControls.Label
    Protected WithEvents JDistrict As System.Web.UI.WebControls.Label
    Protected WithEvents JProvince As System.Web.UI.WebControls.Label
    Protected WithEvents JInfo As System.Web.UI.WebControls.Label
    Protected WithEvents compname As System.Web.UI.WebControls.Label
    Protected WithEvents Addr As System.Web.UI.WebControls.Label
    Protected WithEvents Tel As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents officeHour As System.Web.UI.WebControls.Label
    Protected WithEvents de_map As System.Web.UI.WebControls.HyperLink
    Protected WithEvents de_home As System.Web.UI.WebControls.HyperLink
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents AdsPerson As System.Web.UI.WebControls.Label
    Protected WithEvents name As System.Web.UI.WebControls.TextBox
    Protected WithEvents email As System.Web.UI.WebControls.TextBox
    Protected WithEvents phone1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents question As System.Web.UI.WebControls.TextBox
    Protected WithEvents searchResult1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents searchResult2 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents sendFr As System.Web.UI.WebControls.HyperLink
    Protected WithEvents warnDel As System.Web.UI.WebControls.HyperLink
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink
    Protected WithEvents downPage As System.Web.UI.WebControls.Label
    Protected WithEvents upPage As System.Web.UI.WebControls.Label

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

        Dim noticeid As Integer = Request.QueryString("noticeid")
        Dim myNotice As noticeS

        Dim jobId As Integer = Request.QueryString("jobId")
        Dim myjob As Job = JobDB.getJob(jobId)

        Dim myInfo As A_Customer


        myNotice = NoticeDB.getNoticesInfoD(noticeid)

        showHead(myNotice.memberId, myjob)
        setLink(Session("CurPage"))
        setTools(jobId)

        myInfo = CustomerDB.getA_customer(myNotice.memberId)
        Session("JcustID") = myNotice.memberId
        Session("Jmailto") = myInfo.email
        Session("JcarID") = jobId

        upPage.Text = showNextPage(Request.QueryString("curData"), Session("allCar"), noticeid)
        downPage.Text = upPage.Text
        showCustInfo(myNotice.memberId)
        showData(myjob)

        AjaxPro.Utility.RegisterTypeForAjax(GetType(search3_detail_job))

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

        'topicTxt.Text = showTopic(NoticeDetailDB.getDetailShow(myNotice.id, myJob.Job_Id), txt, myNotice)


        'Jurias Carhouse เป็นผู้ลงประกาศตำแหน่งงานนี้: ตำแหน่งงาน
        'compOffer.Text = myCust.name & " เป็นผู้ลงประกาศตำแหน่งงานนี้: " & txt
        AdsPerson.Text = myCust.name & " ลงประกาศตำแหน่งงานนี้: " & txt
        introMainBuz.Text = showIntroMain(myMainB)
        moreBuz.Text = showIntroSub(mySubQ)
        image1.Text = showLogo(myCust)


    End Sub
    Private Sub setLink(ByVal cur_Page As Integer)
        searchResult1.NavigateUrl = "search2_result_job.aspx?cur_Page=" & cur_Page
        searchResult2.NavigateUrl = "search2_result_job.aspx?cur_Page=" & cur_Page
    End Sub
    Private Sub setTools(ByVal carid As Integer)
        sendFr.NavigateUrl = "../sendFriend/sending.aspx?carid=" & carid & "&cat=6"
        sendFr.Target = "_blank"
        sendFr.Text = "ส่งให้เพื่อน"

        warnDel.Text = "แจ้งลบประกาศ"
        warnDel.Target = "_blank"
        warnDel.NavigateUrl = "../warn/warning.aspx?detail_id=" & NoticeDetailDB.getNoticeDetailID2(carid, "6")

        printThis.NavigateUrl = "../../print_form/print_job_detail2.aspx?jobid=" & carid
        printThis.Target = "_blank"
        printThis.Text = "พิมพ์หน้านี้"
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
            a = New Bitmap(Server.MapPath("../../images/objects/no_image_120x90.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 120)
            IUrl = "../../images/objects/no_image_120x90.gif"
        End If
        img1 = "<img src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'>"
        Return img1
    End Function

    Private Function showNextPage(ByVal curData As Integer, ByRef allData As Queue, ByVal noticeid As Integer) As String
        Dim x As String
        Dim carid As String, i As Integer

        x = "<table class=""Page_Number"" cellSpacing=""0"" cellPadding=""0"" align=""right"" border=""0"" >"
        x = x & "<tr>"
        If curData = 1 Then
            x = x & "<td>&lt;&lt;</td>"
        Else
            Dim TempObjQueue As IEnumerator = allData.GetEnumerator()
            For i = 1 To curData - 1
                TempObjQueue.MoveNext()
            Next
            carid = TempObjQueue.Current
            x = x & "<td><a href='search3_detail_job.aspx?noticeid=" & noticeid & "&curData=" & curData - 1 & "&jobId=" & carid & "' class='Font_black'><<</td>"
        End If
        x = x & "<td><IMG height=""1"" src=""../../images/objects/no.gif"" width=""7""></td>"
        x = x & "<td><strong>Ad " & curData & " of " & allData.Count & "</strong></td>"
        x = x & "<td><IMG height=""1"" src=""../../images/objects/no.gif"" width=""7""></td>"
        If curData = allData.Count Then
            x = x & "<td>&gt;&gt;</td>"
        Else
            Dim TempObjQueue As IEnumerator = allData.GetEnumerator()
            For i = 1 To curData + 1
                TempObjQueue.MoveNext()
            Next
            carid = TempObjQueue.Current
            x = x & "<td><a href='search3_detail_job.aspx?noticeid=" & noticeid & "&curData=" & curData + 1 & "&jobId=" & carid & "' class='Font_black'>>></td>"
        End If
        x = x & "</tr>"
        x = x & "</table>"

        Return x
    End Function

    Private Sub showCustInfo(ByVal custID As Integer)
        Dim myInfo As A_Customer
        myInfo = CustomerDB.getA_customer(custID)


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

        If myInfo.map_txt <> "" Then
            '"business_homepage/dealer_business_web_map.aspx?dealer_id=" & myinfo.id
            de_map.NavigateUrl = "business_homepage/dealer_business_web_map.aspx?dealer_id=" & myInfo.id
            de_map.Target = "_blank"
        End If

        Dim userURL As String = ConfigurationSettings.AppSettings("userURL")

        de_home.NavigateUrl = userURL & myInfo.username & "/index.html"
        de_home.Target = "_blank"


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


    <AjaxPro.AjaxMethod()> _
    Public Function sendQuestion(ByVal name As String, ByVal email As String, ByVal phone1 As String, ByVal question As String) As String
        Dim EQuestion As mailQuestion

        EQuestion.name = name
        EQuestion.mail = email
        EQuestion.tel = phone1
        EQuestion.question = question

        EmailDB.sendMailQuestion(Session("Jmailto"), Session("JcustID"), Session("JcarID"), 6, EQuestion)

        Return "Email ได้ถูกจัดส่งเรียบร้อย"
    End Function

End Class
