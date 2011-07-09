Imports System.Data
Imports System.Data.SqlClient

Public Class CHECK_TX

    Private sqlConnString As String
    Private sqlConn As SqlConnection
    Private sqlCmd As SqlCommand
    Private sqlDtRdr As SqlDataReader
    Private sqlDs As DataSet
    Private strSql As String

    Private intCHK_ID as Integer
Private strCHK_NO as String
Private intCHK_BANK as Integer
Private intCHK_CUSTNO as Integer
Private intCHK_PAYEE as Integer
Private intCHK_AMOUNT as Integer
Private dCHK_DATE as Date
Private intCHK_STATUS as Integer
Private strCHK_REMARK as String
Private intACTIVE as Integer


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

Public Property CHK_NO() As String
Get
Return strCHK_NO
End Get
Set(ByVal Value As String)
strCHK_NO = Value
End Set
 End Property

Public Property CHK_BANK() As Integer
Get
Return intCHK_BANK
End Get
Set(ByVal Value As Integer)
intCHK_BANK = Value
End Set
 End Property

Public Property CHK_CUSTNO() As Integer
Get
Return intCHK_CUSTNO
End Get
Set(ByVal Value As Integer)
intCHK_CUSTNO = Value
End Set
 End Property

Public Property CHK_PAYEE() As Integer
Get
Return intCHK_PAYEE
End Get
Set(ByVal Value As Integer)
intCHK_PAYEE = Value
End Set
 End Property

Public Property CHK_AMOUNT() As Integer
Get
Return intCHK_AMOUNT
End Get
Set(ByVal Value As Integer)
intCHK_AMOUNT = Value
End Set
 End Property

Public Property CHK_DATE() As Date
Get
Return dCHK_DATE
End Get
Set(ByVal Value As Date)
dCHK_DATE = Value
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

Public Property CHK_REMARK() As String
Get
Return strCHK_REMARK
End Get
Set(ByVal Value As String)
strCHK_REMARK = Value
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
        sqlCmd = New SqlCommand("SELECT CHK_ID, CHK_NO, CHK_BANK, CHK_CUSTNO, CHK_PAYEE, CHK_AMOUNT, CHK_DATE, CHK_STATUS, CHK_REMARK, ACTIVE FROM CHECK_TX WHERE CHK_ID = @CHK_ID", sqlConn)
        sqlCmd.Parameters.Add("@CHK_ID", SqlDbType.numeric)
sqlCmd.Parameters("@CHK_ID").Value = CHK_ID
        sqlDtRdr = sqlCmd.ExecuteReader()
        If sqlDtRdr.Read() Then
           strCHK_NO = sqlDtRdr("CHK_NO").toString()
intCHK_BANK = sqlDtRdr("CHK_BANK").toString()
intCHK_CUSTNO = sqlDtRdr("CHK_CUSTNO").toString()
intCHK_PAYEE = sqlDtRdr("CHK_PAYEE").toString()
intCHK_AMOUNT = sqlDtRdr("CHK_AMOUNT").toString()
dCHK_DATE = sqlDtRdr("CHK_DATE").toString()
intCHK_STATUS = sqlDtRdr("CHK_STATUS").toString()
strCHK_REMARK = sqlDtRdr("CHK_REMARK").toString()
intACTIVE = sqlDtRdr("ACTIVE").toString()

        End If
        sqlDtRdr.Close()
        sqlConn.Close()
    End Sub

    Public Sub Add()
        sqlConn.Open()
        sqlCmd = New SqlCommand("INSERT INTO CHECK_TX (CHK_NO, CHK_BANK, CHK_CUSTNO, CHK_PAYEE, CHK_AMOUNT, CHK_DATE, CHK_STATUS, CHK_REMARK, ACTIVE) VALUES (@CHK_NO, @CHK_BANK, @CHK_CUSTNO, @CHK_PAYEE, @CHK_AMOUNT, @CHK_DATE, @CHK_STATUS, @CHK_REMARK, @ACTIVE) SELECT @@IDENTITY CHK_ID", sqlConn)

        sqlCmd.Parameters.Add("@CHK_NO", SqlDbType.nvarchar)
