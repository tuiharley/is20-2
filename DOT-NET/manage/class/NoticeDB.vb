Imports System.Data
Imports System.Data.OleDb

Module NoticeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Function getPackageID(ByVal notice_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim package_id As String


        sql = "SELECT Notice_PackageId FROM Notice WHERE (Notice_Id = " & notice_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            package_id = Ans_ID.Item("Notice_PackageId")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return package_id
    End Function
    Function getCatID(ByVal notice_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim package_id As Integer


        sql = "SELECT Notice_Category FROM Notice WHERE (Notice_Id = " & notice_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            package_id = Ans_ID.Item("Notice_Category")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return package_id
    End Function
    Function getDataID(ByVal notice_id As Integer) As Integer
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!


        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "SELECT NoticeDetail.NoticeDetail_DataId FROM Notice INNER JOIN NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId WHERE (Notice.Notice_Id = " & notice_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("NoticeDetail_DataId")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    'Function getNoticeID(ByVal data_id As Integer) As Integer
    '    ' Use In case of Private customer ONLY!!!
    '    ' One Notice One Detail !!

    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim dataid As Integer


    '    sql = "SELECT NoticeDetail_NoticeId FROM NoticeDetail WHERE (NoticeDetail_DataId = " & data_id & ")"
    'SELECT Notice.Notice_Id, NoticeDetail.NoticeDetail_Id FROM Notice INNER JOIN  NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId WHERE (Notice.Notice_MemberId = 2) AND (NoticeDetail.NoticeDetail_DataId = 1)
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read Then
    '        dataid = Ans_ID.Item("NoticeDetail_NoticeId")
    '    End If

    '    mycommand.Dispose()
    '    Ans_ID.Close()

    '    myconn.Close()

    '    Return dataid
    'End Function
    Function getImgPath(ByVal cust_id As Integer, ByVal data_id As Integer, ByVal cat As Integer) As String
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String

        Select Case cat
            Case 1, 2, 3
                sql = "SELECT Notice.Notice_Id, NoticeDetail.NoticeDetail_Id "
                sql = sql & " FROM Notice INNER JOIN  NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId "
                sql = sql & " WHERE (Notice.Notice_MemberId = " & cust_id & ") AND (NoticeDetail.NoticeDetail_DataId = " & data_id & ") "
                sql = sql & " AND (Notice.Notice_Category = " & cat & ")"
            Case 4
                sql = "SELECT Notice.Notice_Id, NoticeDetail.NoticeDetail_Id "
                sql = sql & " FROM Notice INNER JOIN  NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId "
                sql = sql & " WHERE (Notice.Notice_MemberId = " & cust_id & ") AND (NoticeDetail.NoticeDetail_DataId = " & data_id & ") "
                sql = sql & " AND (Notice.Notice_Category in (4,5))"
        End Select
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("Notice_Id") & "/" & Ans_ID.Item("NoticeDetail_Id")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getNoticeStopDate(ByVal notice_id As Integer) As Date
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Date


        sql = "SELECT Notice_StopDate FROM Notice WHERE (Notice_ID = " & notice_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("Notice_StopDate")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getNoticelatesDate(ByVal cust_id As Integer) As DateTime

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As DateTime


        sql = "select max(notice_stopdate) as lastDate"
        sql = sql & " from notice"
        sql = sql & " where notice_memberid = " & cust_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = String_chk.checkNullDBDate(Ans_ID.Item("lastDate"))
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function

    Function getNoticeCode(ByVal notice_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Notice.Notice_Id, Dealer.Dealer_Notice_Abc FROM Notice INNER JOIN Dealer ON Notice.Notice_IsDealer = Dealer.DealerId Where notice_id = " & notice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item(1) & Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getDealerCode(ByVal notice_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "SELECT Notice.Notice_IsDealer FROM Notice Where notice_id = " & notice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function
    Function getNoticeShow(ByVal notice_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Notice.Notice_Show FROM Notice Where notice_id = " & notice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If String_chk.checkNullDBNum(Ans_ID.Item(0)) = 0 Then
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
    Private Function getDate(ByVal weeks As Integer, ByVal datestart As Date) As String
        Dim temp_date As Date
        Dim ans As String

        temp_date = DateAdd(DateInterval.Month, weeks, datestart)
        ans = "CONVERT(DATETIME,'" & temp_date.Year & "-" & temp_date.Month & "-" & temp_date.Day & " " & temp_date.Hour & ":" & temp_date.Minute & ":" & temp_date.Second & "',102)"

        Return ans
    End Function

    Sub setOpenNotice(ByVal notice_id As Integer, ByVal open As Integer, ByVal show_desc As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update Notice "
        sql = sql & " SET Notice_Show = " & open
        sql = sql & " ,Notice_Show_Desc = " & checkNullstr(show_desc)
        sql = sql & " WHERE Notice_Id = " & notice_id


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Function getOpenComm1(ByVal notice_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim package_id As String


        sql = "SELECT Notice_Show_Desc FROM Notice WHERE (Notice_Id = " & notice_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            package_id = String_chk.checkNullDBstr(Ans_ID.Item("Notice_Show_Desc"))
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return package_id
    End Function
    Sub setOnlineNotice(ByVal notice_id As Integer, ByVal weeks As Integer, ByVal confirm As String, ByVal invtype As Integer, ByVal datestop As String, ByVal datestart As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update Notice "
        '------------------New  Ad ------------------------
        Select Case invtype
            Case 1  ' ========  NEW ========
                If confirm = "NO" Then
                    sql = sql & " SET Notice_Startdate = getDate(), "
                    sql = sql & " Notice_Stopdate = " & getDate(weeks, Now) & ", "
                    sql = sql & " Notice_Payment = 1, "
                    sql = sql & " Notice_Status = 2 "
                Else
                    sql = sql & " SET Notice_Startdate = null,"
                    sql = sql & " Notice_Stopdate = null,"
                    sql = sql & " Notice_Payment = 0, "
                    sql = sql & " Notice_Status = 1 "
                End If
            Case 2  ' ========  Prolong ========
                If confirm = "NO" Then
                    sql = sql & " SET  "
                    sql = sql & " Notice_Stopdate = " & datestop
                    sql = sql & " ,Notice_PrevStatus = Notice_Status "
                    sql = sql & " ,Notice_Status = 2 "
                    sql = sql & " ,Notice_Prolong = 'P'"
                    sql = sql & " ,Notice_Prolong_Color = 'A_PC_green_underline'"
                Else
                    sql = sql & " SET "
                    sql = sql & " Notice_Stopdate = " & datestart
                    sql = sql & " ,Notice_Status = Notice_PrevStatus "
                    sql = sql & " ,Notice_PrevStatus = null "
                    sql = sql & " ,Notice_Prolong = 'P'"
                    sql = sql & " ,Notice_Prolong_Color = 'A_PC_red_underline'"
                End If


            Case 3  ' ========  Change ========
                If confirm = "NO" Then
                    sql = sql & " SET Notice_Prolong_Color = 'A_PC_green_underline'"
                    sql = sql & " ,Notice_Prolong = 'C'"
                Else
                    sql = sql & " SET Notice_Prolong_Color = 'A_PC_red_underline'"
                    sql = sql & " ,Notice_Prolong = 'C'"
                End If

        End Select
        sql = sql & " WHERE Notice_Id = " & notice_id


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()




        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub setProlongNotice(ByVal notice_id As Integer, ByVal input As String, ByVal color As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update Notice "
        sql = sql & " SET Notice_Prolong = " & checkNullstr(input) & ", Notice_Prolong_Color = " & checkNullstr(color) & " "
        sql = sql & " WHERE Notice_Id = " & notice_id

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub setNewPackage(ByVal notice_id As Integer, ByVal packageid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update Notice "
        sql = sql & " SET Notice_Packageid = " & packageid
        sql = sql & " WHERE Notice_Id = " & notice_id


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub


    Function countNotices(ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT count(*) as countNotice FROM NOTICE WHERE Notice_MemberID  = " & cust_id
        mycommand = New OleDbCommand(sql, myconn)

        custid = mycommand.ExecuteScalar()

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Function countNotices2(ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT count(*) FROM Notice,NoticeDetail WHERE Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId AND (NoticeDetail.Detail_delete <> 1  or NoticeDetail.Detail_delete is null) AND Notice_MemberID  = " & cust_id
        mycommand = New OleDbCommand(sql, myconn)

        custid = mycommand.ExecuteScalar()

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function

    Function getMaxNoticeID() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(NOTICE_ID)+1 as cust_id FROM NOTICE"
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
    Function addNewNotice(ByVal v_cat As Integer, ByVal v_packageid As Integer, ByVal v_dealer As String, ByVal cust_id As Integer, ByVal v_paid As Integer, ByVal v_status As Integer, ByVal v_stop As String) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim noticeid As Integer = getMaxNoticeID()

        sql = "INSERT INTO Notice(Notice_Id, Notice_Category, Notice_PackageId, Notice_IsDealer, Notice_MemberId, Notice_Payment, Notice_Status, Notice_PostDate, "
        sql = sql & " Notice_Show) "
        sql = sql & " VALUES (" & noticeid & ", " & v_cat & ", " & v_packageid & ", " & v_dealer & ", " & cust_id & ", " & v_paid & "," & v_status & ",getdate(),0) "


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return noticeid
    End Function
    Function addNewNotice2(ByVal noticeInfo As noticeS) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim noticeid As Integer = getMaxNoticeID()

        sql = "INSERT INTO Notice(Notice_Id, Notice_Category, Notice_PackageId, Notice_IsDealer, Notice_MemberId, Notice_Payment, Notice_Status, Notice_PostDate, "
        sql = sql & "      Notice_StartDate, Notice_StopDate, Notice_OutDate, Notice_Show, Notice_Prolong, Notice_Prolong_color) "
        sql = sql & " VALUES (" & noticeid & ", " & noticeInfo.category & ", " & noticeInfo.pacakgeId
        sql = sql & ", " & noticeInfo.isDealer & ", " & noticeInfo.memberId & ", " & noticeInfo.payment
        sql = sql & "," & noticeInfo.status & ",getdate(),null, null,null,1,null,null) "


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return noticeid
    End Function
    Function isNoticeNotStart(ByVal notice_id As Integer) As Integer
        Dim packageID As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Notice_PackageId"
        sql = sql & " FROM  Notice"
        sql = sql & " WHERE (Notice_Id = " & notice_id & ") AND (Notice_Status in (1,5))"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            packageID = Ans_ID.Item("Notice_PackageId")
        Else
            packageID = -1
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return packageID
    End Function
    Function getDealerNotices(ByVal cust_id As Integer, ByVal cat_type As String) As Queue
        Dim myNoticeDealer As noticeS
        Dim result As New Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT Notice_Id,Notice_Category,Notice_PackageId,Notice_IsDealer,Notice_MemberId,"
        sql = sql & " Notice_Payment,Notice_Status,Notice_PostDate,Notice_StartDate,Notice_StopDate,"
        sql = sql & " Notice_OutDate,Notice_Show,Notice_Prolong,Notice_Prolong_color"
        sql = sql & " FROM CategoryType INNER JOIN Category ON "
        sql = sql & " CategoryType.CategoryType = Category.Category_CategoryType "
        sql = sql & " INNER JOIN Notice ON Category.Category = Notice.Notice_Category "
        'sql = sql & " WHERE (CategoryType.CategoryType = 1 OR  CategoryType.CategoryType = 2) "
        sql = sql & " WHERE  " & cat_type
        sql = sql & " AND (Notice.Notice_MemberId = " & cust_id & ") "
        'sql = sql & " AND (Notice.Notice_Payment = 1) "
        'sql = sql & " AND (Notice.Notice_StopDate >= GETDATE())"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myNoticeDealer.id = Ans_ID.Item("Notice_Id")
            myNoticeDealer.category = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Category"))
            myNoticeDealer.pacakgeId = String_chk.checkNullDBNum(Ans_ID.Item("Notice_PackageId"))
            myNoticeDealer.isDealer = String_chk.checkNullDBNum(Ans_ID.Item("Notice_IsDealer"))
            myNoticeDealer.memberId = String_chk.checkNullDBNum(Ans_ID.Item("Notice_MemberId"))
            myNoticeDealer.payment = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Payment"))
            myNoticeDealer.status = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Status"))
            myNoticeDealer.postDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_PostDate"))
            myNoticeDealer.startDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StartDate"))
            myNoticeDealer.stopDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StopDate"))
            myNoticeDealer.outDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_OutDate"))
            If String_chk.checkNullDBNum(Ans_ID.Item("Notice_Show")) = 0 Then
                myNoticeDealer.show = "ปิด"
            Else
                myNoticeDealer.show = "เปิด"
            End If
            myNoticeDealer.prolong = String_chk.checkNullDBstr(Ans_ID.Item("Notice_Prolong"))
            myNoticeDealer.prolong_color = String_chk.checkNullDBstr(Ans_ID.Item("Notice_Prolong_color"))
            result.Enqueue(myNoticeDealer)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return result


    End Function
    '-----------------นับ rows สำหรับ หน้า admin dealer ----------------------------------
    Function countDealerNotices(ByVal cust_id As Integer, ByVal cat As Integer) As numNoticeDealer
        Dim myNoticeDealer As numNoticeDealer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1

        Select Case cat
            Case 1, 2, 3
                sql = "SELECT Notice.Notice_Id, ISNULL(Package.Package_AreaStop, 0) AS Package_AreaStop,Notice_Status "
                sql = sql & " FROM Notice INNER JOIN Package ON Notice.Notice_PackageId = Package.Package_Id "
                sql = sql & " WHERE(Notice.Notice_MemberId = " & cust_id & ")"
                sql = sql & " AND (Notice.Notice_Category = " & cat & ")"
            Case 4
                sql = "SELECT Notice.Notice_Id, ISNULL(Package.Package_AreaStop, 0) AS Package_AreaStop,Notice_Status "
                sql = sql & " FROM Notice INNER JOIN Package ON Notice.Notice_PackageId = Package.Package_Id "
                sql = sql & " WHERE(Notice.Notice_MemberId = " & cust_id & ")"
                sql = sql & " AND (Notice.Notice_Category in (4,5))"
        End Select
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then

            myNoticeDealer.noticeId = Ans_ID.Item("Notice_Id")
            myNoticeDealer.totalNum = Ans_ID.Item("Package_AreaStop")
            myNoticeDealer.rowNum = NoticeDetailDB.countNoticeDetailID(myNoticeDealer.noticeId)
            myNoticeDealer.status = Ans_ID.Item("Notice_Status")
            If myNoticeDealer.rowNum <> 0 Then
                myNoticeDealer.closeNum = NoticeDetailDB.countDealerNoticeDetailID(myNoticeDealer.noticeId)
            Else
                myNoticeDealer.closeNum = 0
            End If

        Else
            myNoticeDealer.totalNum = -1
            myNoticeDealer.rowNum = -1

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myNoticeDealer
    End Function
    Function countPackageNotices(ByVal cust_id As Integer, ByVal cat_type As String) As Integer
        Dim myNoticeDealer As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT COUNT(*) AS num FROM CategoryType INNER JOIN Category ON "
        sql = sql & " CategoryType.CategoryType = Category.Category_CategoryType "
        sql = sql & " INNER JOIN Notice ON Category.Category = Notice.Notice_Category "
        'sql = sql & " WHERE (CategoryType.CategoryType = 1 OR  CategoryType.CategoryType = 2) "
        sql = sql & " WHERE  " & cat_type
        sql = sql & " AND (Notice.Notice_MemberId = " & cust_id & ") "
        'sql = sql & " AND (Notice.Notice_Payment = 1) "
        'sql = sql & " AND (Notice.Notice_StopDate >= GETDATE())"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myNoticeDealer = Ans_ID.Item("num")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myNoticeDealer
    End Function
    Function countOnlineOffline(ByVal cust_id As Integer, ByVal cat_type As String) As countOnOff
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim result As countOnOff


        sql = "SELECT SUM(CAST(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Notice.Notice_Status, 2, 0), 3, 0), 4, 0), 1, 1), 5, 1) AS decimal(2, 0))) AS Offline, "
        sql = sql & " SUM(CAST(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Notice.Notice_Status, 1, 0), 4, 0), 5, 0), 2, 1), 3, 1) AS decimal(2, 0))) AS Online"
        sql = sql & " FROM CategoryType INNER JOIN"
        sql = sql & " Category ON CategoryType.CategoryType = Category.Category_CategoryType INNER JOIN"
        sql = sql & " Notice ON Category.Category = Notice.Notice_Category"
        sql = sql & " WHERE " & cat_type
        sql = sql & " AND (Notice.Notice_MemberId = " & cust_id & ") "
        'sql = sql & " AND (Notice.Notice_Payment = 1) "
        'sql = sql & " AND (Notice.Notice_StopDate >= GETDATE())"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            result.online = Ans_ID.Item("Online")
            result.offline = Ans_ID.Item("Offline")
            result.all = result.online + result.offline
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return result
    End Function



    '-------------For บุคคลทั่วไปใช้เท่านั้น   1 Notice  1 ข้อมูลประกาศ-------------------
    Function getCustID(ByVal data_id As Integer, ByVal cat As Integer) As Integer
        ' Use In case of Private customer ONLY!!!
        ' One Notice One Detail !!

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As Integer


        sql = "SELECT Notice.Notice_MemberId FROM Notice INNER JOIN NoticeDetail ON Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId WHERE (NoticeDetail.NoticeDetail_DataId = " & data_id & ") AND (Notice.Notice_Category = " & cat & ")"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("Notice_MemberId")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function

    Function getNotices(ByVal cust_id As Integer) As Array
        Dim notice(countNotices2(cust_id)) As noticeS
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT Notice.* FROM Notice,NoticeDetail WHERE Notice.Notice_Id = NoticeDetail.NoticeDetail_NoticeId AND (NoticeDetail.Detail_delete <> 1  or NoticeDetail.Detail_delete is null) AND Notice_MemberID  = " & cust_id & " ORDER BY Notice_startdate"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            notice(i).id = Ans_ID.Item(0)
            notice(i).category = String_chk.checkNullDBNum(Ans_ID.Item(1))
            notice(i).pacakgeId = String_chk.checkNullDBNum(Ans_ID.Item(2))
            notice(i).isDealer = String_chk.checkNullDBNum(Ans_ID.Item(3))
            notice(i).memberId = String_chk.checkNullDBNum(Ans_ID.Item(4))
            notice(i).payment = String_chk.checkNullDBNum(Ans_ID.Item(5))
            notice(i).status = String_chk.checkNullDBNum(Ans_ID.Item(6))
            notice(i).postDate = String_chk.checkNullDBDate(Ans_ID.Item(7))
            notice(i).startDate = String_chk.checkNullDBDate(Ans_ID.Item(8))
            notice(i).stopDate = String_chk.checkNullDBDate(Ans_ID.Item(9))
            notice(i).outDate = String_chk.checkNullDBDate(Ans_ID.Item(10))
            If String_chk.checkNullDBNum(Ans_ID.Item(11)) = 0 Then
                notice(i).show = "ปิด"
            Else
                notice(i).show = "เปิด"
            End If
            notice(i).prolong = String_chk.checkNullDBstr(Ans_ID.Item(12))
            notice(i).prolong_color = String_chk.checkNullDBstr(Ans_ID.Item(13))

            i = i + 1
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return notice
    End Function
    Function getNoticeInfo(ByVal notice_id As Integer) As noticeS
        Dim notice As noticeS
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer = 1


        sql = "SELECT * FROM Notice WHERE Notice_MemberID  = " & notice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            notice.id = Ans_ID.Item(0)
            notice.category = String_chk.checkNullDBNum(Ans_ID.Item(1))
            notice.pacakgeId = String_chk.checkNullDBNum(Ans_ID.Item(2))
            notice.isDealer = String_chk.checkNullDBNum(Ans_ID.Item(3))
            notice.memberId = String_chk.checkNullDBNum(Ans_ID.Item(4))
            notice.payment = String_chk.checkNullDBNum(Ans_ID.Item(5))
            notice.status = String_chk.checkNullDBNum(Ans_ID.Item(6))
            notice.postDate = String_chk.checkNullDBDate(Ans_ID.Item(7))
            notice.startDate = String_chk.checkNullDBDate(Ans_ID.Item(8))
            notice.stopDate = String_chk.checkNullDBDate(Ans_ID.Item(9))
            notice.outDate = String_chk.checkNullDBDate(Ans_ID.Item(10))
            If String_chk.checkNullDBNum(Ans_ID.Item(11)) = 0 Then
                notice.show = "ปิด"
            Else
                notice.show = "เปิด"
            End If
            notice.prolong = String_chk.checkNullDBstr(Ans_ID.Item(12))
            notice.prolong_color = String_chk.checkNullDBstr(Ans_ID.Item(13))
            i = i + 1
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return notice
    End Function
    Function getNoticesInfoD(ByVal notice_id As Integer) As noticeS
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim myNotice As noticeS
        Dim mycommand As OleDbCommand
        Dim sql As String


        sql = "SELECT     Notice_Id, Notice_Category, Notice_PackageId, Notice_IsDealer, Notice_MemberId, Notice_Payment, Notice_Status, Notice_PostDate, "
        sql = sql & " Notice_StartDate, Notice_StopDate, Notice_OutDate, Notice_Show, Notice_Prolong, Notice_Prolong_color"
        sql = sql & " FROM  Notice"
        sql = sql & " Where Notice_id = " & notice_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myNotice.id = Ans_ID.Item("Notice_Id")
            myNotice.category = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Category"))
            myNotice.pacakgeId = String_chk.checkNullDBNum(Ans_ID.Item("Notice_PackageId"))
            myNotice.isDealer = String_chk.checkNullDBNum(Ans_ID.Item("Notice_IsDealer"))
            myNotice.memberId = String_chk.checkNullDBNum(Ans_ID.Item("Notice_MemberId"))
            myNotice.payment = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Payment"))
            myNotice.status = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Status"))
            myNotice.postDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_PostDate"))
            myNotice.startDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StartDate"))
            myNotice.stopDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_StopDate"))
            myNotice.outDate = String_chk.checkNullDBDate(Ans_ID.Item("Notice_OutDate"))
            myNotice.show = String_chk.checkNullDBNum(Ans_ID.Item("Notice_Show"))
            myNotice.prolong = String_chk.checkNullDBstr(Ans_ID.Item("Notice_Prolong"))
            myNotice.prolong_color = String_chk.checkNullDBstr(Ans_ID.Item("Notice_Prolong_color"))
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myNotice
    End Function



    Structure countOnOff
        Dim online As Integer
        Dim offline As Integer
        Dim all As Integer
    End Structure
    Structure numNoticeDealer
        Dim rowNum As Integer
        Dim totalNum As Integer
        Dim noticeId As Integer
        Dim closeNum As Integer
        Dim status As Integer
    End Structure
    Structure noticeS
        Dim id As Integer
        Dim category As Integer
        Dim pacakgeId As Integer
        Dim isDealer As Integer
        Dim memberId As Integer
        Dim payment As Integer
        Dim status As Integer
        Dim postDate As Date
        Dim startDate As Date
        Dim stopDate As Date
        Dim outDate As Date
        Dim show As String
        Dim prolong As String
        Dim prolong_color As String


    End Structure

End Module
