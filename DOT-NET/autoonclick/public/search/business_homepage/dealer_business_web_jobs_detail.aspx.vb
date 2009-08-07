Public Class dealer_business_web_jobs_detail
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents email As System.Web.UI.WebControls.Label
    Protected WithEvents www As System.Web.UI.WebControls.HyperLink
    Protected WithEvents compName As System.Web.UI.WebControls.Label
    Protected WithEvents introMainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents moreBuz As System.Web.UI.WebControls.Label
    Protected WithEvents contact As System.Web.UI.WebControls.Label
    Protected WithEvents image1 As System.Web.UI.WebControls.Label
    Protected WithEvents stpage As System.Web.UI.WebControls.Label
    Protected WithEvents printThis As System.Web.UI.WebControls.HyperLink

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
        showHead(Session("dealer_id"))
        setLink(Session("dealer_id"))
    End Sub

    Private Sub setLink(ByVal cust_id As Integer)
        stpage.Text = "<a href='dealer_business_web_start.aspx?cust_id=" & cust_id & "' class='A_BU_bold_white'>"
    End Sub
    Private Sub showHead(ByVal dealerid As Integer)
        Dim mySubQ As New Queue
        mySubQ = InfoQuestionDB.getInfoQuestions(dealerid)
        Dim myMainB As infoQuestion = InfoQuestionDB.getMainQuestion(dealerid)
        Dim myCust As A_Customer = CustomerDB.getA_customer(dealerid)

        If myCust.email <> "" Then
            email.Text = myCust.email & ", "
        End If
        If myCust.homepage <> "" Then
            www.Text = myCust.homepage
            www.NavigateUrl = myCust.homepage
            www.Target = "_blank"
        End If
        compName.Text = myCust.name
        introMainBuz.Text = showIntroMain(myMainB)
        moreBuz.Text = showIntroSub(mySubQ)
        contact.Text = myCust.address
        contact.Text = contact.Text & ", " & DistrictDB.getDistrictName(myCust.district)
        contact.Text = contact.Text & ", " & ProvinceDB.getProvinceName(myCust.province)
        contact.Text = contact.Text & " โทรศัพท์1:" & myCust.phone1
        If myCust.phone2 <> "" Then
            contact.Text = contact.Text & ", โทรศัพท์2:" & myCust.phone2
        End If
        If myCust.fax <> "" Then
            contact.Text = contact.Text & ", Fax:" & myCust.fax
        End If
        If myCust.dateStart = 0 And myCust.dateStop = 0 Then
            contact.Text = contact.Text & " เวลาทำการ: ไม่ระบุ"
        Else
            contact.Text = contact.Text & " เวลาทำการ: " & CustomerDB.getDateOpen(myCust.dateStart) & " - " & CustomerDB.getDateOpen(myCust.dateStop)
        End If
        If myCust.timeStart <> 0 And myCust.timeStop <> 0 Then
            contact.Text = contact.Text & " : " & CustomerDB.getTimeOpen(myCust.timeStart) & " - " & CustomerDB.getTimeOpen(myCust.timeStop) & " น."
        End If

        image1.Text = showLogo(myCust)
    End Sub
    Private Function showLogo(ByVal myCust As A_Customer) As String
        Dim a As Bitmap
        Dim imageWidth As Integer
        Dim imageHeight As Integer
        Dim IUrl As String
        Dim img1 As String

        If myCust.logo_txt <> "" Then
            a = New Bitmap(Server.MapPath("/userData/" & myCust.username & "/logo/" & myCust.logo_txt))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 160)
            IUrl = "/userData/" & myCust.username & "/logo/" & myCust.logo_txt
        Else
            a = New Bitmap(Server.MapPath("../../../images/objects/no_image_160x120.gif"))
            resize.doResize(a.Width, a.Height, imageWidth, imageHeight, 160)
            IUrl = "../../../images/objects/no_image_160x120.gif"
        End If
        img1 = "<img src='" & IUrl & "' width='" & imageWidth & "' height='" & imageHeight & "'>"
        Return img1
    End Function
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

End Class
