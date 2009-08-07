
Public Class dealer1_reg3_class_additionals_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents mainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents Buz1 As System.Web.UI.WebControls.Label
    Protected WithEvents Buz2 As System.Web.UI.WebControls.Label
    Protected WithEvents Buz3 As System.Web.UI.WebControls.Label
    Protected WithEvents Buz4 As System.Web.UI.WebControls.Label
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Dim infoQuestions As New Queue

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim i As Integer
        Dim template1() As Integer = {2, 3, 4, 5}
        Dim template2() As Integer = {1, 3, 4, 5}
        Dim template3() As Integer = {1, 2, 4, 5}
        Dim template4() As Integer = {1, 2, 3, 5}
        Dim template5() As Integer = {1, 2, 3, 4}

        'Session("mainBuz") = 1

        '==================== Show all Question =======================
        If Not IsPostBack Then
            showMainBuz(Session("mainBuz"))
            Select Case Session("mainBuz")
                Case 1
                    useTemplate(template1)
                Case 2
                    useTemplate(template2)
                Case 3
                    useTemplate(template3)
                Case 4
                    useTemplate(template4)
                Case 5
                    useTemplate(template5)
            End Select
        Else    '====================  Save all Answer =======================
            saveMainBuz(Session("mainBuz"))
            Select Case Session("mainBuz")
                Case 1
                    saveTemplate(template1)
                Case 2
                    saveTemplate(template2)
                Case 3
                    saveTemplate(template3)
                Case 4
                    saveTemplate(template4)
                Case 5
                    saveTemplate(template5)
            End Select

            'InfoQuestionDB.insertInfoQuestion(infoQuestions)
            Session("infoQuestions") = infoQuestions
            Response.Redirect("dealer1_reg4_detail_datas.aspx")
        End If



    End Sub

    Private Sub useTemplate(ByVal templateNo As Array)
        Dim i As Integer

        showBuz(templateNo(0), Buz1)
        showBuz(templateNo(1), Buz2)
        showBuz(templateNo(2), Buz3)
        showBuz(templateNo(3), Buz4)

    End Sub
    Private Sub showMainBuz(ByVal buzId As Integer)
        Dim myMainBuz As BusinessType


        myMainBuz = BusinessTypeDB.getBuZType(buzId)
        mainBuz.Text = myMainBuz.html


    End Sub
    Private Sub showBuz(ByVal buzId As Integer, ByRef buz As Object)
        Dim myMainBuz As BusinessType

        myMainBuz = BusinessTypeDB.getBuZType(buzId)
        buz.Text = myMainBuz.html

    End Sub

    Private Sub saveMainBuz(ByVal buzId As Integer)
        Dim info As infoQuestion

        'info.cust_id = Session("cust_id")
        info.type = InfoQuestionDB.questionType(buzId)
        info.q1 = Request.Form(buzId & "_1")
        info.q2 = Request.Form(buzId & "_2")
        info.q3 = Request.Form(buzId & "_3")

        'infoQuestions = New Queue
        infoQuestions.Enqueue(info)
    End Sub
    Private Sub saveTemplate(ByVal templateNo As Array)
        Dim info As New infoQuestion
        Dim i As Integer

        For i = 1 To 4
            'info.cust_id = Session("cust_id")
            info.type = InfoQuestionDB.questionType(templateNo(i - 1))
            info.q1 = Request.Form(templateNo(i - 1) & "_1")
            info.q2 = Request.Form(templateNo(i - 1) & "_2")
            info.q3 = Request.Form(templateNo(i - 1) & "_3")

            infoQuestions.Enqueue(info)
        Next


    End Sub

End Class
