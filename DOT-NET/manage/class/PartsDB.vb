Imports System.Data
Imports System.Data.OleDb
Module PartsDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    'Function getBrandName(ByVal brandid As Integer) As String
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement As String

    '    sql = "SELECT Brand.Brand_name FROM BRAND WHERE Brand = " & brandid

    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read Then
    '        search_statement = Ans_ID.Item(0)
    '    End If


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement
    'End Function
    Function getTotalParts(ByVal cat_cat As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As Integer

        sql = "SELECT count(*) as total_b FROM category WHERE category_categoryType = " & cat_cat
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
    'Function getTotalNoBrand() As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement As Integer

    '    sql = "SELECT count(*) as total_b FROM Brand "
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read Then
    '        search_statement = Ans_ID.Item(0)
    '    End If


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement
    'End Function
    Function getMainPic(ByVal PartID As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Parts.Part_Image FROM Parts INNER JOIN NoticeDetail ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Parts.Part_Id = " & PartID & ") AND (Notice.Notice_Category = 4)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(3)) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(2) & "\" & Ans_ID.Item(3)
            Else
                tmp_answer = ConfigurationSettings.AppSettings("picURL") & "images/objects/no_image_60x45.gif"
            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getMainPic2(ByVal PartID As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Parts.Part_Image FROM Parts INNER JOIN NoticeDetail ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN  Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Parts.Part_Id = " & PartID & ") AND (Notice.Notice_Category = 4)"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Not IsDBNull(Ans_ID.Item(3)) Then
                tmp_answer = "\userData" & "\" & Ans_ID.Item(0) & "\" & Ans_ID.Item(1) & "\" & Ans_ID.Item(2) & "\" & Ans_ID.Item(3)
            Else
                tmp_answer = "no_image_60x45.gif"
            End If

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function
    Function getAllParts(ByVal total_brand As Integer, ByVal cat_cat As Integer) As Array
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement(total_brand + 1) As String

        sql = "SELECT Category, Category_Name FROM category WHERE category_categoryType = " & cat_cat & " ORDER BY Category"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        Dim i As Integer = 1

        While Ans_ID.Read
            search_statement(i) = Ans_ID.Item(0) & ":" & Ans_ID.Item(1)
            i = i + 1
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getPartInfo(ByVal PartID As Integer) As String
        Dim tmp_answer As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Province.Province_Name, Status.Status_Name, Parts.Part_Accident, Parts.Part_Insurrance, Parts.Part_Miles, Parts.Part_MilesType, Parts.Part_Color, Parts.Part_ColorCode, Parts.Part_Code, Parts.Part_Information FROM NoticeDetail INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN Province ON Customer.Customer_Province = Province.Province INNER JOIN Parts ON NoticeDetail.NoticeDetail_DataId = Parts.Part_Id INNER JOIN Status ON Parts.Part_Status = Status.Status WHERE (Notice.Notice_Category = 4) AND (Parts.Part_Id = " & PartID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            tmp_answer = Ans_ID.Item("Province_Name")
            If Ans_ID.Item("Status_Name") = "สินค้ามือสอง" Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Status_Name")
            Else
                tmp_answer = tmp_answer & ",<span class='Font_orange'> สินค้าใหม่!</span>"
            End If

            If Not IsDBNull(Ans_ID.Item("Part_Accident")) Then
                If Ans_ID.Item("Part_Accident") = "1" Then
                    tmp_answer = tmp_answer & ", ชำรุด(ยังไม่ซ่อม)"
                Else
                    tmp_answer = tmp_answer & ", สินค้าไม่ชำรุด"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Part_Insurrance")) Then
                If Ans_ID.Item("Part_Insurrance") = "1" Then
                    tmp_answer = tmp_answer & ", สินค้ามีประกัน"
                Else
                    tmp_answer = tmp_answer & ", สินค้าไม่มีประกัน"
                End If
            End If

            If Not IsDBNull(Ans_ID.Item("Part_Miles")) Then
                tmp_answer = tmp_answer & ", " & FormatNumber(Ans_ID.Item("Part_Miles"), 0) & " " & Ans_ID.Item("Part_MilesType")
            End If

            If Not IsDBNull(Ans_ID.Item("Part_Color")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Part_Color")
            End If

            If Not IsDBNull(Ans_ID.Item("Part_ColorCode")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Part_ColorCode")
            End If

            If Not IsDBNull(Ans_ID.Item("Part_Code")) Then
                tmp_answer = tmp_answer & ", " & Ans_ID.Item("Part_Code")
            End If



            If Not IsDBNull(Ans_ID.Item("Part_Information")) Then
                If Ans_ID.Item("Part_Information").length <= 80 Then
                    tmp_answer = tmp_answer & ", " & Ans_ID.Item("Part_Information")
                Else
                    tmp_answer = tmp_answer & ", " & Left(Ans_ID.Item("Part_Information"), 80) & "..."
                End If

            End If


        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return tmp_answer
    End Function

    Function getRanPart() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQCar As New Queue
        Dim carInfo As CarDB.RandomCar

        sql = "SELECT     Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Customer.Customer_Id, Status.Status_Name, Parts.Part_Brand, "
        sql = sql & " Parts.Part_Id,Parts.Part_Model, Parts.Part_Year, Parts.Part_Year_Ord,Parts.Part_Image"
        sql = sql & " FROM         Parts INNER JOIN"
        sql = sql & " Status ON Parts.Part_Status = Status.Status INNER JOIN"
        sql = sql & " NoticeDetail INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId"
        sql = sql & " WHERE     (Notice.Notice_Category in (4,5)) "
        sql = sql & " AND (NoticeDetail.Detail_show = 1) "
        sql = sql & " AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (NoticeDetail.Detail_delete <> 1)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            carInfo.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            carInfo.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            carInfo.NoticeDetail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            carInfo.Car_Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Part_Image"))
            carInfo.Car_Id = String_chk.checkNullDBNum(Ans_ID.Item("Part_Id"))
            carInfo.Brand_name = String_chk.checkNullDBstr(Ans_ID.Item("Part_Brand"))
            carInfo.Model_Name = String_chk.checkNullDBstr(Ans_ID.Item("Part_Model"))
            carInfo.Customer_Id = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Id"))
            carInfo.Status_Name = String_chk.checkNullDBstr(Ans_ID.Item("Status_Name"))
            carInfo.Car_Year = String_chk.checkNullDBstr(Ans_ID.Item("Part_Year"))
            carInfo.Car_Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Part_Year_Ord"))
            myQCar.Enqueue(carInfo)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQCar
    End Function
    Function getNewestPart() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myQCar As New Queue
        Dim carInfo As CarDB.RandomCar

        sql = "SELECT Top 5 Customer.Customer_Username, Notice.Notice_Id, NoticeDetail.NoticeDetail_Id, Customer.Customer_Id, Status.Status_Name, Parts.Part_Brand, "
        sql = sql & " Parts.Part_Id,Parts.Part_Model, Parts.Part_Year, Parts.Part_Year_Ord,Parts.Part_Image"
        sql = sql & " FROM         Parts INNER JOIN"
        sql = sql & " Status ON Parts.Part_Status = Status.Status INNER JOIN"
        sql = sql & " NoticeDetail INNER JOIN"
        sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN"
        sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId"
        sql = sql & " WHERE     (Notice.Notice_Category in (4,5)) "
        sql = sql & " AND (NoticeDetail.Detail_show = 1) "
        sql = sql & " AND (Notice.Notice_Show = 1) "
        sql = sql & " AND (NoticeDetail.Detail_delete <> 1)"
        sql = sql & " Order By Parts.Part_Post DESC"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            carInfo.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            carInfo.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            carInfo.NoticeDetail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            carInfo.Car_Image1 = String_chk.checkNullDBstr(Ans_ID.Item("Part_Image"))
            carInfo.Car_Id = String_chk.checkNullDBNum(Ans_ID.Item("Part_Id"))
            carInfo.Brand_name = String_chk.checkNullDBstr(Ans_ID.Item("Part_Brand"))
            carInfo.Model_Name = String_chk.checkNullDBstr(Ans_ID.Item("Part_Model"))
            carInfo.Customer_Id = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Id"))
            carInfo.Status_Name = String_chk.checkNullDBstr(Ans_ID.Item("Status_Name"))
            carInfo.Car_Year = String_chk.checkNullDBstr(Ans_ID.Item("Part_Year"))
            carInfo.Car_Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Part_Year_Ord"))
            myQCar.Enqueue(carInfo)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQCar
    End Function

    Function getPartOwnerID(ByVal carid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "Select Notice.Notice_MemberId FROM Parts INNER JOIN NoticeDetail ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id WHERE (Parts.Part_Id = " & carid & ") AND (Notice.Notice_Category in (4,5))"

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
    Function getMaxPartID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Part_ID)+1 as cust_id FROM Parts"
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
    Function addNewPart(ByVal v_cat As Integer, ByVal v_type As Integer, ByVal v_name As String, ByVal v_brand As String, ByVal v_submodel As String, ByVal v_code As String, ByVal v_status As Integer, ByVal v_year As String, ByVal v_year2 As Integer, ByVal v_color As String, ByVal v_colorCode As String, ByVal v_miles As String, ByVal v_mileType As String, ByVal v_insur As String, ByVal v_acci As Boolean, ByVal v_price As String, ByVal v_info As String, ByVal v_img1 As String) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim carid As Integer = getMaxPartID()

        sql = " INSERT INTO Parts"
        sql = sql & "(Part_Id, Part_Category, Part_Type, Part_Name, Part_Brand, Part_Model, Part_Code, Part_Status, Part_Year, Part_Year_Ord, Part_Color, "
        sql = sql & "Part_ColorCode, Part_Miles, Part_MilesType, Part_Insurrance, Part_Accident, Part_Price, Part_Information, Part_Post, Part_Image)"
        sql = sql & " VALUES (" & carid & ", " & v_cat & ", " & v_type & ", " & String_chk.checkNullstr(v_name) & ", " & String_chk.checkNullstr(v_brand) & ", " & String_chk.checkNullstr(v_submodel) & ", " & String_chk.checkNullstr(v_code) & ", " & v_status & ", " & String_chk.checkNullstr(v_year) & ", " & String_chk.checkNullNum2(v_year2) & ", " & String_chk.checkNullstr(v_color) & ", " & String_chk.checkNullstr(v_colorCode) & "," & String_chk.checkNullNum(v_miles) & ", " & String_chk.checkNullstr(v_mileType) & "," & String_chk.checkNullNum(v_insur) & ", " & String_chk.checkTrue(v_acci) & ", " & String_chk.checkNullNum(v_price) & ", " & String_chk.checkNullstr(v_info) & ", getdate()," & String_chk.checkNullstr(v_img1) & ")"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return carid
    End Function
    Sub editPartRemark(ByVal partid As Integer, ByVal remark As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Parts "
        sql = sql & " SET Part_Remark = " & String_chk.checkNullstr(remark)
        sql = sql & "WHERE (Part_Id = " & partid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Function getParts(ByVal carList As String, ByVal orderBy As String) As Array
        Dim tmp As Array = Split(carList, ",")
        Dim partinfo(tmp.Length) As Part
        Dim i As Integer = 1


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Parts WHERE Part_ID in (" & carList & ") ORDER BY " & orderBy
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()

            partinfo(i).id = Ans_ID.Item(0)
            partinfo(i).Category = String_chk.checkNullDBNum(Ans_ID.Item(1))
            partinfo(i).Type = String_chk.checkNullDBNum(Ans_ID.Item(2))
            partinfo(i).Name = String_chk.checkNullDBstr(Ans_ID.Item(3))
            partinfo(i).Brand = String_chk.checkNullDBstr(Ans_ID.Item(4))
            partinfo(i).Model = String_chk.checkNullDBstr(Ans_ID.Item(5))
            partinfo(i).Code = String_chk.checkNullDBstr(Ans_ID.Item(6))
            partinfo(i).Status = String_chk.checkNullDBNum(Ans_ID.Item(7))
            partinfo(i).Year = String_chk.checkNullDBstr(Ans_ID.Item(8))
            partinfo(i).Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item(9))
            partinfo(i).Color = String_chk.checkNullDBstr(Ans_ID.Item(10))
            partinfo(i).Colorcode = String_chk.checkNullDBstr(Ans_ID.Item(11))
            partinfo(i).Miles = String_chk.checkNullDBNum(Ans_ID.Item(12))
            partinfo(i).MilesType = String_chk.checkNullDBstr(Ans_ID.Item(13))
            partinfo(i).Insurrance = String_chk.checkNullDBbit(Ans_ID.Item(14))
            partinfo(i).Accident = String_chk.checkNullDBbit(Ans_ID.Item(15))
            partinfo(i).Price = String_chk.checkNullDBNum(Ans_ID.Item(16))
            partinfo(i).Information = String_chk.checkNullDBstr(Ans_ID.Item(17))
            partinfo(i).Post = String_chk.checkNullDBDate(Ans_ID.Item(18))
            partinfo(i).Image = String_chk.checkNullDBstr(Ans_ID.Item(19))

            i = i + 1
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return partinfo
    End Function
    Function getPart(ByVal partid As Integer) As Part
        Dim partInfo As New Part

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM Parts WHERE Part_ID = " & partid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            partInfo.id = Ans_ID.Item("Part_Id")
            partInfo.Category = String_chk.checkNullDBNum(Ans_ID.Item("Part_Category"))
            partInfo.Type = String_chk.checkNullDBNum(Ans_ID.Item("Part_Type"))
            partInfo.Name = String_chk.checkNullDBstr(Ans_ID.Item("Part_Name"))
            partInfo.Brand = String_chk.checkNullDBstr(Ans_ID.Item("Part_Brand"))
            partInfo.Model = String_chk.checkNullDBstr(Ans_ID.Item("Part_Model"))
            partInfo.Code = String_chk.checkNullDBstr(Ans_ID.Item("Part_Code"))
            partInfo.Status = String_chk.checkNullDBNum(Ans_ID.Item("Part_Status"))
            partInfo.Year = String_chk.checkNullDBstr(Ans_ID.Item("Part_Year"))
            partInfo.Year_Ord = String_chk.checkNullDBNum(Ans_ID.Item("Part_Year_Ord"))
            partInfo.Color = String_chk.checkNullDBstr(Ans_ID.Item("Part_Color"))
            partInfo.Colorcode = String_chk.checkNullDBstr(Ans_ID.Item("Part_ColorCode"))
            partInfo.Miles = String_chk.checkNullDBNum(Ans_ID.Item("Part_Miles"))
            partInfo.MilesType = String_chk.checkNullDBstr(Ans_ID.Item("Part_MilesType"))
            partInfo.Insurrance = String_chk.checkNullDBbit(Ans_ID.Item("Part_Insurrance"))
            partInfo.Accident = String_chk.checkNullDBbit(Ans_ID.Item("Part_Accident"))
            partInfo.Price = String_chk.checkNullDBNum(Ans_ID.Item("Part_Price"))
            partInfo.Information = String_chk.checkNullDBstr(Ans_ID.Item("Part_Information"))
            partInfo.Post = String_chk.checkNullDBDate(Ans_ID.Item("Part_Post"))
            partInfo.Image = String_chk.checkNullDBstr(Ans_ID.Item("Part_Image"))
            partInfo.remark = String_chk.checkNullDBstr(Ans_ID.Item("Part_Remark"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return partInfo
    End Function
    Sub editPart(ByVal car As Part)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Parts "
        sql = sql & " SET Part_Category = " & car.Category & ", Part_Type = " & car.Type & ", Part_Name = " & String_chk.checkNullstr(car.Name) & ", Part_Brand = " & String_chk.checkNullstr(car.Brand) & ", "
        sql = sql & "Part_Model = " & String_chk.checkNullstr(car.Model) & ", Part_Code = " & String_chk.checkNullstr(car.Code) & ", Part_Status = " & String_chk.checkNullNum2(car.Status) & ", Part_Year = " & String_chk.checkNullstr(car.Year) & ", "
        sql = sql & "Part_Year_Ord = " & String_chk.checkNullNum2(car.Year_Ord) & ",Part_Color = " & String_chk.checkNullstr(car.Color) & ", Part_ColorCode = " & String_chk.checkNullstr(car.Colorcode) & ", "
        sql = sql & "Part_Miles = " & String_chk.checkNullNum2(car.Miles) & ", Part_MilesType = " & String_chk.checkNullstr(car.MilesType) & ", "
        sql = sql & "Part_Insurrance = " & String_chk.checkNullNum2(car.Insurrance) & ", "
        sql = sql & "Part_Price = " & String_chk.checkNullNum2(car.Price) & ", Part_Accident = " & car.Accident & ", Part_Information = " & String_chk.checkNullstr(car.Information) & ", "
        sql = sql & "Part_Image = " & String_chk.checkNullstr(car.Image) & " "
        sql = sql & "WHERE(Part_Id = " & car.id & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure Part
        Dim id As Integer
        Dim Category As Integer
        Dim Type As Integer
        Dim Name As String
        Dim Brand As String
        Dim Model As String
        Dim Code As String
        Dim Status As Integer
        Dim Year As String
        Dim Year_Ord As Integer
        Dim Color As String
        Dim Colorcode As String
        Dim Miles As Integer
        Dim MilesType As String
        Dim Insurrance As Integer
        Dim Accident As Integer
        Dim Price As Double
        Dim Information As String
        Dim Post As Date
        Dim Image As String
        Dim remark As String

    End Structure
End Module
