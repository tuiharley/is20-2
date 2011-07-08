Imports System.Data
Imports System.Data.SqlClient

Public Class CHECK_TX_LOG

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intCHK_ID as Integer
Private intCUST_ID as Integer
Private intCHK_STATUS as Integer
Private dUPDATE_DATE as Date


    Public Sub New()
        sqlConnString = ConfigurationSettings.AppSettings("ConnectionString")
        sqlConn = New SqlConnection
        sqlConn.ConnectionString = sqlConnString
    End Sub

    Public Property CHK_ID() As Integer
Get
Return intCHK_ID
End Get
Set(ByVal Value As Integer)
intCHK_ID = Value
End Set
 End Property

Public Property CUST_ID() As Integer
Get
Return intCUST_ID
End Get
Set(ByVal Value As Integer)
intCUST_ID = Value
End Set
 End Property

Public Property CHK_STATUS() As Integer
Get
Return intCHK_STATUS
End Get
Set(ByVal Value As Integer)
intCHK_STATUS = Value
End Set
 End Property

Public Property UPDATE_DATE() As Date
Get
Return dUPDATE_DATE
End Get
Set(ByVal Value As Date)
dUPDATE_DATE = Value
End Set
 End Property



    Public Sub Load()
        sqlConn.Open()
        sqlCmd = New SqlCommand("SELECT CHK_ID, CUST_ID, CHK_STATUS, UPDATE_DATE FROM CHECK_TX_LOG WHERE CHK_ID = @CHK_ID", sqlConn)
        sqlCmd.Parameters.Add("@CHK_ID", SqlDbType.numeric)
sqlCmd.Parameters("@CHK_ID").Value = CHK_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
           intCUST_ID = sqlDtRdr("CUST_ID").toString()
intCHK_STATUS = sqlDtRdr("CHK_STATUS").toString()
dUPDATE_DATE = sqlDtRdr("UPDATE_DATE").toString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO CHECK_TX_LOG (CUST_ID, CHK_STATUS, UPDATE_DATE) VALUES (@CUST_ID, @CHK_STATUS, @UPDATE_DATE) SELECT @@IDENTITY CHK_ID", sqlConn)

        sqlCmd.Parameters.Add("@CUST_ID", SqlDbType.int)
sqlCmd.Parameters("@CUST_ID").Value = intCUST_ID
sqlCmd.Parameters.Add("@CHK_STATUS", SqlDbType.int)
sqlCmd.Parameters("@CHK_STATUS").Value = intCHK_STATUS
sqlCmd.Parameters.Add("@UPDATE_DATE", SqlDbType.datetime)
sqlCmd.Parameters("@UPDATE_DATE").Value = dUPDATE_DATE


        intCHK_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE CHECK_TX_LOG SET CUST_ID = @CUST_ID, CHK_STATUS = @CHK_STATUS, UPDATE_DATE = @UPDATE_DATE WHERE CHK_ID = @CHK_ID", sqlConn)

        sqlCmd.Parameters.Add("@CHK_ID", SqlDbType.numeric)
sqlCmd.Parameters("@CHK_ID").Value = intCHK_ID
sqlCmd.Parameters.Add("@CUST_ID", SqlDbType.int)
sqlCmd.Parameters("@CUST_ID").Value = intCUST_ID
sqlCmd.Parameters.Add("@CHK_STATUS", SqlDbType.int)
sqlCmd.Parameters("@CHK_STATUS").Value = intCHK_STATUS
sqlCmd.Parameters.Add("@UPDATE_DATE", SqlDbType.datetime)
sqlCmd.Parameters("@UPDATE_DATE").Value = dUPDATE_DATE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM CHECK_TX_LOG WHERE CHK_ID =" & intCHK_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT CHK_ID, CUST_ID, CHK_STATUS, UPDATE_DATE FROM CHECK_TX_LOG"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " CHK_ID, CUST_ID, CHK_STATUS, UPDATE_DATE FROM CHECK_TX_LOG"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT CHK_ID, CUST_ID, CHK_STATUS, UPDATE_DATE FROM CHECK_TX_LOG Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strCHK_ID As String) As DataSet
        strSql = "SELECT CHK_ID, CUST_ID, CHK_STATUS, UPDATE_DATE FROM CHECK_TX_LOG Where CHK_ID = (" & strCHK_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
