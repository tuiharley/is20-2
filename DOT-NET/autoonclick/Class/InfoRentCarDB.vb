Imports System.Data
Imports System.Data.OleDb
Module InfoRentCarDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Sub clearInfoRentCar(ByVal custid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer


        sql = "UPDATE  Info_CarRent"
        sql = sql & " SET About_Car_Service = NULL, About_Car_Type_txt = NULL, About_Bike_service = NULL, "
        sql = sql & " About_Bike_Type_txt = NULL, About_Truck_Service = NULL, "
        sql = sql & " About_Truck_Type_txt = NULL, Information = NULL "
        sql = sql & " Where cust_id = " & custid

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub updateInfoRentCar(ByVal Obj As infoRentCar, ByVal RentCar_ID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "UPDATE  Info_CarRent"
        sql = sql & " SET About_Car_Service = " & checkNullstr(Obj.About_Car_Brand_txt) & ", "
        sql = sql & " About_Car_Type_txt = " & checkNullstr(Obj.About_Car_Type_txt) & ", "
        sql = sql & " About_Bike_service = " & checkNullstr(Obj.About_Bike_Brand_txt) & ", "
        sql = sql & " About_Bike_Type_txt = " & checkNullstr(Obj.About_Bike_Type_txt) & ", "
        sql = sql & " About_Truck_Service = " & checkNullstr(Obj.About_Truck_Brand_txt) & ", "
        sql = sql & " About_Truck_Type_txt = " & checkNullstr(Obj.About_Truck_Type_txt) & ", "
        sql = sql & " Information = " & checkNullstr(Obj.Information) & " "
        sql = sql & " WHERE(RentCar_Id = " & RentCar_ID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()


    End Sub

    Function getInfoRentCar(ByVal custid As Integer) As infoRentCar
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoRentCar

        sql = "SELECT *  FROM Info_CarRent WHERE Cust_ID = " & custid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            myBuz.RentCar_ID = Ans_ID.Item("RentCar_ID")
            myBuz.Cust_ID = Ans_ID.Item("Cust_ID")
            myBuz.About_Car_Brand_txt = checkNullDBstr(Ans_ID.Item("About_Car_Service"))
            myBuz.About_Car_Type_txt = checkNullDBstr(Ans_ID.Item("About_Car_Type_txt"))
            myBuz.About_Bike_Brand_txt = checkNullDBstr(Ans_ID.Item("About_Bike_Service"))
            myBuz.About_Bike_Type_txt = checkNullDBstr(Ans_ID.Item("About_Bike_Type_txt"))
            myBuz.About_Truck_Brand_txt = checkNullDBstr(Ans_ID.Item("About_Truck_Service"))
            myBuz.About_Truck_Type_txt = checkNullDBstr(Ans_ID.Item("About_Truck_Type_txt"))
            myBuz.Information = checkNullDBstr(Ans_ID.Item("Information"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myBuz
    End Function

    Function getNewRentCar() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(RentCar_ID) as AnsID FROM Info_CarRent"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID") + 1
            Else
                ansid = 1
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function saveObjRentCar(ByVal Obj As infoRentCar, ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim newRentCar As Integer
        newRentCar = getNewRentCar()
        Obj.Cust_ID = cust_id

        sql = "INSERT INTO Info_CarRent"
        sql = sql & " (RentCar_ID,Cust_ID, About_Car_Service, About_Car_Type_txt, About_Bike_service, About_Bike_Type_txt, About_Truck_Service, About_Truck_Type_txt,  "
        sql = sql & "  Information)"
        sql = sql & " VALUES(" & newRentCar & "," & Obj.Cust_ID & "," & checkNullstr(Obj.About_Car_Brand_txt) & " ," & checkNullstr(Obj.About_Car_Type_txt)
        sql = sql & " ," & checkNullstr(Obj.About_Bike_Brand_txt) & " ," & checkNullstr(Obj.About_Bike_Type_txt) & " ," & checkNullstr(Obj.About_Truck_Brand_txt)
        sql = sql & " ," & checkNullstr(Obj.About_Truck_Type_txt) & " ," & checkNullstr(Obj.Information) & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return newRentCar
    End Function

    Structure infoRentCar
        Dim RentCar_ID As Integer
        Dim Cust_ID As Integer
        Dim About_Car_Brand_txt As String
        Dim About_Car_Type_txt As String
        Dim About_Bike_Brand_txt As String
        Dim About_Bike_Type_txt As String
        Dim About_Truck_Brand_txt As String
        Dim About_Truck_Type_txt As String
        Dim Information As String

    End Structure

End Module
