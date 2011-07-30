Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Public Class MAS_ACCOUNT

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intACCT_ID As Integer
    Private strACCT_NUMBER As String
    Private strACCT_NAME As String
    Private strACCT_BRANCH As String


    Public Sub New()
        sqlConnString = ConfigurationManager.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property ACCT_ID() As Integer
        Get
            Return intACCT_ID
        End Get
        Set(ByVal Value As Integer)
            intACCT_ID = Value
        End Set
    End Property

    Public Property ACCT_NUMBER() As String
        Get
            Return strACCT_NUMBER
        End Get
        Set(ByVal Value As String)
            strACCT_NUMBER = Value
        End Set
    End Property

    Public Property ACCT_NAME() As String
        Get
            Return strACCT_NAME
        End Get
        Set(ByVal Value As String)
            strACCT_NAME = Value
        End Set
    End Property

    Public Property ACCT_BRANCH() As String
        Get
            Return strACCT_BRANCH
        End Get
        Set(ByVal Value As String)
            strACCT_BRANCH = Value
        End Set
    End Property



    Public Sub Load()
        sqlConn.Open()
        sqlCmd = New SqlCommand("SELECT ACCT_ID, ACCT_NUMBER, ACCT_NAME, ACCT_BRANCH FROM MAS_ACCOUNT WHERE ACCT_ID = @ACCT_ID", sqlConn)
        sqlCmd.Parameters.Add("@ACCT_ID", SqlDbType.Int)
        sqlCmd.Parameters("@ACCT_ID").Value = ACCT_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
            strACCT_NUMBER = sqlDtRdr("ACCT_NUMBER").ToString()
            strACCT_NAME = sqlDtRdr("ACCT_NAME").ToString()
            strACCT_BRANCH = sqlDtRdr("ACCT_BRANCH").ToString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_ACCOUNT (ACCT_NUMBER, ACCT_NAME, ACCT_BRANCH) VALUES (@ACCT_NUMBER, @ACCT_NAME, @ACCT_BRANCH) SELECT @@IDENTITY ACCT_ID", sqlConn)

        sqlCmd.Parameters.Add("@ACCT_NUMBER", SqlDbType.NVarChar)
        sqlCmd.Parameters("@ACCT_NUMBER").Value = strACCT_NUMBER
        sqlCmd.Parameters.Add("@ACCT_NAME", SqlDbType.NVarChar)
        sqlCmd.Parameters("@ACCT_NAME").Value = strACCT_NAME
        sqlCmd.Parameters.Add("@ACCT_BRANCH", SqlDbType.NVarChar)
        sqlCmd.Parameters("@ACCT_BRANCH").Value = strACCT_BRANCH


        intACCT_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_ACCOUNT SET ACCT_NUMBER = @ACCT_NUMBER, ACCT_NAME = @ACCT_NAME, ACCT_BRANCH = @ACCT_BRANCH WHERE ACCT_ID = @ACCT_ID", sqlConn)

        sqlCmd.Parameters.Add("@ACCT_ID", SqlDbType.Int)
        sqlCmd.Parameters("@ACCT_ID").Value = intACCT_ID
        sqlCmd.Parameters.Add("@ACCT_NUMBER", SqlDbType.NVarChar)
        sqlCmd.Parameters("@ACCT_NUMBER").Value = strACCT_NUMBER
        sqlCmd.Parameters.Add("@ACCT_NAME", SqlDbType.NVarChar)
        sqlCmd.Parameters("@ACCT_NAME").Value = strACCT_NAME
        sqlCmd.Parameters.Add("@ACCT_BRANCH", SqlDbType.NVarChar)
        sqlCmd.Parameters("@ACCT_BRANCH").Value = strACCT_BRANCH


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_ACCOUNT WHERE ACCT_ID =" & intACCT_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT ACCT_ID, ACCT_NUMBER, ACCT_NAME, ACCT_BRANCH FROM MAS_ACCOUNT"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " ACCT_ID, ACCT_NUMBER, ACCT_NAME, ACCT_BRANCH FROM MAS_ACCOUNT"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT ACCT_ID, ACCT_NUMBER, ACCT_NAME, ACCT_BRANCH FROM MAS_ACCOUNT Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strACCT_ID As String) As DataSet
        strSql = "SELECT ACCT_ID, ACCT_NUMBER, ACCT_NAME, ACCT_BRANCH FROM MAS_ACCOUNT Where ACCT_ID = (" & strACCT_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, sqlConnString)
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
