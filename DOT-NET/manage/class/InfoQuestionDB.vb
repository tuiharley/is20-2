Imports System.Data
Imports System.Data.OleDb
Module InfoQuestionDB
    Dim connectDB As String = DBConnect.getStrDBConnect()


    Sub clearInfoQuestion(ByVal cust_id As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()
        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "DELETE FROM Info_Questions WHERE cust_id = " & cust_id

        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()
        mycommand.Dispose()
        myconn.Close()

    End Sub
    Function getMainQuestion(ByVal cust_id As Integer) As infoQuestion
        Dim myInfoQuest As infoQuestion

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT id, cust_id, questionType, q1, q2, q3, MainBuz FROM Info_Questions WHERE cust_id = " & cust_id & " AND MainBuz = 1"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            myInfoQuest.id = Ans_ID.Item("id")
            myInfoQuest.cust_id = Ans_ID.Item("cust_id")
            myInfoQuest.type = Ans_ID.Item("questionType")
            myInfoQuest.q1 = checkNullDBNum(Ans_ID.Item("q1"))
            myInfoQuest.q2 = checkNullDBNum(Ans_ID.Item("q2"))
            myInfoQuest.q3 = checkNullDBNum(Ans_ID.Item("q3"))
            myInfoQuest.mainBuz = checkNullDBNum(Ans_ID.Item("MainBuz"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myInfoQuest
    End Function

    Function getInfoQuestion(ByVal cust_id As Integer, ByVal type As String) As infoQuestion
        Dim myInfoQuest As infoQuestion

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT id, cust_id, questionType, q1, q2, q3, MainBuz FROM Info_Questions "
        sql = sql & " WHERE cust_id = " & cust_id & " AND questionType = '" & type & "'"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            myInfoQuest.id = Ans_ID.Item("id")
            myInfoQuest.cust_id = Ans_ID.Item("cust_id")
            myInfoQuest.type = Ans_ID.Item("questionType")
            myInfoQuest.q1 = checkNullDBNum(Ans_ID.Item("q1"))
            myInfoQuest.q2 = checkNullDBNum(Ans_ID.Item("q2"))
            myInfoQuest.q3 = checkNullDBNum(Ans_ID.Item("q3"))
            myInfoQuest.mainBuz = checkNullDBNum(Ans_ID.Item("MainBuz"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myInfoQuest
    End Function
    Function getInfoQuestions(ByVal cust_id As Integer) As Queue
        Dim myInfoQuest As infoQuestion
        Dim myQInfo As New Queue

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT id, cust_id, questionType, q1, q2, q3, MainBuz FROM Info_Questions "
        sql = sql & " WHERE  cust_id = " & cust_id & " AND MainBuz is null"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        Do While Ans_ID.Read
            myInfoQuest.id = Ans_ID.Item("id")
            myInfoQuest.cust_id = Ans_ID.Item("cust_id")
            myInfoQuest.type = Ans_ID.Item("questionType")
            myInfoQuest.q1 = checkNullDBNum(Ans_ID.Item("q1"))
            myInfoQuest.q2 = checkNullDBNum(Ans_ID.Item("q2"))
            myInfoQuest.q3 = checkNullDBNum(Ans_ID.Item("q3"))
            myInfoQuest.mainBuz = checkNullDBNum(Ans_ID.Item("MainBuz"))
            myQInfo.Enqueue(myInfoQuest)
        Loop

        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return myQInfo
    End Function
    Sub insertInfoQuestion(ByVal infoQuest As Queue, ByVal cust_id As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim info As infoQuestion
        Dim Qtype As String

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim i As Integer

        For i = 0 To 4
            info = infoQuest.Dequeue
            info.cust_id = cust_id
            sql = "INSERT INTO Info_Questions(cust_id, questionType, q1, q2,q3,MainBuz) "
            sql = sql & "VALUES(" & info.cust_id & ", '" & info.type & "', " & info.q1 & ", " & info.q2 & ", " & info.q3
            If i = 0 Then
                sql = sql & ",1)"
            Else
                sql = sql & ",null)"
            End If
            mycommand = New OleDbCommand(sql, myconn)
            mycommand.ExecuteNonQuery()
        Next

        mycommand.Dispose()
        myconn.Close()

        'Return sql
    End Sub

    Function questionType(ByVal typeId As Integer) As String
        Dim ans As String

        Select Case typeId
            Case 1
                ans = "saleCar"
            Case 2
                ans = "serviceCar"
            Case 3
                ans = "salePart"
            Case 4
                ans = "carRent"
            Case 5
                ans = "carWash"
        End Select

        Return ans
    End Function
    Function questionType2(ByVal typeId As Integer) As String
        Dim ans As String

        Select Case typeId
            Case 1
                ans = "Vehicle"
            Case 2
                ans = "Workshop"
            Case 3
                ans = "Part/Acc"
            Case 4
                ans = "Rental"
            Case 5
                ans = "Cleaner"
        End Select

        Return ans
    End Function
    Function questionTypeRev(ByVal type As String) As Integer
        Dim ans As Integer

        Select Case type
            Case "saleCar"
                ans = 1
            Case "serviceCar"
                ans = 2
            Case "salePart"
                ans = 3
            Case "carRent"
                ans = 4
            Case "carWash"
                ans = 5
        End Select

        Return ans
    End Function
    Structure infoQuestion
        Dim id As Integer
        Dim cust_id As Integer
        Dim type As String
        Dim q1 As Integer
        Dim q2 As Integer
        Dim q3 As Integer
        Dim mainBuz As Integer

    End Structure
End Module
