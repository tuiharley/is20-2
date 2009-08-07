Imports System.Data
Imports System.Data.OleDb
Module TitleDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getTitleName(ByVal Titleid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Title_Name FROM Title WHERE Title = " & Titleid

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

    Function getTitle() As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As New Queue
        Dim myTitle As title


        sql = "SELECT Title,Title_Name FROM Title "

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            myTitle.titleid = Ans_ID.Item("Title")
            myTitle.titlename = Ans_ID.Item("Title_Name")
            search_statement.Enqueue(myTitle)
        Loop


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function

    Structure title
        Dim titleid As Integer
        Dim titlename As String
    End Structure
End Module
