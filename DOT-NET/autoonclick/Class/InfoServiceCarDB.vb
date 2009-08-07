Imports System.Data
Imports System.Data.OleDb
Module InfoServiceCarDB
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
    

    Sub clearInfoServiceCar(ByVal custid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer


        sql = "UPDATE    Info_Servicecar"
        sql = sql & " SET  Official_Dealer = NULL, Official_Dealer_txt = NULL, Dealer_Type = NULL, "
        sql = sql & " About_Car_Brand = NULL, About_Car_Brand_txt = NULL, About_Car_Type = NULL, "
        sql = sql & " About_Car_Type_txt = NULL, About_Bike_Brand = NULL, About_Bike_Brand_txt = NULL, "
        sql = sql & " About_Bike_Type = NULL,About_Bike_Type_txt = NULL, About_Truck_Brand = NULL, "
        sql = sql & " About_Truck_Brand_txt = NULL, About_Truck_Type = NULL, About_Truck_Type_txt = NULL, "
        sql = sql & " Information = NULL "
        sql = sql & " Where cust_id = " & custid

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()
          

        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub clearInfoServiceCarAbout(ByVal infoID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "DELETE FROM Info_ServiceCarAbout"
        sql = sql & " WHERE(ServiceCar_aboutID = " & infoID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Sub updateInfoServiceCar(ByVal Obj As infoServiceCar, ByVal ServiceCar_ID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "UPDATE    Info_Servicecar"
        sql = sql & " SET Official_Dealer = " & Obj.Official_Dealer & ", "
        sql = sql & " Official_Dealer_txt = " & checkNullstr(Obj.Official_Dealer_txt) & ", Dealer_Type = " & checkNullstr(Obj.Dealer_Type) & ", "
        sql = sql & " About_Car_Brand = " & checkInt(Obj.About_Car_Brand) & ", About_Car_Brand_txt = " & checkNullstr(Obj.About_Car_Brand_txt) & ", "
        sql = sql & " About_Car_Type = " & checkInt(Obj.About_Car_Type) & ", About_Car_Type_txt = " & checkNullstr(Obj.About_Car_Type_txt) & ", "
        sql = sql & " About_Bike_Brand = " & checkInt(Obj.About_Bike_Brand) & ", About_Bike_Brand_txt = " & checkNullstr(Obj.About_Bike_Brand_txt) & ", "
        sql = sql & " About_Bike_Type = " & checkInt(Obj.About_Bike_Type) & ", "
        sql = sql & " About_Bike_Type_txt = " & checkNullstr(Obj.About_Bike_Type_txt) & ", About_Truck_Brand = " & checkInt(Obj.About_Truck_Brand) & ", "
        sql = sql & " About_Truck_Brand_txt = " & checkNullstr(Obj.About_Truck_Brand_txt) & ", About_Truck_Type = " & checkInt(Obj.About_Truck_Type) & ", "
        sql = sql & " About_Truck_Type_txt = " & checkNullstr(Obj.About_Truck_Type_txt) & ", "
        sql = sql & " Information = " & checkNullstr(Obj.Information) & ""
        sql = sql & " WHERE(ServiceCar_ID = " & ServiceCar_ID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        '==========================================================

        Dim i As Integer
        Dim n As Integer
        n = Obj.ServiceCarAbout.Count
        Dim myAbout As New infoServiceCar_About


        If n > 0 Then
            For i = 0 To n - 1
                myAbout.ServiceCar_ID = ServiceCar_ID
                myAbout.AboutService = Obj.ServiceCarAbout.Dequeue
                saveObjServiceCarAbout(myAbout)
            Next
        End If
        '============================================================

    End Sub

    Function getInfoServiceCar(ByVal custid As Integer) As infoServiceCar
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoServiceCar

        sql = "SELECT *  FROM INFO_SERVICECAR WHERE Cust_ID = " & custid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            myBuz.ServiceCar_ID = Ans_ID.Item("ServiceCar_ID")
            myBuz.Cust_ID = Ans_ID.Item("Cust_ID")
            myBuz.Official_Dealer = checkNullDBNum(Ans_ID.Item("Official_Dealer"))
            myBuz.Official_Dealer_txt = checkNullDBstr(Ans_ID.Item("Official_Dealer_txt"))
            myBuz.Dealer_Type = checkNullDBstr(Ans_ID.Item("Dealer_Type"))

            myBuz.About_Car_Brand = checkNullDBNum(Ans_ID.Item("About_Car_Brand"))
            myBuz.About_Car_Brand_txt = checkNullDBstr(Ans_ID.Item("About_Car_Brand_txt"))
            myBuz.About_Car_Type = checkNullDBNum(Ans_ID.Item("About_Car_Type"))
            myBuz.About_Car_Type_txt = checkNullDBstr(Ans_ID.Item("About_Car_Type_txt"))
            myBuz.About_Bike_Brand = checkNullDBNum(Ans_ID.Item("About_Bike_Brand"))
            myBuz.About_Bike_Brand_txt = checkNullDBstr(Ans_ID.Item("About_Bike_Brand_txt"))
            myBuz.About_Bike_Type = checkNullDBNum(Ans_ID.Item("About_Bike_Type"))
            myBuz.About_Bike_Type_txt = checkNullDBstr(Ans_ID.Item("About_Bike_Type_txt"))
            myBuz.About_Truck_Brand = checkNullDBNum(Ans_ID.Item("About_Truck_Brand"))
            myBuz.About_Truck_Brand_txt = checkNullDBstr(Ans_ID.Item("About_Truck_Brand_txt"))
            myBuz.About_Truck_Type = checkNullDBNum(Ans_ID.Item("About_Truck_Type"))
            myBuz.About_Truck_Type_txt = checkNullDBstr(Ans_ID.Item("About_Truck_Type_txt"))
            myBuz.Information = checkNullDBstr(Ans_ID.Item("Information"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myBuz
    End Function
    Function getInfoServiceCarAbout(ByVal infoID As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoServiceCar_About
        Dim ans As New Queue

        sql = "SELECT *  FROM Info_ServiceCarAbout WHERE ServiceCar_aboutID = " & infoID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            myBuz.ServiceCar_ID = Ans_ID.Item("ServiceCar_AboutID")
            myBuz.AboutService = Ans_ID.Item("AboutService")
            ans.Enqueue(myBuz.AboutService)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ans
    End Function

    Function getNewServiceCar() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(ServiceCar_ID) as AnsID FROM INFO_SERVICECAR"
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
    Function saveObjServiceCar(ByVal Obj As infoServiceCar, ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim newServiceCar As Integer
        newServiceCar = getNewServiceCar()
        Obj.Cust_ID = cust_id

        sql = "INSERT INTO Info_ServiceCar"
        sql = sql & "(ServiceCar_ID, Cust_ID,Official_Dealer, Official_Dealer_txt, Dealer_Type, About_Car_Brand, About_Car_Brand_txt, About_Car_Type, About_Car_Type_txt, "
        sql = sql & "About_Bike_Brand, About_Bike_Brand_txt, About_Bike_Type, About_Bike_Type_txt, About_Truck_Brand, About_Truck_Brand_txt, About_Truck_Type, "
        sql = sql & "About_Truck_Type_txt, Information)"
        sql = sql & " VALUES(" & newServiceCar & "," & Obj.Cust_ID & "," & Obj.Official_Dealer & " ," & checkNullstr(Obj.Official_Dealer_txt)
        sql = sql & " ," & checkNullstr(Obj.Dealer_Type) & " ," & checkInt(Obj.About_Car_Brand) & " ," & checkNullstr(Obj.About_Car_Brand_txt)
        sql = sql & " ," & checkInt(Obj.About_Car_Type) & " ," & checkNullstr(Obj.About_Car_Type_txt) & " ," & checkInt(Obj.About_Bike_Brand)
        sql = sql & " ," & checkNullstr(Obj.About_Bike_Brand_txt) & " ," & checkInt(Obj.About_Bike_Type) & " ," & checkNullstr(Obj.About_Bike_Type_txt)
        sql = sql & " ," & checkInt(Obj.About_Truck_Brand) & " ," & checkNullstr(Obj.About_Truck_Brand_txt) & " ," & checkInt(Obj.About_Truck_Type)
        sql = sql & " ," & checkNullstr(Obj.About_Truck_Type_txt) & " ," & checkNullstr(Obj.Information) & " )"
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        '==========================================================

        Dim i As Integer
        Dim n As Integer

        If Not Obj.ServiceCarAbout Is Nothing Then
            n = Obj.ServiceCarAbout.Count
            Dim myAbout As New infoServiceCar_About


            If n > 0 Then
                For i = 0 To n - 1
                    myAbout.ServiceCar_ID = newServiceCar
                    myAbout.AboutService = Obj.ServiceCarAbout.Dequeue
                    saveObjServiceCarAbout(myAbout)
                Next
            End If
            '============================================================
        End If


        Return newServiceCar
    End Function
    Sub saveObjServiceCarAbout(ByVal Obj As infoServiceCar_About)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "INSERT INTO Info_ServiceCarAbout"
        sql = sql & "(ServiceCar_aboutID, AboutService)"
        sql = sql & " VALUES(" & Obj.ServiceCar_ID & "," & checkNullstr(Obj.AboutService) & " )"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure infoServiceCar
        Dim ServiceCar_ID As Integer
        Dim Cust_ID As Integer
        Dim Official_Dealer As Integer
        Dim Official_Dealer_txt As String
        Dim Dealer_Type As String
        Dim ServiceCarAbout As Queue

        Dim About_Car_Brand As Integer
        Dim About_Car_Brand_txt As String
        Dim About_Car_Type As Integer
        Dim About_Car_Type_txt As String
        Dim About_Bike_Brand As Integer
        Dim About_Bike_Brand_txt As String
        Dim About_Bike_Type As Integer
        Dim About_Bike_Type_txt As String
        Dim About_Truck_Brand As Integer
        Dim About_Truck_Brand_txt As String
        Dim About_Truck_Type As Integer
        Dim About_Truck_Type_txt As String
        Dim Information As String

    End Structure
    Structure infoServiceCar_About
        Dim ServiceCar_ID As Integer
        Dim AboutService As String

    End Structure
End Module
