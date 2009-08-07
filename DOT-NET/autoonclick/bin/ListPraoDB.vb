Imports System.Data
Imports System.Data.OleDb
Module ListPraoDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    Function isMaxPrao(ByVal value As Integer) As Boolean
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim max As Boolean

        sql = "SELECT max(Prao_value) as prao FROM ListPrao "

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            If Ans_ID.Item(0) = value Then
                max = True
            Else
                max = False
            End If
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return max
    End Function
    Function getPraoName(ByVal value As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim prao As String

        sql = "SELECT Prao FROM ListPrao WHERE Prao_Value = " & value

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            prao = Ans_ID.Item(0)
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return prao
    End Function
    Structure ListPrao
        Dim id As Integer
        Dim Prao As String
        Dim PraoValue As Integer
    End Structure

End Module
