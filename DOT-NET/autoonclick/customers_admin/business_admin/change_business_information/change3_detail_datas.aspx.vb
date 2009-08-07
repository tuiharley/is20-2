Public Class change3_detail_datas
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Protected WithEvents mainBuz As System.Web.UI.WebControls.Label
    Protected WithEvents subBuz1 As System.Web.UI.WebControls.Label
    Protected WithEvents subBuz2 As System.Web.UI.WebControls.Label
    Protected WithEvents subBuz3 As System.Web.UI.WebControls.Label
    Protected WithEvents subBuz4 As System.Web.UI.WebControls.Label
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

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        Dim a As IEnumerator = Session("infoQuestions").GetEnumerator()
        Dim b As Queue
        Dim buzInfo As infoQuestion

        Dim i As Integer, n As Integer = Session("infoQuestions").Count
        Dim val As String
        Response.Expires = 0
        Response.Cache.SetNoStore()
        Response.AppendHeader("Pragma", "no-cache")

        If Session("cust_id") = 0 Then
            Response.Redirect("../../../public/login/login.aspx")
        Else

            a.MoveNext()
            b = getSubQuestion(a.Current)
            showMainQuestion(b, Session("mainBuz"))
            a.MoveNext()


            If Not IsPostBack Then
                '========================== Show Question ============================
                For i = 0 To n - 2
                    buzInfo = a.Current
                    Select Case i + 1
                        Case 1
                            subBuz1.Text = showQuestions(buzInfo)
                        Case 2
                            subBuz2.Text = showQuestions(buzInfo)
                        Case 3
                            subBuz3.Text = showQuestions(buzInfo)
                        Case 4
                            subBuz4.Text = showQuestions(buzInfo)
                    End Select
                    a.MoveNext()
                Next
            Else
                '========================== Save Question ============================
                Dim x As Queue

                x = saveMainQuestion(b, Session("mainBuz"))
                For i = 0 To n - 2
                    buzInfo = a.Current
                    If buzInfo.q1 <> 0 Or buzInfo.q2 <> 0 Or buzInfo.q3 <> 0 Then
                        Select Case buzInfo.type
                            Case "saleCar"
                                x.Enqueue(saveSaleCar(getSubQuestion(buzInfo)))
                            Case "serviceCar"
                                x.Enqueue(saveServiceCar(getSubQuestion(buzInfo)))
                            Case "salePart"
                                x.Enqueue(saveSalePart())
                            Case "carRent"
                                x.Enqueue(saveRentCar(getSubQuestion(buzInfo)))
                            Case "carWash"

                                x.Enqueue(saveCarWash())
                        End Select
                    End If
                    a.MoveNext()
                Next

                Session("allAnswer") = x
                updateBuz()


            End If
        End If


    End Sub
    Private Function getSubQuestion(ByVal buzInfo As infoQuestion) As Queue
        Dim i As Integer
        Dim ans As New Queue

        ans.Enqueue(buzInfo.q1)
        ans.Enqueue(buzInfo.q2)
        ans.Enqueue(buzInfo.q3)

        Return ans
    End Function
    Private Sub showMainQuestion(ByVal subQuestion As Queue, ByVal buzId As Integer)
        Dim one As infoSaleCar
        Dim two As infoServiceCar
        Dim three As infoSalePart
        Dim four As infoRentCar
        Dim five As infoCarWash


        Select Case buzId
            Case 1
                one = InfoSaleCarDB.getInfoSaleCar(Session("cust_id"))
                mainBuz.Text = BusinessTypeDB.saleCarQuestionShow(subQuestion, "กรุณาให้ข้อมูลเกี่ยวกับธุรกิจหลัก", one)
            Case 2
                two = InfoServiceCarDB.getInfoServiceCar(Session("cust_id"))
                mainBuz.Text = BusinessTypeDB.ServiceCarQuestionShow(subQuestion, "กรุณาให้ข้อมูลเกี่ยวกับธุรกิจหลัก", two)
            Case 3
                three = InfoSalePartDB.getInfoSalePart(Session("cust_id"))
                mainBuz.Text = BusinessTypeDB.salePartQuestionShow("กรุณาให้ข้อมูลเกี่ยวกับธุรกิจหลัก", three)
            Case 4
                four = InfoRentCarDB.getInfoRentCar(Session("cust_id"))
                mainBuz.Text = BusinessTypeDB.rentCarQuestionShow(subQuestion, "กรุณาให้ข้อมูลเกี่ยวกับธุรกิจหลัก", four)
            Case 5
                five = InfoCarWashDB.getInfoCarWash(Session("cust_id"))
                mainBuz.Text = BusinessTypeDB.washCarQuestionShow(subQuestion, "กรุณาให้ข้อมูลเกี่ยวกับธุรกิจหลัก", five)

        End Select
    End Sub
    Private Function showQuestions(ByVal subQuestion As infoQuestion) As String
        Dim ans As String = ""
        Dim b As Queue
        Dim one As infoSaleCar
        Dim two As infoServiceCar
        Dim three As infoSalePart
        Dim four As infoRentCar
        Dim five As infoCarWash


        If subQuestion.q1 <> 0 Or subQuestion.q2 <> 0 Or subQuestion.q3 <> 0 Then
            Select Case subQuestion.type
                Case "saleCar"
                    b = getSubQuestion(subQuestion)
                    one = InfoSaleCarDB.getInfoSaleCar(Session("cust_id"))
                    ans = BusinessTypeDB.saleCarQuestionShow(b, "ธุรกิจเสริม", one)
                Case "serviceCar"
                    b = getSubQuestion(subQuestion)
                    two = InfoServiceCarDB.getInfoServiceCar(Session("cust_id"))
                    ans = BusinessTypeDB.ServiceCarQuestionShow(b, "ธุรกิจเสริม", two)
                Case "salePart"
                    b = getSubQuestion(subQuestion)
                    three = InfoSalePartDB.getInfoSalePart(Session("cust_id"))
                    ans = BusinessTypeDB.salePartQuestionShow("ธุรกิจเสริม", three)
                Case "carRent"
                    four = InfoRentCarDB.getInfoRentCar(Session("cust_id"))
                    b = getSubQuestion(subQuestion)
                    ans = BusinessTypeDB.rentCarQuestionShow(b, "ธุรกิจเสริม", four)
                Case "carWash"
                    b = getSubQuestion(subQuestion)
                    five = InfoCarWashDB.getInfoCarWash(Session("cust_id"))
                    ans = BusinessTypeDB.washCarQuestionShow(b, "ธุรกิจเสริม", five)
            End Select
        End If


        Return ans
    End Function

    Private Function saveMainQuestion(ByVal subQuestion As Queue, ByVal buzId As Integer) As Queue
        Dim myMainQuestion As New Queue

        Select Case buzId
            Case 1
                myMainQuestion.Enqueue(saveSaleCar(subQuestion))
            Case 2
                myMainQuestion.Enqueue(saveServiceCar(subQuestion))
            Case 3
                myMainQuestion.Enqueue(saveSalePart())
            Case 4
                myMainQuestion.Enqueue(saveRentCar(subQuestion))
            Case 5
                myMainQuestion.Enqueue(saveCarWash())
        End Select

        Return myMainQuestion
    End Function

    Private Function saveSaleCar(ByVal subQuestion As Queue) As infoSaleCar
        Dim obj As infoSaleCar
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestion.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestion.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next


        obj.Official_Dealer = Request.Form("saleCarOfficial")
        obj.Cust_ID = Session("cust_id")
        If obj.Official_Dealer = 1 Then
            obj.Official_Dealer_txt = Request.Form("saleCarOfficial_text")
        Else
            obj.Official_Dealer_txt = ""
        End If
        obj.Dealer_Type = Request.Form("saleCarType")

        '=================== Checkbox Answer ===============
        Dim objCheckBox As New Queue

        If Request.Form("saleCarBuy") <> "" Then
            objCheckBox.Enqueue(Request.Form("saleCarBuy"))
        End If
        If Request.Form("saleCarFinance") <> "" Then
            objCheckBox.Enqueue(Request.Form("saleCarFinance"))
        End If
        If Request.Form("saleCarSecondhand") <> "" Then
            objCheckBox.Enqueue(Request.Form("saleCarSecondhand"))
        End If
        If Request.Form("saleCarInfo") <> "" Then
            objCheckBox.Enqueue(Request.Form("saleCarInfo"))
        End If

        'Response.Write(objCheckBox.Count)
        If objCheckBox.Count <> 0 Then
            obj.SaleCarAbout = objCheckBox
        Else
            obj.SaleCarAbout = New Queue
        End If
        'Response.Write(obj.SaleCarAbout.Count)
        '===================Initial value for CAR subquestion ===============
        obj.About_Car_Brand = -1
        obj.About_Car_Brand_txt = ""
        obj.About_Car_Type = -1
        obj.About_Car_Type_txt = ""
        '===================Initial value for BIKE subquestion ===============
        obj.About_Bike_Brand = -1
        obj.About_Bike_Brand_txt = ""
        obj.About_Bike_Type = -1
        obj.About_Bike_Type_txt = ""
        '===================Initial value for TRUCK subquestion ===============
        obj.About_Truck_Brand = -1
        obj.About_Truck_Brand_txt = ""
        obj.About_Truck_Type = -1
        obj.About_Truck_Type_txt = ""

        '===================Subquestion 1  ===============
        If q.GetValue(1) = 1 Then
            obj.About_Car_Brand = CInt(Request.Form("saleCarCBrand"))
            If obj.About_Car_Brand = 1 Then
                obj.About_Car_Brand_txt = Request.Form("saleCarCBrand_txt")
            Else
                obj.About_Car_Brand_txt = ""
            End If
            obj.About_Car_Type = CInt(Request.Form("saleCarCType"))
            If obj.About_Car_Type = 1 Then
                obj.About_Car_Type_txt = Request.Form("saleCarCType_txt")
            Else
                obj.About_Car_Type_txt = ""
            End If
        End If
        '===================Subquestion 2  ===============
        If q.GetValue(2) = 1 Then
            obj.About_Bike_Brand = CInt(Request.Form("saleCarBBrand"))
            If obj.About_Bike_Brand = 1 Then
                obj.About_Bike_Brand_txt = Request.Form("saleCarBBrand_txt")
            Else
                obj.About_Bike_Brand_txt = ""
            End If
            obj.About_Bike_Type = CInt(Request.Form("saleCarBType"))
            If obj.About_Bike_Type = 1 Then
                obj.About_Bike_Type_txt = Request.Form("saleCarBType_txt")
            Else
                obj.About_Bike_Type_txt = ""
            End If
        End If
        '===================Subquestion 3  ===============
        If q.GetValue(3) = 1 Then
            obj.About_Truck_Brand = CInt(Request.Form("saleCarTBrand"))
            If obj.About_Truck_Brand = 1 Then
                obj.About_Truck_Brand_txt = Request.Form("saleCarTBrand_txt")
            Else
                obj.About_Truck_Brand_txt = ""
            End If
            obj.About_Truck_Type = CInt(Request.Form("saleCarTType"))
            If obj.About_Truck_Type = 1 Then
                obj.About_Truck_Type_txt = Request.Form("saleCarTType_txt")
            Else
                obj.About_Truck_Type_txt = ""
            End If
        End If

        obj.Information = Request.Form("saleCarMore")

        Return obj
    End Function
    Private Function saveServiceCar(ByVal subQuestion As Queue) As infoServiceCar
        Dim obj As infoServiceCar
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestion.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestion.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next


        obj.Official_Dealer = Request.Form("serviceCarOfficial")
        obj.Cust_ID = Session("cust_id")
        If obj.Official_Dealer = 1 Then
            obj.Official_Dealer_txt = Request.Form("serviceCarOfficial_txt")
        Else
            obj.Official_Dealer_txt = ""
        End If
        obj.Dealer_Type = Request.Form("serviceCarType")

        '=================== Checkbox Answer ===============
        Dim objCheckBox As New Queue

        If Request.Form("serviceCarInsur") <> "" Then
            objCheckBox.Enqueue(Request.Form("serviceCarInsur"))
        End If
        If Request.Form("serviceCarFinance") <> "" Then
            objCheckBox.Enqueue(Request.Form("serviceCarFinance"))
        End If
        If Request.Form("serviceCarToll") <> "" Then
            objCheckBox.Enqueue(Request.Form("serviceCarToll"))
        End If
        If Request.Form("serviceCarInstall") <> "" Then
            objCheckBox.Enqueue(Request.Form("serviceCarInstall"))
        End If
        If Request.Form("serviceCarInfo") <> "" Then
            objCheckBox.Enqueue(Request.Form("serviceCarInfo"))
        End If


        If objCheckBox.Count <> 0 Then
            obj.ServiceCarAbout = objCheckBox
        Else
            obj.ServiceCarAbout = New Queue
        End If
        '===================Initial value for CAR subquestion ===============
        obj.About_Car_Brand = -1
        obj.About_Car_Brand_txt = ""
        obj.About_Car_Type = -1
        obj.About_Car_Type_txt = ""
        '===================Initial value for BIKE subquestion ===============
        obj.About_Bike_Brand = -1
        obj.About_Bike_Brand_txt = ""
        obj.About_Bike_Type = -1
        obj.About_Bike_Type_txt = ""
        '===================Initial value for TRUCK subquestion ===============
        obj.About_Truck_Brand = -1
        obj.About_Truck_Brand_txt = ""
        obj.About_Truck_Type = -1
        obj.About_Truck_Type_txt = ""

        '===================Subquestion 1  ===============
        If q.GetValue(1) = 1 Then
            obj.About_Car_Brand = CInt(Request.Form("serviceCarCBrand"))
            If obj.About_Car_Brand = 1 Then
                obj.About_Car_Brand_txt = Request.Form("serviceCarCBrand_txt")
            Else
                obj.About_Car_Brand_txt = ""
            End If
            obj.About_Car_Type = CInt(Request.Form("serviceCarCType"))
            If obj.About_Car_Type = 1 Then
                obj.About_Car_Type_txt = Request.Form("serviceCarCType_txt")
            Else
                obj.About_Car_Type_txt = ""
            End If
        End If
        '===================Subquestion 2  ===============
        If q.GetValue(2) = 1 Then
            obj.About_Bike_Brand = CInt(Request.Form("serviceCarBBrand"))
            If obj.About_Bike_Brand = 1 Then
                obj.About_Bike_Brand_txt = Request.Form("serviceCarBBrand_txt")
            Else
                obj.About_Bike_Brand_txt = ""
            End If
            obj.About_Bike_Type = CInt(Request.Form("serviceCarBType"))
            If obj.About_Bike_Type = 1 Then
                obj.About_Bike_Type_txt = Request.Form("serviceCarBType_txt")
            Else
                obj.About_Bike_Type_txt = ""
            End If
        End If
        '===================Subquestion 3  ===============
        If q.GetValue(3) = 1 Then
            obj.About_Truck_Brand = CInt(Request.Form("serviceCarTBrand"))
            If obj.About_Truck_Brand = 1 Then
                obj.About_Truck_Brand_txt = Request.Form("serviceCarTBrand_txt")
            Else
                obj.About_Truck_Brand_txt = ""
            End If
            obj.About_Truck_Type = CInt(Request.Form("serviceCarTType"))
            If obj.About_Truck_Type = 1 Then
                obj.About_Truck_Type_txt = Request.Form("serviceCarTType_txt")
            Else
                obj.About_Truck_Type_txt = ""
            End If
        End If

        obj.Information = Request.Form("serviceCarMore")

        Return obj
    End Function
    Private Function saveSalePart() As infoSalePart
        Dim obj As infoSalePart

        obj.Official_Dealer = Request.Form("salePartOfficial")
        obj.Cust_ID = Session("cust_id")
        If obj.Official_Dealer = 1 Then
            obj.Official_Dealer_txt = Request.Form("salePartOfficial_txt")
        Else
            obj.Official_Dealer_txt = ""
        End If
        obj.Dealer_Type = Request.Form("salePartType")

        '=================== Checkbox Answer ===============
        Dim objCheckBox As New Queue

        If Request.Form("salePartInstall") <> "" Then
            objCheckBox.Enqueue(Request.Form("salePartInstall"))
        End If
        If Request.Form("salePartInfo") <> "" Then
            objCheckBox.Enqueue(Request.Form("salePartInfo"))
        End If


        If objCheckBox.Count <> 0 Then
            obj.SalePartAbout = objCheckBox
        Else
            obj.SalePartAbout = New Queue
        End If
        '=======================================================

        obj.Item_type = Request.Form("salePartKind")
        obj.Information = Request.Form("salePartMore")

        Return obj
    End Function
    Private Function saveRentCar(ByVal subQuestion As Queue) As infoRentCar
        Dim obj As infoRentCar
        Dim i As Integer
        Dim q(3) As Integer
        Dim TempObjQueue As IEnumerator = subQuestion.GetEnumerator()
        TempObjQueue.MoveNext()
        For i = 1 To subQuestion.Count
            q.SetValue(TempObjQueue.Current, i)
            TempObjQueue.MoveNext()
        Next

        obj.Cust_ID = Session("cust_id")
        '===================Initial value for CAR subquestion ===============
        obj.About_Car_Brand_txt = ""
        obj.About_Car_Type_txt = ""
        '===================Initial value for BIKE subquestion ===============
        obj.About_Bike_Brand_txt = ""
        obj.About_Bike_Type_txt = ""
        '===================Initial value for TRUCK subquestion ===============
        obj.About_Truck_Brand_txt = ""
        obj.About_Truck_Type_txt = ""

        '===================Subquestion 1  ===============
        If q.GetValue(1) = 1 Then
            obj.About_Car_Brand_txt = cleanTextBox(Request.Form("rentCarCBrand_txt"), "โปรดระบุประเภทรถ")
            obj.About_Car_Type_txt = cleanTextBox(Request.Form("rentCarCType_txt"), "โปรดระบุยี่ห้อ")
        End If
        '===================Subquestion 2  ===============
        If q.GetValue(2) = 1 Then
            obj.About_Bike_Brand_txt = cleanTextBox(Request.Form("rentCarBBrand_txt"), "โปรดระบุประเภทรถ")
            obj.About_Bike_Type_txt = cleanTextBox(Request.Form("rentCarBType_txt"), "โปรดระบุยี่ห้อ")
        End If
        '===================Subquestion 3  ===============
        If q.GetValue(3) = 1 Then
            obj.About_Truck_Brand_txt = cleanTextBox(Request.Form("rentCarTBrand_txt"), "โปรดระบุประเภทรถ")
            obj.About_Truck_Type_txt = cleanTextBox(Request.Form("rentCarTType_txt"), "โปรดระบุยี่ห้อ")
        End If

        obj.Information = Request.Form("rentCarMore")

        Return obj
    End Function
    Private Function saveCarWash() As infoCarWash
        Dim obj As infoCarWash

        obj.Cust_ID = Session("cust_id")
        obj.Wash = Request.Form("carWashNormal")
        obj.Auto_Wash = Request.Form("carWashAuto")
        obj.Information = Request.Form("carWashMore")

        Return obj
    End Function

    
    Private Sub updateBuz()

        '=========================== Save Business Infomation ===============================
        Dim one As infoSaleCar
        Dim two As infoServiceCar
        Dim three As infoSalePart
        Dim four As infoRentCar
        Dim five As infoCarWash

        Dim buzInfo As infoQuestion
        Dim infoQ As Queue = Session("infoQuestions").clone

        Dim i As Integer, n As Integer = Session("infoQuestions").count
        Dim y As Integer
        InfoQuestionDB.clearInfoQuestion(Session("cust_id"))
        InfoQuestionDB.insertInfoQuestion(infoQ, Session("cust_id"))


        infoQ = Session("infoQuestions").Clone
        For i = 0 To n - 1
            buzInfo = infoQ.Dequeue
            If buzInfo.q1 <> 0 Or buzInfo.q2 <> 0 Or buzInfo.q3 <> 0 Then
                'Response.Write(buzInfo.type)
                Select Case buzInfo.type
                    Case "saleCar"
                        one = InfoSaleCarDB.getInfoSaleCar(Session("cust_id"))

                        If one.SaleCar_ID <> 0 Then
                            InfoSaleCarDB.clearInfoSaleCar(Session("cust_id"))
                            InfoSaleCarDB.clearInfoSaleCarAbout(one.SaleCar_ID)

                            InfoSaleCarDB.updateInfoSaleCar(Session("allAnswer").dequeue, one.SaleCar_ID)
                        Else
                            InfoSaleCarDB.saveObjSaleCar(Session("allAnswer").dequeue, Session("cust_id"))
                        End If
                    Case "serviceCar"
                        two = InfoServiceCarDB.getInfoServiceCar(Session("cust_id"))
                        If two.ServiceCar_ID <> 0 Then
                            InfoServiceCarDB.clearInfoServiceCar(Session("cust_id"))
                            InfoServiceCarDB.clearInfoServiceCarAbout(two.ServiceCar_ID)

                            InfoServiceCarDB.updateInfoServiceCar(Session("allAnswer").dequeue, two.ServiceCar_ID)
                        Else
                            InfoServiceCarDB.saveObjServiceCar(Session("allAnswer").dequeue, Session("cust_id"))
                        End If
                        
                    Case "salePart"
                        three = InfoSalePartDB.getInfoSalePart(Session("cust_id"))
                        If three.SalePart_ID <> 0 Then
                            InfoSalePartDB.clearInfoSalePart(Session("cust_id"))
                            InfoSalePartDB.clearInfoSalePartAbout(three.SalePart_ID)

                            InfoSalePartDB.updateInfoSalePart(Session("allAnswer").dequeue, three.SalePart_ID)
                        Else
                            InfoSalePartDB.saveObjSalePart(Session("allAnswer").dequeue, Session("cust_id"))
                        End If
                       
                    Case "carRent"
                        four = InfoRentCarDB.getInfoRentCar(Session("cust_id"))

                        If four.RentCar_ID <> 0 Then
                            InfoRentCarDB.clearInfoRentCar(Session("cust_id"))
                            InfoRentCarDB.updateInfoRentCar(Session("allAnswer").dequeue, four.RentCar_ID)
                        Else
                            InfoRentCarDB.saveObjRentCar(Session("allAnswer").dequeue, Session("cust_id"))
                        End If
                    Case "carWash"
                        five = InfoCarWashDB.getInfoCarWash(Session("cust_id"))
                        If five.CarWash_ID <> 0 Then
                            InfoCarWashDB.clearInfoCarWash(Session("cust_id"))
                            InfoCarWashDB.updateInfoServiceCar(Session("allAnswer").dequeue, five.CarWash_ID)
                        Else
                            InfoCarWashDB.saveObjCarWash(Session("allAnswer").dequeue, Session("cust_id"))
                        End If


                        '    InfoCarWashDB.saveObjCarWash(Session("allAnswer").Dequeue)
                End Select
            End If
        Next

    End Sub



    Private Sub next_page_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles next_page.Click
        Response.Redirect("../startpage/startpage_example_with_package.aspx")
    End Sub

    Private Sub cancel_but_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles cancel_but.Click
        Response.Redirect("dealer_admin_additionals_datas.aspx")
    End Sub
End Class
