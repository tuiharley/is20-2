Imports System.Data
Imports System.Data.OleDb
Module InfoSalePartDB
    Dim connectDB As String = DBConnect.getStrDBConnect()

    Sub clearInfoSalePart(ByVal custid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer


        sql = "UPDATE  Info_SalePart"
        sql = sql & " SET Official_Dealer = NULL, Official_Dealer_txt = NULL, Dealer_Type = NULL, "
        sql = sql & " Item_type = NULL, Information = NULL "
        sql = sql & " Where cust_id = " & custid

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub clearInfoSalePartAbout(ByVal infoID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "DELETE FROM Info_SalePartAbout"
        sql = sql & " WHERE(SalePart_aboutID = " & infoID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Sub updateInfoSalePart(ByVal Obj As infoSalePart, ByVal SalePart_ID As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "UPDATE  Info_SalePart"
        sql = sql & " SET Official_Dealer = " & Obj.Official_Dealer & ", "
        sql = sql & " Official_Dealer_txt = " & checkNullstr(Obj.Official_Dealer_txt) & ", "
        sql = sql & " Dealer_Type = " & checkNullstr(Obj.Dealer_Type) & ", "
        sql = sql & " Item_type = " & checkNullstr(Obj.Item_type) & ", Information = " & checkNullstr(Obj.Information) & ""
        sql = sql & " WHERE(SalePart_ID = " & SalePart_ID & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

        '==========================================================

        Dim i As Integer
        Dim n As Integer
        n = Obj.SalePartAbout.Count
        Dim myAbout As New infoSalePart_About


        If n > 0 Then
            For i = 0 To n - 1
                myAbout.SalePart_aboutID = SalePart_ID
                myAbout.AboutService = Obj.SalePartAbout.Dequeue
                saveObjSalePartAbout(myAbout)
            Next
        End If
        '============================================================

    End Sub

    Function getInfoSalePart(ByVal custid As Integer) As infoSalePart
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoSalePart

        sql = "SELECT *  FROM INFO_SalePart WHERE Cust_ID = " & custid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
        If Ans_ID.Read Then
            myBuz.SalePart_ID = Ans_ID.Item("SalePart_ID")
            myBuz.Cust_ID = Ans_ID.Item("Cust_ID")
            myBuz.Official_Dealer = checkNullDBNum(Ans_ID.Item("Official_Dealer"))
            myBuz.Official_Dealer_txt = checkNullDBstr(Ans_ID.Item("Official_Dealer_txt"))
            myBuz.Dealer_Type = checkNullDBstr(Ans_ID.Item("Dealer_Type"))

            myBuz.Item_type = checkNullDBstr(Ans_ID.Item("Item_type"))
            myBuz.Information = checkNullDBstr(Ans_ID.Item("Information"))

        End If

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return myBuz
    End Function
    Function getInfoSalePartAbout(ByVal infoID As Integer) As Queue
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim myBuz As infoSalePart_About
        Dim ans As New Queue

        sql = "SELECT *  FROM Info_SalePartAbout WHERE SalePart_aboutID = " & infoID
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read
            myBuz.SalePart_aboutID = Ans_ID.Item("SalePart_aboutID")
            myBuz.AboutService = Ans_ID.Item("AboutService")
            ans.Enqueue(myBuz.AboutService)
        End While

        mycommand.Dispose()
        Ans_ID.Close()

        myconn.Close()

        Return ans
    End Function

    Function getNewSalePart() As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim ansid As Integer

        sql = "SELECT Max(SalePart_ID) as AnsID FROM Info_SalePart"
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
    Function saveObjSalePart(ByVal Obj As infoSalePart, ByVal cust_id As Integer) As Integer
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim newSalePart As Integer
        newSalePart = getNewSalePart()
        Obj.Cust_ID = cust_id

        sql = "INSERT INTO Info_SalePart"
        sql = sql & "(SalePart_ID,Cust_ID, Official_Dealer, Official_Dealer_txt, Dealer_Type, Item_type, Information) "
        sql = sql & " VALUES(" & newSalePart & "," & Obj.Cust_ID & "," & Obj.Official_Dealer & " ," & checkNullstr(Obj.Official_Dealer_txt)
        sql = sql & " ," & checkNullstr(Obj.Dealer_Type) & " ," & checkNullstr(Obj.Item_type) & " ," & checkNullstr(Obj.Information) & ")"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()


        '==========================================================

        Dim i As Integer
        Dim n As Integer

        If Not Obj.SalePartAbout Is Nothing Then
            n = Obj.SalePartAbout.Count
            Dim myAbout As New infoSalePart_About


            If n > 0 Then
                For i = 0 To n - 1
                    myAbout.SalePart_aboutID = newSalePart
                    myAbout.AboutService = Obj.SalePartAbout.Dequeue
                    saveObjSalePartAbout(myAbout)
                Next
            End If
            '============================================================
        End If


        Return newSalePart
    End Function
    Sub saveObjSalePartAbout(ByVal Obj As infoSalePart_About)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "INSERT INTO Info_SalePartAbout"
        sql = sql & "(SalePart_aboutID, AboutService)"
        sql = sql & " VALUES(" & Obj.SalePart_aboutID & "," & checkNullstr(Obj.AboutService) & " )"

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub

    Structure infoSalePart
        Dim SalePart_ID As Integer
        Dim Cust_ID As Integer
        Dim Official_Dealer As Integer
        Dim Official_Dealer_txt As String
        Dim Dealer_Type As String
        Dim SalePartAbout As Queue
        Dim Item_type As String
        Dim Information As String

    End Structure
    Structure infoSalePart_About
        Dim SalePart_aboutID As Integer
        Dim AboutService As String

    End Structure
End Module
