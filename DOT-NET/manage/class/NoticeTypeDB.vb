Imports System.Data
Imports System.Data.OleDb
Module NoticeTypeDB
    Dim connectDB As String = DBConnect.getStrDBConnect()
    'Function getAllPartsType(ByVal total_brand As Integer) As Array
    '    Dim myconn As New OleDbConnection(connectDB)
    '    myconn.Open()

    '    Dim mycommand As OleDbCommand
    '    Dim sql As String
    '    Dim search_statement(total_brand + 1) As String

    '    sql = "SELECT partstype_category , partstype , partstype_name FROM partstype Order by partstype"

    '    mycommand = New OleDbCommand(sql, myconn)
    '    Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()
    '    Dim i As Integer = 0
    '    Dim tmp As String = ""
    '    Dim data_tmp As String = ""

    '    While Ans_ID.Read

    '        If Not IsDBNull(Ans_ID.Item(0)) Then
    '            data_tmp = Ans_ID.Item(0)
    '        Else
    '            data_tmp = ""
    '        End If


    '        If (data_tmp <> "") And (data_tmp <> tmp) Then
    '            i = i + 1
    '        End If

    '        If data_tmp <> "" Then
    '            search_statement(i) = search_statement(i) & "," & Ans_ID.Item(1) & ":" & Ans_ID.Item(2)

    '        End If


    '        tmp = data_tmp


    '    End While


    '    Ans_ID.Close()
    '    mycommand.Dispose()
    '    myconn.Close()

    '    Return search_statement
    'End Function

    Function getStatusName(ByVal status_id As Integer) As String
        Dim myconn As New OleDbConnection(connectDB)
        myconn.Open()

        Dim mycommand As OleDbCommand
        Dim sql As String
        Dim search_statement As String

        sql = "SELECT NoticeStatus_Name,NoticeStatus_Class FROM NoticeStatus WHERE NoticeStatus = " & status_id

        mycommand = New OleDbCommand(sql, myconn)
        Dim Ans_ID As OleDbDataReader = mycommand.ExecuteReader()

        If Ans_ID.Read Then
            search_statement = Ans_ID.Item("NoticeStatus_Name") & ":" & Ans_ID.Item("NoticeStatus_Class")
        End If


        Ans_ID.Close()
        mycommand.Dispose()
        myconn.Close()

        Return search_statement
    End Function
End Module
