Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class MAS_BANK

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intBANK_ID As Integer
    Private strBANK_DESC As String
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

    Public Property BANK_DESC() As String
        Get
            Return strBANK_DESC
        End Get
        Set(ByVal Value As String)
            strBANK_DESC = Value
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
        sqlCmd = New SqlCommand("SELECT BANK_ID, BANK_DESC, ACTIVE FROM MAS_BANK WHERE BANK_ID = @BANK_ID", sqlConn)
        sqlCmd.Parameters.Add("@BANK_ID", SqlDbType.Int)
        sqlCmd.Parameters("@BANK_ID").Value = BANK_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
            strBANK_DESC = sqlDtRdr("BANK_DESC").ToString()
            intACTIVE = sqlDtRdr("ACTIVE").ToString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_BANK (BANK_DESC, ACTIVE) VALUES (@BANK_DESC, @ACTIVE) SELECT @@IDENTITY BANK_ID", sqlConn)

        sqlCmd.Parameters.Add("@BANK_DESC", SqlDbType.NVarChar)
        sqlCmd.Parameters("@BANK_DESC").Value = strBANK_DESC
        sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.Int)
        sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intBANK_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_BANK SET BANK_DESC = @BANK_DESC, ACTIVE = @ACTIVE WHERE BANK_ID = @BANK_ID", sqlConn)

        sqlCmd.Parameters.Add("@BANK_ID", SqlDbType.Int)
        sqlCmd.Parameters("@BANK_ID").Value = intBANK_ID
        sqlCmd.Parameters.Add("@BANK_DESC", SqlDbType.NVarChar)
        sqlCmd.Parameters("@BANK_DESC").Value = strBANK_DESC
        sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.Int)
        sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_BANK WHERE BANK_ID =" & intBANK_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT BANK_ID, BANK_DESC, ACTIVE FROM MAS_BANK"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " BANK_ID, BANK_DESC, ACTIVE FROM MAS_BANK"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT BANK_ID, BANK_DESC, ACTIVE FROM MAS_BANK Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strBANK_ID As String) As DataSet
        strSql = "SELECT BANK_ID, BANK_DESC, ACTIVE FROM MAS_BANK Where BANK_ID = (" & strBANK_ID & ")"
        Dim sqlds As New DataSet
        'Dim sqlda As New SqlDataAdapter(strSql, ConfigurationManager.AppSettings("ConnectionString"))
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
