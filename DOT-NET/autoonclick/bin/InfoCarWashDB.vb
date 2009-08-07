Imports System.Data
Imports System.Data.OleDb
Module InfoCarWashDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Sub clearInfoCarWash(ByVal custid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer


        sql = "UPDATE Info_CarWash "
        sql = sql & " SET Wash = NULL, Auto_Wash = NULL, Information = NULL "
        sql = sql & " Where cust_id = " & custid

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Sub updateInfoServiceCar(ByVal Obj As infoCarWash, ByVal CarWash_ID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "UPDATE Info_CarWash"
        sql = sql & " SET Wash = " & Obj.Wash & ", Auto_Wash = " & Obj.Auto_Wash & ", Information = " & checkNullstr(Obj.Information) & " "
        sql = sql & " WHERE(CarWash_ID = " & CarWash_ID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

       

    End Sub

    Function getInfoCarWash(ByVal custid As Integer) As infoCarWash
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoCarWash

        sql = "SELECT *  FROM Info_CarWash WHERE Cust_ID = " & custid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            myBuz.CarWash_ID = Ans_ID.Item("CarWash_ID")
            myBuz.Cust_ID = Ans_ID.Item("Cust_ID")
            myBuz.Wash = checkNullDBNum(Ans_ID.Item("Wash"))
            myBuz.Auto_Wash = checkNullDBNum(Ans_ID.Item("Auto_Wash"))
            myBuz.Information = checkNullDBstr(Ans_ID.Item("Information"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myBuz
    End Function

    Function getNewCarWash() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(CarWash_ID) as AnsID FROM Info_CarWash"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            If Not Ans_ID.IsDBNull(0) Then
                ansid = Ans_ID.Item("AnsID") + 1
            Else
                ansid = 1
            End If
        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ansid
    End Function
    Function saveObjCarWash(ByVal Obj As infoCarWash, ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim newCarWash As Integer
        newCarWash = getNewCarWash()
        Obj.Cust_ID = cust_id

        sql = "INSERT INTO Info_CarWash"
        sql = sql & "(CarWash_ID,Cust_ID, Wash, Auto_Wash, Information) "
        sql = sql & " VALUES(" & newCarWash & "," & Obj.Cust_ID & "," & Obj.Wash & " ," & Obj.Auto_Wash
        sql = sql & " ," & checkNullstr(Obj.Information) & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        Return newCarWash
    End Function

    Structure infoCarWash
        Dim CarWash_ID As Integer
        Dim Cust_ID As Integer
        Dim Wash As Integer
        Dim Auto_Wash As Integer
        Dim Information As String

    End Structure
End Module
