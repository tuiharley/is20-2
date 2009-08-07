Imports System.Data
Imports System.Data.OleDb
Module InfoSaleCarDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Sub clearInfoSaleCar(ByVal custid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "UPDATE    Info_SaleCar"
        sql = sql & " SET Official_Dealer = NULL, Official_Dealer_txt = NULL, Dealer_Type = NULL, About_Car_Brand = NULL, About_Car_Brand_txt = NULL, "
        sql = sql & " About_Car_Type = NULL, About_Car_Type_txt = NULL, About_Bike_Brand = NULL, About_Bike_Brand_txt = NULL, About_Bike_Type = NULL, "
        sql = sql & " About_Bike_Type_txt = NULL, About_Truck_Brand = NULL, About_Truck_Brand_txt = NULL, About_Truck_Type = NULL, About_Truck_Type_txt = NULL, "
        sql = sql & " Information = NULL"
        sql = sql & " WHERE(Cust_ID = " & custid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub clearInfoSaleCarAbout(ByVal infoID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "DELETE FROM Info_SaleCarAbout"
        sql = sql & " WHERE(SaleCar_aboutID = " & infoID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Sub updateInfoSaleCar(ByVal Obj As infoSaleCar, ByVal saleCarID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "UPDATE    Info_SaleCar"
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
        sql = sql & " WHERE(SaleCar_ID = " & saleCarID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        '==========================================================

        Dim i As Integer
        Dim n As Integer
        n = Obj.SaleCarAbout.Count
        Dim myAbout As New infoSaleCar_About


        If n > 0 Then
            For i = 0 To n - 1
                myAbout.SaleCar_ID = saleCarID
                myAbout.AboutService = Obj.SaleCarAbout.Dequeue
                saveObjSaleCarAbout(myAbout)
            Next
        End If
        '============================================================

    End Sub

    Function getInfoSaleCar(ByVal custid As Integer) As infoSaleCar
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoSaleCar

        sql = "SELECT *  FROM INFO_SALECAR WHERE Cust_ID = " & custid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            myBuz.SaleCar_ID = Ans_ID.Item("SaleCar_ID")
            myBuz.Cust_ID = Ans_ID.Item("Cust_ID")
            myBuz.Official_Dealer = checkNullDBNum(Ans_ID.Item("Official_Dealer"))
            myBuz.Official_Dealer_txt = checkNullDBstr(Ans_ID.Item("Official_Dealer_txt"))
            myBuz.Dealer_Type = Ans_ID.Item("Dealer_Type")

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
    Function getInfoSaleCarAbout(ByVal infoID As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoSaleCar_About
        Dim ans As New Queue

        sql = "SELECT SaleCar_aboutID,AboutService  FROM INFO_SALECARABOUT WHERE SaleCar_AboutID = " & infoID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            myBuz.SaleCar_ID = Ans_ID.Item("SaleCar_aboutID")
            myBuz.AboutService = Ans_ID.Item("AboutService")
            ans.Enqueue(myBuz.AboutService)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ans
    End Function

    Function getNewSaleCar() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(SaleCar_ID) as AnsID FROM INFO_SALECAR"
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
    Function saveObjSaleCar(ByVal Obj As infoSaleCar, ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim newSaleCar As Integer
        newSaleCar = getNewSaleCar()
        Obj.Cust_ID = cust_id

        sql = "INSERT INTO Info_SaleCar"
        sql = sql & "(SaleCar_ID,Cust_ID, Official_Dealer, Official_Dealer_txt, Dealer_Type, About_Car_Brand, About_Car_Brand_txt, About_Car_Type, About_Car_Type_txt, "
        sql = sql & "About_Bike_Brand, About_Bike_Brand_txt, About_Bike_Type, About_Bike_Type_txt, About_Truck_Brand, About_Truck_Brand_txt, About_Truck_Type, "
        sql = sql & "About_Truck_Type_txt, Information)"
        sql = sql & " VALUES(" & newSaleCar & "," & Obj.Cust_ID & "," & Obj.Official_Dealer & " ," & checkNullstr(Obj.Official_Dealer_txt)
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

        If Not Obj.SaleCarAbout Is Nothing Then
            n = Obj.SaleCarAbout.Count
            Dim myAbout As New infoSaleCar_About


            If n > 0 Then
                For i = 0 To n - 1
                    myAbout.SaleCar_ID = newSaleCar
                    myAbout.AboutService = Obj.SaleCarAbout.Dequeue
                    saveObjSaleCarAbout(myAbout)
                Next
            End If
            '============================================================
        End If


        Return newSaleCar
    End Function
    Sub saveObjSaleCarAbout(ByVal Obj As infoSaleCar_About)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "INSERT INTO Info_SaleCarAbout"
        sql = sql & "(SaleCar_aboutID, AboutService)"
        sql = sql & " VALUES(" & Obj.SaleCar_ID & "," & checkNullstr(Obj.AboutService) & " )"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure infoSaleCar
        Dim SaleCar_ID As Integer
        Dim Cust_ID As Integer
        Dim Official_Dealer As Integer
        Dim Official_Dealer_txt As String
        Dim Dealer_Type As String
        Dim SaleCarAbout As Queue

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
    Structure infoSaleCar_About
        Dim SaleCar_ID As Integer
        Dim AboutService As String

    End Structure

End Module
