Imports System.Data
Imports System.Data.OleDb

Module NoticeDetailDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

   

    Function getNoticeDetailID(ByVal noticeid As Integer) As Integer
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "SELECT NoticeDetail_id FROM NoticeDetail WHERE (NoticeDetail_NoticeId = " & noticeid & ") and (Detail_delete=0 or Detail_delete is null)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("NoticeDetail_id")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getNoticeDetailID2(ByVal carid As Integer, ByVal cat As String) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "Select noticeDetail.NoticeDetail_Id"
        sql = sql & " FROM   Notice INNER JOIN"
        sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId"
        If cat <> "(4,5)" Then
            sql = sql & " WHERE NoticeDetail.NoticeDetail_DataId = " & carid & " AND Notice.Notice_Category = " & cat
        Else
            sql = sql & " WHERE NoticeDetail.NoticeDetail_DataId = " & carid & " AND Notice.Notice_Category in " & cat
        End If
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("NoticeDetail_Id")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getDetailShow(ByVal noticeid As Integer, ByVal dataid As Integer) As Boolean
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim show As Boolean


        sql = "SELECT     NoticeDetail.Detail_show"
        sql = sql & " FROM         Notice INNER JOIN"
        sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId"
        sql = sql & " WHERE     (Notice.Notice_Id = " & noticeid & ") AND (NoticeDetail.NoticeDetail_DataId = " & dataid & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            show = Ans_ID.Item("Detail_show")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return show
    End Function

    Function countNoticeDetailID(ByVal noticeid As Integer) As Integer
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "SELECT count(*) as num FROM NoticeDetail WHERE (NoticeDetail_NoticeId = " & noticeid & ") and (Detail_delete=0 or Detail_delete is null)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("num")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function countDealerNoticeDetailID(ByVal noticeid As Integer) As Integer
        ' Use In case of Dealer customer ONLY!!!
        ' One Notice Many Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "select count(*) as total , sum(convert(decimal(1,0),replace(replace(replace(Detail_show,1,2),0,1),2,0))) as clos "
        sql = sql & " FROM noticeDetail"
        sql = sql & " WHERE (NoticeDetail_NoticeId = " & noticeid & ") and (Detail_delete=0 or Detail_delete is null)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Ans_ID.Item("total") <> 0 Then
                dataid = Ans_ID.Item("clos")
            Else
                dataid = 0
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function

    Sub setDetailDelete(ByVal noticeDetail_id As Integer, ByVal del As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update NoticeDetail "
        sql = sql & " SET Detail_delete = " & del
        sql = sql & " WHERE NoticeDetail_Id = " & noticeDetail_id


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub setDetailShow(ByVal noticeDetail_id As Integer, ByVal del As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update NoticeDetail "
        sql = sql & " SET Detail_show = " & del
        sql = sql & " WHERE NoticeDetail_Id = " & noticeDetail_id

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub


    Function getMaxNoticeDetailID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(NOTICEDETAIL_ID)+1 as cust_id FROM NOTICEDETAIL"
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
    Function addNewNoticeDetail(ByVal v_noticeid As Integer, ByVal v_dataid As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim noticedetailid As Integer = getMaxNoticeDetailID()

        sql = "INSERT INTO NoticeDetail (NoticeDetail_Id,NoticeDetail_NoticeId, NoticeDetail_DataId, Detail_delete, Detail_show,PostDate) "
        sql = sql & " VALUES (" & noticedetailid & ", " & v_noticeid & ", " & v_dataid & ",0,1,getDate()) "


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return noticedetailid
    End Function


    Function getSelectedNoticeDetails(ByVal cat As Integer, ByVal noticeid As Integer, ByVal condition As String, ByVal orderBy As Array) As Queue
        Dim notice As noticeDetail
        Dim myNoticeDetail As New Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1

        Select Case cat
            Case 1
                sql = "SELECT NoticeDetail.* "
                sql = sql & " FROM  NoticeDetail INNER JOIN"
                sql = sql & " Car ON NoticeDetail.NoticeDetail_DataId = Car.Car_Id INNER JOIN"
                sql = sql & " Brand ON Car.Car_Brand = Brand.Brand INNER JOIN"
                sql = sql & " Model ON Car.Car_Model = Model.Model INNER JOIN"
                sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id"
                sql = sql & " WHERE (Notice.Notice_Category = " & cat & ")  "
                sql = sql & " AND (NoticeDetail.Detail_delete IS NULL OR"
                sql = sql & " NoticeDetail.Detail_delete <> 1) AND (Notice.Notice_Id = " & noticeid & ") "
                sql = sql & condition
                If orderBy.GetValue(0) <> "-" Then
                    sql = sql & orderBy.GetValue(0)
                End If
            Case 2
                sql = "SELECT NoticeDetail.* "
                sql = sql & " FROM  NoticeDetail INNER JOIN"
                sql = sql & " Bike ON NoticeDetail.NoticeDetail_DataId = Bike.Bike_Id INNER JOIN"
                sql = sql & " Brand ON Bike.Bike_Brand = Brand.Brand INNER JOIN"
                sql = sql & " Model ON Bike.Bike_Model = Model.Model INNER JOIN"
                sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id"
                sql = sql & " WHERE (Notice.Notice_Category = " & cat & ")  "
                sql = sql & " AND (NoticeDetail.Detail_delete IS NULL OR"
                sql = sql & " NoticeDetail.Detail_delete <> 1) AND (Notice.Notice_Id = " & noticeid & ") "
                sql = sql & condition
                If orderBy.GetValue(0) <> "-" Then
                    sql = sql & orderBy.GetValue(0)
                End If
            Case 3
                sql = "SELECT NoticeDetail.* "
                sql = sql & " FROM  NoticeDetail INNER JOIN"
                sql = sql & " TRUCK ON NoticeDetail.NoticeDetail_DataId = TRUCK.TRUCK_Id INNER JOIN"
                sql = sql & " Brand ON TRUCK.TRUCK_Brand = Brand.Brand INNER JOIN"
                sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id"
                sql = sql & " WHERE (Notice.Notice_Category = " & cat & ")  "
                sql = sql & " AND (NoticeDetail.Detail_delete IS NULL OR"
                sql = sql & " NoticeDetail.Detail_delete <> 1) AND (Notice.Notice_Id = " & noticeid & ") "
                sql = sql & condition
                If orderBy.GetValue(0) <> "-" Then
                    sql = sql & orderBy.GetValue(0)
                End If
            Case 4
                sql = "SELECT NoticeDetail.* "
                sql = sql & " FROM  NoticeDetail INNER JOIN"
                sql = sql & " Parts ON NoticeDetail.NoticeDetail_DataId = Parts.Part_Id INNER JOIN"
                sql = sql & " Category ON Parts.Part_category = Category.Category INNER JOIN"
                sql = sql & " Notice ON NoticeDetail.NoticeDetail_NoticeId = Notice.Notice_Id"
                sql = sql & " WHERE (Notice.Notice_Category in (4,5))  "
                sql = sql & " AND (NoticeDetail.Detail_delete IS NULL OR"
                sql = sql & " NoticeDetail.Detail_delete <> 1) AND (Notice.Notice_Id = " & noticeid & ") "
                sql = sql & condition
                If orderBy.GetValue(0) <> "-" Then
                    sql = sql & orderBy.GetValue(0)
                End If
        End Select
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            notice.id = Ans_ID.Item("NoticeDetail_Id")
            notice.NoticeId = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_NoticeId"))
            notice.DataId = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_DataId"))
            notice.Detail_delete = String_chk.checkNullDBNum(Ans_ID.Item("Detail_Delete"))
            notice.Detail_show = String_chk.checkNullDBNum(Ans_ID.Item("Detail_show"))
            myNoticeDetail.Enqueue(notice)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myNoticeDetail
    End Function
    Function getNoticeDetails(ByVal noticeid As Integer) As Queue
        Dim notice As noticeDetail
        Dim myNoticeDetail As New Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT * FROM NoticeDetail WHERE (NoticeDetail_NoticeId = " & noticeid & ") and (Detail_delete=0 or Detail_delete is null)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            notice.id = Ans_ID.Item("NoticeDetail_Id")
            notice.NoticeId = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_NoticeId"))
            notice.DataId = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_DataId"))
            notice.Detail_delete = String_chk.checkNullDBNum(Ans_ID.Item("Detail_Delete"))
            notice.Detail_show = String_chk.checkNullDBNum(Ans_ID.Item("Detail_show"))
            myNoticeDetail.Enqueue(notice)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myNoticeDetail
    End Function
    Function getNoticeDetailInfo(ByVal noticeDetail_id As Integer) As noticeDetail
        Dim notice As noticeDetail
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT * FROM NoticeDetail WHERE NoticeDetail_ID  = " & noticeDetail_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            notice.id = Ans_ID.Item("NoticeDetail_Id")
            notice.NoticeId = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_NoticeId"))
            notice.DataId = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_DataId"))
            notice.Detail_delete = String_chk.checkNullDBNum(Ans_ID.Item("Detail_delete"))
            notice.Detail_show = String_chk.checkNullDBNum(Ans_ID.Item("Detail_show"))
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return notice
    End Function


    Function getMaxWarnID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Warn_Id)+1 as cust_id FROM WarnIng"
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
    Function addNewWarn(ByVal myWarn As Warn, ByVal detail_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans



        Dim sql As String
        Dim noticedetailid As Integer = getMaxWarnID()

        Try

            sql = "INSERT INTO  WarnIng (Warn_Id, Warn_By, Warn_Topic,Warn_Email,Warn_Date, Warn_Remark) "
            sql = sql & " VALUES (" & noticedetailid & ", " & checkNullstr(myWarn.Warn_By) & "," & checkNullstr(myWarn.Warn_Topic) & "," & checkNullstr(myWarn.Warn_Email) & ",getDate()," & checkNullstr(myWarn.Warn_Remark) & ") "
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            sql = "UPDATE  NoticeDetail SET Warn_ID = " & noticedetailid
            sql = sql & " WHERE NoticeDetail_Id = " & detail_id
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            DBTrans.Commit()
        Catch ex As Exception
            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()

        Return noticedetailid
    End Function
    Function getWarn(ByVal Warn_Id As Integer) As Warn
        Dim myWarn As Warn
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT     Warn_Id, Warn_Topic,Warn_By, Warn_Email,Warn_Date, Warn_Remark, Warn_Confirm, Warn_Cancel"
        sql = sql & " FROM  WarnIng "
        sql = sql & " WHERE  Warn_Id  = " & Warn_Id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myWarn.Warn_Id = Ans_ID.Item("Warn_Id")
            myWarn.Warn_By = String_chk.checkNullDBstr(Ans_ID.Item("Warn_By"))
            myWarn.Warn_Topic = String_chk.checkNullDBstr(Ans_ID.Item("Warn_Topic"))
            myWarn.Warn_Email = String_chk.checkNullDBstr(Ans_ID.Item("Warn_Email"))
            myWarn.Warn_Date = String_chk.checkNullDBDate(Ans_ID.Item("Warn_Date"))
            myWarn.Warn_Remark = String_chk.checkNullDBstr(Ans_ID.Item("Warn_Remark"))
            myWarn.Warn_Confirm = String_chk.checkNullDBNum(Ans_ID.Item("Warn_Confirm"))
            myWarn.Warn_Cancel = String_chk.checkNullDBNum(Ans_ID.Item("Warn_Cancel"))
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myWarn
    End Function
    Sub setWarnConfirm(ByVal Warn_Id As Integer, ByVal del As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update WarnIng "
        sql = sql & " SET Warn_Confirm = " & del
        sql = sql & " WHERE Warn_Id = " & Warn_Id


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub setWarnCancel(ByVal Warn_Id As Integer, ByVal del As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update WarnIng "
        sql = sql & " SET Warn_Cancel = " & del
        sql = sql & " WHERE Warn_Id = " & Warn_Id


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Function getWarnMail(ByVal detail_id As Integer) As WarnMail
        Dim myMail As WarnMail
        Dim cat As Integer = NoticeDB.getCatID2(detail_id)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        Select Case cat
            Case 1
                sql = "SELECT Dealer.Dealer_Notice_Abc, Notice.Notice_Id,NoticeDetail.NoticeDetail_Id, Brand.Brand_name+'/'+Model.Model_Name as BrandModel, Category.Category_Name, Dealer.Dealer_Type, "
                sql = sql & " Customer.Customer_Username, Customer.Customer_Name, Customer.Customer_Surname, Customer.Customer_Email, "
                sql = sql & " Customer.Customer_Phone1"
                sql = sql & " FROM         Notice INNER JOIN"
                sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId INNER JOIN"
                sql = sql & " Car INNER JOIN"
                sql = sql & " Brand ON Car.Car_Brand = Brand.Brand INNER JOIN"
                sql = sql & " Model ON Car.Car_Model = Model.Model ON NoticeDetail.NoticeDetail_DataId = Car.Car_Id AND Notice.Notice_Category = Model.Category INNER JOIN"
                sql = sql & " Category ON Notice.Notice_Category = Category.Category INNER JOIN"
                sql = sql & " Dealer ON Notice.Notice_IsDealer = Dealer.DealerId INNER JOIN"
                sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id"
            Case 2
                sql = "SELECT  Dealer.Dealer_Notice_Abc, Notice.Notice_Id,NoticeDetail.NoticeDetail_Id, Brand.Brand_name+'/'+Model.Model_Name as BrandModel, Category.Category_Name, Dealer.Dealer_Type, "
                sql = sql & " Customer.Customer_Username, Customer.Customer_Name, Customer.Customer_Surname, Customer.Customer_Email, "
                sql = sql & " Customer.Customer_Phone1"
                sql = sql & " FROM   Category INNER JOIN"
                sql = sql & " Notice INNER JOIN"
                sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId INNER JOIN"
                sql = sql & " Model ON Notice.Notice_Category = Model.Category ON Category.Category = Notice.Notice_Category INNER JOIN"
                sql = sql & " Dealer ON Notice.Notice_IsDealer = Dealer.DealerId INNER JOIN"
                sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
                sql = sql & " Bike ON NoticeDetail.NoticeDetail_DataId = Bike.Bike_Id AND Model.Model = Bike.Bike_Model INNER JOIN"
                sql = sql & " Brand ON Bike.Bike_Brand = Brand.Brand"
            Case 3
                sql = "SELECT Dealer.Dealer_Notice_Abc, Notice.Notice_Id,NoticeDetail.NoticeDetail_Id, Brand.Brand_name+'/'+isnull(Truck.Truck_Model,'')  as BrandModel, Category.Category_Name, Dealer.Dealer_Type, "
                sql = sql & " Customer.Customer_Username, Customer.Customer_Name, Customer.Customer_Surname, Customer.Customer_Email, "
                sql = sql & " Customer.Customer_Phone1"
                sql = sql & " FROM  Category INNER JOIN"
                sql = sql & " Notice INNER JOIN"
                sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId ON Category.Category = Notice.Notice_Category INNER JOIN"
                sql = sql & " Dealer ON Notice.Notice_IsDealer = Dealer.DealerId INNER JOIN"
                sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
                sql = sql & " Truck ON NoticeDetail.NoticeDetail_DataId = Truck.Truck_Id INNER JOIN"
                sql = sql & " Brand ON Truck.Truck_Brand = Brand.Brand"
            Case 4, 5
                sql = "SELECT Dealer.Dealer_Notice_Abc, Notice.Notice_Id,NoticeDetail.NoticeDetail_Id, Category.Category_Name, Parts.Part_Name+'/'+isnull(Parts.Part_Brand,'')+'/'+isnull(Parts.Part_Model,'') as BrandModel, Dealer.Dealer_Type, "
                sql = sql & " Customer.Customer_Username, Customer.Customer_Name, Customer.Customer_Surname, Customer.Customer_Email, "
                sql = sql & " Customer.Customer_Phone1"
                sql = sql & " FROM   Category INNER JOIN"
                sql = sql & " Notice INNER JOIN"
                sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId ON Category.Category = Notice.Notice_Category INNER JOIN"
                sql = sql & " Dealer ON Notice.Notice_IsDealer = Dealer.DealerId INNER JOIN"
                sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id INNER JOIN"
                sql = sql & " Parts ON NoticeDetail.NoticeDetail_DataId = Parts.Part_Id"
            Case 6
                sql = "SELECT Dealer.Dealer_Notice_Abc, Notice.Notice_Id,NoticeDetail.NoticeDetail_Id, Category.Category_Name, Job_Position.Position_Name+'/'+isnull(Job.Job_Other,'') as BrandModel, Dealer.Dealer_Type, "
                sql = sql & " Customer.Customer_Username, Customer.Customer_Name, Customer.Customer_Surname, Customer.Customer_Email, "
                sql = sql & " Customer.Customer_Phone1"
                sql = sql & " FROM   Job_Position INNER JOIN"
                sql = sql & " Job ON Job_Position.Position_ID = Job.Job_Pos INNER JOIN"
                sql = sql & " Category INNER JOIN"
                sql = sql & " Notice INNER JOIN"
                sql = sql & " NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId ON Category.Category = Notice.Notice_Category INNER JOIN"
                sql = sql & " Dealer ON Notice.Notice_IsDealer = Dealer.DealerId INNER JOIN"
                sql = sql & " Customer ON Notice.Notice_MemberId = Customer.Customer_Id ON Job.Job_Id = NoticeDetail.NoticeDetail_DataId"

        End Select
        sql = sql & " WHERE NoticeDetail.NoticeDetail_Id = " & detail_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myMail.Dealer_Notice_Abc = String_chk.checkNullDBstr(Ans_ID.Item("Dealer_Notice_Abc"))
            myMail.Notice_Id = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Id"))
            myMail.Detail_Id = String_chk.checkNullDBNum(Ans_ID.Item("NoticeDetail_Id"))
            myMail.Brand_name = String_chk.checkNullDBstr(Ans_ID.Item("BrandModel"))
            'myMail.Model_Name = String_chk.checkNullDBstr(Ans_ID.Item("Model_Name"))
            myMail.Category_Name = String_chk.checkNullDBstr(Ans_ID.Item("Category_Name"))
            myMail.Dealer_Type = String_chk.checkNullDBstr(Ans_ID.Item("Dealer_Type"))
            myMail.Customer_Username = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Username"))
            myMail.Customer_Name = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Name"))
            myMail.Customer_Surname = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Surname"))
            myMail.Customer_Email = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Email"))
            myMail.Customer_Phone1 = String_chk.checkNullDBstr(Ans_ID.Item("Customer_Phone1"))
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return myMail
    End Function


    Structure noticeDetail
        Dim id As Integer
        Dim NoticeId As Integer
        Dim DataId As Integer
        Dim Detail_delete As Integer
        Dim Detail_show As Integer
    End Structure
    Structure Warn
        Dim Warn_Id As Integer
        Dim Warn_Topic As String
        Dim Warn_By As String
        Dim Warn_Email As String
        Dim Warn_Date As DateTime
        Dim Warn_Remark As String
        Dim Warn_Confirm As Integer
        Dim Warn_Cancel As Integer
    End Structure
    Structure WarnMail
        Dim Dealer_Notice_Abc As String
        Dim Notice_Id As Integer
        Dim Detail_Id As Integer
        Dim Brand_name As String
        Dim Model_Name As String
        Dim Category_Name As String
        Dim Dealer_Type As String
        Dim Customer_Username As String
        Dim Customer_Name As String
        Dim Customer_Surname As String
        Dim Customer_Email As String
        Dim Customer_Phone1 As String



    End Structure

End Module
