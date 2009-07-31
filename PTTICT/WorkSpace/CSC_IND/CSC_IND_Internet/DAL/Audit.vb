

#Region ".NET base class name space imports"
Imports System
Imports System.Threading.Thread
Imports System.Configuration
#End Region

Public Class Audit

    Private _DB_Provider As String
    Private _DB_UserName As String
    Private _DB_Password As String
    Private _DB_DataSource As String
    Private _DB_Name As String
    Private _ConnectStr As String
    Private _UseStoredProc As Boolean = True
    Private DB As New DBUTIL

    Public Sub New()
        ReadDALConfigurations()
        DB.ConnectStr = _ConnectStr
        DB.DB_Provider = _DB_Provider
    End Sub

    Public Sub ReadDALConfigurations()

        _DB_Provider = ConfigurationSettings.AppSettings("DB_Provider")
        _DB_DataSource = ConfigurationSettings.AppSettings("DB_DataSource")
        _DB_Name = ConfigurationSettings.AppSettings("DB_Name")
        _DB_UserName = SecurityService.DecryptData(ConfigurationSettings.AppSettings("DB_UserName"))
        _DB_Password = SecurityService.DecryptData(ConfigurationSettings.AppSettings("DB_Password"))

        _ConnectStr = "Provider=" & _DB_Provider & ";Data Source=" & _DB_DataSource & ";User ID=" & _DB_UserName & ";Password=" & _DB_Password
        If _DB_Name <> "" Then _ConnectStr += ";Initial Catalog=" & _DB_Name

    End Sub

    Public Sub Insert(ByVal transaction As AuditData)
        Dim SQL1, SQL2, SQL As String
        Dim newTRANS_ID As Integer

        Try
            'DB.OpenConn(_ConnectStr)

            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "TRANS_ID", "SYS_LOG_SEQ.nextval", 4)
            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "TRANS_DATE", transaction.TransactionDate, DBUTIL.FieldTypes.ftDateTime)
            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "CATEGORY", transaction.Category & "", DBUTIL.FieldTypes.ftText)
            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "ACTION_DETAIL", Left(Trim(transaction.Action & ""), 250), DBUTIL.FieldTypes.ftText)
            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "USER_ID", transaction.UserId & "", DBUTIL.FieldTypes.ftText)
            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "DEPARTMENT_NAME", transaction.DeptName & "", DBUTIL.FieldTypes.ftText)
            DB.AddSQL(DBUTIL.opINSERT, SQL1, SQL2, "MACHINE_NAME", transaction.MachineName & "", DBUTIL.FieldTypes.ftText)

            SQL = DB.CombineSQL(DBUTIL.opINSERT, SQL1, SQL2, "SYS_LOGS", "")
            DB.ExecSQL(SQL)
            'DB.CloseConn()

        Catch ex As Exception
            'DB.CloseConn()
            Throw New DALException(ex.Message)
        End Try
    End Sub

    Public Function SearchAudit(ByVal TransactionFromDate As Date, ByVal TransactionToDate As Date, _
                                ByVal UserId As String, ByVal Deptname As String, ByVal Category As String, ByVal Action As String) As AuditDatas
        Dim results As New AuditDatas
        Dim DT As DataTable
        Dim DR As DataRow
        Dim SQL As String
        Dim CriteriaSQL As String = ""
        Dim CategorySQL As String = ""

        Try
            DB.OpenConn(_ConnectStr)

            'If UseStoredProc Then
            '    DB.InitParams()

            '    DB.AddParam("@TRANS_FROMDATE", TransactionFromDate, FieldTypes.ftDate)
            '    DB.AddParam("@TRANS_TODATE", TransactionToDate, FieldTypes.ftDate)
            '    DB.AddParam("@USER_ID", Replace(UserId, "*", "%") & "", FieldTypes.ftText)
            '    DB.AddParam("@CATEGORY", Replace(Category, "*", "%") & "", FieldTypes.ftText)
            '    DB.AddParam("@ACTION", Replace(Action, "*", "%") & "", FieldTypes.ftText)


            '    DT = GetDT(DB.ExecProcDS("SearchAudit"))
            'Else
            DB.AddCriteriaRange(CriteriaSQL, "TRANS_DATE", TransactionFromDate, TransactionToDate, DBUTIL.FieldTypes.ftDate)
            DB.AddCriteria(CriteriaSQL, "ACTION_DETAIL", Action, DBUTIL.FieldTypes.ftText)
            DB.AddCriteria(CriteriaSQL, "USER_ID", UserId, DBUTIL.FieldTypes.ftText)
            DB.AddCriteria(CriteriaSQL, "DEPARTMENT_NAME", Deptname, DBUTIL.FieldTypes.ftText)
            If Category = "ERROR" Then
                DB.AddCriteria(CriteriaSQL, "CATEGORY", Category, DBUTIL.FieldTypes.ftText)
            Else
                CategorySQL = " (CATEGORY = 'LOG' OR CATEGORY='MAIL' ) "
                If CriteriaSQL <> "" Then
                    CriteriaSQL += " AND  " + CategorySQL
                Else
                    CriteriaSQL = CategorySQL
                End If
            End If

            SQL = "SELECT * " & _
                  "FROM SYS_LOGS "
            If CriteriaSQL <> "" Then SQL += "WHERE " + CriteriaSQL
            SQL += " ORDER BY TRANS_ID DESC"


            DB.OpenDT(DT, SQL)
            'End If


            For Each DR In DT.Rows
                results.Add(New AuditData(DR("TRANS_DATE"), DR("USER_ID") & "", DR("DEPARTMENT_NAME") & "", _
                                DR("CATEGORY") & "", DR("ACTION_DETAIL") & "", _
                                DR("MACHINE_NAME") & ""))
            Next
            DB.CloseDT(DT)
            'DB.CloseConn()

        Catch ex As Exception
            'DB.CloseConn()
            results = Nothing
            Throw New DALException(ex.Message)
        End Try

        Return results
    End Function

End Class
