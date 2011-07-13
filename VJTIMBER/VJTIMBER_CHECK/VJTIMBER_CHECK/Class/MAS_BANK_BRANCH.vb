Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class MAS_BANK_BRANCH

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intBANK_ID As Integer
    Private intBRANCH_ID As Integer
    Private intACTIVE As Integer


    Public Sub New()
        sqlConnString = ConfigurationManager.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property BANK_ID() As Integer
        Get
            Return intBANK_ID
        End Get
        Set(ByVal Value As Integer)
            intBANK_ID = Value
        End Set
    End Property

    Public Property BRANCH_ID() As Integer
        Get
            Return intBRANCH_ID
        End Get
        Set(ByVal Value As Integer)
            intBRANCH_ID = Value
        End Set
    End Property

    Public Property ACTIVE() As Integer
        Get
            Return intACTIVE
        End Get
        Set(ByVal Value As Integer)
            intACTIVE = Value
        End Set
    End Property



    Public Sub Load()
        sqlConn.Open()
        sqlCmd = New SqlCommand("SELECT BANK_ID, BRANCH_ID, ACTIVE FROM MAS_BANK_BRANCH WHERE BANK_ID = @BANK_ID", sqlConn)
        sqlCmd.Parameters.Add("@BANK_ID", SqlDbType.Int)
        sqlCmd.Parameters("@BANK_ID").Value = BANK_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
            intBRANCH_ID = sqlDtRdr("BRANCH_ID").ToString()
            intACTIVE = sqlDtRdr("ACTIVE").ToString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_BANK_BRANCH (BRANCH_ID, ACTIVE) VALUES (@BRANCH_ID, @ACTIVE) SELECT @@IDENTITY BANK_ID", sqlConn)

        sqlCmd.Parameters.Add("@BRANCH_ID", SqlDbType.Int)
        sqlCmd.Parameters("@BRANCH_ID").Value = intBRANCH_ID
        sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.Int)
        sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intBANK_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_BANK_BRANCH SET BRANCH_ID = @BRANCH_ID, ACTIVE = @ACTIVE WHERE BANK_ID = @BANK_ID", sqlConn)

        sqlCmd.Parameters.Add("@BANK_ID", SqlDbType.Int)
        sqlCmd.Parameters("@BANK_ID").Value = intBANK_ID
        sqlCmd.Parameters.Add("@BRANCH_ID", SqlDbType.Int)
        sqlCmd.Parameters("@BRANCH_ID").Value = intBRANCH_ID
        sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.Int)
        sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_BANK_BRANCH WHERE BANK_ID =" & intBANK_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT BANK_ID, BRANCH_ID, ACTIVE FROM MAS_BANK_BRANCH"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " BANK_ID, BRANCH_ID, ACTIVE FROM MAS_BANK_BRANCH"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT BANK_ID, BRANCH_ID, ACTIVE FROM MAS_BANK_BRANCH Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String, ByVal strType As String) As DataSet
        strSql = "SELECT BANK_ID, BANK_DESC, BRANCH_ID, BRANCH_NAME, ACTIVE FROM MAS_BANK_BRANCH BB, MAS_BANK BK, MAS_BRANCH BR Where  BB.BANK_ID = BK.BANK_ID AND BB.BRANCH_ID = BR.BRANCH_ID AND " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strBANK_ID As String) As DataSet
        strSql = "SELECT BANK_ID, BRANCH_ID, ACTIVE FROM MAS_BANK_BRANCH Where BANK_ID = (" & strBANK_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
