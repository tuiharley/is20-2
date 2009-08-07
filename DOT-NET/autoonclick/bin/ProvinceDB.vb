Imports System.Data
Imports System.Data.OleDb
Module ProvinceDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getProvinceName(ByVal provinceid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT province.province_name FROM province WHERE province = " & provinceid

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getTotalProvice() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As Integer

        sql = "SELECT count(*) as total_p FROM province "
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item(0)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getAllProvince(ByVal total_province As Integer) As Array
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement(total_province + 1) As String

        sql = "SELECT Province_Name FROM Province Order by Province"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        Dim i As Integer = 1

        While Ans_ID.Read
            search_statement(i) = Ans_ID.Item(0)
            i = i + 1
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
End Module
