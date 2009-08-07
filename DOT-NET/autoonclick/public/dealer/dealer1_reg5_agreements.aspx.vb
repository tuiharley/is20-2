Public Class dealer1_reg5_agreements
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents next_page As System.Web.UI.WebControls.Button
    Protected WithEvents cancel_but As System.Web.UI.WebControls.Button
    Protected WithEvents questionare As System.Web.UI.WebControls.CheckBox
    Protected WithEvents advertise As System.Web.UI.WebControls.CheckBox
    Protected WithEvents accept As System.Web.UI.WebControls.CheckBox
    Protected WithEvents vsmSummary As System.Web.UI.WebControls.ValidationSummary
    Protected WithEvents acceptValidate As System.Web.UI.WebControls.CustomValidator

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
    End Sub

    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click

        Dim myCust As A_Customer

        myCust = Session("myCust")

        myCust.inquire = checkTrue(questionare.Checked)
        myCust.notice = checkTrue(advertise.Checked)

        '============================Update Customer - Dealer =================================
        Dim cust_id As Integer
        cust_id = CustomerDB.getMaxCusID()
        myCust.id = cust_id
        CustomerDB.addNewCustomer(myCust)
        Utilities.createSubDir(Server.MapPath("/userData"), myCust.username, "logo")
        Utilities.createSubDir(Server.MapPath("/userData"), myCust.username, "map")

        '============================Update Customer - Dealer =================================
        createHome(cust_id, myCust.username)

        '=========================Upload  LOGO and MAP =====================================
        Dim temppath As String
        Dim tempFile As String

        If Utilities.getFileName(myCust.logo) <> "" Then
            temppath = Server.MapPath("/userData") & "\" & myCust.username & "\logo\"
            tempFile = Utilities.UploadFile(myCust.logo, temppath)
        End If
        If Utilities.getFileName(myCust.map) <> "" Then
            temppath = Server.MapPath("/userData") & "\" & myCust.username & "\map\"
            tempFile = Utilities.UploadFile(myCust.map, temppath)
        End If


        '=========================== Save Business Infomation ===============================
        Dim buzInfo As infoQuestion
        Dim infoQ As Queue = Session("infoQuestions").clone

        Dim i As Integer, n As Integer = Session("infoQuestions").count
        Dim y As Integer
        InfoQuestionDB.insertInfoQuestion(infoQ, cust_id)


        infoQ = Session("infoQuestions").Clone
        For i = 0 To n - 1
            buzInfo = infoQ.Dequeue
            If buzInfo.q1 <> 0 Or buzInfo.q2 <> 0 Or buzInfo.q3 <> 0 Then
                Select Case buzInfo.type
                    Case "saleCar"
                        InfoSaleCarDB.saveObjSaleCar(Session("allAnswer").dequeue, cust_id)
                    Case "serviceCar"
                        InfoServiceCarDB.saveObjServiceCar(Session("allAnswer").Dequeue, cust_id)
                    Case "salePart"
                        InfoSalePartDB.saveObjSalePart(Session("allAnswer").Dequeue, cust_id)
                    Case "carRent"
                        InfoRentCarDB.saveObjRentCar(Session("allAnswer").Dequeue, cust_id)
                    Case "carWash"
                        InfoCarWashDB.saveObjCarWash(Session("allAnswer").Dequeue, cust_id)
                End Select
            End If
        Next
        'InfoServiceCarDB.saveObjServiceCar(x.Dequeue)
        'InfoSaleCarDB.saveObjSaleCar(x.dequeue)
        'InfoSalePartDB.saveObjSalePart(x.Dequeue)
        'InfoRentCarDB.saveObjRentCar(x.Dequeue)
        'InfoCarWashDB.saveObjCarWash(x.Dequeue)

        '============================= END ================================================
        Response.Redirect("../login/login.aspx")

    End Sub

    Private Sub createHome(ByVal custid As Integer, ByVal usrName As String)
        Dim sContents As String, sErr As String
        Dim bAns As Boolean
        Dim picURL As String = ConfigurationSettings.AppSettings("picVD")
        Dim userURL As String = ConfigurationSettings.AppSettings("userVD")
        'Dim h_file As String = "\public\webfile\head.txt"
        Dim h_file As String = "\public\webfile\head_onclick.txt"
        Dim t_file As String = "\public\webfile\tail.txt"
        'Dim logAns As Boolean
        'Dim logErr As String
        'Dim logFile As String = "d:\userData\home.txt"

        'logAns = DealerHP.SaveTextToFile("1-pass", logFile, logErr)

        sContents = DealerHP.GetFileContents(Server.MapPath(picURL) & h_file, sErr)
        'logAns = DealerHP.AppendTextToFile("1 content ok" & vbCrLf, logFile, logErr)
        'logAns = DealerHP.AppendTextToFile(Server.MapPath(picURL) & h_file & vbCrLf, logFile, logErr)
        'd:\ip1\auto-onclick.com\www\auto-onclick.com\public\webfile\head.txt
        If sErr = "" Then
            sContents = sContents & "<input type='hidden' id='cust_id' name='cust_id' value='" & custid & "'>"
            sContents = sContents & DealerHP.GetFileContents(Server.MapPath(picURL) & t_file, sErr)
            'logAns = DealerHP.AppendTextToFile("2 content ok" & vbCrLf, logFile, logErr)
            'logAns = DealerHP.AppendTextToFile(Server.MapPath(picURL) & t_file & vbCrLf, logFile, logErr)
            bAns = DealerHP.SaveTextToFile(sContents, Server.MapPath(userURL) & "\" & usrName & "\index.html", sErr)
            'logAns = DealerHP.AppendTextToFile("save file ok" & vbCrLf, logFile, logErr)
            'logAns = DealerHP.AppendTextToFile(Server.MapPath(userURL) & "\" & usrName & "\index.html" & vbCrLf, logFile, logErr)
            If Not bAns Then
                '    Response.Write("File Saved!")
                'Else
                Response.Write("Error Saving File: " & sErr)
            End If

        Else
            Response.Write("Error retrieving file: " & sErr)
        End If

    End Sub
End Class
