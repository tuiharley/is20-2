
Public Class DBUTIL

#Region "Internal member variables"
    Private _ConnectStr As String
    Private _DB_Provider As String
    Private _Params As New ArrayList
#End Region

#Region "Declarations"

    Public Const opINSERT = 1
    Public Const opUPDATE = 2
    Public Const opDELETE = 3

    Public Enum FieldTypes
        ftNumeric = 1
        ftText = 2
        ftDate = 3
        ftDateTime = 6
    End Enum
#End Region

#Region "Properties"

    Public Property ConnectStr() As String
        Get
            Return _ConnectStr
        End Get
        Set(ByVal Value As String)
            _ConnectStr = Value
        End Set
    End Property

    Public Property DB_Provider() As String
        Get
            Return _DB_Provider
        End Get
        Set(ByVal Value As String)
            _DB_Provider = Value
        End Set
    End Property

#End Region

    Public Sub New()
        InitParams()
    End Sub

    Protected Overrides Sub Finalize()
        _Params.Clear()
        _Params = Nothing
        MyBase.Finalize()
    End Sub

    Public Function OpenConn(ByVal ConnectStr As String) As OleDb.OleDbConnection
        _ConnectStr = ConnectStr
        Return OpenDBConn()
    End Function

    Public Function OpenConn(ByVal DB_Provider As String, ByVal DB_DataSource As String, ByVal DB_UserName As String, ByVal DB_Password As String, ByVal DB_Name As String) As OleDb.OleDbConnection
        _DB_Provider = DB_Provider
        _ConnectStr = "Provider=" & DB_Provider & ";Data Source=" & DB_DataSource & ";User ID=" & DB_UserName & ";Password=" & DB_Password
        If DB_Name <> "" Then _ConnectStr += ";Initial Catalog=" & DB_Name
        Return OpenDBConn()
    End Function

    Private Function OpenDBConn() As OleDb.OleDbConnection
        Dim Conn As New OleDb.OleDbConnection
        Dim I As Integer

        Try
            'Threading.Thread.CurrentThread.CurrentCulture = New Globalization.CultureInfo("th-TH")
            Conn.ConnectionString = _ConnectStr
            Conn.Open()

            If _DB_Provider = "" Then
                _DB_Provider = Conn.Provider.ToUpper
                I = _DB_Provider.IndexOf(".")
                If I >= 0 Then _DB_Provider = _DB_Provider.Substring(0, I)
            End If

            Return Conn
        Catch ex As Exception
            CloseConn(Conn)

            Throw ex
        End Try
    End Function

    '========================================
    ' Close Database Connection
    Public Sub CloseConn(ByRef Conn As OleDb.OleDbConnection)
        If Not (Conn Is Nothing) Then
            Try
                Conn.Close()
            Catch ex As Exception
            End Try
            Conn.Dispose()
            Conn = Nothing
        End If
    End Sub

    '========================================
    ' Begin Transaction
    Public Function BeginTrans(ByRef Conn As OleDb.OleDbConnection) As OleDb.OleDbTransaction
        If Not IsNothing(Conn) Then
            BeginTrans = Conn.BeginTransaction()
        Else
            Throw New Exception("Connection has not been initialized!")
        End If
    End Function

    '========================================
    ' Commit Transaction
    Public Sub CommitTrans(ByRef Trans As OleDb.OleDbTransaction)
        If Not IsNothing(Trans) Then
            Trans.Commit()
            Trans = Nothing
        End If
    End Sub

    '========================================
    ' Rollback Transaction
    Public Sub RollbackTrans(ByRef Trans As OleDb.OleDbTransaction)
        Try
            If Not IsNothing(Trans) Then
                Trans.Rollback()
            End If
        Catch ex As Exception
        End Try
        Trans = Nothing
    End Sub

    '========================================
    ' Open DataSet
    Public Function OpenDS(ByRef DS As DataSet, ByVal SQL As String, _
                    Optional ByVal Conn As OleDb.OleDbConnection = Nothing, _
                    Optional ByVal Trans As OleDb.OleDbTransaction = Nothing) As DataRow
        Dim DA As OleDb.OleDbDataAdapter

        Try
            If DS Is Nothing Then
                DS = New DataSet
            Else
                DS.Clear()
            End If

            If Not IsNothing(Conn) Then
                DA = New OleDb.OleDbDataAdapter(SQL, Conn)
                If Not IsNothing(Trans) Then
                    DA.SelectCommand.Transaction = Trans
                End If
            Else
                DA = New OleDb.OleDbDataAdapter(SQL, _ConnectStr)
            End If
            DA.Fill(DS)
            If IsNothing(Conn) AndAlso Not IsNothing(DA.SelectCommand.Connection) Then
                CloseConn(DA.SelectCommand.Connection)
            End If
            DA.Dispose()
            DA = Nothing

            If (DS.Tables.Count > 0) AndAlso (DS.Tables(0).Rows.Count > 0) Then
                Return DS.Tables(0).Rows(0)
            Else
                Return Nothing
            End If

        Catch ex As Exception
            If Not IsNothing(DA) Then
                If IsNothing(Conn) AndAlso Not IsNothing(DA.SelectCommand.Connection) Then
                    CloseConn(DA.SelectCommand.Connection)
                End If
                DA.Dispose()
                DA = Nothing
            End If

            Throw (ex)
        End Try
    End Function

    '========================================
    ' Close DataSet
    Public Sub CloseDS(ByRef DS As DataSet)
        Try
            If Not IsNothing(DS) Then DS.Dispose()
        Catch
        End Try
        DS = Nothing
    End Sub

    '========================================
    ' Open data table
    Public Function OpenDT(ByRef DT As DataTable, ByVal SQL As String, _
                    Optional ByVal Conn As OleDb.OleDbConnection = Nothing, _
                    Optional ByVal Trans As OleDb.OleDbTransaction = Nothing) As DataRow
        Dim DA As OleDb.OleDbDataAdapter

        Try

            If DT Is Nothing Then
                DT = New DataTable
            Else
                DT.Clear()
            End If

            If Not IsNothing(Conn) Then
                DA = New OleDb.OleDbDataAdapter(SQL, Conn)
                If Not IsNothing(Trans) Then
                    DA.SelectCommand.Transaction = Trans
                End If
            Else
                DA = New OleDb.OleDbDataAdapter(SQL, _ConnectStr)
            End If
            DA.Fill(DT)
            If IsNothing(Conn) AndAlso Not IsNothing(DA.SelectCommand.Connection) Then
                CloseConn(DA.SelectCommand.Connection)
            End If
            DA.Dispose()
            DA = Nothing

            If (DT.Rows.Count > 0) Then
                Return DT.Rows(0)
            Else
                Return Nothing
            End If

        Catch ex As Exception
            If Not IsNothing(DA) Then
                If IsNothing(Conn) AndAlso Not IsNothing(DA.SelectCommand.Connection) Then
                    CloseConn(DA.SelectCommand.Connection)
                End If
                DA.Dispose()
                DA = Nothing
            End If

            Throw (ex)
        End Try
    End Function

    '========================================
    ' Close data table
    Public Sub CloseDT(ByRef DT As DataTable)
        Try
            If Not IsNothing(DT) Then DT.Dispose()
        Catch
        End Try
        DT = Nothing
    End Sub

    '========================================
    ' Execute an SQL Command
    Public Function ExecSQL(ByVal SQL As String, Optional ByVal Conn As OleDb.OleDbConnection = Nothing, _
                    Optional ByVal Trans As OleDb.OleDbTransaction = Nothing) As Integer
        Dim tmpConn As OleDb.OleDbConnection = Conn
        Dim cmd As OleDb.OleDbCommand
        Dim rows As Integer = 0

        Try
            If IsNothing(Conn) Then tmpConn = OpenConn(_ConnectStr)
            cmd = New OleDb.OleDbCommand(SQL, tmpConn)
            If Not IsNothing(Trans) Then
                cmd.Transaction = Trans
            End If
            rows = cmd.ExecuteNonQuery()
            cmd.Dispose()
            cmd = Nothing
            If IsNothing(Conn) Then CloseConn(tmpConn)

            Return rows
        Catch ex As Exception
            If IsNothing(Conn) Then CloseConn(tmpConn)
            cmd.Dispose()
            cmd = Nothing
            Throw ex
        End Try
    End Function

    '========================================
    ' Lookup value from a SQL
    Public Function LookupSQL(ByVal SQL As String, _
                    Optional ByVal Conn As OleDb.OleDbConnection = Nothing, _
                    Optional ByVal Trans As OleDb.OleDbTransaction = Nothing) As Object
        Dim DT As DataTable
        Dim DR As DataRow
        Dim Value As Object = ""

        Try
            DR = OpenDT(DT, SQL, Conn, Trans)
            If Not IsNothing(DR) Then
                Value = DR.Item(0)
                If IsNothing(Value) OrElse IsDBNull(Value) Then Value = ""
            End If
            CloseDT(DT)
            Return Value
        Catch ex As Exception
        End Try
    End Function

    '========================================
    ' Lookup data in a table
    Public Function LookupData(ByVal usrTable As String, ByVal FieldName As String, ByVal usrCriteria As String, _
                    Optional ByVal Conn As OleDb.OleDbConnection = Nothing, _
                    Optional ByVal Trans As OleDb.OleDbTransaction = Nothing) As Object
        Dim SQL As String

        If usrCriteria <> "" Then
            SQL = " SELECT " & FieldName & "  FROM " & usrTable & " WHERE  " & usrCriteria
        Else
            SQL = " SELECT " & FieldName & "  FROM " & usrTable
        End If
        Return LookupSQL(SQL)
    End Function

    '========================================
    ' Initialize stored procedure parameters
    Public Sub InitParams()
        _Params.Clear()
    End Sub

    '========================================
    ' Add a stored procedure parameter
    Public Sub AddParam(ByVal ParamName As String, ByVal Value As Object, ByVal DataType As FieldTypes)
        Dim P As New OleDb.OleDbParameter(ParamName, Value)

        Select Case DataType
            Case FieldTypes.ftNumeric
                P.OleDbType = OleDb.OleDbType.Numeric
            Case FieldTypes.ftText
                P.OleDbType = OleDb.OleDbType.VarChar
                P.DbType = DbType.String
            Case FieldTypes.ftDate
                If Not IsDate(Value) OrElse CDbl(CDate(Value).ToOADate) = 0 Then P.Value = Nothing
                P.OleDbType = OleDb.OleDbType.Date
            Case FieldTypes.ftDateTime
                If Not IsDate(Value) OrElse CDbl(CDate(Value).ToOADate) = 0 Then P.Value = Nothing
                P.OleDbType = OleDb.OleDbType.Date
        End Select

        _Params.Add(P)
    End Sub

    '========================================
    ' Execute a stored procedure
    Public Function ExecProc(ByVal ProcName As String, ByVal Conn As OleDb.OleDbConnection, _
                    Optional ByVal Trans As OleDb.OleDbTransaction = Nothing) As Object
        Dim cmd As New OleDb.OleDbCommand(ProcName)
        Dim param As OleDb.OleDbParameter
        Dim I As Integer
        Dim results As Object = Nothing

        cmd.Connection = Conn
        cmd.CommandType = CommandType.StoredProcedure
        For I = 0 To _Params.Count - 1
            param = CType(_Params.Item(I), OleDb.OleDbParameter)
            cmd.Parameters.Add(param)
        Next

        cmd.ExecuteNonQuery()
        If cmd.Parameters.Contains("RETURN_VALUE") Then
            results = cmd.Parameters("RETURN_VALUE").Value
        End If

        cmd.Dispose()
        cmd = Nothing
        InitParams()

        Return results
    End Function



    '========================================
    ' Get Max Data

    Public Function GetMaxData(ByVal usrTable, ByVal FieldName, ByVal usrSQL)
        Dim sql As String

        sql = "SELECT MAX(" & FieldName & ") FROM " & usrTable
        If usrSQL & "" <> "" Then
            sql = sql & " WHERE " & usrSQL
        End If

        Return LookupSQL(sql)
    End Function

    '========================================
    ' Get Key Data
    Public Function GetNextData(ByVal usrTable As String, ByVal FieldName As String) As Long
        Dim cmd As OleDb.OleDbCommand
        Dim sql As String


        sql = " SELECT MAX(" & FieldName & ") FROM " & usrTable

        Return CLng("0" & LookupSQL(sql)) + 1


    End Function

    'Public Function GetNextSEQ(ByVal SequenceName As String)
    '    Dim SQL As String
    '    Dim NextVal

    '    SQL = "SELECT " + SequenceName + ".NextVal FROM DUAL"
    '    Return ExecSQL(SQL)
    'End Function


    'Public Function LookupSQL(ByVal SQL) As Object
    '    Dim Value As Object
    '    Dim DT As DataTable
    '    Dim DR As DataRow

    '    DR = OpenDT(DT, SQL)
    '    If Not IsNothing(DR) Then
    '        Value = DR.Item(0)
    '        If IsDBNull(Value) Then Value = ""
    '    End If
    '    CloseDT(DT)
    '    Return Value
    'End Function

    'Public Function LookupData(ByVal usrTable As String, ByVal FieldName As String, ByVal usrCriteria As String) As Object
    '    Dim SQL As String

    '    If usrCriteria <> "" Then
    '        SQL = " SELECT " & FieldName & "  FROM " & usrTable & " WHERE  " & usrCriteria
    '    Else
    '        SQL = " SELECT " & FieldName & "  FROM " & usrTable
    '    End If
    '    Return LookupSQL(SQL)
    'End Function

    Public Function LookupData2(ByVal usrTable As String, ByVal FieldName As String, ByVal usrCriteria As String, ByVal Field2Name As String, ByRef Field2Var As Object) As Object
        Dim SQL As String
        Dim Value, Value2 As Object
        Dim DT As DataTable
        Dim DR As DataRow

        SQL = "SELECT " & FieldName & ", " & Field2Name & " FROM " & usrTable
        If usrCriteria <> "" Then
            SQL = SQL + " WHERE  " & usrCriteria
        End If

        DR = OpenDT(DT, SQL)
        If Not IsNothing(DR) Then
            Value = DR(FieldName)
            Value2 = DR(Field2Name)
            If IsDBNull(Value) Then Value = ""
            If IsDBNull(Value2) Then Value2 = ""
            LookupData2 = Value
            Field2Var = Value2
        End If
        CloseDT(DT)
    End Function

    Public Function SQLDate(ByVal D As Date) As String
        Dim Y As Integer
        Dim DBFormat As String
        If IsDate(D) AndAlso (CDbl(D.ToOADate) > 0) Then
            DBFormat = Left(Trim(_DB_Provider), 7)
            Select Case DBFormat
                Case "MSDAORA"
                    Y = D.Year
                    If Y > 2500 Then Y = Y - 543
                    SQLDate = "TO_DATE('" & Y & "/" & D.Month & "/" & D.Day & "','YYYY/MM/DD')"
                Case Else
                    SQLDate = "convert(datetime," & (CDbl(D.ToOADate) - 2) & ")"
            End Select
        Else
            SQLDate = "NULL"
        End If
    End Function

    '========================================
    ' Format DateTime to Oracle SQL DateTime
    Public Function SQLDateTime(ByVal DT As Date) As String
        Dim Y As Integer
        Dim DBFormat As String
        If IsDate(DT) AndAlso (CDbl(DT.ToOADate) > 0) Then
            DBFormat = Left(Trim(_DB_Provider), 7)
            Select Case DBFormat
                Case "MSDAORA"
                    Y = DT.Year
                    If Y > 2500 Then Y = Y - 543
                    SQLDateTime = "TO_DATE('" & Y & "/" & DT.Month & "/" & DT.Day & " " & DT.Hour & ":" & DT.Minute & ":" & DT.Second & "','YYYY/MM/DD HH24:MI:SS')"
                Case Else
                    SQLDateTime = "convert(datetime," & (CDbl(DT.ToOADate) - 2) & ")"
            End Select
        Else
            SQLDateTime = "NULL"
        End If
    End Function

    Public Function AddCriteria(ByRef CriteriaSQL As String, ByVal FieldName As String, ByVal FieldValue As Object, ByVal FieldType As FieldTypes) As Boolean
        Dim Oper As String = "="
        Dim FVal As String

        FVal = CStr(FieldValue)

        If FVal <> "" Then
            If FVal.IndexOf("%") >= 0 Then
                Oper = " LIKE "
                FieldType = FieldTypes.ftText
            End If
            If FVal.StartsWith("<") Then
                If FVal.Substring(1, 1) = ">" Then
                    Oper = "<>"
                    FieldValue = FVal.Substring(2)
                Else
                    Oper = "<"
                    FieldValue = FVal.Substring(1)
                End If
            ElseIf FVal.StartsWith(">") Then
                Oper = ">"
                FieldValue = FVal.Substring(1)
            End If

            Select Case FieldType
                Case FieldTypes.ftNumeric
                    If IsNumeric(FieldValue) Then
                        FVal = CStr(FieldValue)
                    End If
                Case FieldTypes.ftText
                    FVal = "'" + Replace(CStr(FieldValue), "'", "''") + "'"
                Case FieldTypes.ftDate
                    If IsDate(FieldValue) AndAlso (CDbl(CDate(FieldValue).ToOADate) > 0) Then
                        FVal = SQLDate(CType(FieldValue, Date))
                    End If
                Case FieldTypes.ftDateTime
                    If IsDate(FieldValue) AndAlso (CDbl(CDate(FieldValue).ToOADate) > 0) Then
                        FVal = SQLDateTime(CType(FieldValue, Date))
                    End If
            End Select

            If FVal <> "" Then
                If CriteriaSQL <> "" Then CriteriaSQL += " AND "
                CriteriaSQL += FieldName + Oper + FVal
            End If
        End If
    End Function

    Public Function AddCriteriaRange(ByRef CriteriaSQL As String, ByVal FieldName As String, ByVal FromValue As Object, ByVal ToValue As Object, ByVal FieldType As FieldTypes, Optional ByVal ISRange As Boolean = False) As Boolean
        Dim FromVal, ToVal As String

        If FromValue & "" <> "" Then
            Select Case FieldType
                Case FieldTypes.ftNumeric
                    If IsNumeric(FromValue) Then FromVal = CStr(FromValue)
                    If IsNumeric(ToValue) Then ToVal = CStr(ToValue)
                Case FieldTypes.ftText
                    FromVal = "'" + Replace(CStr(FromValue), "'", "''") + "'"
                    If ToVal & "" <> "" Then ToVal = "'" + Replace(CStr(ToValue), "'", "''") + "'"
                Case FieldTypes.ftDate
                    If IsDate(FromValue) AndAlso (CDbl(CDate(FromValue).ToOADate) > 0) Then FromVal = SQLDate(CType(FromValue, Date))
                    If IsDate(ToValue) AndAlso (CDbl(CDate(ToValue).ToOADate) > 0) Then ToVal = SQLDate(DateAdd(DateInterval.Day, 1, CType(ToValue, Date)))
                Case FieldTypes.ftDateTime
                    If IsDate(FromValue) AndAlso (CDbl(CDate(FromValue).ToOADate) > 0) Then FromVal = SQLDateTime(CType(FromValue, Date))
                    If IsDate(ToValue) AndAlso (CDbl(CDate(ToValue).ToOADate) > 0) Then ToVal = SQLDateTime(CType(ToValue, Date))
            End Select
        End If

        'If FromVal & "" <> "" Then
        '    If ToVal & "" = "" Then
        '        Return AddCriteria(CriteriaSQL, FieldName, FromValue, FieldType)
        '    Else
        '        If CriteriaSQL <> "" Then CriteriaSQL += " AND "
        '        If FieldType = FieldTypes.ftDate Then
        '            CriteriaSQL += FieldName + ">=" + FromVal + " AND " + FieldName + "<" + ToVal
        '        Else
        '            CriteriaSQL += FieldName + " BETWEEN " + FromVal + " AND " + ToVal
        '        End If
        '    End If
        'End If
        If FromVal & "" <> "" Then
            If ToVal & "" = "" Then
                If ISRange = True AndAlso (FieldType = FieldTypes.ftDate Or FieldType = FieldTypes.ftDateTime) Then
                    If CriteriaSQL <> "" Then CriteriaSQL += " AND "
                    CriteriaSQL += FieldName + ">=" + FromVal
                Else
                    Return AddCriteria(CriteriaSQL, FieldName, FromValue, FieldType)
                End If
            Else
                If CriteriaSQL <> "" Then CriteriaSQL += " AND "
                If FieldType = FieldTypes.ftDate Then
                    CriteriaSQL += FieldName + ">=" + FromVal + " AND " + FieldName + "<" + ToVal
                Else
                    CriteriaSQL += FieldName + " BETWEEN " + FromVal + " AND " + ToVal
                End If
            End If
        Else
            If ToValue & "" <> "" Then
                Select Case FieldType
                    Case FieldTypes.ftDate
                        If IsDate(ToValue) AndAlso (CDbl(CDate(ToValue).ToOADate) > 0) Then ToVal = SQLDate(DateAdd(DateInterval.Day, 1, CType(ToValue, Date)))
                    Case FieldTypes.ftDateTime
                        If IsDate(ToValue) AndAlso (CDbl(CDate(ToValue).ToOADate) > 0) Then ToVal = SQLDateTime(CType(ToValue, Date))
                End Select
            End If
            If ToVal & "" <> "" Then
                If ISRange = True AndAlso (FieldType = FieldTypes.ftDate Or FieldType = FieldTypes.ftDateTime) Then
                    If CriteriaSQL <> "" Then CriteriaSQL += " AND "
                    CriteriaSQL += FieldName + "<" + ToVal
                End If
            End If
        End If
    End Function

    ' Format Value to SQL Command 
    Public Function SQLValue(ByVal Value As Object, ByVal DataType As Integer)
        If Value & "" = "" Then
            SQLValue = "NULL"
        Else
            Select Case DataType
                Case FieldTypes.ftDate
                    If UCase(TypeName(Value)) = "DATE" Then
                        SQLValue = SQLDate(Value)
                    Else
                        SQLValue = UCase(Value & "")
                    End If
                Case FieldTypes.ftDateTime
                    If UCase(TypeName(Value)) Like "DATE*" Then
                        SQLValue = SQLDateTime(Value)
                    Else
                        SQLValue = UCase(Value & "")
                    End If
                Case FieldTypes.ftNumeric
                    SQLValue = CDbl(Value)
                Case FieldTypes.ftText
                    SQLValue = "'" & Replace(Value, "'", "''") & "'"
                Case Else
                    SQLValue = Value
            End Select
        End If

    End Function

    ' Add Parameter to INSERT/UPDATE SQL Command
    Public Function AddSQL(ByRef operation, ByRef SQL1, ByRef SQL2, ByVal FieldName, ByVal FieldValue, ByVal ColType)
        Dim Data, I

        If FieldName <> "" Then
            Data = CStr(SQLValue(FieldValue, ColType))
            If operation = opINSERT Then
                If SQL1 <> "" Then
                    SQL1 = SQL1 + ", "
                    SQL2 = SQL2 + ", "
                End If
                SQL1 = SQL1 + FieldName
                SQL2 = SQL2 + Data
            Else    ' UPDATE
                If SQL1 <> "" Then SQL1 = SQL1 + ", "
                SQL1 = SQL1 + FieldName + "=" + Data
            End If
        End If
    End Function

    ' Combine Parameter for INSERT/UPDATE SQL Command
    Public Function CombineSQL(ByVal operation, ByRef SQL1, ByRef SQL2, ByVal TableName, ByVal CriteriaSQL)
        Dim SQL, I
        'default Stamp updated record
        'AddSQL(operation, SQL1, SQL2, "USER_UPDATED", gsUserName, CellText)
        'AddSQL(operation, SQL1, SQL2, "DATE_UPDATED", "SYSDATE", CellDate)

        Select Case operation
            Case opINSERT
                SQL = "INSERT INTO " + TableName + " (" + SQL1 + ") VALUES (" + SQL2 + ")"
            Case opUPDATE
                SQL = "UPDATE " + TableName + " SET " + SQL1
                I = InStr(CriteriaSQL, "WHERE")
                If InStr(CriteriaSQL, "WHERE") > 0 Then
                    If UCase(Left(LTrim(CriteriaSQL), 3)) <> "AND" Then
                        SQL = SQL + " AND " + CriteriaSQL
                    Else
                        SQL = SQL + " " + CriteriaSQL
                    End If
                ElseIf CriteriaSQL <> "" Then
                    If UCase(Left(LTrim(CriteriaSQL), 3)) = "AND" Then
                        SQL = SQL + " WHERE " + Mid(LTrim(CriteriaSQL), 5)
                    Else
                        SQL = SQL + " WHERE " + CriteriaSQL
                    End If
                End If
            Case opDELETE
                SQL = "DELETE FROM " + TableName
                If CriteriaSQL <> "" Then
                    If UCase(Left(LTrim(CriteriaSQL), 3)) = "AND" Then
                        SQL = SQL + " WHERE " + Mid(LTrim(CriteriaSQL), 5)
                    Else
                        SQL = SQL + " WHERE " + CriteriaSQL
                    End If
                End If

        End Select
        If operation = opINSERT Then
        Else    ' UPDATE
        End If
        CombineSQL = SQL

    End Function

    ''========================================
    'Public Function OpenDS(ByRef DS As DataSet, ByVal SQL As String, Optional ByVal DataName As String = "") As DataSet
    '    Dim DA As OleDb.OleDbDataAdapter

    '    If Not DS Is Nothing Then
    '        DS.Dispose()
    '        DS = Nothing
    '    End If

    '    'If Not IsNothing(Conn) Then
    '    '    DA = New OleDb.OleDbDataAdapter(SQL, Conn)
    '    'Else
    '    DA = New OleDb.OleDbDataAdapter(SQL, _ConnectStr)
    '    'End If

    '    DS = New DataSet(DataName + "DS")
    '    DA.Fill(DS, DataName)
    '    DA.Dispose()
    '    DA = Nothing

    '    Return DS


    'End Function

    Public Function GetDT(ByVal DS As DataSet) As DataTable
        If Not IsNothing(DS) AndAlso (DS.Tables.Count > 0) AndAlso (DS.Tables(0).Rows.Count > 0) Then
            Return DS.Tables(0)
        Else
            Return Nothing
        End If
    End Function

    Public Function GetDR(ByVal DS As DataSet) As DataRow
        If Not IsNothing(DS) AndAlso (DS.Tables.Count > 0) AndAlso (DS.Tables(0).Rows.Count > 0) Then
            Return DS.Tables(0).Rows(0)
        Else
            Return Nothing
        End If
    End Function

    Public Function GetDRV(ByVal DV As DataView) As DataRowView
        If Not IsNothing(DV) AndAlso (DV.Count > 0) Then
            Return DV.Item(0)
        Else
            Return Nothing
        End If
    End Function

    Public Function QueryData(ByVal SQL As String, Optional ByVal ConnectionString As String = "") As DataSet
        Dim DA As OleDb.OleDbDataAdapter
        Dim DS As DataSet

        Try
            If SQL.ToUpper.StartsWith("SELECT") Then
                If ConnectionString = "" Then ConnectionString = _ConnectStr
                DA = New OleDb.OleDbDataAdapter(SQL, ConnectionString)
                DS = New DataSet("ICTDir_DS")
                DA.Fill(DS, "DS_Data")
                If Not IsNothing(DA.SelectCommand.Connection) Then
                    CloseConn(DA.SelectCommand.Connection)
                End If
                DA.Dispose()
                DA = Nothing

                Return DS
            Else
                If Not IsNothing(DA) Then
                    If Not IsNothing(DA.SelectCommand.Connection) Then
                        CloseConn(DA.SelectCommand.Connection)
                    End If
                    DA.Dispose()
                    DA = Nothing
                End If
                Return Nothing
            End If
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

End Class
