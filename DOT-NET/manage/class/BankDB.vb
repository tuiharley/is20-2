Imports System.Data
Imports System.Data.OleDb
Module BankDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getBankName(ByVal bankid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Bank_name FROM BANK WHERE Bank_id = " & bankid

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
    'Function getTotalBrand(ByVal cat As Integer) As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement As Integer

    '    sql = "SELECT DISTINCT count(*) as total_b FROM Brand WHERE brand in (select brand from model where category = " & cat & ")"
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read Then
    '        search_statement = Ans_ID.Item(0)
    '    End If


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement
    'End Function
    'Function getTotalNoBrand() As Integer
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement As Integer

    '    sql = "SELECT count(*) as total_b FROM Brand "
    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

    '    If Ans_ID.Read Then
    '        search_statement = Ans_ID.Item(0)
    '    End If


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement
    'End Function
    'Function getAllBrand(ByVal total_brand As Integer, ByVal cat As Integer) As Array
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement(total_brand + 1) As String

    '    sql = "SELECT DISTINCT brand,brand_name FROM Brand WHERE brand in (select brand from model where category = " & cat & ") ORDER BY Brand"

    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
    '    Dim i As Integer = 1

    '    While Ans_ID.Read
    '        search_statement(i) = Ans_ID.Item(0) & ":" & Ans_ID.Item(1)
    '        i = i + 1
    '    End While


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement
    'End Function
End Module
