Imports System.Data
Imports System.Data.OleDb
Module CustomerDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function getMaxCusID() As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(customer_id)+1 as cust_id FROM customer"
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
    Function getUserName(ByVal Id As Integer) As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String

        sql = "SELECT Customer_Username FROM Customer WHERE Customer_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            username = Ans_ID.Item("Customer_Username")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return username
    End Function
    Function getCustName(ByVal Id As Integer) As String

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String

        sql = "SELECT Customer_Name FROM Customer WHERE Customer_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            username = Ans_ID.Item("Customer_Name")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return username
    End Function
    Function getEmail(ByVal Id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String

        sql = "SELECT Customer_Email FROM Customer WHERE Customer_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            username = Ans_ID.Item("Customer_Email")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return username
    End Function
    Function getLogo(ByVal Id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim logo As String

        sql = "SELECT Customer_Logo FROM Customer WHERE Customer_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            logo = Ans_ID.Item("Customer_Logo")
        Else
            logo = ""
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return logo
    End Function

    Function IsDealer(ByVal Id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dealer As Integer

        sql = "SELECT Customer_Type FROM Customer WHERE Customer_Id = " & Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dealer = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dealer
    End Function

    Function getCustomerContact(ByVal dataid As Integer, ByVal cat As Integer) As String
        Dim custinfo As A_Customer
        Dim ans As String

        custinfo = getA_customer(NoticeDB.getCustID(dataid, cat))
        If custinfo.type = 0 Then
            ans = DistrictDB.getDistrictName(custinfo.district) & ", " & ProvinceDB.getProvinceName(custinfo.province) & ", " & custinfo.phone1
            If custinfo.phone2 <> "" Then
                ans = ans & ", " & custinfo.phone2
            End If
            If custinfo.fax <> "" Then
                ans = ans & ", " & custinfo.fax
            End If
        Else
            ans = custinfo.address & ", อำเภอ " & DistrictDB.getDistrictName(custinfo.district) & " จังหวัด " & ProvinceDB.getProvinceName(custinfo.province)
            ans = ans & ", " & custinfo.phone1

        End If


        Return ans
    End Function
    Public Sub addCustomer(ByVal custid As Integer, ByVal v_cust_type As Integer, ByVal v_username As String, ByVal v_password As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String

        sql = "INSERT INTO Customer(Customer_Id, Customer_Type, Customer_Username, "
        sql = sql & "Customer_Passwd) "
        sql = sql & "Values(" & custid & ", " & v_cust_type & ", '" & v_username & "', '" & v_password & "')"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Public Sub addNewCustomer(ByVal myCust As A_Customer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "INSERT INTO Customer"
        sql = sql & " (Customer_Id, Customer_Type, Customer_Username, Customer_Passwd, Customer_Title, Customer_Name, Customer_Surname, "
        sql = sql & " Customer_ContactName, Customer_Homepage, Customer_Email, Customer_Phone1, Customer_Phone2, Customer_Fax, Customer_Logo, "
        sql = sql & " Customer_Map, Customer_Address, Customer_District, Customer_Province, Customer_DateStart, Customer_DateStop, Customer_TimeStart, "
        sql = sql & " Customer_TimeStop, Customer_Inquire, Customer_Notice, Customer_Accept,Customer_PostDate)"
        sql = sql & " VALUES  (" & myCust.id & ", " & myCust.type & ", " & checkNullstr(myCust.username) & ","
        sql = sql & checkNullstr(myCust.passwd) & ", " & checkNullNum(myCust.title) & ","
        sql = sql & checkNullstr(myCust.name) & ", " & checkNullstr(myCust.surname) & ","
        sql = sql & checkNullstr(myCust.contactName) & ", " & checkNullstr(myCust.homepage) & ","
        sql = sql & checkNullstr(myCust.email) & ", " & checkNullstr(myCust.phone1) & ","
        sql = sql & checkNullstr(myCust.phone2) & ", " & checkNullstr(myCust.fax) & ","
        sql = sql & checkNullstr(Utilities.getFileName(myCust.logo)) & ", " & checkNullstr(Utilities.getFileName(myCust.map)) & ","
        sql = sql & checkNullstr(myCust.address) & ", " & checkNullNum(myCust.district) & ","
        sql = sql & checkNullNum(myCust.province) & ", " & checkNullstr(myCust.dateStart) & ","
        sql = sql & checkNullstr(myCust.dateStop) & ", " & checkNullNum(myCust.timeStart) & ","
        sql = sql & checkNullNum(myCust.timeStop) & ", " & myCust.inquire & ", " & myCust.notice & ","
        sql = sql & " 1,getdate())"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Public Sub setNewPass(ByVal cust_id As Integer, ByVal newPass As String)
        Dim connectDB As String = DBConnect.getStrDBConnect()
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Customer SET Customer_Passwd = '" & newPass & "' "
        sql = sql & " WHERE Customer_Id = " & cust_id

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Function checkUsername(ByVal username As String) As Boolean
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim has As Boolean

        If username = "admin" Or username = "root" Or username = "webmaster" Or username = "admins" Or username = "auto-onclick" Or username = "auto-onclicks" Or username = "autoonclicks" Or username = "autoonclick" Then
            Return True
        End If

        sql = "SELECT * FROM CUSTOMER WHERE Customer_Username = '" & username & "'"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            has = True
        Else
            has = False
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return has
    End Function
    Function checkUsrPass(ByVal cust_id As Integer, ByVal pass As String) As Boolean
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim has As Boolean

        sql = "SELECT * FROM Customer WHERE Customer_Id = '" & cust_id & "' and Customer_Passwd = '" & pass & "' "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            has = True
        Else
            has = False
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return has
    End Function
    Function checkLogin(ByVal usr As String, ByVal pwd As String) As DataSet
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim myconn As New OleDbConnection(connectDB)
        Dim sql As String


        myconn.Open()
        sql = "SELECT * FROM CUSTOMER WHERE Customer_Username = '" & usr & "' and Customer_Passwd = '" & pwd & "'"

        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(ds, "CUSTOMER")

        da.Dispose()
        myconn.Close()

        Return ds
    End Function
    Function existUser(ByVal email As String) As DataSet
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim myconn As New OleDbConnection(connectDB)
        Dim sql As String


        myconn.Open()
        sql = "SELECT * FROM CUSTOMER WHERE Customer_Email = '" & email & "' "

        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(ds, "CUSTOMER")

        da.Dispose()
        myconn.Close()

        Return ds
    End Function

    Sub updateCustomer(ByVal v_custid As String, ByVal v_title As String, ByVal v_name As String, ByVal v_surname As String, ByVal v_email As String, ByVal v_phone1 As String, ByVal v_phone2 As String, ByVal v_fax As String, ByVal v_addr As String, ByVal v_district As String, ByVal v_province As String, ByVal v_questionare As Boolean, ByVal v_advertise As Boolean, ByVal v_accept As Boolean)
        Dim connectDB As String = DBConnect.getStrDBConnect()
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Customer SET Customer_Title=" & checkNullNum(v_title) & ", Customer_Name=" & checkNullstr(v_name) & ", "
        sql = sql & "Customer_Surname=" & checkNullstr(v_surname) & ", Customer_Email=" & checkNullstr(v_email) & ", "
        sql = sql & "Customer_Phone1=" & checkNullstr(v_phone1) & ", Customer_Phone2=" & checkNullstr(v_phone2) & ", "
        sql = sql & "Customer_Fax=" & checkNullstr(v_fax) & ", Customer_Address=" & checkNullstr(v_addr) & ", "
        sql = sql & "Customer_Province=" & v_province & ", Customer_District=" & v_district & ", "
        sql = sql & "Customer_Inquire=" & checkTrue(v_questionare) & ", Customer_Notice=" & checkTrue(v_advertise) & ", "
        sql = sql & "Customer_Accept=" & checkTrue(v_accept) & " "
        sql = sql & "Where Customer_Id = " & v_custid & " "
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub updateDealer(ByVal myDealer As A_Customer)
        Dim connectDB As String = DBConnect.getStrDBConnect()
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Customer SET "
        sql = sql & "Customer_Name =" & checkNullstr(myDealer.name) & ","
        sql = sql & "Customer_ContactName =" & checkNullstr(myDealer.contactName) & ", Customer_Homepage =" & checkNullstr(myDealer.homepage) & ","
        sql = sql & "Customer_Email =" & checkNullstr(myDealer.email) & ", Customer_Phone1 =" & checkNullstr(myDealer.phone1) & ", "
        sql = sql & "Customer_Phone2 =" & checkNullstr(myDealer.phone2) & ", Customer_Fax =" & checkNullstr(myDealer.fax) & ", "
        sql = sql & "Customer_Logo =" & checkNullstr(Utilities.getFileName(myDealer.logo)) & ", Customer_Map =" & checkNullstr(Utilities.getFileName(myDealer.map)) & ","
        sql = sql & "Customer_Address =" & checkNullstr(myDealer.address) & ", Customer_District =" & checkNullstr(myDealer.district) & ","
        sql = sql & "Customer_Province =" & checkNullstr(myDealer.province) & ", Customer_DateStart =" & checkNullstr(myDealer.dateStart) & ","
        sql = sql & "Customer_DateStop =" & checkNullstr(myDealer.dateStop) & ",  Customer_TimeStart =" & checkNullstr(myDealer.timeStart) & ","
        sql = sql & "Customer_TimeStop =" & checkNullstr(myDealer.timeStop) & ", Customer_Inquire =" & myDealer.inquire & ", "
        sql = sql & "Customer_Notice =" & myDealer.notice & ", Customer_Accept =1 "
        sql = sql & "Where Customer_Id = " & myDealer.id & " "
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()
    End Sub
    Sub updateDealer2(ByVal myDealer As A_Customer)
        Dim connectDB As String = DBConnect.getStrDBConnect()
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE Customer SET "
        sql = sql & "Customer_Name =" & checkNullstr(myDealer.name) & ","
        sql = sql & "Customer_ContactName =" & checkNullstr(myDealer.contactName) & ", Customer_Homepage =" & checkNullstr(myDealer.homepage) & ","
        sql = sql & "Customer_Email =" & checkNullstr(myDealer.email) & ", Customer_Phone1 =" & checkNullstr(myDealer.phone1) & ", "
        sql = sql & "Customer_Phone2 =" & checkNullstr(myDealer.phone2) & ", Customer_Fax =" & checkNullstr(myDealer.fax) & ", "
        If Utilities.getFileName(myDealer.logo) <> "" Then
            sql = sql & "Customer_Logo =" & checkNullstr(Utilities.getFileName(myDealer.logo)) & ", "
        End If
        If Utilities.getFileName(myDealer.map) <> "" Then
            sql = sql & "Customer_Map =" & checkNullstr(Utilities.getFileName(myDealer.map)) & ","
        End If
        sql = sql & "Customer_Address =" & checkNullstr(myDealer.address) & ", Customer_District =" & checkNullstr(myDealer.district) & ","
        sql = sql & "Customer_Province =" & checkNullstr(myDealer.province) & ", Customer_DateStart =" & checkNullstr(myDealer.dateStart) & ","
        sql = sql & "Customer_DateStop =" & checkNullstr(myDealer.dateStop) & ",  Customer_TimeStart =" & checkNullstr(myDealer.timeStart) & ","
        sql = sql & "Customer_TimeStop =" & checkNullstr(myDealer.timeStop) & ", Customer_Inquire =" & myDealer.inquire & ", "
        sql = sql & "Customer_Notice =" & myDealer.notice & ", Customer_Accept =1 "
        sql = sql & "Where Customer_Id = " & myDealer.id & " "
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()
    End Sub

    Function getDateOpen(ByVal dateOp As Integer) As String
        Dim ans As String

        Select Case dateOp
            Case 0
                ans = "ไม่ระบุ"
            Case 1
                ans = "จันทร์"
            Case 2
                ans = "อังคาร"
            Case 3
                ans = "พุทธ"
            Case 4
                ans = "พฤหัส"
            Case 5
                ans = "ศุกร์"
            Case 6
                ans = "เสาร์"
            Case 7
                ans = "อาทิตย์"
        End Select

        Return ans
    End Function
    Function getTimeOpen(ByVal dateOp As Integer) As String
        Dim ans As String

        Select Case dateOp
            Case 0
                ans = "ไม่ระบุ"
            Case Else
                ans = dateOp
        End Select

        Return ans
    End Function

    Function getRanCust(ByVal cust_id As Integer, ByVal Qtype As String) As Queue

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 0
        Dim myCust As New Queue
        Dim customer As RandCustomer

        sql = "SELECT Customer.Customer_Id, Customer.Customer_Username, Customer.Customer_Logo, District.District_Name, "
        sql = sql & " Province.Province_Name"
        sql = sql & " FROM  Customer INNER JOIN"
        sql = sql & " Info_Questions ON Customer.Customer_Id = Info_Questions.cust_id INNER JOIN"
        sql = sql & " Province ON Customer.Customer_Province = Province.Province INNER JOIN"
        sql = sql & " District ON Customer.Customer_District = District.District"
        'sql = sql & " WHERE     (Info_Questions.MainBuz = 1) AND (Info_Questions.questionType = '" & Qtype & "')"
        sql = sql & " WHERE     (Info_Questions.MainBuz = 1) "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            customer.id = Ans_ID.Item("Customer_Id")
            customer.username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            customer.logo_txt = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Logo"))
            customer.districName = String_chk.checkNullDBstr(Ans_ID.Item("District_Name"))
            customer.provinceName = String_chk.checkNullDBstr(Ans_ID.Item("Province_Name"))
            myCust.Enqueue(customer)
            i = i + 1
        Loop

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myCust

    End Function
    Function getNewCust() As Queue

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 0
        Dim myCust As New Queue
        Dim customer As RandCustomer

        sql = "SELECT TOP 5  Customer.Customer_Id, Customer.Customer_Username, Customer.Customer_Logo, District.District_Name, "
        sql = sql & " Province.Province_Name"
        sql = sql & " FROM  Customer INNER JOIN"
        sql = sql & " Province ON Customer.Customer_Province = Province.Province INNER JOIN"
        sql = sql & " District ON Customer.Customer_District = District.District"
        sql = sql & " WHERE     (Customer.Customer_Type = 1) "
        sql = sql & " Order by Customer.Customer_PostDate desc "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            customer.id = Ans_ID.Item("Customer_Id")
            customer.username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            customer.logo_txt = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Logo"))
            customer.districName = String_chk.checkNullDBstr(Ans_ID.Item("District_Name"))
            customer.provinceName = String_chk.checkNullDBstr(Ans_ID.Item("Province_Name"))
            myCust.Enqueue(customer)
            i = i + 1
        Loop

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myCust

    End Function


    Function getA_customer(ByVal cust_id As Integer) As A_Customer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim customer As A_Customer

        sql = "SELECT Customer_Id, Customer_Type, Customer_Username, Customer_Passwd, Customer_Title, Customer_Name, Customer_Surname, "
        sql = sql & " Customer_ContactName, Customer_Homepage, Customer_Email, Customer_Phone1, Customer_Phone2, Customer_Fax, Customer_Logo, "
        sql = sql & " Customer_Map, Customer_Address, Customer_District, Customer_Province, Customer_DateStart, Customer_DateStop, Customer_TimeStart, "
        sql = sql & " Customer_TimeStop , Customer_Inquire, Customer_Notice, Customer_Accept,Customer_PostDate"
        sql = sql & " FROM  customer "
        sql = sql & " WHERE (Customer_Id = " & cust_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            customer.id = Ans_ID.Item("Customer_Id")
            customer.type = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Type"))
            customer.username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            customer.passwd = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Passwd"))
            customer.title = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Title"))
            customer.name = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Name"))
            customer.surname = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Surname"))
            customer.contactName = String_chk.checkNullDBstr(Ans_ID.Item("Customer_ContactName"))
            customer.homepage = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Homepage"))
            customer.email = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Email"))
            customer.phone1 = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Phone1"))
            customer.phone2 = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Phone2"))
            customer.fax = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Fax"))
            customer.logo_txt = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Logo"))
            customer.map_txt = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Map"))
            customer.address = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Address"))
            customer.district = String_chk.checkNullDBNum(Ans_ID.Item("Customer_District"))
            customer.province = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Province"))
            customer.dateStart = String_chk.checkNullDBstr(Ans_ID.Item("Customer_DateStart"))
            customer.dateStop = String_chk.checkNullDBstr(Ans_ID.Item("Customer_DateStop"))
            customer.timeStart = String_chk.checkNullDBNum(Ans_ID.Item("Customer_TimeStart"))
            customer.timeStop = String_chk.checkNullDBNum(Ans_ID.Item("Customer_TimeStop"))
            customer.inquire = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Inquire"))
            customer.notice = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Notice"))
            customer.accept = String_chk.checkNullDBNum(Ans_ID.Item("Customer_Accept"))
            customer.postDate = String_chk.checkNullDBDate(Ans_ID.Item("Customer_PostDate"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return customer
    End Function
    Structure A_Customer
        Dim id As Integer
        Dim type As Integer
        Dim username As String
        Dim passwd As String
        Dim title As Integer
        Dim name As String
        Dim surname As String
        Dim contactName As String
        Dim homepage As String
        Dim email As String
        Dim phone1 As String
        Dim phone2 As String
        Dim fax As String
        Dim logo As HtmlInputFile
        Dim map As HtmlInputFile
        Dim logo_txt As String
        Dim map_txt As String
        Dim address As String
        Dim district As Integer
        Dim province As Integer
        Dim dateStart As String
        Dim dateStop As String
        Dim timeStart As Integer
        Dim timeStop As Integer
        Dim inquire As Integer
        Dim notice As Integer
        Dim accept As Integer
        Dim postDate As DateTime
    End Structure
    Structure RandCustomer
        Dim id As Integer
        Dim username As String
        Dim logo_txt As String
        Dim districName As String
        Dim provinceName As String
    End Structure


End Module
