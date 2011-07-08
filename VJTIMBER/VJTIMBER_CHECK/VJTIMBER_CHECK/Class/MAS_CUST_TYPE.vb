Imports System.Data
Imports System.Data.SqlClient

Public Class MAS_CUST_TYPE

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intCUST_TYPE as Integer
Private strCUST_TYPE_DESC as String
Private intACTIVE as Integer


    Public Sub New()
        sqlConnString = ConfigurationSettings.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property CUST_TYPE() As Integer
Get
Return intCUST_TYPE
End Get
Set(ByVal Value As Integer)
intCUST_TYPE = Value
End Set
 End Property

Public Property CUST_TYPE_DESC() As String
Get
Return strCUST_TYPE_DESC
End Get
Set(ByVal Value As String)
strCUST_TYPE_DESC = Value
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
        sqlCmd = New SqlCommand("SELECT CUST_TYPE, CUST_TYPE_DESC, ACTIVE FROM MAS_CUST_TYPE WHERE CUST_TYPE = @CUST_TYPE", sqlConn)
        sqlCmd.Parameters.Add("@CUST_TYPE", SqlDbType.int)
sqlCmd.Parameters("@CUST_TYPE").Value = CUST_TYPE
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
           strCUST_TYPE_DESC = sqlDtRdr("CUST_TYPE_DESC").toString()
intACTIVE = sqlDtRdr("ACTIVE").toString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_CUST_TYPE (CUST_TYPE_DESC, ACTIVE) VALUES (@CUST_TYPE_DESC, @ACTIVE) SELECT @@IDENTITY CUST_TYPE", sqlConn)

        sqlCmd.Parameters.Add("@CUST_TYPE_DESC", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_TYPE_DESC").Value = strCUST_TYPE_DESC
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intCUST_TYPE = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_CUST_TYPE SET CUST_TYPE_DESC = @CUST_TYPE_DESC, ACTIVE = @ACTIVE WHERE CUST_TYPE = @CUST_TYPE", sqlConn)

        sqlCmd.Parameters.Add("@CUST_TYPE", SqlDbType.int)
sqlCmd.Parameters("@CUST_TYPE").Value = intCUST_TYPE
sqlCmd.Parameters.Add("@CUST_TYPE_DESC", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_TYPE_DESC").Value = strCUST_TYPE_DESC
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_CUST_TYPE WHERE CUST_TYPE =" & intCUST_TYPE, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT CUST_TYPE, CUST_TYPE_DESC, ACTIVE FROM MAS_CUST_TYPE"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " CUST_TYPE, CUST_TYPE_DESC, ACTIVE FROM MAS_CUST_TYPE"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT CUST_TYPE, CUST_TYPE_DESC, ACTIVE FROM MAS_CUST_TYPE Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strCUST_TYPE As String) As DataSet
        strSql = "SELECT CUST_TYPE, CUST_TYPE_DESC, ACTIVE FROM MAS_CUST_TYPE Where CUST_TYPE = (" & strCUST_TYPE & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
