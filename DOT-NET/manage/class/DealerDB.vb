Imports System.Data
Imports System.Data.OleDb

Module DealerDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getDealerABV(ByVal dealer_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Dealer.Dealer_Abv FROM Dealer Where DealerId = " & Math.Abs(dealer_id)
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item("Dealer_Abv")
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function

    Function getNoticeABV(ByVal dealer_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Dealer.Dealer_Notice_Abc FROM Dealer Where DealerId = " & dealer_id
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            dataid = Ans_ID.Item(0)
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return dataid
    End Function


End Module
