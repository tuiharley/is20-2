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
    Function getNoticeDetailID(ByVal noticeid As String) As String
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT NoticeDetail_id FROM NoticeDetail WHERE (NoticeDetail_NoticeId in (" & noticeid & ")) and (Detail_delete=0 or Detail_delete is null)"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            dataid = dataid & "," & (Ans_ID.Item("NoticeDetail_id"))
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        If dataid <> "" Then
            dataid = Right(dataid, dataid.Length - 1)
        End If

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
    Function getDetailShow(ByVal detail_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT NoticeDetail.Detail_show FROM NoticeDetail Where NoticeDetail_Id = " & detail_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If String_chk.checkNullDBNum(Ans_ID.Item("Detail_show")) = 0 Then
                dataid = "ปิด"
            Else
                dataid = "เปิด"
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
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
    Sub setDetailDelete(ByVal noticeDetail_id As String, ByVal del As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update NoticeDetail "
        sql = sql & " SET Detail_delete = " & del
        sql = sql & " WHERE NoticeDetail_Id in (" & noticeDetail_id & ")"


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
    Sub setOpenNoticeDetail(ByVal detail_id As Integer, ByVal open As Integer, ByVal show_desc As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update NoticeDetail "
        sql = sql & " SET Detail_Show = " & open
        sql = sql & " ,Show_Desc = " & checkNullstr(show_desc)
        sql = sql & " WHERE NoticeDetail_Id = " & detail_id


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

        sql = "INSERT INTO NoticeDetail (NoticeDetail_Id,NoticeDetail_NoticeId, NoticeDetail_DataId, Detail_delete, Detail_show,PostDate)"
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
            notice.Warn_id = String_chk.checkNullDBNum(Ans_ID.Item("Warn_Id"))
            notice.Post_date = String_chk.checkNullDBDate(Ans_ID.Item("PostDate"))
            notice.Show_Desc = String_chk.checkNullDBstr(Ans_ID.Item("Show_Desc"))
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
            notice.Warn_id = String_chk.checkNullDBNum(Ans_ID.Item("Warn_Id"))
            notice.Post_date = String_chk.checkNullDBDate(Ans_ID.Item("PostDate"))
            notice.Show_Desc = String_chk.checkNullDBstr(Ans_ID.Item("Show_Desc"))
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
            notice.Warn_id = String_chk.checkNullDBNum(Ans_ID.Item("Warn_Id"))
            notice.Post_date = String_chk.checkNullDBDate(Ans_ID.Item("PostDate"))
            notice.Show_Desc = String_chk.checkNullDBstr(Ans_ID.Item("Show_Desc"))
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return notice
    End Function
    Structure noticeDetail
        Dim id As Integer
        Dim NoticeId As Integer
        Dim DataId As Integer
        Dim Detail_delete As Integer
        Dim Detail_show As Integer
        Dim Warn_id As Integer
        Dim Post_date As DateTime
        Dim Show_Desc As String
    End Structure

End Module
