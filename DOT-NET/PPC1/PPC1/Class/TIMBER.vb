Imports System.Data.SqlServerCe
Imports System.Data.Common
Imports System.Data
Module TIMBER
    Dim connectDB As String = DBConnect.getStrConnect()
    Function getATimber(ByVal t_id As String, Optional ByVal searchBy As String = "T_ID") As Timber_ST
        Dim cn As New SqlCeConnection(connectDB)
        Dim sql As String = ""
        Dim result As Timber_ST = Nothing

        Select Case searchBy
            Case "T_ID"
                sql = "SELECT * FROM TIMBER WHERE T_ID='" & t_id & "'"
            Case "T_NAME"
                sql = "SELECT * FROM TIMBER WHERE T_NAME='" & t_id & "'"
            
        End Select


        Dim cmd As New SqlCeCommand(sql, cn)
        cmd.Connection.Open()
        Dim Ans_ID As SqlCeDataReader = cmd.ExecuteReader

        If Ans_ID.Read Then
            result.T_ID = Ans_ID.Item("T_ID")
            result.T_NAME = Ans_ID.Item("T_NAME")
            result.T_LENGTH = checkNullDBPrice(Ans_ID.Item("T_LENGTH"))
            result.T_WIDTH = checkNullDBPrice(Ans_ID.Item("T_WIDTH"))
            result.T_QTY = checkNullDBPrice(Ans_ID.Item("T_QTY"))
            result.T_Q = checkNullDBPrice(Ans_ID.Item("T_Q"))
            result.T_TYPE = Ans_ID.Item("T_TYPE")
        End If

        cmd.Connection.Close()
        cmd.Dispose()
        cn.Dispose()

        Return result
    End Function
    Function getTimber(Optional ByVal searchCond As String = "", Optional ByVal searchBy As String = "") As Queue
        Dim cn As New SqlCeConnection(connectDB)
        Dim sql As String
        Dim result As New Queue
        Dim Bresult As Timber_ST

        sql = "SELECT * FROM TIMBER "
        If searchBy <> "" Then
            sql &= " WHERE " & searchBy & " = " & checkNullstr(searchCond)
        End If

        Dim cmd As New SqlCeCommand(sql, cn)
        cmd.Connection.Open()
        Dim Ans_ID As SqlCeDataReader = cmd.ExecuteReader

        While Ans_ID.Read
            Bresult.T_ID = Ans_ID.Item("T_ID")
            Bresult.T_NAME = Ans_ID.Item("T_NAME")
            Bresult.T_LENGTH = checkNullDBPrice(Ans_ID.Item("T_LENGTH"))
            Bresult.T_WIDTH = checkNullDBPrice(Ans_ID.Item("T_WIDTH"))
            Bresult.T_QTY = checkNullDBPrice(Ans_ID.Item("T_QTY"))
            Bresult.T_Q = checkNullDBPrice(Ans_ID.Item("T_Q"))
            Bresult.T_TYPE = Ans_ID.Item("T_TYPE")
            result.Enqueue(Bresult)
        End While

        cmd.Connection.Close()
        cmd.Dispose()
        cn.Dispose()

        Return result
    End Function
    Function getTimberDS(Optional ByVal searchCond As String = "", Optional ByVal searchBy As String = "") As DataSet
        Dim cn As New SqlCeConnection(connectDB)

        Dim sql As String
        Dim DA As SqlCeDataAdapter
        Dim DS As DataSet

        If DS Is Nothing Then
            DS = New DataSet
        Else
            DS.Clear()
        End If


        sql = "SELECT * FROM TIMBER "
        If searchBy <> "" Then
            sql &= " WHERE " & searchBy & " = " & checkNullstr(searchCond)
        End If
        DA = New SqlCeDataAdapter(sql, cn)
        DA.Fill(DS)

        DA.Dispose()
        cn.Dispose()

        Return DS
    End Function


    Structure Timber_ST
        Dim T_ID As String
        Dim T_NAME As String
        Dim T_LENGTH As Double
        Dim T_WIDTH As Double
        Dim T_HEIGHT As Double
        Dim T_QTY As Double
        Dim T_Q As Double
        Dim T_TYPE As String

    End Structure
End Module
