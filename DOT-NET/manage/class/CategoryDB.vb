Imports System.Data
Imports System.Data.OleDb

Module CategoryDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getCategoryName(ByVal category_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim Category_Name As String


        sql = "SELECT Category.Category_Name FROM Category Where Category = " & category_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            Category_Name = Ans_ID.Item("Category_Name")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Category_Name
    End Function

    Function getCategories() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myCat As Category
        Dim myQCat As New Queue


        sql = "select Category,Category_Name "
        sql = sql & " from   Category"
        sql = sql & " where  Category < 5"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read()

            myCat.Category = Ans_ID.Item("Category")
            myCat.Category_Name = Ans_ID.Item("Category_Name")
            myQCat.Enqueue(myCat)
        Loop

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()


        Return myQCat
    End Function

    Structure Category
        Dim Category As Integer
        Dim Category_Name As String

    End Structure



End Module
