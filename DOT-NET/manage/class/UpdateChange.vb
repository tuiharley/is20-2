Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Module UpdateChange
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Sub UpdateChangeExpire(ByVal noticeid As Integer, ByVal invoiceid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim i As Integer = 0

        Dim myChange As ChangeTx
        Dim myPack As Package
        Dim countDetail As Integer = 0
        Dim exceeded As Boolean
        Dim top As Integer

        myconn.Open()
        mycommand.Connection = myconn
        DBTrans = myconn.BeginTransaction()
        mycommand.Transaction = DBTrans
        Try

            sql = "Update notice"
            sql = sql & " set Notice_PrevPack = Notice_Packageid"
            sql = sql & " ,Notice_PrevStatus = Notice_Status"
            sql = sql & " where notice_id = " & noticeid
            mycommand.CommandText = sql
            i = mycommand.ExecuteNonQuery()

            sql = "Update notice"
            sql = sql & " set Notice_Stopdate = (select dateadd(month,p.package_week,getdate()) as newStop "
            sql = sql & " from package p , change_tx ct"
            sql = sql & " where  p.package_id = ct.change_packageid "
            sql = sql & " AND ct.Change_NoticeId = " & noticeid
            sql = sql & " AND ct.Change_InvoiceId = " & invoiceid & ")"
            sql = sql & " ,Notice_Prolong=null,Notice_Prolong_color=null"
            sql = sql & " ,Notice_Packageid = (select Change_PackageID "
            sql = sql & " from Change_Tx where Change_NoticeId = " & noticeid
            sql = sql & " AND Change_InvoiceId = " & invoiceid & ")"
            sql = sql & " ,Notice_Status = 2"
            sql = sql & " ,Notice_Payment = 1 "
            sql = sql & " where  notice_id = " & noticeid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()


            myChange = getChangeTx2(invoiceid, noticeid)
            myPack = getPackage(myChange.PackageID)
            countDetail = countNoticeDetailID(noticeid)
            If countDetail > myPack.Package_AreaStop Then
                top = countDetail - myPack.Package_AreaStop
                sql = " update noticeDetail"
                sql = sql & " set detail_delete = 1"
                sql = sql & " 	where noticedetail_id in ("
                sql = sql & " 		select top " & top & " noticedetail_id "
                sql = sql & " 		from noticeDetail"
                sql = sql & " 		where noticedetail_noticeid = " & noticeid
                sql = sql & "      and (Detail_delete=0 or Detail_delete is null)"
                sql = sql & " 		order by postDate "
                sql = sql & " 		)"
                mycommand.CommandText = sql
                i = i + mycommand.ExecuteNonQuery()
                exceeded = True
            End If


            sql = "Update Change_Tx"
            sql = sql & " set expire = 1"
            sql = sql & " ,date_start = getdate()"
            sql = sql & " ,date_stop = (select dateadd(month,p.package_week,getdate()) as newStop "
            sql = sql & " from package p , change_tx ct"
            sql = sql & " where  p.package_id = ct.change_packageid "
            sql = sql & " AND ct.Change_NoticeId = " & noticeid
            sql = sql & " AND ct.Change_InvoiceId = " & invoiceid & ")"
            sql = sql & " where  Change_NoticeId = " & noticeid
            sql = sql & " AND Change_InvoiceId = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            sql = "Update Invoice"
            sql = sql & " set FG_Process = 1"
            sql = sql & " where Invoice_ID = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            If exceeded And i = 4 + top Then
                DBTrans.Commit()
            ElseIf Not exceeded And i = 4 Then
                DBTrans.Commit()
            Else
                DBTrans.Rollback()
            End If
        Catch ex As Exception

            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub UndoUpdateChangeExpire(ByVal noticeid As Integer, ByVal invoiceid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        Dim reader As OleDbDataReader
        Dim sql As String
        Dim i As Integer = 0

        myconn.Open()
        mycommand.Connection = myconn
        DBTrans = myconn.BeginTransaction()
        mycommand.Transaction = DBTrans
        Try

            sql = "Update notice"
            sql = sql & " set Notice_Stopdate = (select Date_start "
            sql = sql & " from Change_Tx where Change_NoticeId = " & noticeid
            sql = sql & " AND Change_InvoiceId = " & invoiceid & ")"
            sql = sql & " ,Notice_Prolong='C',Notice_Prolong_color='A_PC_red_underline'"
            sql = sql & " ,Notice_Packageid = Notice_PrevPack"
            sql = sql & " ,Notice_PrevPack = null"
            sql = sql & " ,Notice_Status = Notice_PrevStatus"
            sql = sql & " ,Notice_PrevStatus = null"
            sql = sql & " ,Notice_Payment = 0 "
            sql = sql & " where  notice_id = " & noticeid
            mycommand.CommandText = sql
            i = mycommand.ExecuteNonQuery()

            sql = "Update Change_Tx"
            sql = sql & " set expire = 0"
            sql = sql & " where  Change_NoticeId = " & noticeid
            sql = sql & " AND Change_InvoiceId = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            sql = "Update Invoice"
            sql = sql & " set FG_Process = null"
            sql = sql & " where Invoice_ID = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            If i = 3 Then
                DBTrans.Commit()
            Else
                DBTrans.Rollback()
            End If
        Catch ex As Exception

            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()

    End Sub

    Sub DeleteChange(ByVal noticeid As Integer, ByVal invoiceid As Integer, ByVal tmpPayId As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        Dim sql As String
        Dim i As Integer = 0

        myconn.Open()
        mycommand.Connection = myconn
        DBTrans = myconn.BeginTransaction()
        mycommand.Transaction = DBTrans
        Try

            sql = "Update notice"
            sql = sql & " set Notice_Prolong = null"
            sql = sql & " ,Notice_Prolong_color = null"
            sql = sql & " where notice_id = " & noticeid
            mycommand.CommandText = sql
            i = mycommand.ExecuteNonQuery()


            '====TmpPayment======================================
            sql = "delete from TmpPayment"
            sql = sql & " where TmpPayment_Id = " & tmpPayId
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            '====Change_Tx======================================
            sql = "delete from Change_Tx"
            sql = sql & " where  Change_NoticeID = " & noticeid
            sql = sql & " AND Change_InvoiceID = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            '====Invoice======================================
            sql = "delete  from invoice"
            sql = sql & " where invoice.invoice_id = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()


            If i >= 3 Then
                DBTrans.Commit()
            Else
                DBTrans.Rollback()
            End If
        Catch ex As Exception

            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()


    End Sub
End Module
