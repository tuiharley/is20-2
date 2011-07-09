Imports System.Data
Imports System.Data.SqlClient

Public Class MAS_CUST

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intCUST_ID as Integer
Private strCUST_TITLE as String
Private strCUST_NAME as String
Private strCUST_SURNAME as String
Private strCUST_USERNAME as String
Private strCUST_PWD as String
Private strCUST_ADDR1 as String
Private strCUST_ADDR2 as String
Private intCUST_PROVICE as Integer
Private strCUST_POSTAL as String
Private intCUST_TYPE as Integer
Private intACTIVE as Integer


    Public Sub New()
        sqlConnString = ConfigurationSettings.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property CUST_ID() As Integer
Get
Return intCUST_ID
End Get
Set(ByVal Value As Integer)
intCUST_ID = Value
End Set
 End Property

Public Property CUST_TITLE() As String
Get
Return strCUST_TITLE
End Get
Set(ByVal Value As String)
strCUST_TITLE = Value
End Set
 End Property

Public Property CUST_NAME() As String
Get
Return strCUST_NAME
End Get
Set(ByVal Value As String)
strCUST_NAME = Value
End Set
 End Property

Public Property CUST_SURNAME() As String
Get
Return strCUST_SURNAME
End Get
Set(ByVal Value As String)
strCUST_SURNAME = Value
End Set
 End Property

Public Property CUST_USERNAME() As String
Get
Return strCUST_USERNAME
End Get
Set(ByVal Value As String)
strCUST_USERNAME = Value
End Set
 End Property

Public Property CUST_PWD() As String
Get
Return strCUST_PWD
End Get
Set(ByVal Value As String)
strCUST_PWD = Value
End Set
 End Property

Public Property CUST_ADDR1() As String
Get
Return strCUST_ADDR1
End Get
Set(ByVal Value As String)
strCUST_ADDR1 = Value
End Set
 End Property

Public Property CUST_ADDR2() As String
Get
Return strCUST_ADDR2
End Get
Set(ByVal Value As String)
strCUST_ADDR2 = Value
End Set
 End Property

Public Property CUST_PROVICE() As Integer
Get
Return intCUST_PROVICE
End Get
Set(ByVal Value As Integer)
intCUST_PROVICE = Value
End Set
 End Property

Public Property CUST_POSTAL() As String
Get
Return strCUST_POSTAL
End Get
Set(ByVal Value As String)
strCUST_POSTAL = Value
End Set
 End Property

Public Property CUST_TYPE() As Integer
Get
Return intCUST_TYPE
End Get
Set(ByVal Value As Integer)
intCUST_TYPE = Value
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
        sqlCmd = New SqlCommand("SELECT CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME, CUST_USERNAME, CUST_PWD, CUST_ADDR1, CUST_ADDR2, CUST_PROVICE, CUST_POSTAL, CUST_TYPE, ACTIVE FROM MAS_CUST WHERE CUST_ID = @CUST_ID", sqlConn)
        sqlCmd.Parameters.Add("@CUST_ID", SqlDbType.int)
sqlCmd.Parameters("@CUST_ID").Value = CUST_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
           strCUST_TITLE = sqlDtRdr("CUST_TITLE").toString()
