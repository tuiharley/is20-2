Imports System.Data
Imports System.Data.OleDb
Module CarDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getBrand(ByVal carId As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Brand.Brand_name, Model.Model_Name, Car.Car_SubModel, CarType.CarType_Name FROM Car INNER JOIN Brand ON Car.Car_Brand = Brand.Brand INNER JOIN Model ON Car.Car_Model = Model.Model INNER JOIN CarType ON Car.Car_Type = CarType.CarType WHERE (Car.Car_Id = " & carId & ") AND (CarType.Category = 1)"

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
    Function getCarType(ByVal carId As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Car_Type FROM Car WHERE (Car.Car_Id = " & carId & ") "

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0)
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

        sql = "SELECT Car_Price FROM Car WHERE (Car.Car_Id = " & carId & ")"

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

        sql = "SELECT Car_Post FROM Car WHERE (Car.Car_Id = " & carId & ")"

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

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Car.Car_Image1 FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Car.Car_Id = " & carid & ") AND (Notice.Notice_Category = 1)"

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

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Car.Car_Image1 FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Car.Car_Id = " & carid & ") AND (Notice.Notice_Category = 1)"

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

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, Car.Car_Image1,Car.Car_Image2,Car.Car_Image3,Car.Car_Image4,Car.Car_Image5, NoticeDetail.NoticeDetail_Id FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Car.Car_Id = " & carid & ") AND (Notice.Notice_Category = 1)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then

            'tmp_answer.SetValue("\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\", 0)
            For i = 1 To 5
                If Not IsDBNull(Ans_ID.Item(i + 1)) Then
                    tmp_answer.SetValue("\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(7) & "\" & Ans_ID.Item(i + 1), i)
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
    Function getCarInfo(ByVal carid As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Province.Province_Name, Car.Car_Year, Car.Car_Accident, Car.Car_Insurrance, Car.Car_Miles, Car.Car_MilesType, Car.Car_CC,  Car.Car_Power, Car.Car_PowerType, EngineType.EngineType_Name, Color.Color_Name, Car.Car_Metalic,Gear.Gear_Name, Car.Car_Accessory, Car.Car_Information FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN Province ON Customer.Customer_Province = Province.Province LEFT OUTER JOIN Gear ON Car.Car_Gears = Gear.Gear LEFT OUTER JOIN Color ON Car.Car_Color = Color.Color LEFT OUTER JOIN EngineType ON Car.Car_EngineType = EngineType.EngineType WHERE (Notice.Notice_Category = 1) and (Car.Car_Id = " & carid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            tmp_answer = Ans_ID.Item("Province_Name")
            If Not IsDBNull(Ans_ID.Item("Car_Year")) Then
                tmp_answer = tmp_answer & ", " & Right(Ans_ID.Item("Car_Year"), 4)
            Else
                tmp_answer = tmp_answer & ",<span class='Font_orange'> รถใหม่!</span>"
            End If

            If Not IsDBNull(Ans_ID.Item("Car_Accident")) Then
                If Ans_ID.Item("Car_Accident") = "1" Then
                    tmp_answer = tmp_answer & ", รถมีอุบัติเหตุ(ยังไม่ซ่อม)"
                Else
                    tmp_answer = tmp_answer & ", รถไม่มีอุบัติเหตุ"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Car_Insurrance")) Then
                If Ans_ID.Item("Car_Insurrance") = "1" Then
                    tmp_answer = tmp_answer & ", รถมีประกัน"
                Else
                    tmp_answer = tmp_answer & ", รถไม่มีประกัน"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Car_Miles")) Then
                tmp_answer = tmp_answer & ", " & FormatNumber(Ans_ID.Item("Car_Miles"), 0) & " " & Ans_ID.Item("Car_MilesType")
            End If

            tmp_answer = tmp_answer & ", " & Ans_ID.Item("Car_CC") & "cc"

            If Not IsDBNull(Ans_ID.Item("Car_Power")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Car_Power") & " " & Ans_ID.Item("Car_PowerType")
            End If

            tmp_answer = tmp_answer & ", " & Ans_ID.Item("EngineType_Name")
            tmp_answer = tmp_answer & ", " & Ans_ID.Item("Color_Name")

            If Not IsDBNull(Ans_ID.Item("Car_Metalic")) Then
                tmp_answer = tmp_answer & " เมทาลิค"
            End If

            If Not IsDBNull(Ans_ID.Item("Gear_Name")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Gear_Name")
            End If



            Dim Qaccess As Queue
            Dim access As Accessory
            Dim i As Integer, n As Integer

            Qaccess = getCarAccessory(carid)
            n = Qaccess.Count
            If n > 3 Then
                For i = 1 To 3
                    access = Qaccess.Dequeue
                    tmp_answer = tmp_answer & ", " & AccesoryDB.getCarAccessName(access.id, access.type)
                Next
            Else
                For i = 1 To n
                    access = Qaccess.Dequeue
                    tmp_answer = tmp_answer & ", " & AccesoryDB.getCarAccessName(access.id, access.type)
                Next
            End If




            If Not IsDBNull(Ans_ID.Item("Car_Information")) Then
                If Ans_ID.Item("Car_Information").length <= 40 Then
                    tmp_answer = tmp_answer & ", " & Ans_ID.Item("Car_Information")
                Else
                    tmp_answer = tmp_answer & ", " & Left(Ans_ID.Item("Car_Information"), 40) & "..."
                End If

            End If


        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getGroupCarInfo(ByVal group_Car As String) As DataSet
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim sql As String

        sql = "      SELECT * "
        sql = sql & "FROM EngineType RIGHT OUTER JOIN"
        sql = sql & "     Car INNER JOIN"
        sql = sql & "     Brand ON Car.Car_Brand = Brand.Brand INNER JOIN"
        sql = sql & "     Model ON Car.Car_Model = Model.Model INNER JOIN"
        sql = sql & "     Status ON Car.Car_Status = Status.Status INNER JOIN"
        sql = sql & "     CarType ON Car.Car_Type = CarType.CarType INNER JOIN"
        sql = sql & "     Color ON Car.Car_Color = Color.Color INNER JOIN"
        sql = sql & "     NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN"
        sql = sql & "     Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & "     Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
        sql = sql & "     Province ON Customer.Customer_Province = Province.Province INNER JOIN"
        sql = sql & "     District ON Customer.Customer_District = District.District LEFT OUTER JOIN"
        sql = sql & "     Gear ON Car.Car_Gears = Gear.Gear ON EngineType.EngineType = Car.Car_EngineType INNER JOIN"
        sql = sql & "     Title ON Customer.Customer_Title = Title.Title "
        sql = sql & "WHERE   (Car.Car_Id in (" & group_Car & ")) AND (Notice.Notice_Category = 1)"


        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(ds, "GroupCarCompare")


        da.Dispose()
        myconn.Close()


        Return ds
        ds.Dispose()
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

        For n = 1 To 3
            sql = "SELECT ACCESSORY, ACCESSORY_NAME FROM CAR_ACCESSORY WHERE ACCESSORY_TYPE=" & n & " ORDER BY  ACCESSORY "
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
        Next

        myconn.Close()
        If ans = "" Then
            ans = ",-"
        End If

        Return Right(ans, Len(ans) - 1)
    End Function
    Function getAccesory(ByVal carid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim ans As String

        sql = "SELECT CAccessory.CAccessory_AccID, Car_Accessory.Accessory_Name FROM CAccessory INNER JOIN Car_Accessory ON CAccessory.CAccessory_AccID = Car_Accessory.Accessory WHERE (CAccessory.CAccessory_CarID = " & carid & ")"
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


    Function getCarOwnerID(ByVal carid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "Select Notice.Notice_MemberId FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id WHERE (Car.Car_Id = " & carid & ") AND (Notice.Notice_Category = 1)"

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
    Function getMaxCarID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(CAR_ID)+1 as cust_id FROM CAR"
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
    Function addNewCar(ByVal v_brand As Integer, ByVal v_model As Integer, ByVal v_status As Integer, ByVal v_year As String, ByVal v_year2 As Integer, ByVal v_submodel As String, ByVal v_type As Integer, ByVal v_bodyid As String, ByVal v_engineType As Integer, ByVal v_cc As Integer, ByVal v_color As Integer, ByVal v_metalic As Boolean, ByVal v_power As String, ByVal v_powerType As String, ByVal v_gear As String, ByVal v_mile As String, ByVal v_mileType As String, ByVal v_numDoor As String, ByVal v_numGear As String, ByVal v_numSeat As String, ByVal v_numPump As String, ByVal v_fuelConsume As String, ByVal v_fuelTank As String, ByVal v_lastCheck As String, ByVal v_insur As String, ByVal v_price As String, ByVal v_acci As Boolean, ByVal v_access As Queue, ByVal v_info As String, ByVal v_img1 As String, ByVal v_img2 As String, ByVal v_img3 As String, ByVal v_img4 As String, ByVal v_img5 As String) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String
        Dim i As Integer
        Dim carid As Integer = getMaxCarID()



        Try
            sql = " INSERT INTO Car"
            sql = sql & "(Car_Id, Car_Brand, Car_Model, Car_Status, Car_Year, Car_Year_Ord, Car_SubModel, Car_Type, Car_BodyId, Car_EngineType, Car_CC, Car_Color, "
            sql = sql & " Car_Metalic, Car_Power, Car_PowerType, Car_Gears, Car_Miles, Car_MilesType, Car_NumDoor, Car_NumGear, Car_NumSeat, Car_NumPump, "
            sql = sql & " Car_FuelConsume, Car_FuelTank, Car_LastCheck, Car_Insurrance, Car_Price, Car_Accident, Car_Accessory, Car_Information, Car_Post, Car_Image1, "
            sql = sql & " Car_Image2, Car_Image3, Car_Image4, Car_Image5)"
            sql = sql & " VALUES (" & carid & ", " & v_brand & ", " & v_model & ", " & v_status & ", " & String_chk.checkNullstr(v_year) & "," & String_chk.checkNullNum2(v_year2) & ", " & String_chk.checkNullstr(v_submodel) & ", " & v_type & ", " & String_chk.checkNullstr(v_bodyid) & ", " & v_engineType & ", " & v_cc & ", " & v_color & ", " & String_chk.checkTrue(v_metalic) & ", " & String_chk.checkNullNum(v_power) & ", " & String_chk.checkNullstr(v_powerType) & ", " & String_chk.checkNullNum(v_gear) & ", " & String_chk.checkNullNum(v_mile) & ", " & String_chk.checkNullstr(v_mileType) & ", " & String_chk.checkNullNum(v_numDoor) & ", " & String_chk.checkNullNum(v_numGear) & ", " & String_chk.checkNullNum(v_numSeat) & ", " & String_chk.checkNullNum(v_numPump) & ", " & String_chk.checkNullNum(v_fuelConsume) & ", " & String_chk.checkNullNum(v_fuelTank) & ", " & String_chk.checkNullstr(v_lastCheck) & ", " & String_chk.checkNullNum(v_insur) & ", " & String_chk.checkNullNum(v_price) & ", " & String_chk.checkTrue(v_acci) & ", '999', " & String_chk.checkNullstr(v_info) & ", getdate()," & String_chk.checkNullstr(v_img1) & ", " & String_chk.checkNullstr(v_img2) & ", " & String_chk.checkNullstr(v_img3) & ", " & String_chk.checkNullstr(v_img4) & ", " & String_chk.checkNullstr(v_img5) & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            Dim v_acc As Accessory
            Dim TempObjQueue As IEnumerator = v_access.GetEnumerator()

            While (TempObjQueue.MoveNext)

                v_acc = TempObjQueue.Current
                sql = "INSERT INTO CAccessory VALUES(" & carid & "," & v_acc.id & "," & v_acc.type & ")"
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

            End While

            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try



        mycommand.Dispose()
        myconn.Close()

        Return carid
    End Function


    Function getCars(ByVal carList As String, ByVal orderBy As String) As Array
        Dim tmp As Array = Split(carList, ",")
        Dim carInfo(tmp.Length) As Car
        Dim i As Integer = 1


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM CAR WHERE CAR_ID in (" & carList & ") ORDER BY " & orderBy
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            carInfo(i).id = Ans_ID.Item(0)
            carInfo(i).Brand = String_chk.checkNullDBNum(Ans_ID.Item(1))
            carInfo(i).Model = String_chk.checkNullDBNum(Ans_ID.Item(2))
            carInfo(i).Status = String_chk.checkNullDBNum(Ans_ID.Item(3))
            carInfo(i).Year = String_chk.checkNullDBstr(Ans_ID.Item(4))
            carInfo(i).Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item(5))
            carInfo(i).SubModel = String_chk.checkNullDBstr(Ans_ID.Item(6))
            carInfo(i).Type = String_chk.checkNullDBNum(Ans_ID.Item(7))
            carInfo(i).BodyId = String_chk.checkNullDBstr(Ans_ID.Item(8))
            carInfo(i).EngineType = String_chk.checkNullDBNum(Ans_ID.Item(9))
            carInfo(i).CC = String_chk.checkNullDBNum(Ans_ID.Item(10))
            carInfo(i).Color = String_chk.checkNullDBNum(Ans_ID.Item(11))
            carInfo(i).Metalic = String_chk.checkNullDBNum(Ans_ID.Item(12))
            carInfo(i).Power = String_chk.checkNullDBNum(Ans_ID.Item(13))
            carInfo(i).PowerType = String_chk.checkNullDBstr(Ans_ID.Item(14))
            carInfo(i).Gears = String_chk.checkNullDBNum(Ans_ID.Item(15))
            carInfo(i).Miles = String_chk.checkNullDBNum(Ans_ID.Item(16))
            carInfo(i).MilesType = String_chk.checkNullDBstr(Ans_ID.Item(17))
            carInfo(i).NumDoor = String_chk.checkNullDBNum(Ans_ID.Item(18))
            carInfo(i).NumGear = String_chk.checkNullDBNum(Ans_ID.Item(19))
            carInfo(i).NumSeat = String_chk.checkNullDBNum(Ans_ID.Item(20))
            carInfo(i).NumPump = String_chk.checkNullDBNum(Ans_ID.Item(21))
            carInfo(i).FuelConsume = String_chk.checkNullDBNum(Ans_ID.Item(22))
            carInfo(i).FuelTank = String_chk.checkNullDBNum(Ans_ID.Item(23))
            carInfo(i).LastCheck = String_chk.checkNullDBstr(Ans_ID.Item(24))
            carInfo(i).Insurrance = String_chk.checkNullDBbit(Ans_ID.Item(25))
            carInfo(i).Price = String_chk.checkNullDBNum(Ans_ID.Item(26))
            carInfo(i).Accident = String_chk.checkNullDBbit(Ans_ID.Item(27))
            carInfo(i).Accessory = String_chk.checkNullDBstr(Ans_ID.Item(28))
            carInfo(i).Information = String_chk.checkNullDBstr(Ans_ID.Item(29))
            carInfo(i).Post = String_chk.checkNullDBDate(Ans_ID.Item(30))
            carInfo(i).Image1 = String_chk.checkNullDBstr(Ans_ID.Item(31))
            carInfo(i).Image2 = String_chk.checkNullDBstr(Ans_ID.Item(32))
            carInfo(i).Image3 = String_chk.checkNullDBstr(Ans_ID.Item(33))
            carInfo(i).Image4 = String_chk.checkNullDBstr(Ans_ID.Item(34))
            carInfo(i).Image5 = String_chk.checkNullDBstr(Ans_ID.Item(35))
            carInfo(i).Accessory1 = getCarAccessory(Ans_ID.Item(0))
            i = i + 1
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return carInfo
    End Function
    Function getRanCars() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQCar As New Queue
        Dim carInfo As RandomCar

        sql = "SELECT    Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, "
        sql = sql & " Car.Car_Image1,Car.Car_Id, Brand.Brand_name, Model.Model_Name, "
        sql = sql & " Customer.Customer_Id, Status.Status_Name, Car.Car_Year, Car.Car_Year_Ord"
        sql = sql & " FROM         NoticeDetail INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & " Car ON NoticeDetail.NoticeDetail_DataId = Car.Car_Id INNER JOIN"
        sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
        sql = sql & " Brand ON Car.Car_Brand = Brand.Brand INNER JOIN"
        sql = sql & " Status ON Car.Car_Status = Status.Status INNER JOIN"
        sql = sql & " Model ON Car.Car_Model = Model.Model AND Car.Car_Brand = Model.Brand"
        sql = sql & " WHERE     (Notice.Notice_Category = 1) "
        sql = sql & " AND (NoticeDetail.Detail_show = 1) "
        sql = sql & " AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (NoticeDetail.Detail_delete <> 1)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            carInfo.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            carInfo.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            carInfo.NoticeDetail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            carInfo.Car_Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Car_Image1"))
            carInfo.Car_Id = String_chk.checkNullDBNum(Ans_ID.Item("Car_Id"))
            carInfo.Brand_name = String_chk.checkNullDBstr(Ans_ID.Item("Brand_name"))
            carInfo.Model_Name = String_chk.checkNullDBstr(Ans_ID.Item("Model_Name"))
            carInfo.Customer_Id = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Id"))
            carInfo.Status_Name = String_chk.checkNullDBstr(Ans_ID.Item("Status_Name"))
            carInfo.Car_Year = String_chk.checkNullDBstr(Ans_ID.Item("Car_Year"))
            carInfo.Car_Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Car_Year_Ord"))
            myQCar.Enqueue(carInfo)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQCar
    End Function
    Function getCarAccessory(ByVal carid As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim mycommand As OleDbCommand
        Dim sql As String


        Dim accessor As New Queue
        Dim tmp As Accessory
        sql = "SELECT * FROM CAccessory WHERE CAccessory.CAccessory_CarID = " & carid

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
    Function getCar(ByVal carid As Integer) As Car
        Dim carInfo As New Car

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM CAR WHERE CAR_ID = " & carid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            carInfo.id = Ans_ID.Item("Car_Id")
            carInfo.Brand = String_chk.checkNullDBNum(Ans_ID.Item("Car_Brand"))
            carInfo.Model = String_chk.checkNullDBNum(Ans_ID.Item("Car_Model"))
            carInfo.Status = String_chk.checkNullDBNum(Ans_ID.Item("Car_Status"))
            carInfo.Year = String_chk.checkNullDBstr(Ans_ID.Item("Car_Year"))
            carInfo.Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Car_Year_Ord"))
            carInfo.SubModel = String_chk.checkNullDBstr(Ans_ID.Item("Car_SubModel"))
            carInfo.Type = String_chk.checkNullDBNum(Ans_ID.Item("Car_Type"))
            carInfo.BodyId = String_chk.checkNullDBstr(Ans_ID.Item("Car_BodyId"))
            carInfo.EngineType = String_chk.checkNullDBNum(Ans_ID.Item("Car_EngineType"))
            carInfo.CC = String_chk.checkNullDBNum(Ans_ID.Item("Car_CC"))
            carInfo.Color = String_chk.checkNullDBNum(Ans_ID.Item("Car_Color"))
            carInfo.Metalic = String_chk.checkNullDBNum(Ans_ID.Item("Car_Metalic"))
            carInfo.Power = String_chk.checkNullDBNum(Ans_ID.Item("Car_Power"))
            carInfo.PowerType = String_chk.checkNullDBstr(Ans_ID.Item("Car_PowerType"))
            carInfo.Gears = String_chk.checkNullDBNum(Ans_ID.Item("Car_Gears"))
            carInfo.Miles = String_chk.checkNullDBNum(Ans_ID.Item("Car_Miles"))
            carInfo.MilesType = String_chk.checkNullDBstr(Ans_ID.Item("Car_MilesType"))
            carInfo.NumDoor = String_chk.checkNullDBNum(Ans_ID.Item("Car_NumDoor"))
            carInfo.NumGear = String_chk.checkNullDBNum(Ans_ID.Item("Car_NumGear"))
            carInfo.NumSeat = String_chk.checkNullDBNum(Ans_ID.Item("Car_NumSeat"))
            carInfo.NumPump = String_chk.checkNullDBNum(Ans_ID.Item("Car_NumPump"))
            carInfo.FuelConsume = String_chk.checkNullDBNum(Ans_ID.Item("Car_FuelConsume"))
            carInfo.FuelTank = String_chk.checkNullDBNum(Ans_ID.Item("Car_FuelTank"))
            carInfo.LastCheck = String_chk.checkNullDBstr(Ans_ID.Item("Car_LastCheck"))
            carInfo.Insurrance = String_chk.checkNullDBbit(Ans_ID.Item("Car_Insurrance"))
            carInfo.Price = String_chk.checkNullDBPrice(Ans_ID.Item("Car_Price"))
            carInfo.Accident = String_chk.checkNullDBbit(Ans_ID.Item("Car_Accident"))
            carInfo.Accessory = String_chk.checkNullDBstr(Ans_ID.Item("Car_Accessory"))
            carInfo.Information = String_chk.checkNullDBstr(Ans_ID.Item("Car_Information"))
            carInfo.Post = String_chk.checkNullDBDate(Ans_ID.Item("Car_Post"))
            carInfo.Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Car_Image1"))
            carInfo.Image2 = String_chk.checkNullDBstr(Ans_ID.Item("Car_Image2"))
            carInfo.Image3 = String_chk.checkNullDBstr(Ans_ID.Item("Car_Image3"))
            carInfo.Image4 = String_chk.checkNullDBstr(Ans_ID.Item("Car_Image4"))
            carInfo.Image5 = String_chk.checkNullDBstr(Ans_ID.Item("Car_Image5"))
            carInfo.Remark = String_chk.checkNullDBstr(Ans_ID.Item("Car_Remark"))
            carInfo.Accessory1 = getCarAccessory(Ans_ID.Item("Car_Id"))
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return carInfo
    End Function

    Sub deleteCaraccessory(ByVal carid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM CAccessory WHERE CAccessory.CAccessory_Carid = " & carid

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editCarAccessory(ByVal carid As Integer, ByVal access As Queue)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        deleteCaraccessory(carid)

        Dim v_acc As Accessory
        Dim TempObjQueue As IEnumerator = access.GetEnumerator()

        While (TempObjQueue.MoveNext)

            v_acc = TempObjQueue.Current
            sql = "INSERT INTO CAccessory VALUES(" & carid & "," & v_acc.id & "," & v_acc.type & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

        End While

        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub editCar(ByVal car As Car)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE car "
        sql = sql & " SET Car_Brand = " & car.Brand & ", Car_Model = " & car.Model & ", Car_Status = " & car.Status & ", Car_Year = " & String_chk.checkNullstr(car.Year) & ", Car_Year_Ord = " & String_chk.checkNullNum2(car.Year_Ord) & ", "
        sql = sql & "Car_SubModel = " & String_chk.checkNullstr(car.SubModel) & ", Car_Type = " & car.Type & ", Car_BodyId = " & String_chk.checkNullstr(car.BodyId) & ", Car_EngineType = " & car.EngineType & ", "
        sql = sql & "Car_CC = " & car.CC & ", Car_Color = " & car.Color & ", Car_Metalic = " & car.Metalic & ", Car_Power = " & String_chk.checkNullNum2(car.Power) & ", "
        sql = sql & "Car_PowerType = " & String_chk.checkNullstr(car.PowerType) & ", Car_Gears = " & String_chk.checkNullNum2(car.Gears) & ", Car_Miles = " & String_chk.checkNullNum2(car.Miles) & ", Car_MilesType = " & String_chk.checkNullstr(car.MilesType) & ", "
        sql = sql & "Car_NumDoor = " & String_chk.checkNullNum2(car.NumDoor) & ", Car_NumGear = " & String_chk.checkNullNum2(car.NumGear) & ", Car_NumSeat = " & String_chk.checkNullNum2(car.NumSeat) & ", Car_NumPump = " & String_chk.checkNullNum2(car.NumPump) & ", "
        sql = sql & "Car_FuelConsume = " & String_chk.checkNullNum2(car.FuelConsume) & ", Car_FuelTank = " & String_chk.checkNullNum2(car.FuelTank) & ", Car_LastCheck = " & String_chk.checkNullstr(car.LastCheck) & ", Car_Insurrance = " & String_chk.checkNullNum(car.Insurrance) & ", "
        sql = sql & "Car_Price = " & String_chk.checkNullNum2(car.Price) & ", Car_Accident = " & car.Accident & ", Car_Accessory = " & String_chk.checkNullstr(car.Accessory) & ", Car_Information = " & String_chk.checkNullstr(car.Information) & ", "
        sql = sql & "Car_Image1 = " & String_chk.checkNullstr(car.Image1) & ", Car_Image2 = " & String_chk.checkNullstr(car.Image2) & ", Car_Image3 = " & String_chk.checkNullstr(car.Image3) & ", "
        sql = sql & "Car_Image4 = " & String_chk.checkNullstr(car.Image4) & ", Car_Image5 = " & String_chk.checkNullstr(car.Image5) & " "
        sql = sql & "WHERE(Car_Id = " & car.id & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        editCarAccessory(car.id, car.Accessory1)

        'Return sql
    End Sub

    Sub editCarRemark(ByVal carid As Integer, ByVal remark As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE car "
        sql = sql & " SET Car_Remark = " & String_chk.checkNullstr(remark)
        sql = sql & "WHERE (Car_Id = " & carid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure Car
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
        Dim NumDoor As Integer
        Dim NumGear As Integer
        Dim NumSeat As Integer
        Dim NumPump As Integer
        Dim FuelConsume As Integer
        Dim FuelTank As Integer
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
        Dim Image4 As String
        Dim Image5 As String
        Dim Remark As String
    End Structure
    Structure RandomCar
        Dim Customer_Username As String
        Dim Notice_Id As Integer
        Dim NoticeDetail_Id As Integer
        Dim Car_Image1 As String
        Dim Car_Id As Integer
        Dim Brand_name As String
        Dim Model_Name As String
        Dim Customer_Id As Integer
        Dim Status_Name As String
        Dim Car_Year As String
        Dim Car_Year_Ord As Integer
    End Structure
End Module
