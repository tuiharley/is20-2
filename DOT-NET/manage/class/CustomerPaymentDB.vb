Imports System.Data
Imports System.Data.OleDb
Module CustomerPaymentDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Public Function LstCust(ByVal custname As String, ByVal custsur As String, ByVal custid As String, ByVal custtype As String) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myLstCust As New Queue
        Dim a_cust As CustomerList

        sql = "SELECT     Customer.Customer_Id, Dealer.Dealer_Type, TITLE.TITLE_NAME, Customer.Customer_Name, "
        sql = sql & " Customer.Customer_Surname,Customer.Customer_Username, Customer.Customer_Phone1, "
        sql = sql & " Customer.Customer_PostDate "
        sql = sql & " FROM Customer INNER JOIN"
        sql = sql & " Dealer ON Customer.Customer_Type = Dealer.DealerId LEFT OUTER JOIN"
        sql = sql & " TITLE ON Customer.Customer_Title = TITLE.TITLE"
        sql = sql & " WHERE 1=1"
        If custname <> "" Then
            sql = sql & " AND Customer.Customer_Name like '" & custname & "%'"
        End If
        If custsur <> "" Then
            sql = sql & " AND Customer.Customer_Surname like '" & custsur & "%'"
        End If
        If custid <> "" Then
            sql = sql & " AND Customer.Customer_Id = " & custid
        End If
        If custtype <> "" Then
            sql = sql & " AND Customer.Customer_Type = " & custtype
        End If

        'Dim sContents As String, sErr As String
        'Dim bAns As Boolean

        'If sErr = "" Then
        '    sContents = sql
        '    bAns = DealerHP.SaveTextToFile(sContents, "D:\userData\test.txt", sErr)

        'End If


        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            a_cust.Customer_Id = Ans_ID.Item("Customer_Id")
            a_cust.Dealer_Type = checkNullDBstr(Ans_ID.Item("Dealer_Type"))
            a_cust.TITLE_NAME = checkNullDBstr(Ans_ID.Item("TITLE_NAME"))
            a_cust.Customer_Name = checkNullDBstr(Ans_ID.Item("Customer_Name"))
            a_cust.Customer_Surname = checkNullDBstr(Ans_ID.Item("Customer_Surname"))
            a_cust.Customer_Username = checkNullDBstr(Ans_ID.Item("Customer_Username"))
            a_cust.Customer_Phone1 = checkNullDBstr(Ans_ID.Item("Customer_Phone1"))
            a_cust.Customer_PostDate = checkNullDBDate(Ans_ID.Item("Customer_PostDate"))
            myLstCust.Enqueue(a_cust)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return myLstCust
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
        Dim amount As Double
        Dim online As Integer
        Dim offline As Integer
    End Structure

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
    'Structure ProlongTx
    '    Dim TmpPayment_id As Integer
    '    Dim TmpPayment_InvoiceRefer As Integer
    '    Dim Customer_Username As String
    '    Dim Customer_Name As String
    '    Dim Customer_ContactName As String
    '    Dim Customer_phone1 As String
    '    Dim TmpPayment_PayDate As DateTime
    '    Dim TmpPayment_PayTime As String
    '    Dim TmpPayment_FlagProcess As Boolean
    '    Dim Package_Name As String
    '    Dim Notice_Id As Integer
    '    Dim Package_Week As Integer
    '    Dim Package_Price As Double
    '    Dim Invoice_StatusName As String
    '    Dim Notice_StartDate As DateTime
    '    Dim Customer_Type As String
    'End Structure
    Structure CustomerList
        Dim Customer_Id As Integer
        Dim Dealer_Type As String
        Dim TITLE_NAME As String
        Dim Customer_Name As String
        Dim Customer_Surname As String
        Dim Customer_Username As String
        Dim Customer_Phone1 As String
        Dim Customer_PostDate As DateTime
    End Structure
End Module
