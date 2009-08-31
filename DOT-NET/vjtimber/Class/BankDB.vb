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

        sql = "SELECT Bank_EN_name FROM BANK WHERE Bank_code = " & bankid

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
    Function getBankDS(ByVal w As Integer) As DataSet
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim da As OleDbDataAdapter
        Dim sql As String
        Dim myDS As New DataSet

        sql = "SELECT   BANK_CODE, BANK_EN_NAME + ' <img height=" & w & " width=" & w & " src=''../images/' + IMAGE + ''' border=0> ' AS BANK_NAME"
        sql &= " FROM BANK ORDER BY BANK_CODE"
        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(myDS, "bank")

        da.Dispose()
        myconn.Close()

        Return myDS
    End Function
    Function getBankDSById(ByVal BId As Integer, ByVal w As Integer) As DataSet
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim da As OleDbDataAdapter
        Dim sql As String
        Dim myDS As New DataSet

        sql = "SELECT   BANK_CODE, BANK_EN_NAME + ' <img height=" & w & " width=" & w & " src=''../images/' + IMAGE + ''' border=0> ' AS BANK_NAME"
        sql &= " FROM BANK "
        sql &= " WHERE BANK_CODE = " & BId
        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(myDS, "bank")

        da.Dispose()
        myconn.Close()

        Return myDS
    End Function
End Module
