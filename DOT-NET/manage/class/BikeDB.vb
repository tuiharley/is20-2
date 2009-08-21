Imports System.Data
Imports System.Data.OleDb
Module BikeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getBrand(ByVal carId As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Brand.Brand_name, Model.Model_Name, Bike.Bike_SubModel, CarType.CarType_Name FROM Bike INNER JOIN Brand ON Bike.Bike_Brand = Brand.Brand INNER JOIN Model ON Bike.Bike_Model = Model.Model INNER JOIN CarType ON Bike.Bike_Type = CarType.CarType WHERE (Bike.Bike_Id = " & carId & ") AND (CarType.Category = 2)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0) & " " & Ans_ID.Item(1) & " " & Ans_ID.Item(2) & ", " & Ans_ID.Item(3)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getPrice(ByVal carId As Integer) As Double
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As Double

        sql = "SELECT Bike_Price FROM Bike WHERE (Bike.Bike_Id = " & carId & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(0)) Then
                search_statement = Ans_ID.Item(0)
            Else
                search_statement = 0
            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getPostDate(ByVal carId As Integer) As Date
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim postDate As Date

        sql = "SELECT Bike_Post FROM Bike WHERE (Bike.Bike_Id = " & carId & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then

            If Not IsDBNull(Ans_ID.Item(0)) Then
                postDate = Ans_ID.Item(0)
            Else
                postDate = Nothing
            End If

        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return postDate
    End Function
    Function getMainPic(ByVal carid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Bike.Bike_Image1 FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Bike.Bike_Id = " & carid & ") AND (Notice.Notice_Category = 2)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(3)) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(2) & "\" & Ans_ID.Item(3)
            Else
                tmp_answer = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_60x45.gif"
                'tmp_answer = "\pics\objects\noimage3.gif"

            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getMainPic2(ByVal carid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Bike.Bike_Image1 FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Bike.Bike_Id = " & carid & ") AND (Notice.Notice_Category = 2)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(3)) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(2) & "\" & Ans_ID.Item(3)
            Else
                tmp_answer = "no_image_60x45.gif"
                'tmp_answer = "\pics\objects\noimage3.gif"

            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getAllPic(ByVal carid As Integer) As Array
        Dim tmp_answer() As String
        ReDim tmp_answer(5)
        Dim i As Integer


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, Bike.Bike_Image1,Bike.Bike_Image2,Bike.Bike_Image3, NoticeDetail.NoticeDetail_Id FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Bike.Bike_Id = " & carid & ") AND (Notice.Notice_Category = 2)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then

            'tmp_answer.SetValue("\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\", 0)
            For i = 1 To 3
                If Not IsDBNull(Ans_ID.Item(i + 1)) Then
                    tmp_answer.SetValue("\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(5) & "\" & Ans_ID.Item(i + 1), i)
                Else
                    tmp_answer.SetValue("noimage3.gif", i)
                    'tmp_answer.SetValue("\\pics\\objects\\noimage3.gif", i)
                End If
            Next

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer

    End Function
    Function getNumPic(ByVal carid) As Integer
        Dim tmp As Array
        Dim numpics As Integer
        numpics = 0
        Dim i As String


        tmp = getAllPic(carid)
        For Each i In tmp
            If (i <> "noimage3.gif") And (i <> "") Then
                numpics = numpics + 1
            End If
        Next

        Return numpics
    End Function
    Function getBikeInfo(ByVal carid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Province.Province_Name, Bike.Bike_Year, Bike.Bike_Accident, Bike.Bike_Insurrance, Bike.Bike_Miles, Bike.Bike_MilesType, Bike.Bike_CC,  Bike.Bike_Power, Bike.Bike_PowerType, EngineType.EngineType_Name, Color.Color_Name, Gear.Gear_Name, Bike.Bike_Accessory, Bike.Bike_Information FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN Province ON Customer.Customer_Province = Province.Province LEFT OUTER JOIN Gear ON Bike.Bike_Gears = Gear.Gear LEFT OUTER JOIN Color ON Bike.Bike_Color = Color.Color LEFT OUTER JOIN EngineType ON Bike.Bike_EngineType = EngineType.EngineType WHERE (Notice.Notice_Category = 2) and (Bike.Bike_Id = " & carid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            tmp_answer = Ans_ID.Item("Province_Name")
            If Not IsDBNull(Ans_ID.Item("Bike_Year")) Then
                tmp_answer = tmp_answer & ", " & Right(Ans_ID.Item("Bike_Year"), 4)
            Else
                tmp_answer = tmp_answer & ",<span class='Font_orange'> รถใหม่!</span>"
            End If

            If Not IsDBNull(Ans_ID.Item("Bike_Accident")) Then
                If Ans_ID.Item("Bike_Accident") = 1 Then
                    tmp_answer = tmp_answer & ", รถมีอุบัติเหตุ(ยังไม่ซ่อม)"
                Else
                    tmp_answer = tmp_answer & ", รถไม่มีอุบัติเหตุ"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Bike_Insurrance")) Then
                If Ans_ID.Item("Bike_Insurrance") = 1 Then
                    tmp_answer = tmp_answer & ", รถมีประกัน"
                Else
                    tmp_answer = tmp_answer & ", รถไม่มีประกัน"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Bike_Miles")) Then
                tmp_answer = tmp_answer & ", " & FormatNumber(Ans_ID.Item("Bike_Miles"), 0) & " " & Ans_ID.Item("Bike_MilesType")
            End If

            tmp_answer = tmp_answer & ", " & Ans_ID.Item("Bike_CC") & "cc"

            If Not IsDBNull(Ans_ID.Item("Bike_Power")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Bike_Power") & " " & Ans_ID.Item("Bike_PowerType")
            End If

            tmp_answer = tmp_answer & ", " & Ans_ID.Item("EngineType_Name")
            tmp_answer = tmp_answer & ", " & Ans_ID.Item("Color_Name")

            If Not IsDBNull(Ans_ID.Item("Gear_Name")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Gear_Name")
            End If



            Dim Qaccess As Queue
            Dim access As Accessory
            Dim i As Integer, n As Integer

            Qaccess = getBikeAccessory(carid)
            n = Qaccess.Count
            If n > 3 Then
                For i = 1 To 3
                    access = Qaccess.Dequeue
                    tmp_answer = tmp_answer & ", " & AccesoryDB.getBikeAccessName(access.id)
                Next
            Else
                For i = 1 To n
                    access = Qaccess.Dequeue
                    tmp_answer = tmp_answer & ", " & AccesoryDB.getBikeAccessName(access.id)
                Next
            End If


            If Not IsDBNull(Ans_ID.Item("Bike_Information")) Then
                If Ans_ID.Item("Bike_Information").length <= 40 Then
                    tmp_answer = tmp_answer & ", " & Ans_ID.Item("Bike_Information")
                Else
                    tmp_answer = tmp_answer & ", " & Left(Ans_ID.Item("Bike_Information"), 40) & "..."
                End If

            End If


        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function

    Function getAccesory_bak(ByVal accessory As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim i As Integer = 0
        Dim n As Integer = 1
        Dim ans As String

        ' For n = 1 To 3
        sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM BIKE_ACCESSORY ORDER BY  ACCESSORY "
        mycommand = New OleDbCommand(sql, myconn)
        reader = mycommand.ExecuteReader()

        Do While reader.Read()
            If i <= Len(accessory) - 1 Then
                If Mid(accessory, Len(accessory) - i, 1) = "1" Then
                    ans = ans & "," & reader.Item("ACCESSORY_NAME")
                End If

                i = i + 1
            End If
        Loop

        mycommand.Dispose()
        reader.Close()
        ' Next

        myconn.Close()
        If ans = "" Then
            ans = ",-"
        End If

        Return Right(ans, Len(ans) - 1)
    End Function
    Function getAccesory(ByVal bikeid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim ans As String

        sql = "SELECT Bike_Accessory.Accessory_Name FROM BAccessory INNER JOIN Bike_Accessory ON BAccessory.CAccessory_AccID = Bike_Accessory.Accessory WHERE (BAccessory.CAccessory_BikeID = " & bikeid & ")"
        mycommand = New OleDbCommand(sql, myconn)
        reader = mycommand.ExecuteReader()

        While reader.Read()

            ans = ans & "," & reader.Item("ACCESSORY_NAME")

        End While


        mycommand.Dispose()
        reader.Close()
        myconn.Close()


        If ans = "" Then
            ans = ",-"
        End If

        Return Right(ans, Len(ans) - 1)
    End Function

    Function getBikeOwnerID(ByVal carid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "Select Notice.Notice_MemberId FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id WHERE (Bike.Bike_Id = " & carid & ") AND (Notice.Notice_Category = 2)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item("Notice_MemberId")
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement


    End Function
    Function getMaxBikeID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Bike_Id)+1 as cust_id FROM Bike"
        mycommand = New OleDbCommand(sql, myconn)

        If IsDBNull(mycommand.ExecuteScalar()) Then
            custid = 1
        Else
            custid = mycommand.ExecuteScalar()
        End If

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Function addNewBike(ByVal v_brand As Integer, ByVal v_model As Integer, ByVal v_status As Integer, ByVal v_year As String, ByVal v_year2 As Integer, ByVal v_submodel As String, ByVal v_type As Integer, ByVal v_bodyid As String, ByVal v_engineType As Integer, ByVal v_cc As Integer, ByVal v_color As Integer, ByVal v_metalic As Boolean, ByVal v_power As String, ByVal v_powerType As String, ByVal v_gear As String, ByVal v_mile As String, ByVal v_mileType As String, ByVal v_Drive As String, ByVal v_numGear As String, ByVal v_numPump As String, ByVal v_lastCheck As String, ByVal v_insur As String, ByVal v_price As String, ByVal v_acci As Boolean, ByVal v_access As Queue, ByVal v_info As String, ByVal v_img1 As String, ByVal v_img2 As String, ByVal v_img3 As String) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String
        Dim bikeid As Integer = getMaxBikeID()

        Try
            sql = " INSERT INTO Bike"
            sql = sql & "(Bike_Id, Bike_Brand, Bike_Model, Bike_Status, Bike_Year, Bike_Year_Ord, Bike_SubModel, Bike_Type, Bike_BodyId, Bike_EngineType, Bike_CC, "
            sql = sql & "Bike_Color, Bike_Metalic, Bike_Power, Bike_PowerType, Bike_Gears, Bike_Miles, Bike_MilesType, Bike_Drive, Bike_NumGear, Bike_NumPump, "
            sql = sql & "Bike_LastCheck, Bike_Insurrance, Bike_Price, Bike_Accident, Bike_Accessory, Bike_Information, Bike_Post, Bike_Image1, Bike_Image2, "
            sql = sql & "Bike_Image3)"
            sql = sql & " VALUES (" & bikeid & ", " & v_brand & ", " & v_model & ", " & v_status & ", " & String_chk.checkNullstr(v_year) & "," & String_chk.checkNullNum2(v_year2) & ", " & String_chk.checkNullstr(v_submodel) & ", " & v_type & ", " & String_chk.checkNullstr(v_bodyid) & ", " & v_engineType & ", " & v_cc & ", " & v_color & ", " & String_chk.checkTrue(v_metalic) & ", " & String_chk.checkNullNum(v_power) & ", " & String_chk.checkNullstr(v_powerType) & ", " & String_chk.checkNullNum(v_gear) & ", " & String_chk.checkNullNum(v_mile) & ", " & String_chk.checkNullstr(v_mileType) & ", " & String_chk.checkNullNum(v_Drive) & ", " & String_chk.checkNullNum(v_numGear) & ", " & String_chk.checkNullNum(v_numPump) & "," & String_chk.checkNullstr(v_lastCheck) & ", " & String_chk.checkNullNum(v_insur) & ", " & String_chk.checkNullNum(v_price) & ", " & String_chk.checkTrue(v_acci) & ", '999', " & String_chk.checkNullstr(v_info) & ", getdate()," & String_chk.checkNullstr(v_img1) & ", " & String_chk.checkNullstr(v_img2) & ", " & String_chk.checkNullstr(v_img3) & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            Dim v_acc As Accessory
            Dim TempObjQueue As IEnumerator = v_access.GetEnumerator()

            While (TempObjQueue.MoveNext)

                v_acc = TempObjQueue.Current
                sql = "INSERT INTO BAccessory VALUES(" & bikeid & "," & v_acc.id & "," & v_acc.type & ")"
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

            End While

            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()

        Return bikeid
    End Function

    Function getBikes(ByVal carList As String, ByVal orderBy As String) As Array
        Dim tmp As Array = Split(carList, ",")
        Dim bikeInfo(tmp.Length) As Bike
        Dim i As Integer = 1


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM BIKE WHERE BIKE_ID in (" & carList & ") ORDER BY " & orderBy
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            bikeInfo(i).id = Ans_ID.Item(0)
            bikeInfo(i).Brand = String_chk.checkNullDBNum(Ans_ID.Item(1))
            bikeInfo(i).Model = String_chk.checkNullDBNum(Ans_ID.Item(2))
            bikeInfo(i).Status = String_chk.checkNullDBNum(Ans_ID.Item(3))
            bikeInfo(i).Year = String_chk.checkNullDBstr(Ans_ID.Item(4))
            bikeInfo(i).Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item(5))
            bikeInfo(i).SubModel = String_chk.checkNullDBstr(Ans_ID.Item(6))
            bikeInfo(i).Type = String_chk.checkNullDBNum(Ans_ID.Item(7))
            bikeInfo(i).BodyId = String_chk.checkNullDBstr(Ans_ID.Item(8))
            bikeInfo(i).EngineType = String_chk.checkNullDBNum(Ans_ID.Item(9))
            bikeInfo(i).CC = String_chk.checkNullDBNum(Ans_ID.Item(10))
            bikeInfo(i).Color = String_chk.checkNullDBNum(Ans_ID.Item(11))
            bikeInfo(i).Metalic = String_chk.checkNullDBNum(Ans_ID.Item(12))
            bikeInfo(i).Power = String_chk.checkNullDBNum(Ans_ID.Item(13))
            bikeInfo(i).PowerType = String_chk.checkNullDBstr(Ans_ID.Item(14))
            bikeInfo(i).Gears = String_chk.checkNullDBNum(Ans_ID.Item(15))
            bikeInfo(i).Miles = String_chk.checkNullDBNum(Ans_ID.Item(16))
            bikeInfo(i).MilesType = String_chk.checkNullDBstr(Ans_ID.Item(17))
            bikeInfo(i).Drive = String_chk.checkNullDBNum(Ans_ID.Item(18))
            bikeInfo(i).NumGear = String_chk.checkNullDBNum(Ans_ID.Item(19))
            bikeInfo(i).NumPump = String_chk.checkNullDBNum(Ans_ID.Item(20))
            bikeInfo(i).LastCheck = String_chk.checkNullDBstr(Ans_ID.Item(21))
            bikeInfo(i).Insurrance = String_chk.checkNullDBNum(Ans_ID.Item(22))
            bikeInfo(i).Price = String_chk.checkNullDBNum(Ans_ID.Item(23))
            bikeInfo(i).Accident = String_chk.checkNullDBNum(Ans_ID.Item(24))
            bikeInfo(i).Accessory = String_chk.checkNullDBstr(Ans_ID.Item(25))
            bikeInfo(i).Information = String_chk.checkNullDBstr(Ans_ID.Item(26))
            bikeInfo(i).Post = String_chk.checkNullDBDate(Ans_ID.Item(27))
            bikeInfo(i).Image1 = String_chk.checkNullDBstr(Ans_ID.Item(28))
            bikeInfo(i).Image2 = String_chk.checkNullDBstr(Ans_ID.Item(29))
            bikeInfo(i).Image3 = String_chk.checkNullDBstr(Ans_ID.Item(30))
            bikeInfo(i).Accessory1 = getBikeAccessory(Ans_ID.Item(0))
            i = i + 1
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return bikeInfo
    End Function
    Function getRanBikes() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQCar As New Queue
        Dim carInfo As CarDB.RandomCar

        sql = "SELECT     Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, "
        sql = sql & " Bike.Bike_Image1,Bike.Bike_Id,Brand.Brand_name, Model.Model_Name, Customer.Customer_Id, "
        sql = sql & " Status.Status_Name,Bike.Bike_year,Bike.Bike_year_ord"
        sql = sql & " FROM  NoticeDetail INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
        sql = sql & " Bike ON NoticeDetail.NoticeDetail_DataId = Bike.Bike_Id INNER JOIN"
        sql = sql & " Model ON Bike.Bike_Brand = Model.Brand AND Bike.Bike_Model = Model.Model INNER JOIN"
        sql = sql & " Status ON Bike.Bike_Status = Status.Status INNER JOIN"
        sql = sql & " Brand ON Bike.Bike_Brand = Brand.Brand"
        sql = sql & " WHERE  (Notice.Notice_Category = 2) "
        sql = sql & " AND (NoticeDetail.Detail_show = 1) "
        sql = sql & " AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (NoticeDetail.Detail_delete <> 1)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            carInfo.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            carInfo.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            carInfo.NoticeDetail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            carInfo.Car_Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Bike_Image1"))
            carInfo.Car_Id = String_chk.checkNullDBNum(Ans_ID.Item("Bike_Id"))
            carInfo.Brand_name = String_chk.checkNullDBstr(Ans_ID.Item("Brand_name"))
            carInfo.Model_Name = String_chk.checkNullDBstr(Ans_ID.Item("Model_Name"))
            carInfo.Customer_Id = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Id"))
            carInfo.Status_Name = String_chk.checkNullDBstr(Ans_ID.Item("Status_Name"))
            carInfo.Car_Year = String_chk.checkNullDBstr(Ans_ID.Item("Bike_year"))
            carInfo.Car_Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Bike_year_ord"))
            myQCar.Enqueue(carInfo)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQCar
    End Function
    Function getBikeAccessory(ByVal bikeid As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim mycommand As OleDbCommand
        Dim sql As String


        Dim accessor As New Queue
        Dim tmp As Accessory
        sql = "SELECT * FROM BAccessory WHERE BAccessory.CAccessory_BikeID = " & bikeid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            tmp.id = Ans_ID.Item(1)
            tmp.type = Ans_ID.Item(2)
            accessor.Enqueue(tmp)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return accessor
    End Function
    Function getBike(ByVal bikeid As Integer) As Bike
        Dim bikeInfo As New Bike

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Bike WHERE BIKE_ID = " & bikeid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            bikeInfo.id = Ans_ID.Item(0)
            bikeInfo.Brand = String_chk.checkNullDBNum(Ans_ID.Item(1))
            bikeInfo.Model = String_chk.checkNullDBNum(Ans_ID.Item(2))
            bikeInfo.Status = String_chk.checkNullDBNum(Ans_ID.Item(3))
            bikeInfo.Year = String_chk.checkNullDBstr(Ans_ID.Item(4))
            bikeInfo.Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item(5))
            bikeInfo.SubModel = String_chk.checkNullDBstr(Ans_ID.Item(6))
            bikeInfo.Type = String_chk.checkNullDBNum(Ans_ID.Item(7))
            bikeInfo.BodyId = String_chk.checkNullDBstr(Ans_ID.Item(8))
            bikeInfo.EngineType = String_chk.checkNullDBNum(Ans_ID.Item(9))
            bikeInfo.CC = String_chk.checkNullDBNum(Ans_ID.Item(10))
            bikeInfo.Color = String_chk.checkNullDBNum(Ans_ID.Item(11))
            bikeInfo.Metalic = String_chk.checkNullDBNum(Ans_ID.Item(12))
            bikeInfo.Power = String_chk.checkNullDBNum(Ans_ID.Item(13))
            bikeInfo.PowerType = String_chk.checkNullDBstr(Ans_ID.Item(14))
            bikeInfo.Gears = String_chk.checkNullDBNum(Ans_ID.Item(15))
            bikeInfo.Miles = String_chk.checkNullDBNum(Ans_ID.Item(16))
            bikeInfo.MilesType = String_chk.checkNullDBstr(Ans_ID.Item(17))
            bikeInfo.Drive = String_chk.checkNullDBNum(Ans_ID.Item(18))
            bikeInfo.NumGear = String_chk.checkNullDBNum(Ans_ID.Item(19))
            bikeInfo.NumPump = String_chk.checkNullDBNum(Ans_ID.Item(20))
            bikeInfo.LastCheck = String_chk.checkNullDBstr(Ans_ID.Item(21))
            bikeInfo.Insurrance = String_chk.checkNullDBNum(Ans_ID.Item(22))
            bikeInfo.Price = String_chk.checkNullDBNum(Ans_ID.Item(23))
            bikeInfo.Accident = String_chk.checkNullDBNum(Ans_ID.Item(24))
            bikeInfo.Accessory = String_chk.checkNullDBstr(Ans_ID.Item(25))
            bikeInfo.Information = String_chk.checkNullDBstr(Ans_ID.Item(26))
            bikeInfo.Post = String_chk.checkNullDBDate(Ans_ID.Item(27))
            bikeInfo.Image1 = String_chk.checkNullDBstr(Ans_ID.Item(28))
            bikeInfo.Image2 = String_chk.checkNullDBstr(Ans_ID.Item(29))
            bikeInfo.Image3 = String_chk.checkNullDBstr(Ans_ID.Item(30))
            bikeInfo.Accessory1 = getBikeAccessory(Ans_ID.Item(0))
            bikeInfo.Remark = String_chk.checkNullDBstr(Ans_ID.Item("Bike_Remark"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return bikeInfo

    End Function

    Sub deleteBikeaccessory(ByVal bikeid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM BAccessory WHERE BAccessory.CAccessory_Bikeid = " & bikeid

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editBikeAccessory(ByVal bikeid As Integer, ByVal access As Queue)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        deleteBikeaccessory(bikeid)

        Dim v_acc As Accessory
        Dim TempObjQueue As IEnumerator = access.GetEnumerator()

        While (TempObjQueue.MoveNext)

            v_acc = TempObjQueue.Current
            sql = "INSERT INTO BAccessory VALUES(" & bikeid & "," & v_acc.id & "," & v_acc.type & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

        End While

        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editBike(ByVal car As Bike)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE bike "
        sql = sql & " SET Bike_Brand = " & car.Brand & ", Bike_Model = " & car.Model & ", Bike_Status = " & car.Status & ", Bike_Year = " & String_chk.checkNullstr(car.Year) & ", Bike_Year_Ord= " & String_chk.checkNullNum2(car.Year_Ord) & ", "
        sql = sql & "Bike_SubModel = " & String_chk.checkNullstr(car.SubModel) & ", Bike_Type = " & car.Type & ", Bike_BodyId = " & String_chk.checkNullstr(car.BodyId) & ", Bike_EngineType = " & car.EngineType & ", "
        sql = sql & "Bike_CC = " & car.CC & ", Bike_Color = " & car.Color & ", Bike_Metalic = " & car.Metalic & ", Bike_Power = " & String_chk.checkNullNum2(car.Power) & ", "
        sql = sql & "Bike_PowerType = " & String_chk.checkNullstr(car.PowerType) & ", Bike_Gears = " & String_chk.checkNullNum2(car.Gears) & ", Bike_Miles = " & String_chk.checkNullNum2(car.Miles) & ", Bike_MilesType = " & String_chk.checkNullstr(car.MilesType) & ", "
        sql = sql & "Bike_Drive = " & String_chk.checkNullNum2(car.Drive) & ", Bike_NumGear = " & String_chk.checkNullNum2(car.NumGear) & ", Bike_NumPump = " & String_chk.checkNullNum2(car.NumPump) & ", "
        sql = sql & "Bike_LastCheck = " & String_chk.checkNullstr(car.LastCheck) & ", Bike_Insurrance = " & String_chk.checkNullNum2(car.Insurrance) & ", "
        sql = sql & "Bike_Price = " & String_chk.checkNullNum2(car.Price) & ", Bike_Accident = " & car.Accident & ", Bike_Accessory = " & String_chk.checkNullstr(car.Accessory) & ", Bike_Information = " & String_chk.checkNullstr(car.Information) & ", "
        sql = sql & "Bike_Image1 = " & String_chk.checkNullstr(car.Image1) & ", Bike_Image2 = " & String_chk.checkNullstr(car.Image2) & ", Bike_Image3 = " & String_chk.checkNullstr(car.Image3) & " "
        sql = sql & "WHERE(Bike_Id = " & car.id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        editBikeAccessory(car.id, car.Accessory1)

    End Sub
    Sub editBikeRemark(ByVal bikeid As Integer, ByVal remark As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE BIKE "
        sql = sql & " SET BIKE_Remark = " & String_chk.checkNullstr(remark)
        sql = sql & "WHERE (BIKE_Id = " & bikeid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure Bike
        Dim id As Integer
        Dim Brand As Integer
        Dim Model As Integer
        Dim Status As Integer
        Dim Year As String
        Dim Year_Ord As Integer
        Dim SubModel As String
        Dim Type As Integer
        Dim BodyId As String
        Dim EngineType As Integer
        Dim CC As Integer
        Dim Color As Integer
        Dim Metalic As Integer
        Dim Power As Integer
        Dim PowerType As String
        Dim Gears As Integer
        Dim Miles As Integer
        Dim MilesType As String
        Dim Drive As Integer
        Dim NumGear As Integer
        Dim NumPump As Integer
        Dim LastCheck As String
        Dim Insurrance As Integer
        Dim Price As Double
        Dim Accident As Integer
        Dim Accessory As String
        Dim Accessory1 As Queue
        Dim Information As String
        Dim Post As Date
        Dim Image1 As String
        Dim Image2 As String
        Dim Image3 As String
        Dim Remark As String
    End Structure
End Module
