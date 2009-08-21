Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Module UpdateProlong
    Dim connectDB As String = DBConnect.getStrDBConnect()
    '================================= Find Customer with status - offline ᴧ  =====================================
    Sub UpdateProlongExpire(ByVal noticeid As Integer, ByVal invoiceid As Integer)
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
            sql = sql & " set Notice_PrevStatus = Notice_Status"
            sql = sql & " where notice_id = " & noticeid
            mycommand.CommandText = sql
            i = mycommand.ExecuteNonQuery()

            sql = "update  notice"
            sql = sql & " set notice_prolong = null"
            sql = sql & " ,notice_prolong_color=null"
            sql = sql & " ,Notice_Stopdate = (select dateadd(month,p.package_week,getdate()) as newStop  "
            sql = sql & " from package p ,Prolong_Tx ptx "
            sql = sql & " where p.package_id = ptx.prolong_packageid"
            sql = sql & " AND ptx.Prolong_NoticeId = " & noticeid
            sql = sql & " AND ptx.Prolong_InvoiceId = " & invoiceid & ")"
            sql = sql & " ,Notice_Packageid = (select prolong_packageid "
            sql = sql & " from Prolong_Tx where prolong_NoticeId = " & noticeid
            sql = sql & " AND Prolong_InvoiceId = " & invoiceid & ")"
            sql = sql & " ,Notice_Status = 2"
            sql = sql & " ,Notice_Payment = 1 "
            sql = sql & " where notice.notice_id = " & noticeid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            sql = "Update Prolong_Tx"
            sql = sql & " set expire = 1"
            sql = sql & " ,date_start = getdate()"
            sql = sql & " ,date_stop = (select dateadd(month,p.package_week,getdate()) as newStop "
            sql = sql & " from package p , Prolong_tx ct"
            sql = sql & " where  p.package_id = ct.prolong_packageid "
            sql = sql & " AND ct.prolong_NoticeId = " & noticeid
            sql = sql & " AND ct.prolong_InvoiceId = " & invoiceid & ")"
            sql = sql & " where  Prolong_NoticeId = " & noticeid
            sql = sql & " AND Prolong_InvoiceId = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            sql = "update  invoice"
            sql = sql & " set FG_Process = 1"
            sql = sql & " where invoice.invoice_id = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()


            If i = 4 Then
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
    Sub UndoUpdateProlongExpire(ByVal noticeid As Integer, ByVal invoiceid As Integer)
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

            sql = "update  notice"
            sql = sql & " set notice_prolong = 'P'"
            sql = sql & " ,notice_prolong_color='A_PC_red_underline'"
            sql = sql & " ,Notice_Stopdate = (select Notice_StartDate "
            sql = sql & " from Invoice where Invoice_Id = " & invoiceid & ")"
            sql = sql & " ,Notice_Status = Notice_PrevStatus"
            sql = sql & " ,Notice_PrevStatus = null"
            sql = sql & " ,Notice_Payment = 0 "
            sql = sql & " where notice.notice_id = " & noticeid
            mycommand.CommandText = sql
            i = mycommand.ExecuteNonQuery()

            sql = "Update Prolong_Tx"
            sql = sql & " set expire = 0"
            sql = sql & " where  Prolong_NoticeId = " & noticeid
            sql = sql & " AND Prolong_InvoiceId = " & invoiceid
            mycommand.CommandText = sql
            i = i + mycommand.ExecuteNonQuery()

            sql = "update  invoice"
            sql = sql & " set FG_Process = null"
            sql = sql & " where invoice.invoice_id = " & invoiceid
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

    Sub DeleteProlong(ByVal noticeid As Integer, ByVal invoiceid As Integer, ByVal tmpPayId As Integer)
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

            '====Prolong_Tx======================================
            sql = "delete from Prolong_Tx"
            sql = sql & " where  Prolong_NoticeId = " & noticeid
            sql = sql & " AND Prolong_InvoiceId = " & invoiceid
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
