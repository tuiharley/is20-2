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
            Category_Name = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return Category_Name
    End Function


End Module
