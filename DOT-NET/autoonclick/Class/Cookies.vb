Imports System.Data
Imports System.Data.OleDb
Module Cookies
    Dim connectDB As String = DBConnect.getStrDBConnect()
    
    Function removeExpireCar(ByVal carSave As Queue) As String
        
        '====================== Get carID --> Array ==========================
        '==================== make search  String ============================
        Dim carArry(carSave.Count) As Array
        Dim i As Integer, carNum As Integer = carSave.Count
        Dim myCar As carCookie
        Dim carID(carNum) As Integer
        Dim carStr As String = ""
        Dim bikeStr As String = ""
        Dim truckStr As String = ""
        Dim partStr As String = ""

        Dim sContents As String, sErr As String
        Dim bAns As Boolean


        Dim ObjQueue As IEnumerator = carSave.GetEnumerator()

        While (ObjQueue.MoveNext)

            myCar = ObjQueue.Current
            carID.SetValue(myCar.id, i)
            Select Case myCar.kind
                Case "car"
                    carStr = carStr & myCar.id & ","
                Case "bike"
                    bikeStr = bikeStr & myCar.id & ","
                Case "truck"
                    truckStr = truckStr & myCar.id & ","
                Case "part"
                    partStr = partStr & myCar.id & ","

            End Select

        End While

        'sContents = "PASS removeExpireCar while --> OK" & vbCrLf
        'bAns = DealerHP.AppendTextToFile(sContents, System.Web.HttpContext.Current.Server.MapPath("/") & "log.txt", sErr)

        If carStr.Length <> 0 Then
            carStr = Left(carStr, carStr.Length - 1)
            carStr = searchCarCookie(carStr)
        End If
        If bikeStr.Length <> 0 Then
            bikeStr = Left(bikeStr, bikeStr.Length - 1)
            bikeStr = searchBikeCookie(bikeStr)
        End If
        If truckStr.Length <> 0 Then
            truckStr = Left(truckStr, truckStr.Length - 1)
            truckStr = searchTruckCookie(truckStr)
        End If
        If partStr.Length <> 0 Then
            partStr = Left(partStr, partStr.Length - 1)
            partStr = searchPartCookie(partStr)
        End If

        Dim ansWer As String

        If carStr <> "" Then
            If ansWer <> "" Then
                ansWer = ansWer & "," & carStr
            Else
                ansWer = carStr
            End If
        End If
        If bikeStr <> "" Then
            If ansWer <> "" Then
                ansWer = ansWer & "," & bikeStr
            Else
                ansWer = bikeStr
            End If
        End If
        If truckStr <> "" Then
            If ansWer <> "" Then
                ansWer = ansWer & "," & truckStr
            Else
                ansWer = truckStr
            End If
        End If
        If partStr <> "" Then
            If ansWer <> "" Then
                ansWer = ansWer & "," & partStr
            Else
                ansWer = partStr
            End If
        End If

        'sContents = "PASS removeExpireCar if --> OK" & vbCrLf
        'bAns = DealerHP.AppendTextToFile(sContents, System.Web.HttpContext.Current.Server.MapPath("/") & "log.txt", sErr)
        Dim ans As String
        If ansWer <> "" Then

            '================ Get exist Car    ====================================
            Dim existCar As Array, tmp As Array
            Dim myExistCar As carCookie
            Dim myQExistCar As New Queue

            existCar = ansWer.Split(",")
            For i = 0 To existCar.Length - 1
                tmp = existCar.GetValue(i).split(":")
                myExistCar.kind = tmp.GetValue(0)
                myExistCar.id = tmp.GetValue(1)

                myQExistCar.Enqueue(myExistCar)
            Next


            'sContents = "PASS removeExpireCar Get exist Car --> OK" & vbCrLf
            'bAns = DealerHP.AppendTextToFile(sContents, System.Web.HttpContext.Current.Server.MapPath("/") & "log.txt", sErr)
            '================ Create new Cookie ====================================
            Dim newCookies As String
            Dim newCarCookie As carCookie, oldCarCookie As carCookie
            Dim TempObjQueue As IEnumerator = myQExistCar.GetEnumerator()


            While (TempObjQueue.MoveNext)

                newCarCookie = TempObjQueue.Current
                ObjQueue = carSave.GetEnumerator
                While (ObjQueue.MoveNext)

                    oldCarCookie = ObjQueue.Current
                    If (newCarCookie.kind = oldCarCookie.kind) And (newCarCookie.id = oldCarCookie.id) Then
                        newCookies = newCookies & oldCarCookie.kind & ":" & oldCarCookie.id & ":" & oldCarCookie.message & ","
                        Exit While
                    End If

                End While

            End While

            'sContents = "PASS removeExpireCar Create new Cookie --> OK" & vbCrLf
            'bAns = DealerHP.AppendTextToFile(sContents, System.Web.HttpContext.Current.Server.MapPath("/") & "log.txt", sErr)


            newCookies = myQExistCar.Count & "|#|" & newCookies
            ans = newCookies
        Else
            ans = ""
        End If


        Return ans
    End Function
    Function checkCarCookie(ByVal carNum As Integer, ByVal carSaved As String) As Queue
        Dim myCar As carCookie
        Dim tmpCar As Array, tmpCar2 As Array
        Dim allCar As New Queue
        Dim i As Integer


        'Dim sContents As String, sErr As String
        'Dim bAns As Boolean
        

        tmpCar = carSaved.Split(",")
        For i = 0 To tmpCar.Length - 2
            tmpCar2 = tmpCar(i).split(":")
            myCar.kind = tmpCar2.GetValue(0)
            myCar.id = tmpCar2.GetValue(1)
            myCar.message = tmpCar2.GetValue(2)

            allCar.Enqueue(myCar)
        Next


        'sContents = "PASS checkCarCookie" & vbCrLf
        'bAns = DealerHP.AppendTextToFile(sContents, System.Web.HttpContext.Current.Server.MapPath("/") & "log.txt", sErr)

        Return allCar
    End Function

    Function searchCarCookie(ByVal carIds As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String
        Dim searchCar As String
        Dim rowCount As Integer = 0


        searchCar = " AND (Car.Car_Id in (" & carIds & "))"
        sql = "SELECT Car.* FROM Car INNER JOIN NoticeDetail ON Car.Car_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 1) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) " & searchCar

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            search_statement = search_statement & "car:" & Ans_ID.Item("Car_Id") & ","
            rowCount = rowCount + 1
        Loop

        If rowCount > 0 Then
            search_statement = Left(search_statement, search_statement.Length - 1)
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement

    End Function
    Function searchBikeCookie(ByVal carIds As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String
        Dim searchCar As String
        Dim rowCount As Integer = 0


        searchCar = " AND (Bike.Bike_Id in (" & carIds & "))"
        sql = "SELECT Bike.* FROM Bike INNER JOIN NoticeDetail ON Bike.Bike_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 2) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) " & searchCar

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            search_statement = search_statement & "bike:" & Ans_ID.Item("Bike_Id") & ","
            rowCount = rowCount + 1
        Loop

        If rowCount > 0 Then
            search_statement = Left(search_statement, search_statement.Length - 1)
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement

    End Function
    Function searchTruckCookie(ByVal carIds As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String
        Dim searchCar As String
        Dim rowCount As Integer = 0


        searchCar = " AND (Truck.Truck_Id in (" & carIds & "))"
        sql = "SELECT Truck.* FROM Truck INNER JOIN NoticeDetail ON Truck.Truck_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category = 3) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) " & searchCar

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            search_statement = search_statement & "truck:" & Ans_ID.Item("Truck_Id") & ","
            rowCount = rowCount + 1
        Loop

        If rowCount > 0 Then
            search_statement = Left(search_statement, search_statement.Length - 1)
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement

    End Function
    Function searchPartCookie(ByVal carIds As String) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String
        Dim searchCar As String
        Dim rowCount As Integer = 0


        searchCar = " AND (Parts.Part_Id in (" & carIds & "))"
        sql = "SELECT Parts.* FROM Parts INNER JOIN NoticeDetail ON Parts.Part_Id = NoticeDetail.NoticeDetail_DataId INNER JOIN Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id INNER JOIN Customer ON Notice.Notice_MemberId = Customer.Customer_Id WHERE (Notice.Notice_Category in (4,5)) AND (Notice.Notice_Show = 1) AND (Notice.Notice_Status IN (2, 3)) AND (DATEDIFF(Day, GETDATE(), Notice.Notice_StopDate) >= 0) AND (NoticeDetail.Detail_delete IS NULL OR NoticeDetail.Detail_delete <> 1) " & searchCar

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            search_statement = search_statement & "part:" & Ans_ID.Item("Part_Id") & ","
            rowCount = rowCount + 1
        Loop

        If rowCount <> 0 Then
            search_statement = Left(search_statement, search_statement.Length - 1)
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement

    End Function

    Structure carCookie
        Dim kind As String
        Dim id As Integer
        Dim message As String
    End Structure
End Module