sqlCmd.Parameters("@CHK_NO").Value = strCHK_NO
sqlCmd.Parameters.Add("@CHK_BANK", SqlDbType.int)
sqlCmd.Parameters("@CHK_BANK").Value = intCHK_BANK
sqlCmd.Parameters.Add("@CHK_CUSTNO", SqlDbType.int)
sqlCmd.Parameters("@CHK_CUSTNO").Value = intCHK_CUSTNO
sqlCmd.Parameters.Add("@CHK_PAYEE", SqlDbType.int)
sqlCmd.Parameters("@CHK_PAYEE").Value = intCHK_PAYEE
sqlCmd.Parameters.Add("@CHK_AMOUNT", SqlDbType.numeric)
sqlCmd.Parameters("@CHK_AMOUNT").Value = intCHK_AMOUNT
sqlCmd.Parameters.Add("@CHK_DATE", SqlDbType.datetime)
sqlCmd.Parameters("@CHK_DATE").Value = dCHK_DATE
sqlCmd.Parameters.Add("@CHK_STATUS", SqlDbType.int)
sqlCmd.Parameters("@CHK_STATUS").Value = intCHK_STATUS
sqlCmd.Parameters.Add("@CHK_REMARK", SqlDbType.nvarchar)
sqlCmd.Parameters("@CHK_REMARK").Value = strCHK_REMARK
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        intCHK_ID = sqlCmd.ExecuteScalar()
        sqlConn.Close()
    End Sub

    Public Sub Save()
        sqlConn.Open()
        sqlCmd = New SqlCommand("UPDATE CHECK_TX SET CHK_NO = @CHK_NO, CHK_BANK = @CHK_BANK, CHK_CUSTNO = @CHK_CUSTNO, CHK_PAYEE = @CHK_PAYEE, CHK_AMOUNT = @CHK_AMOUNT, CHK_DATE = @CHK_DATE, CHK_STATUS = @CHK_STATUS, CHK_REMARK = @CHK_REMARK, ACTIVE = @ACTIVE WHERE CHK_ID = @CHK_ID", sqlConn)

        sqlCmd.Parameters.Add("@CHK_ID", SqlDbType.numeric)
sqlCmd.Parameters("@CHK_ID").Value = intCHK_ID
sqlCmd.Parameters.Add("@CHK_NO", SqlDbType.nvarchar)
sqlCmd.Parameters("@CHK_NO").Value = strCHK_NO
sqlCmd.Parameters.Add("@CHK_BANK", SqlDbType.int)
sqlCmd.Parameters("@CHK_BANK").Value = intCHK_BANK
sqlCmd.Parameters.Add("@CHK_CUSTNO", SqlDbType.int)
sqlCmd.Parameters("@CHK_CUSTNO").Value = intCHK_CUSTNO
sqlCmd.Parameters.Add("@CHK_PAYEE", SqlDbType.int)
sqlCmd.Parameters("@CHK_PAYEE").Value = intCHK_PAYEE
sqlCmd.Parameters.Add("@CHK_AMOUNT", SqlDbType.numeric)
sqlCmd.Parameters("@CHK_AMOUNT").Value = intCHK_AMOUNT
sqlCmd.Parameters.Add("@CHK_DATE", SqlDbType.datetime)
sqlCmd.Parameters("@CHK_DATE").Value = dCHK_DATE
sqlCmd.Parameters.Add("@CHK_STATUS", SqlDbType.int)
sqlCmd.Parameters("@CHK_STATUS").Value = intCHK_STATUS
sqlCmd.Parameters.Add("@CHK_REMARK", SqlDbType.nvarchar)
sqlCmd.Parameters("@CHK_REMARK").Value = strCHK_REMARK
sqlCmd.Parameters.Add("@ACTIVE", SqlDbType.int)
sqlCmd.Parameters("@ACTIVE").Value = intACTIVE


        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Sub Delete()
        sqlConn.Open()
        sqlCmd = New SqlCommand("DELETE FROM CHECK_TX WHERE CHK_ID =" & intCHK_ID, sqlConn)
        Dim i As Integer = sqlCmd.ExecuteNonQuery()
        sqlConn.Close()
    End Sub

    Public Function GetDataset() As DataSet
        strSql = "SELECT CHK_ID, CHK_NO, CHK_BANK, CHK_CUSTNO, CHK_PAYEE, CHK_AMOUNT, CHK_DATE, CHK_STATUS, CHK_REMARK, ACTIVE FROM CHECK_TX"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetTopN(ByVal strN As String) As DataSet
        strSql = "SELECT Top" & strN & " CHK_ID, CHK_NO, CHK_BANK, CHK_CUSTNO, CHK_PAYEE, CHK_AMOUNT, CHK_DATE, CHK_STATUS, CHK_REMARK, ACTIVE FROM CHECK_TX"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetSearch(ByVal strQuery As String) As DataSet
        strSql = "SELECT CHK_ID, CHK_NO, CHK_BANK, CHK_CUSTNO, CHK_PAYEE, CHK_AMOUNT, CHK_DATE, CHK_STATUS, CHK_REMARK, ACTIVE FROM CHECK_TX Where " & strQuery
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function

    Public Function GetDatasetOneRecord(ByVal strCHK_ID As String) As DataSet
        strSql = "SELECT CHK_ID, CHK_NO, CHK_BANK, CHK_CUSTNO, CHK_PAYEE, CHK_AMOUNT, CHK_DATE, CHK_STATUS, CHK_REMARK, ACTIVE FROM CHECK_TX Where CHK_ID = (" & strCHK_ID & ")"
        Dim sqlds As New DataSet
        Dim sqlda As New SqlDataAdapter(strSql, ConfigurationSettings.AppSettings("ConnectionString"))
        sqlda.Fill(sqlds)
        Return sqlds
    End Function
End Class
