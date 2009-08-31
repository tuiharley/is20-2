Imports System.Data
Imports System.Data.OleDb
Module StatusDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function getStatusName(ByVal statusid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT Status_name FROM CK_STATUS WHERE STATUS_ID = " & statusid

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
    Function getStatusDS() As DataSet
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim da As OleDbDataAdapter
        Dim sql As String
        Dim myDS As New DataSet

        sql = "SELECT   * "
        sql &= " FROM CK_STATUS "
        da = New OleDbDataAdapter(sql, myconn)
        da.Fill(myDS, "ck_status")

        da.Dispose()
        myconn.Close()

        Return myDS
    End Function
End Module
