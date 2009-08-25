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
            myTxt.Banner_Name = Ans_ID.Item("Banner_Name")
            myTxt.Banner_img = Ans_ID.Item("Banner_img")
            myTxt.Banner_link = String_chk.checkNullDBstr(Ans_ID.Item("Banner_link"))
            myTxt.Banner_original = Ans_ID.Item("Banner_original")
            myTxt.Banner_txt = String_chk.checkNullDBstr(Ans_ID.Item("Banner_txt"))
            myTxt.BEmail = String_chk.checkNullDBstr(Ans_ID.Item("BEmail"))
            myTxt.Banner_desc = String_chk.checkNullDBstr(Ans_ID.Item("Banner_desc"))

        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()


        Return myTxt
    End Function

    Structure Banner
        Dim Banner_Name As String
        Dim Banner_img As String
        Dim Banner_link As String
        Dim Banner_original As String
        Dim Banner_txt As String
        Dim BEmail As String
        Dim Banner_desc As String

    End Structure
End Module
