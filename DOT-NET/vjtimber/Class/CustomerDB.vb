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

        sql = "SELECT CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME"
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
    Structure A_Customer
        Dim CUST_ID As Integer
        Dim CUST_TITLE As Integer
        Dim CUST_NAME As String
        Dim CUST_SURNAME As String
    End Structure



End Module
