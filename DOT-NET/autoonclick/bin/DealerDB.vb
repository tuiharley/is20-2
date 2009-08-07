Imports System.Data
Imports System.Data.OleDb

Module DealerDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getDealerABV(ByVal dealer_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Dealer.Dealer_Abv FROM Dealer Where DealerId = " & dealer_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("Dealer_Abv")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function

    Function getNoticeABV(ByVal dealer_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Dealer.Dealer_Notice_Abc FROM Dealer Where DealerId = " & dealer_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("Dealer_Notice_Abc")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getCountDealer(ByVal sql As String) As dealerRow

        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim i As Integer
        'Dim dview As DataView

        Dim all_records As New dealerRow

        da = SearchDB.getSearch(sql)
        '===========================Get Total page ==========================================
        da.Fill(ds, "T_dealerRow")
        all_records.total = ds.Tables("T_dealerRow").Rows.Count
        all_records.reA(ds.Tables("T_dealerRow").Rows.Count)
        For i = 0 To ds.Tables("T_dealerRow").Rows.Count - 1
            all_records.myDealer(i).custid = ds.Tables("T_dealerRow").Rows(i).Item("cust_id")
        Next

        ds.Dispose()
        da.Dispose()
        Return all_records
    End Function
    Function getListDealer(ByVal custids As String) As stDealerList
        Dim sql As String
        Dim da As OleDbDataAdapter
        Dim ds As New DataSet
        Dim i As Integer
        Dim logo As String
        'Dim dview As DataView

        Dim bAns As Boolean
        Dim sErr As String

        Dim all_records As New stDealerList
        sql = "SELECT     Info_Questions.questionType, Info_Questions.q1, Info_Questions.q2, Info_Questions.q3, Info_Questions.MainBuz, Customer.Customer_Name, "
        sql = sql & " Customer.Customer_UserName,Customer.Customer_Logo, Customer.Customer_Address, District.District_Name, Province.Province_Name, Customer.Customer_Phone1, "
        sql = sql & " Customer.Customer_Phone2, Customer.Customer_Fax, Customer.Customer_DateStart, Customer.Customer_DateStop, Customer.Customer_TimeStart, "
        sql = sql & " Customer.Customer_TimeStop, Customer.Customer_Id, BusinessType.BusinessType_Name"
        sql = sql & " FROM         Customer INNER JOIN"
        sql = sql & " Info_Questions ON Customer.Customer_Id = Info_Questions.cust_id INNER JOIN"
        sql = sql & " District ON Customer.Customer_District = District.District INNER JOIN"
        sql = sql & " Province ON Customer.Customer_Province = Province.Province INNER JOIN"
        sql = sql & " BusinessType ON Info_Questions.questionType = BusinessType.BusinessType_Word2"
        sql = sql & " WHERE Customer.Customer_Id in (" & custids & ")"
        sql = sql & " ORDER BY Info_Questions.Cust_id,Info_Questions.MainBuz desc ,Info_Questions.Id"
        'bAns = DealerHP.AppendTextToFile("getSearch1" & vbCrLf, "D:\userData\log2.tui", sErr)
        da = SearchDB.getSearch(sql)
        'bAns = DealerHP.AppendTextToFile(sql & vbCrLf, "D:\userData\log2.tui", sErr)
        '===========================Get Total page ==========================================
        da.Fill(ds, "T_dealerList")


        all_records.reMyList(ds.Tables("T_dealerList").Rows.Count)
        For i = 0 To ds.Tables("T_dealerList").Rows.Count - 1
            all_records.myList(i).questionType = ds.Tables("T_dealerList").Rows(i).Item("questionType")
            all_records.myList(i).custid = ds.Tables("T_dealerList").Rows(i).Item("Customer_Id")
            'bAns = DealerHP.AppendTextToFile(ds.Tables("T_dealerList").Rows(i).Item("Customer_Id") & vbCrLf, "D:\userData\log2.tui", sErr)
            all_records.myList(i).q1 = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("q1"))
            all_records.myList(i).q2 = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("q2"))
            all_records.myList(i).q3 = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("q3"))
            all_records.myList(i).MainBuz = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("MainBuz"))
            all_records.myList(i).Customer_Name = ds.Tables("T_dealerList").Rows(i).Item("Customer_Name")
            If String_chk.checkNullDBstr(ds.Tables("T_dealerList").Rows(i).Item("Customer_Logo")) <> "" Then
                logo = ConfigurationSettings.AppSettings("userURL") & ds.Tables("T_dealerList").Rows(i).Item("Customer_UserName") & "/logo/"
                all_records.myList(i).Customer_Logo = logo & ds.Tables("T_dealerList").Rows(i).Item("Customer_Logo")
            Else
                all_records.myList(i).Customer_Logo = ""
            End If
            'bAns = DealerHP.AppendTextToFile(all_records.myList(i).Customer_Logo & vbCrLf, "D:\userData\log2.tui", sErr)
            all_records.myList(i).Customer_Address = ds.Tables("T_dealerList").Rows(i).Item("Customer_Address")
            all_records.myList(i).District_Name = ds.Tables("T_dealerList").Rows(i).Item("District_Name")
            all_records.myList(i).Province_Name = ds.Tables("T_dealerList").Rows(i).Item("Province_Name")
            all_records.myList(i).Customer_Phone1 = ds.Tables("T_dealerList").Rows(i).Item("Customer_Phone1")
            all_records.myList(i).Customer_Phone2 = String_chk.checkNullDBstr(ds.Tables("T_dealerList").Rows(i).Item("Customer_Phone2"))
            all_records.myList(i).Customer_Fax = String_chk.checkNullDBstr(ds.Tables("T_dealerList").Rows(i).Item("Customer_Fax"))
            all_records.myList(i).Customer_DateStart = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("Customer_DateStart"))
            all_records.myList(i).Customer_DateStop = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("Customer_DateStop"))
            all_records.myList(i).Customer_TimeStart = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("Customer_TimeStart"))
            all_records.myList(i).Customer_TimeStop = String_chk.checkNullDBNum(ds.Tables("T_dealerList").Rows(i).Item("Customer_TimeStop"))
            'bAns = DealerHP.AppendTextToFile("2 left" & vbCrLf, "D:\userData\log2.tui", sErr)
            all_records.myList(i).BusinessType_Name = String_chk.checkNullDBstr(ds.Tables("T_dealerList").Rows(i).Item("BusinessType_Name"))
            all_records.myList(i).Customer_UserName = String_chk.checkNullDBstr(ds.Tables("T_dealerList").Rows(i).Item("Customer_UserName"))
        Next

        ds.Dispose()
        da.Dispose()
        Return all_records
    End Function


    Structure dealerRow
        Dim total As Integer
        Dim myDealer() As searchedDealer

        Sub reA(ByVal rows As Integer)
            ReDim myDealer(rows)
        End Sub
    End Structure
    Structure searchedDealer
        Dim custid As Integer
    End Structure

    Structure stDealerList
        Dim custid As Integer
        Dim myList() As dealerList

        Public Sub reMyList(ByVal newDim As Integer)
            ReDim myList(newDim)
        End Sub
    End Structure
    Structure dealerList
        Dim custid As Integer
        Dim questionType As String
        Dim q1 As Integer
        Dim q2 As Integer
        Dim q3 As Integer
        Dim MainBuz As Integer
        Dim Customer_Name As String
        Dim Customer_Logo As String
        Dim Customer_Address As String
        Dim District_Name As String
        Dim Province_Name As String
        Dim Customer_Phone1 As String
        Dim Customer_Phone2 As String
        Dim Customer_Fax As String
        Dim Customer_DateStart As Integer
        Dim Customer_DateStop As Integer
        Dim Customer_TimeStart As Integer
        Dim Customer_TimeStop As Integer
        Dim BusinessType_Name As String
        Dim Customer_UserName As String


    End Structure

    Structure showDeal
        Dim mainBuz As String
        Dim addBuz As String
        Dim address As String
        Dim phone As String
        Dim fax As String
        Dim timeOper As String
    End Structure

End Module
