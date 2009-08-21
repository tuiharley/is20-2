Public Class business_personal_data
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents custName As System.Web.UI.WebControls.Label
    Protected WithEvents custUser As System.Web.UI.WebControls.Label
    Protected WithEvents custEmail As System.Web.UI.WebControls.Label
    Protected WithEvents phone1 As System.Web.UI.WebControls.Label
    Protected WithEvents phone2 As System.Web.UI.WebControls.Label
    Protected WithEvents fax As System.Web.UI.WebControls.Label
    Protected WithEvents custAddr As System.Web.UI.WebControls.Label
    Protected WithEvents prov As System.Web.UI.WebControls.Label
    Protected WithEvents city As System.Web.UI.WebControls.Label
    Protected WithEvents regDate As System.Web.UI.WebControls.Label
    Protected WithEvents contact As System.Web.UI.WebControls.Label
    Protected WithEvents homepage As System.Web.UI.WebControls.Label
    Protected WithEvents mainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents detBuz As System.Web.UI.WebControls.Label
    Protected WithEvents amount As System.Web.UI.WebControls.HyperLink

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
        Dim cust_id As Integer

        cust_id = Request.QueryString("custid")
        'cust_id = 25
        showInfo(cust_id)
    End Sub

    Private Sub showInfo(ByVal cust_id As Integer)
        Dim myQ As Queue
        Dim myCust As A_Customer

        Dim myInfoQuestion As infoQuestion
        Dim BType As String
        Dim BWord As String

        Dim myBuzQ As Queue
        Dim addBuz As String

        myQ = CustomerDB.getCustomers(cust_id, 99)
        For Each myCust In myQ
            custName.Text = myCust.name
            custUser.Text = myCust.username
            contact.Text = myCust.contactName
            homepage.Text = myCust.homepage
            custEmail.Text = myCust.email

            BWord = ""

            myInfoQuestion = InfoQuestionDB.getMainQuestion(myCust.id)
            BType = InfoQuestionDB.questionType2(InfoQuestionDB.questionTypeRev(myInfoQuestion.type))
            If myInfoQuestion.q1 = 1 Then
                BWord = "C"
            End If
            If myInfoQuestion.q2 = 1 Then
                If BWord.Length = 0 Then
                    BWord = "M"
                Else
                    BWord = BWord & ", M"
                End If
            End If
            If myInfoQuestion.q3 = 1 Then
                If BWord.Length = 0 Then
                    BWord = "T"
                Else
                    BWord = BWord & ", T"
                End If
            End If

            mainBuz.Text = BType & ": " & BWord

            BType = ""
            BWord = ""

            myBuzQ = InfoQuestionDB.getInfoQuestions(myCust.id)
            For Each myInfoQuestion In myBuzQ
                If myInfoQuestion.q1 <> 0 Or myInfoQuestion.q2 <> 0 Or myInfoQuestion.q3 <> 0 Then
                    BType = InfoQuestionDB.questionType2(InfoQuestionDB.questionTypeRev(myInfoQuestion.type))
                    If myInfoQuestion.q1 = 1 Then
                        BWord = "C"
                    End If
                    If myInfoQuestion.q2 = 1 Then
                        If BWord.Length = 0 Then
                            BWord = "M"
                        Else
                            BWord = BWord & ", M"
                        End If
                    End If
                    If myInfoQuestion.q3 = 1 Then
                        If BWord.Length = 0 Then
                            BWord = "T"
                        Else
                            BWord = BWord & ", T"
                        End If
                    End If
                    addBuz = addBuz & BType & ": " & BWord & "<BR>"
                    BType = ""
                    BWord = ""
                End If
            Next

            detBuz.Text = addBuz
            phone1.Text = myCust.phone1
            phone2.Text = myCust.phone2
            fax.Text = myCust.fax
            custAddr.Text = myCust.address
            prov.Text = ProvinceDB.getProvinceName(myCust.province)
            city.Text = DistrictDB.getDistrictName(myCust.district)
            regDate.Text = myCust.postDate.ToString("dd-MM-yyyy")
            amount.Text = FormatNumber(myCust.amount, , , , TriState.True) & " Baht"
        Next

    End Sub
End Class
