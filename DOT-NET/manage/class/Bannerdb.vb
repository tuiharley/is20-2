Imports System.Data
Imports System.Data.OleDb
Module Bannerdb
    Dim connectDB As String = DBConnect.getStrDBConnect()



    Function getBanner(ByVal Banner_Name As String) As Banner
        Dim myTxt As Banner

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM BANNER_TXT WHERE Banner_Name = '" & Banner_Name & "'"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myTxt.Banner_Id = Ans_ID.Item("Banner_Id")
            myTxt.Banner_Name = Ans_ID.Item("Banner_Name")
            myTxt.Banner_Page = Ans_ID.Item("Banner_Page")
            myTxt.Banner_img = Ans_ID.Item("Banner_img")
            myTxt.Banner_link = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_link"))
            myTxt.Banner_original = Ans_ID.Item("Banner_original")
            myTxt.Banner_txt = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_txt"))
            myTxt.BWidth = Ans_ID.Item("BWidth")
            myTxt.BHeight = Ans_ID.Item("BHeight")
            myTxt.BEmail = String_chk.checkNullDBstr_Ln(Ans_ID.Item("BEmail"))
            myTxt.Banner_Desc = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_Desc"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myTxt
    End Function
    Function getBannerById(ByVal Bannerid As Integer) As Banner
        Dim myTxt As Banner

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM BANNER_TXT WHERE Banner_Id = " & Bannerid
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read() Then
            myTxt.Banner_Id = Ans_ID.Item("Banner_Id")
            myTxt.Banner_Name = Ans_ID.Item("Banner_Name")
            myTxt.Banner_Page = Ans_ID.Item("Banner_Page")
            myTxt.Banner_img = Ans_ID.Item("Banner_img")
            myTxt.Banner_link = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_link"))
            myTxt.Banner_original = Ans_ID.Item("Banner_original")
            myTxt.Banner_txt = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_txt"))
            myTxt.BWidth = Ans_ID.Item("BWidth")
            myTxt.BHeight = Ans_ID.Item("BHeight")
            myTxt.BEmail = String_chk.checkNullDBstr_Ln(Ans_ID.Item("BEmail"))
            myTxt.Banner_Desc = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_Desc"))
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myTxt
    End Function
    Function getAllBanner() As Queue
        Dim myTxt As Banner
        Dim myQBanner As New Queue

        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "SELECT * FROM BANNER_TXT ORDER BY BANNER_ID"
        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        While Ans_ID.Read()
            myTxt.Banner_Id = Ans_ID.Item("Banner_Id")
            myTxt.Banner_Name = Ans_ID.Item("Banner_Name")
            myTxt.Banner_Page = Ans_ID.Item("Banner_Page")
            myTxt.Banner_img = Ans_ID.Item("Banner_img")
            myTxt.Banner_link = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_link"))
            myTxt.Banner_original = Ans_ID.Item("Banner_original")
            myTxt.Banner_txt = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_txt"))
            myTxt.BWidth = Ans_ID.Item("BWidth")
            myTxt.BHeight = Ans_ID.Item("BHeight")
            myTxt.BEmail = String_chk.checkNullDBstr_Ln(Ans_ID.Item("BEmail"))
            myTxt.Banner_Desc = String_chk.checkNullDBstr_Ln(Ans_ID.Item("Banner_Desc"))

            myQBanner.Enqueue(myTxt)
        End While


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myQBanner
    End Function
    Sub updateBanner(ByVal myBanner As Banner)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update BANNER_TXT "
        sql = sql & " SET Banner_link = " & cleanNullDBstr_Ln(myBanner.Banner_link)
        sql = sql & " ,Banner_Txt = " & cleanNullDBstr_Ln(myBanner.Banner_txt)
        sql = sql & " ,BEmail = " & cleanNullDBstr_Ln(myBanner.BEmail)
        sql = sql & " ,Banner_Desc = " & cleanNullDBstr_Ln(myBanner.Banner_Desc)
        sql = sql & " WHERE Banner_name = '" & myBanner.Banner_Name & "'"


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub
    Sub delBanner(ByVal myBannerid As Integer)
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String

        sql = "Update BANNER_TXT "
        sql = sql & " SET Banner_link = null"
        sql = sql & " ,Banner_Txt = null"
        sql = sql & " ,BEmail = null"
        sql = sql & " ,Banner_Desc = null"
        sql = sql & " WHERE Banner_Id = " & myBannerid


        mycommand = New OleDbCommand(sql, myconn)
        mycommand.ExecuteNonQuery()


        mycommand.Dispose()
        myconn.Close()

    End Sub


    Structure Banner
        Dim Banner_Id As Integer
        Dim Banner_Name As String
        Dim Banner_Page As String
        Dim Banner_img As String
        Dim Banner_link As String
        Dim Banner_original As String
        Dim Banner_txt As String
        Dim BWidth As Integer
        Dim BHeight As Integer
        Dim BEmail As String
        Dim Banner_Desc As String
    End Structure
End Module
