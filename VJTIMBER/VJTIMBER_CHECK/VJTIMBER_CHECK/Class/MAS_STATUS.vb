Imports System.Data
Imports System.Data.SqlClient

Public Class MAS_STATUS

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intSTATUS_ID as Integer
Private strSTATUS_DESC as String
Private intSTATUS_TYPE as Integer
Private intACTIVE as Integer


    Public Sub New()
        sqlConnString = ConfigurationSettings.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property STATUS_ID() As Integer
Get
Return intSTATUS_ID
End Get
Set(ByVal Value As Integer)
intSTATUS_ID = Value
End Set
 End Property

Public Property STATUS_DESC() As String
Get
Return strSTATUS_DESC
End Get
Set(ByVal Value As String)
strSTATUS_DESC = Value
End Set
 End Property

Public Property STATUS_TYPE() As Integer
Get
Return intSTATUS_TYPE
End Get
Set(ByVal Value As Integer)
intSTATUS_TYPE = Value
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
        sqlCmd = New SqlCommand("SELECT STATUS_ID, STATUS_DESC, STATUS_TYPE, ACTIVE FROM MAS_STATUS WHERE STATUS_ID = @STATUS_ID", sqlConn)
        sqlCmd.Parameters.Add("@STATUS_ID", SqlDbType.int)
sqlCmd.Parameters("@STATUS_ID").Value = STATUS_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
           strSTATUS_DESC = sqlDtRdr("STATUS_DESC").toString()
intSTATUS_TYPE = sqlDtRdr("STATUS_TYPE").toString()
intACTIVE = sqlDtRdr("ACTIVE").toString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO MAS_STATUS (STATUS_DESC, STATUS_TYPE, ACTIVE) VALUES (@STATUS_DESC, @STATUS_TYPE, @ACTIVE) SELECT @@IDENTITY STATUS_ID", sqlConn)

        sqlCmd.Parameters.Add("@STATUS_DESC", SqlDbType.nvarchar)
sqlCmd.Parameters("@STATUS_DESC").Value = strSTATUS_DESC
sqlCmd.Parameters.Add("@STATUS_TYPE", SqlDbType.int)
sqlCmd.Parameters("@STATUS_TYPE").Value = intSTATUS_TYPE
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intSTATUS_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE MAS_STATUS SET STATUS_DESC = @STATUS_DESC, STATUS_TYPE = @STATUS_TYPE, ACTIVE = @ACTIVE WHERE STATUS_ID = @STATUS_ID", sqlConn)

        sqlCmd.Parameters.Add("@STATUS_ID", SqlDbType.int)
sqlCmd.Parameters("@STATUS_ID").Value = intSTATUS_ID
sqlCmd.Parameters.Add("@STATUS_DESC", SqlDbType.nvarchar)
sqlCmd.Parameters("@STATUS_DESC").Value = strSTATUS_DESC
sqlCmd.Parameters.Add("@STATUS_TYPE", SqlDbType.int)
sqlCmd.Parameters("@STATUS_TYPE").Value = intSTATUS_TYPE
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM MAS_STATUS WHERE STATUS_ID =" & intSTATUS_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT STATUS_ID, STATUS_DESC, STATUS_TYPE, ACTIVE FROM MAS_STATUS"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " STATUS_ID, STATUS_DESC, STATUS_TYPE, ACTIVE FROM MAS_STATUS"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT STATUS_ID, STATUS_DESC, STATUS_TYPE, ACTIVE FROM MAS_STATUS Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strSTATUS_ID As String) As DataSet
        strSql = "SELECT STATUS_ID, STATUS_DESC, STATUS_TYPE, ACTIVE FROM MAS_STATUS Where STATUS_ID = (" & strSTATUS_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
