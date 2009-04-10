Imports System.Data
Imports System.Data.OleDb

Module CheckTrans
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Function getMaxChkNo() As Integer

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim custid As Integer

        sql = "SELECT Max(Check_No)+1 as cust_id FROM Check_Trans"
        mycommand = New OleDbCommand(sql, myconn)

        If IsDBNull(mycommand.ExecuteScalar()) Then
            custid = 1
        Else
            custid = mycommand.ExecuteScalar()
        End If

        mycommand.Dispose()
        myconn.Close()

        Return custid
    End Function
    Public Function addCheck(ByVal myCheck As Check) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim username As String
        Dim chkNo As Integer = getMaxChkNo()

        sql = "INSERT INTO Check_Trans(Check_No, Cust_Name, Pay_date, "
        sql = sql & "Amount,Amount_Txt) "
        sql = sql & "Values(" & chkNo & ", " & checkNullstr(myCheck.Cust_Name) & ", #" & myCheck.Pay_date
        sql = sql & "#," & myCheck.Amount & "," & checkNullstr(myCheck.Amount_Txt) & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()
        Return chkNo
    End Function


    Structure Check
        Dim Check_No As Integer
        Dim Cust_Name As String
        Dim Pay_date As DateTime
        Dim Amount As Double
        Dim Amount_Txt As String
    End Structure

End Module
