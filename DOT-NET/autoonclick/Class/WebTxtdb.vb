Imports System.Data
Imports System.Data.OleDb
Module WebTxtdb
    Dim connectDB As String = DBConnect.getStrDBConnect()
   

    'Function getBikeOwnerID(ByVal carid As Integer) As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement As String

    '    sql = "Select Notice.Notice_MemberId FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id WHERE (Bike.Bike_Id = " & carid & ") AND (Notice.Notice_Category = 2)"

    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read Then
    '        search_statement = Ans_ID.Item("Notice_MemberId")
    '    End If


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement


    'End Function
    'Function getMaxBikeID() As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim custid As Integer

    '    sql = "SELECT Max(Bike_Id)+1 as cust_id FROM Bike"
    '    mycommand = New OleDbCommand(sql, myconn)

    '    If IsDBNull(mycommand.ExecuteScalar()) Then
    '        custid = 1
    '    Else
    '        custid = mycommand.ExecuteScalar()
    '    End If

    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return custid
    'End Function
    'Function addNewBike(ByVal v_brand As Integer, ByVal v_model As Integer, ByVal v_status As Integer, ByVal v_year As String, ByVal v_year2 As Integer, ByVal v_submodel As String, ByVal v_type As Integer, ByVal v_bodyid As String, ByVal v_engineType As Integer, ByVal v_cc As Integer, ByVal v_color As Integer, ByVal v_metalic As Boolean, ByVal v_power As String, ByVal v_powerType As String, ByVal v_gear As String, ByVal v_mile As String, ByVal v_mileType As String, ByVal v_Drive As String, ByVal v_numGear As String, ByVal v_numPump As String, ByVal v_lastCheck As String, ByVal v_insur As String, ByVal v_price As String, ByVal v_acci As Boolean, ByVal v_access As Queue, ByVal v_info As String, ByVal v_img1 As String, ByVal v_img2 As String, ByVal v_img3 As String) As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As New OleDbCommand
    '    Dim DBTrans As OleDbTransaction
    '    DBTrans = myconn.BeginTransaction()
    '    mycommand.Connection = myconn
    '    mycommand.Transaction = DBTrans

    '    Dim sql As String
    '    Dim bikeid As Integer = getMaxBikeID()

    '    Try
    '        sql = " INSERT INTO Bike"
    '        sql = sql & "(Bike_Id, Bike_Brand, Bike_Model, Bike_Status, Bike_Year, Bike_Year_Ord, Bike_SubModel, Bike_Type, Bike_BodyId, Bike_EngineType, Bike_CC, "
    '        sql = sql & "Bike_Color, Bike_Metalic, Bike_Power, Bike_PowerType, Bike_Gears, Bike_Miles, Bike_MilesType, Bike_Drive, Bike_NumGear, Bike_NumPump, "
    '        sql = sql & "Bike_LastCheck, Bike_Insurrance, Bike_Price, Bike_Accident, Bike_Accessory, Bike_Information, Bike_Post, Bike_Image1, Bike_Image2, "
    '        sql = sql & "Bike_Image3)"
    '        sql = sql & " VALUES (" & bikeid & ", " & v_brand & ", " & v_model & ", " & v_status & ", " & String_chk.checkNullstr(v_year) & "," & String_chk.checkNullNum2(v_year2) & ", " & String_chk.checkNullstr(v_submodel) & ", " & v_type & ", " & String_chk.checkNullstr(v_bodyid) & ", " & v_engineType & ", " & v_cc & ", " & v_color & ", " & String_chk.checkTrue(v_metalic) & ", " & String_chk.checkNullNum(v_power) & ", " & String_chk.checkNullstr(v_powerType) & ", " & String_chk.checkNullNum(v_gear) & ", " & String_chk.checkNullNum(v_mile) & ", " & String_chk.checkNullstr(v_mileType) & ", " & String_chk.checkNullNum(v_Drive) & ", " & String_chk.checkNullNum(v_numGear) & ", " & String_chk.checkNullNum(v_numPump) & "," & String_chk.checkNullstr(v_lastCheck) & ", " & String_chk.checkNullNum(v_insur) & ", " & String_chk.checkNullNum(v_price) & ", " & String_chk.checkTrue(v_acci) & ", '999', " & String_chk.checkNullstr(v_info) & ", getdate()," & String_chk.checkNullstr(v_img1) & ", " & String_chk.checkNullstr(v_img2) & ", " & String_chk.checkNullstr(v_img3) & ")"
    '        mycommand.CommandText = sql
    '        mycommand.ExecuteNonQuery()

    '        Dim v_acc As Accessory
    '        Dim TempObjQueue As IEnumerator = v_access.GetEnumerator()

    '        While (TempObjQueue.MoveNext)

    '            v_acc = TempObjQueue.Current
    '            sql = "INSERT INTO BAccessory VALUES(" & bikeid & "," & v_acc.id & "," & v_acc.type & ")"
    '            mycommand.CommandText = sql
    '            mycommand.ExecuteNonQuery()

    '        End While

    '        DBTrans.Commit()
    '    Catch
    '        DBTrans.Rollback()
    '    End Try

    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return bikeid
    'End Function

    Function getTxt(ByVal pageName As String, ByVal pagePos As String) As webTxt
        Dim myTxt As webTxt

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM WEB_TXT WHERE Page = '" & pageName & "' AND PagePosition = '" & pagePos & "'"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myTxt.page = Ans_ID.Item("Page")
            myTxt.pagePostion = Ans_ID.Item("PagePosition")
            myTxt.pageMsg = String_chk.checkNullDBstr(Ans_ID.Item("Msg"))
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myTxt
    End Function

    Structure webTxt
        Dim page As String
        Dim pagePostion As String
        Dim pageMsg As String

    End Structure
End Module
