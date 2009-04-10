Imports System.Data
Imports System.Data.OleDb

Module CustomerDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getMaxCust() As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Cust_ID)+1 as cust_id FROM Customer"
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
    Public Function addCust(ByVal myCust As CustomerST) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String
        Dim chkNo As Integer = getMaxCust()

        sql = "INSERT INTO Customer(Cust_ID, Cust_Name) "
        sql = sql & "Values(" & chkNo & ", " & checkNullstr(myCust.Cust_Name) & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()
        Return chkNo
    End Function
    Public Function editCust(ByVal myCust As CustomerST) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String
        Dim chkNo As Integer = getMaxCust()

        sql = "UPDATE Customer "
        sql = sql & " SET Cust_Name = " & checkNullstr(myCust.Cust_Name)
        sql = sql & " WHERE Cust_ID = " & myCust.Cust_ID
        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()
        Return chkNo
    End Function
    Public Function delCust(ByVal myCust As CustomerST) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String
        Dim chkNo As Integer = getMaxCust()

        sql = "DELETE FROM Customer WHERE Cust_ID = " & myCust.Cust_ID

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()
        Return chkNo
    End Function

    Function getCust(ByVal CustID As Integer) As CustomerST
        Dim myCust As New CustomerST

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT Cust_ID,Cust_Name FROM Customer WHERE Cust_ID = " & CustID

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            myCust.Cust_ID = Ans_ID.Item("Cust_ID")
            myCust.Cust_Name = Ans_ID.Item("Cust_Name")
        End If

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myCust
    End Function


    Structure CustomerST
        Dim Cust_ID As Integer
        Dim Cust_Name As String

    End Structure

End Module
