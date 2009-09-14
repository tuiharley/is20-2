Imports System.Data
Imports System.Data.OleDb
Module CustomerDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getA_customer(ByVal cust_id As Integer) As A_Customer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim customer As A_Customer

        sql = "SELECT CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME, SHOW"
        sql = sql & " FROM  CUSTOMER "
        sql = sql & " WHERE (CUST_ID = " & cust_id & ")"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            customer.CUST_ID = Ans_ID.Item("CUST_ID")
            customer.CUST_TITLE = String_chk.checkNullDBNum(Ans_ID.Item("CUST_TITLE"))
            customer.CUST_NAME = String_chk.checkNullDBstr(Ans_ID.Item("CUST_NAME"))
            customer.CUST_SURNAME = String_chk.checkNullDBstr(Ans_ID.Item("CUST_SURNAME"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return customer
    End Function
    Function getCustomerDS() As DataSet
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim da As OleDbDataAdapter
        Dim sql As String
        Dim myDS As New DataSet

        sql = "SELECT CUSTOMER.CUST_ID, TITLE.TITLE_NAME + ' ' + CUSTOMER.CUST_NAME + ' ' + ISNULL(CUSTOMER.CUST_SURNAME, '') AS CUST_NAME,REPLACE(REPLACE(SHOW, 1, 'Show'), 0, 'NotShow') AS SHOW"
        sql = sql & " FROM  CUSTOMER INNER JOIN"
        sql = sql & " TITLE ON CUSTOMER.CUST_TITLE = TITLE.TITLE"
        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(myDS, "Customer")

        da.Dispose()
        myconn.Close()

        Return myDS
    End Function
    Sub addNewCust(ByVal MyCust As A_Customer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        Dim DBTrans As OleDbTransaction
        DBTrans = myconn.BeginTransaction()
        mycommand.Connection = myconn
        mycommand.Transaction = DBTrans

        Dim sql As String

        Try
            sql = "INSERT INTO CUSTOMER"
            sql = sql & "(CUST_TITLE, CUST_NAME, CUST_SURNAME)"
            sql = sql & " VALUES(" & MyCust.CUST_TITLE & "," & checkNullstr(MyCust.CUST_NAME)
            sql = sql & " ," & checkNullstr(MyCust.CUST_SURNAME) & ")"
            mycommand.CommandText = sql
            mycommand.ExecuteNonQuery()


            DBTrans.Commit()
        Catch
            DBTrans.Rollback()
        End Try



        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub delCust(ByVal cust_id As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As New OleDbCommand
        mycommand.Connection = myconn
        Dim sql As String

        sql = "DELETE FROM CUSTOMER WHERE CUST_ID = " & cust_id

        mycommand.CommandText = sql
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub updateCust(ByVal MyCust As A_Customer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "UPDATE CUSTOMER "
        sql &= " SET CUST_TITLE = " & MyCust.CUST_TITLE
        sql &= " , CUST_NAME = " & checkNullstr(MyCust.CUST_NAME)
        sql &= " , CUST_SURNAME = " & checkNullstr(MyCust.CUST_SURNAME)
        sql &= " , SHOW=" & MyCust.SHOW
        sql &= " WHERE CUST_ID = " & MyCust.CUST_ID


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure A_Customer
        Dim CUST_ID As Integer
        Dim CUST_TITLE As Integer
        Dim CUST_NAME As String
        Dim CUST_SURNAME As String
        Dim SHOW As Integer
    End Structure



End Module
