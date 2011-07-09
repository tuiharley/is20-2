Imports System.Data
Imports System.Data.SqlClient

Public Class MAS_BRANCH

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intBRANCH_ID as Integer
Private strBRANCH_NAME as String
Private intACTIVE as Integer


    Public Sub New()
        sqlConnString = ConfigurationSettings.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property BRANCH_ID() As Integer
Get
Return intBRANCH_ID
End Get
Set(ByVal Value As Integer)
intBRANCH_ID = Value
End Set
 End Property

Public Property BRANCH_NAME() As String
Get
Return strBRANCH_NAME
End Get
Set(ByVal Value As String)
strBRANCH_NAME = Value
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
        sqlCmd = New SqlCommand("SELECT BRANCH_ID, BRANCH_NAME, ACTIVE FROM MAS_BRANCH WHERE BRANCH_ID = @BRANCH_ID", sqlConn)
        sqlCmd.Parameters.Add("@BRANCH_ID", SqlDbType.int)
sqlCmd.Parameters("@BRANCH_ID").Value = BRANCH_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
           strBRANCH_NAME = sqlDtRdr("BRANCH_NAME").toString()
intACTIVE = sqlDtRdr("ACTIVE").toString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_BRANCH (BRANCH_NAME, ACTIVE) VALUES (@BRANCH_NAME, @ACTIVE) SELECT @@IDENTITY BRANCH_ID", sqlConn)

        sqlCmd.Parameters.Add("@BRANCH_NAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@BRANCH_NAME").Value = strBRANCH_NAME
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intBRANCH_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_BRANCH SET BRANCH_NAME = @BRANCH_NAME, ACTIVE = @ACTIVE WHERE BRANCH_ID = @BRANCH_ID", sqlConn)

        sqlCmd.Parameters.Add("@BRANCH_ID", SqlDbType.int)
sqlCmd.Parameters("@BRANCH_ID").Value = intBRANCH_ID
sqlCmd.Parameters.Add("@BRANCH_NAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@BRANCH_NAME").Value = strBRANCH_NAME
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_BRANCH WHERE BRANCH_ID =" & intBRANCH_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT BRANCH_ID, BRANCH_NAME, ACTIVE FROM MAS_BRANCH"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " BRANCH_ID, BRANCH_NAME, ACTIVE FROM MAS_BRANCH"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT BRANCH_ID, BRANCH_NAME, ACTIVE FROM MAS_BRANCH Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strBRANCH_ID As String) As DataSet
        strSql = "SELECT BRANCH_ID, BRANCH_NAME, ACTIVE FROM MAS_BRANCH Where BRANCH_ID = (" & strBRANCH_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
