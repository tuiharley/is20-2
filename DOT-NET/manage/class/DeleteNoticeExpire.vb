Imports System.IO
Imports System.Data
Imports System.Data.OleDb
Module DeleteExpire
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Sub DeleteNoticeExpire(ByVal noticeid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        Dim sql As String
        Dim dr As DirectoryInfo
        Dim myNotice As noticeS
        Dim myCust As A_Customer

        myconn.Open()
        mycommand.Connection = myconn
        DBTrans = myconn.BeginTransaction()
        mycommand.Transaction = DBTrans



        Try
            '================================= Find Customer with status - offline =====================================
            myNotice = NoticeDB.getNoticesInfoD(noticeid)
            myCust = CustomerDB.getA_customer(myNotice.memberId)


            Select Case myNotice.category
                Case 1
                    sql = "DELETE FROM CAR WHERE CAR_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                    mycommand.CommandText = sql
                    mycommand.ExecuteNonQuery()
                Case 2
                    sql = "DELETE FROM Bike WHERE Bike_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                    mycommand.CommandText = sql
                    mycommand.ExecuteNonQuery()
                Case 3
                    sql = "DELETE FROM Truck WHERE Truck_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                    mycommand.CommandText = sql
                    mycommand.ExecuteNonQuery()
                Case 4, 5
                    sql = "DELETE FROM Parts WHERE Part_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                    mycommand.CommandText = sql
                    mycommand.ExecuteNonQuery()
            End Select

            sql = "DELETE FROM TmpPayment "
            sql = sql & " where TmpPayment_InvoiceRefer in ("
            sql = sql & "               Select Invoice_ID"
            sql = sql & "               FROM Invoice"
            sql = sql & "               WHERE Invoice.Notice_ID = " & myNotice.id & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            sql = "Insert into h_Invoice"
            sql = sql & " SELECT     *"
            sql = sql & " FROM  Invoice"
            sql = sql & " WHERE Notice_id = " & myNotice.id
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            sql = "DELETE FROM Invoice WHERE Notice_id = " & myNotice.id
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            sql = "DELETE FROM NoticeDetail WHERE NoticeDetail_NoticeId = " & myNotice.id
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            sql = "Insert into h_Notice"
            sql = sql & " SELECT     *"
            sql = sql & " FROM  Notice"
            sql = sql & " WHERE Notice_id = " & myNotice.id
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            'QNotice = QNotice & reader.Item("Notice_id") & ","
            sql = "DELETE FROM Notice WHERE Notice_id = " & myNotice.id
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()

            'sql = "Insert into h_customer"
            'sql = sql & " SELECT     *"
            'sql = sql & " FROM  Customer"
            'sql = sql & " WHERE Customer_id = " & reader.Item("Customer_id")
            'mycommand.CommandText = sql
            'mycommand.ExecuteNonQuery()

            ''QCust = QCust & reader.Item("Customer_id") & ","
            'sql = "DELETE FROM Customer WHERE Customer_id= " & reader.Item("Customer_id")
            'mycommand.CommandText = sql
            'mycommand.ExecuteNonQuery()

            dr = New DirectoryInfo(HttpContext.Current.Server.MapPath("/userData") & "\" & myCust.username & "\" & myNotice.id)



            If dr.Exists Then
                dr.Delete(True)
            End If

            'QNotice = Left(QNotice, Len(QNotice) - 1)
            'QCust = Left(QCust, Len(QCust) - 1)


            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try

        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub DeleteNoticeExpire(ByVal noticeid As String)
        Dim myconn As New OleDbConnection(connectDB)
        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        Dim sql As String
        Dim dr As DirectoryInfo
        Dim myNotice As noticeS
        Dim myCust As A_Customer

        Dim myQ As Array
        Dim i As Integer


        myconn.Open()
        



        myQ = Split(noticeid, ",", , CompareMethod.Text)
        For i = 0 To myQ.Length - 1
            noticeid = myQ.GetValue(i)

            Try
                DBTrans = myconn.BeginTransaction()
                mycommand.Connection = myconn
                mycommand.Transaction = DBTrans
                '================================= Find Customer with status - offline =====================================

                myNotice = NoticeDB.getNoticesInfoD(noticeid)
                myCust = CustomerDB.getA_customer(myNotice.memberId)


                Select Case myNotice.category
                    Case 1
                        sql = "DELETE FROM CAR WHERE CAR_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                        mycommand.CommandText = sql
                        mycommand.ExecuteNonQuery()
                    Case 2
                        sql = "DELETE FROM Bike WHERE Bike_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                        mycommand.CommandText = sql
                        mycommand.ExecuteNonQuery()
                    Case 3
                        sql = "DELETE FROM Truck WHERE Truck_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                        mycommand.CommandText = sql
                        mycommand.ExecuteNonQuery()
                    Case 4, 5
                        sql = "DELETE FROM Parts WHERE Part_ID in (SELECT NoticeDetail_DataId FROM NoticeDetail WHERE NoticeDetail_Noticeid = " & myNotice.id & ")"
                        mycommand.CommandText = sql
                        mycommand.ExecuteNonQuery()
                End Select

                sql = "DELETE FROM TmpPayment "
                sql = sql & " where TmpPayment_InvoiceRefer in ("
                sql = sql & "               Select Invoice_ID"
                sql = sql & "               FROM Invoice"
                sql = sql & "               WHERE Invoice.Notice_ID = " & myNotice.id & ")"
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()


                sql = "Insert into h_Invoice"
                sql = sql & " SELECT     *"
                sql = sql & " FROM  Invoice"
                sql = sql & " WHERE Notice_id = " & myNotice.id
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

                sql = "DELETE FROM Invoice WHERE Notice_id = " & myNotice.id
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

                sql = "DELETE FROM NoticeDetail WHERE NoticeDetail_NoticeId = " & myNotice.id
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

                sql = "Insert into h_Notice"
                sql = sql & " SELECT     *"
                sql = sql & " FROM  Notice"
                sql = sql & " WHERE Notice_id = " & myNotice.id
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

                'QNotice = QNotice & reader.Item("Notice_id") & ","
                sql = "DELETE FROM Notice WHERE Notice_id = " & myNotice.id
                mycommand.CommandText = sql
                mycommand.ExecuteNonQuery()

                'sql = "Insert into h_customer"
                'sql = sql & " SELECT     *"
                'sql = sql & " FROM  Customer"
                'sql = sql & " WHERE Customer_id = " & reader.Item("Customer_id")
                'mycommand.CommandText = sql
                'mycommand.ExecuteNonQuery()

                ''QCust = QCust & reader.Item("Customer_id") & ","
                'sql = "DELETE FROM Customer WHERE Customer_id= " & reader.Item("Customer_id")
                'mycommand.CommandText = sql
                'mycommand.ExecuteNonQuery()

                dr = New DirectoryInfo(HttpContext.Current.Server.MapPath("/userData") & "\" & myCust.username & "\" & myNotice.id)



                If dr.Exists Then
                    dr.Delete(True)
                End If

                'QNotice = Left(QNotice, Len(QNotice) - 1)
                'QCust = Left(QCust, Len(QCust) - 1)


                DBTrans.Commit()
            Catch ex As Exception
                DBTrans.Rollback()
            End Try


        Next
        mycommand.Dispose()
        myconn.Close()

    End Sub
End Module
