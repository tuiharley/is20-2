Imports System.Data
Imports System.Data.OleDb
Module ModelDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getAllModel(ByVal total_brand As Integer, ByVal cat As Integer) As Array
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement(total_brand + 1) As String

        sql = "SELECT brand , model , model_name FROM model where category = " & cat & " Order by brand,model_name"

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        Dim i As Integer = 0
        Dim tmp As String = ""
        Dim data_tmp As String = ""

        While Ans_ID.Read

            If Not IsDBNull(Ans_ID.Item("brand")) Then
                data_tmp = Ans_ID.Item("brand")
            Else
                data_tmp = ""
            End If


            If (data_tmp <> "") And (data_tmp <> tmp) Then
                i = i + 1
            End If

            If data_tmp <> "" Then
                search_statement(i) = search_statement(i) & "," & Ans_ID.Item("model") & ":" & Ans_ID.Item("model_name")

            End If


            tmp = data_tmp


        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
    Function getModelName(ByVal modelid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Model_Name FROM MODEL WHERE MODEL = " & modelid

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
End Module
