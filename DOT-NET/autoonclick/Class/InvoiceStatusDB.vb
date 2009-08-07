Imports System.Data
Imports System.Data.OleDb

Module InvoiceStatusDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getStatusName(ByVal statusid As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim dataid As String


        sql = "SELECT Invoice_Status.Invoice_StatusName FROM Invoice_Status Where Invoice_StatusID = " & statusid
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
