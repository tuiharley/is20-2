Imports System.Data
Imports System.Data.OleDb
Module SearchDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    
    Function getSearch(ByVal searchSQL As String) As OleDbDataAdapter
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim da As OleDbDataAdapter
        Dim x As String


        da = New OleDbDataAdapter(searchSQL, myconn)
        x = "TEST"

        Return da

    End Function
    Function emailDup(ByVal email As String, ByVal pass As String) As Boolean
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim pswd As String = Utilities.getPasswd(pass)
        Dim ans As Boolean

        sql = "SELECT * FROM Search WHERE (Search_Password = N'" & pswd & "') AND (Search_Email = N'" & email & "')"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            ans = True
        Else
            ans = False
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ans
    End Function


    Function getNewSearch() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(Search_Id) as Search_Id FROM Search"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then

            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("Search_Id") + 1
            Else
                ansid = 1
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function insertSearch(ByVal request As RequestSearch) As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim searchid As Integer

        searchid = getNewSearch()
        sql = "INSERT INTO Search VALUES (" & searchid & "," & request.cat & ",'" & request.statement & "','" & request.orderBy & "','" & request.keyOrder & "',getDate(),dateadd(d,28,getdate()),'" & request.password & "','" & request.email & "') "

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

        Return searchid
    End Function
    Sub deleteSearch(ByVal pass As String, ByVal email As String)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Delete From Search Where Search_Password = '" & pass & "' AND Search_Email ='" & email & "'"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()


    End Sub
    Sub updateSearchOrderby(ByVal searchid As Integer, ByVal orderby As String, ByVal keyorderby As String)

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update Search Set Search_Orderby = '" & orderby & "',Search_KeyOrder = '" & keyorderby & "' Where  Search_Id = " & searchid

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()

        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure RequestSearch
        Dim id As Integer
        Dim cat As Integer
        Dim statement As String
        Dim orderBy As String
        Dim keyOrder As String
        Dim SDate As Date
        Dim Expire As Date
        Dim password As String
        Dim email As String

    End Structure
End Module