strCUST_NAME = sqlDtRdr("CUST_NAME").toString()
strCUST_SURNAME = sqlDtRdr("CUST_SURNAME").toString()
strCUST_USERNAME = sqlDtRdr("CUST_USERNAME").toString()
strCUST_PWD = sqlDtRdr("CUST_PWD").toString()
strCUST_ADDR1 = sqlDtRdr("CUST_ADDR1").toString()
strCUST_ADDR2 = sqlDtRdr("CUST_ADDR2").toString()
intCUST_PROVICE = sqlDtRdr("CUST_PROVICE").toString()
strCUST_POSTAL = sqlDtRdr("CUST_POSTAL").toString()
intCUST_TYPE = sqlDtRdr("CUST_TYPE").toString()
intACTIVE = sqlDtRdr("ACTIVE").toString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_CUST (CUST_TITLE, CUST_NAME, CUST_SURNAME, CUST_USERNAME, CUST_PWD, CUST_ADDR1, CUST_ADDR2, CUST_PROVICE, CUST_POSTAL, CUST_TYPE, ACTIVE) VALUES (@CUST_TITLE, @CUST_NAME, @CUST_SURNAME, @CUST_USERNAME, @CUST_PWD, @CUST_ADDR1, @CUST_ADDR2, @CUST_PROVICE, @CUST_POSTAL, @CUST_TYPE, @ACTIVE) SELECT @@IDENTITY CUST_ID", sqlConn)

        sqlCmd.Parameters.Add("@CUST_TITLE", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_TITLE").Value = strCUST_TITLE
sqlCmd.Parameters.Add("@CUST_NAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_NAME").Value = strCUST_NAME
sqlCmd.Parameters.Add("@CUST_SURNAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_SURNAME").Value = strCUST_SURNAME
sqlCmd.Parameters.Add("@CUST_USERNAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_USERNAME").Value = strCUST_USERNAME
sqlCmd.Parameters.Add("@CUST_PWD", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_PWD").Value = strCUST_PWD
sqlCmd.Parameters.Add("@CUST_ADDR1", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_ADDR1").Value = strCUST_ADDR1
sqlCmd.Parameters.Add("@CUST_ADDR2", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_ADDR2").Value = strCUST_ADDR2
sqlCmd.Parameters.Add("@CUST_PROVICE", SqlDbType.int)
sqlCmd.Parameters("@CUST_PROVICE").Value = intCUST_PROVICE
sqlCmd.Parameters.Add("@CUST_POSTAL", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_POSTAL").Value = strCUST_POSTAL
sqlCmd.Parameters.Add("@CUST_TYPE", SqlDbType.int)
sqlCmd.Parameters("@CUST_TYPE").Value = intCUST_TYPE
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intCUST_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_CUST SET CUST_TITLE = @CUST_TITLE, CUST_NAME = @CUST_NAME, CUST_SURNAME = @CUST_SURNAME, CUST_USERNAME = @CUST_USERNAME, CUST_PWD = @CUST_PWD, CUST_ADDR1 = @CUST_ADDR1, CUST_ADDR2 = @CUST_ADDR2, CUST_PROVICE = @CUST_PROVICE, CUST_POSTAL = @CUST_POSTAL, CUST_TYPE = @CUST_TYPE, ACTIVE = @ACTIVE WHERE CUST_ID = @CUST_ID", sqlConn)

        sqlCmd.Parameters.Add("@CUST_ID", SqlDbType.int)
sqlCmd.Parameters("@CUST_ID").Value = intCUST_ID
sqlCmd.Parameters.Add("@CUST_TITLE", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_TITLE").Value = strCUST_TITLE
sqlCmd.Parameters.Add("@CUST_NAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_NAME").Value = strCUST_NAME
sqlCmd.Parameters.Add("@CUST_SURNAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_SURNAME").Value = strCUST_SURNAME
sqlCmd.Parameters.Add("@CUST_USERNAME", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_USERNAME").Value = strCUST_USERNAME
sqlCmd.Parameters.Add("@CUST_PWD", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_PWD").Value = strCUST_PWD
sqlCmd.Parameters.Add("@CUST_ADDR1", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_ADDR1").Value = strCUST_ADDR1
sqlCmd.Parameters.Add("@CUST_ADDR2", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_ADDR2").Value = strCUST_ADDR2
sqlCmd.Parameters.Add("@CUST_PROVICE", SqlDbType.int)
sqlCmd.Parameters("@CUST_PROVICE").Value = intCUST_PROVICE
sqlCmd.Parameters.Add("@CUST_POSTAL", SqlDbType.nvarchar)
sqlCmd.Parameters("@CUST_POSTAL").Value = strCUST_POSTAL
sqlCmd.Parameters.Add("@CUST_TYPE", SqlDbType.int)
sqlCmd.Parameters("@CUST_TYPE").Value = intCUST_TYPE
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_CUST WHERE CUST_ID =" & intCUST_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME, CUST_USERNAME, CUST_PWD, CUST_ADDR1, CUST_ADDR2, CUST_PROVICE, CUST_POSTAL, CUST_TYPE, ACTIVE FROM MAS_CUST"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME, CUST_USERNAME, CUST_PWD, CUST_ADDR1, CUST_ADDR2, CUST_PROVICE, CUST_POSTAL, CUST_TYPE, ACTIVE FROM MAS_CUST"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME, CUST_USERNAME, CUST_PWD, CUST_ADDR1, CUST_ADDR2, CUST_PROVICE, CUST_POSTAL, CUST_TYPE, ACTIVE FROM MAS_CUST Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strCUST_ID As String) As DataSet
        strSql = "SELECT CUST_ID, CUST_TITLE, CUST_NAME, CUST_SURNAME, CUST_USERNAME, CUST_PWD, CUST_ADDR1, CUST_ADDR2, CUST_PROVICE, CUST_POSTAL, CUST_TYPE, ACTIVE FROM MAS_CUST Where CUST_ID = (" & strCUST_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
