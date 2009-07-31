Imports System.Globalization
Imports System.Threading
Namespace DAL

    Public Class Component

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

        Protected Overrides Sub Finalize()
            DB = Nothing
            MyBase.Finalize()
        End Sub

        Public Function InternetLogin(ByVal userName As String, ByVal password As String) As DataSet
            Dim status As String = ""
            Dim SQL, CriteriaSQL As String
            Dim DS As DataSet

            Try

                If userName <> "" And password <> "" Then

                    If userName <> "" Then DB.AddCriteria(CriteriaSQL, "USER_NAME", userName, DBUTIL.FieldTypes.ftText)
                    If password <> "" Then DB.AddCriteria(CriteriaSQL, "PASSWORD", password, DBUTIL.FieldTypes.ftText)


                    SQL = " SELECT  *  " & _
                                 " FROM APPR_CUST_USERS  "
                    If CriteriaSQL <> "" Then SQL &= " WHERE  " & CriteriaSQL

                    DB.OpenDS(DS, SQL)
                    Return DS
                End If
            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try

        End Function

        Public Function LoadInplantList(ByVal CompanyID As String, Optional ByVal AddCri As String = "") As DataSet
            Dim status As String = ""
            Dim SQL, CriteriaSQL As String
            Dim DA As OleDb.OleDbDataAdapter
            Dim DS As DataSet

            Try

                If CompanyID <> "" Then

                    'SQL = " SELECT     VCM.CUST_ID AS SCUST_ID, VCM.SHIP_TO, VCM.CUST_NAME AS SCUST_NAME, VCM.CUST_ABBR, " & _
                    '     " CP.PERSON_NAME AS PERSON_NAME , LCM.DESCRIPTION AS METHOD_NAME, LS.DESCRIPTION AS STATUS_NAME, " & _
                    '     " LCT.DESCRIPTION AS TYPE_NAME, VCA.ADDRESS, VCA.TUMBOL, VCA.AMPHUR, VCA.PROVINCE_NAME, VCA.POST_CODE, CT.*, LIT.DESCRIPTION AS INPL_NAME " & _
                    '     " FROM  LSTCONT_METHOD LCM, CONTACTS CT, CONTACT_PERSONS CP, LSTCONT_TYPE LCT, LSTCONT_STATUS LS, " & _
                    '     " LSTINPL_TYPE LIT,V_CUSTOMERS VCM, V_CUST_ADDRESS VCA " & _
                    '     " WHERE CT.INPL_TYPE = LIT.INPL_TYPE (+) AND LCM.CONT_METHOD (+) = CT.CONT_METHOD AND CT.CONT_ID = CP.CONT_ID (+) " & _
                    '     " AND CT.CONT_TYPE = LCT.CONT_TYPE (+) AND  CT.CONT_STATUS = LS.CONT_STATUS (+) AND " & _
                    '     " CT.CUST_ID = VCM.SHIP_TO AND VCM.SHIP_TO = VCA.CUST_ID (+)  AND CT.CUST_ID='" & CompanyID & "'"

                    SQL = " SELECT     VCM.CUST_ID AS SCUST_ID, VCM.SHIP_TO, VCM.CUST_NAME AS SCUST_NAME, VCM.CUST_ABBR, " & _
                           " LCM.DESCRIPTION AS METHOD_NAME, LS.DESCRIPTION AS STATUS_NAME,LCT.DESCRIPTION AS TYPE_NAME, VCA.ADDRESS,  " & _
                           " VCA.TUMBOL, VCA.AMPHUR, VCA.PROVINCE_NAME, VCA.POST_CODE, CT.*, LIT.DESCRIPTION AS INPL_NAME " & _
                           " FROM  LSTCONT_METHOD LCM, CONTACTS CT, LSTCONT_TYPE LCT, LSTCONT_STATUS LS, " & _
                           " LSTINPL_TYPE LIT,V_CUSTOMERS VCM, V_CUST_ADDRESS VCA " & _
                           " WHERE CT.INPL_TYPE = LIT.INPL_TYPE (+) AND LCM.CONT_METHOD (+) = CT.CONT_METHOD  " & _
                           " AND CT.CONT_TYPE = LCT.CONT_TYPE (+) AND  CT.CONT_STATUS = LS.CONT_STATUS (+) AND " & _
                           " CT.CUST_ID = VCM.SHIP_TO AND VCM.SHIP_TO = VCA.CUST_ID (+)  AND CT.CUST_ID='" & CompanyID & "'"

                    If AddCri <> "" Then
                        SQL = SQL + " AND " + AddCri
                    End If
                    SQL = SQL + " ORDER BY CT.CONT_DATE DESC "
                    DB.OpenDS(DS, SQL)
                    Return DS
                End If

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try

        End Function

        Public Function LoadContactData(ByVal KeyId As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try

                SQL = " SELECT CT.*, VCM.CUST_NAME AS CUSTOMER, VCM.CUST_ABBR, " & _
                             " LCM.DESCRIPTION AS METHOD_NAME, LCT.DESCRIPTION AS TYPE_NAME, " & _
                             " LCS.DESCRIPTION AS STATUS_NAME, LIT.DESCRIPTION AS INPL_NAME " & _
                             " FROM CONTACTS CT, LSTINPL_TYPE LIT, LSTCONT_STATUS LCS, " & _
                             " LSTCONT_TYPE LCT, LSTCONT_METHOD LCM, V_CUSTOMERS VCM " & _
                             " WHERE CT.INPL_TYPE = LIT.INPL_TYPE (+) AND CT.CONT_STATUS = LCS.CONT_STATUS (+) " & _
                             " AND CT.CONT_TYPE = LCT.CONT_TYPE (+) AND CT.CONT_METHOD = LCM.CONT_METHOD (+) " & _
                             " AND CT.CUST_ID = VCM.SHIP_TO (+) "

                If KeyId <> "" Then
                    SQL = SQL + " AND CT.CONT_ID='" & KeyId & "'"
                End If

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadCompanyData(ByVal KeyId As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try


                SQL = " SELECT VCM.CUST_ID, VCM.CUST_NUM, VCM.SHIP_TO, VCM.CUST_NAME, VCM.CUST_ABBR, VCA.ADDRESS, VCA.TUMBOL, VCA.AMPHUR, " & _
                             " VCA.PROVINCE_NAME, VCA.POST_CODE, VCA.TEL_NO, VCA.FAX_NO, VCA.BUS_TYPE_NAME, VCA.PIPE_NAME, VCM.OPERATE_NAME, VCE.CUST_ENAME " & _
                             " FROM V_CUSTOMERS VCM, V_CUST_ADDRESS VCA, V_CUST_ENG VCE " & _
                             " WHERE  VCM.SHIP_TO = VCA.CUST_ID AND VCM.SHIP_TO = VCE.CUST_ID (+)  AND VCM.SHIP_TO='" & KeyId & "'"


                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadPersonContData(ByVal KeyId As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try

                SQL = " SELECT * FROM CONTACT_PERSONS "
                If KeyId <> "" Then
                    SQL = SQL + " WHERE CONT_ID='" & KeyId & "'"
                End If

                SQL = SQL + " ORDER BY RANK_NO"
                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadNews(ByVal NewsID As Decimal, ByVal HeadLine As String, ByVal StartDate As String, ByVal EndDate As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(NewsID) AndAlso NewsID <> 0 Then DB.AddCriteria(CriteriaSQL, "NEWS_ID", NewsID, DBUTIL.FieldTypes.ftNumeric)

                If HeadLine <> "" Then DB.AddCriteria(CriteriaSQL, "HEADLINE", HeadLine, DBUTIL.FieldTypes.ftText)

                If StartDate <> "" And EndDate <> "" Then DB.AddCriteriaRange(CriteriaSQL, "NEWS_DATE", StartDate, EndDate, DBUTIL.FieldTypes.ftDateTime)

                SQL = " SELECT NEWS.*,DECODE(DEST_TYPE,1,'ไฟล์',2,'URL',3,'ข้อความ') AS SOURCE_TYPE FROM NEWS"
                If CriteriaSQL <> "" Then SQL &= " WHERE " & CriteriaSQL
                SQL &= " ORDER BY NEWS_DATE DESC "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadEmergencyEvent(ByVal ChangeID As Integer, ByVal HeadLine As String, ByVal StartDate As String, ByVal EndDate As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(ChangeID) AndAlso ChangeID <> 0 Then DB.AddCriteria(CriteriaSQL, "EVENT_ID", ChangeID, DBUTIL.FieldTypes.ftNumeric)

                If HeadLine <> "" Then DB.AddCriteria(CriteriaSQL, "TITLE", HeadLine, DBUTIL.FieldTypes.ftText)

                If StartDate <> "" And EndDate <> "" Then DB.AddCriteriaRange(CriteriaSQL, "EVENT_DATE", StartDate, EndDate, DBUTIL.FieldTypes.ftDateTime)

                SQL = " SELECT EMERGENCY_EVENT.*,DECODE(FILENAME,NULL,NULL,'X') AS SOURCE_TYPE FROM EMERGENCY_EVENT"
                If CriteriaSQL <> "" Then SQL &= " WHERE " & CriteriaSQL
                SQL &= " ORDER BY EVENT_DATE DESC "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function ShowEmergencyEvent(ByVal ChangeID As Integer, ByVal HeadLine As String, ByVal StartDate As String, ByVal EndDate As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(ChangeID) AndAlso ChangeID <> 0 Then DB.AddCriteria(CriteriaSQL, "EVENT_ID", ChangeID, DBUTIL.FieldTypes.ftNumeric)

                If HeadLine <> "" Then DB.AddCriteria(CriteriaSQL, "TITLE", HeadLine, DBUTIL.FieldTypes.ftText)

                If StartDate <> "" And EndDate <> "" Then DB.AddCriteriaRange(CriteriaSQL, "EVENT_DATE", StartDate, EndDate, DBUTIL.FieldTypes.ftDateTime)

                SQL = " SELECT EMERGENCY_EVENT.*,DECODE(FILENAME,NULL,NULL,'X') AS SOURCE_TYPE,DECODE(EVENT_DATE," & SQLDate(Today) & ",'HOT',NULL) AS SHOW_HOT " & _
                             " FROM EMERGENCY_EVENT WHERE ROWNUM < 11 "
                If CriteriaSQL <> "" Then SQL &= " AND " & CriteriaSQL
                SQL &= " ORDER BY EVENT_DATE DESC "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadEmergency(ByVal KeyId As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try


                SQL = "SELECT * FROM EMERGENCY WHERE CUST_ID = '" & KeyId & "'"

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadPersonalData(ByVal KeyId As String, ByVal AddCri As String) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String
            Dim DS As DataSet
            Try
                SQL = "SELECT CP.*,CP.TITLE || CP.FNAME || ' ' || CP.LNAME AS PERSON_NAME,LL.DESCRIPTION AS LEVEL_DESC FROM  CONT_PERSONS CP, LSTPERSON_LEVEL LL " & _
                             " WHERE CP.CUST_ID = '" & KeyId & "' AND CP.PERSON_LEVEL= LL.PERSON_LEVEL(+) "
                If AddCri <> "" Then
                    SQL = SQL + " AND " + AddCri
                End If
                SQL += " ORDER BY CP.TITLE,CP.FNAME,CP.LNAME"
                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function SaveAnnounceFile(ByVal DataId As String, ByVal SysFiletype As String, ByVal UserFile As String, ByRef usrsysFilename As String, ByVal FType As String, ByVal AnnName As String)
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim SysFileName As String
            Dim ImgName As String

            Try
                'DB.OpenConn(_ConnectStr)
                SQL = "" : SQL1 = "" : SQL2 = ""
                ImgName = "IMG_" & AnnName
                Select Case FType
                    Case "IMG_ATTACH"
                        SysFileName = ImgName & "_" & DataId & SysFiletype
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "IMAGE_FILE", SysFileName, DB.FieldTypes.ftText)
                    Case "DOC_ATTACH"
                        SysFileName = AnnName & "_" & DataId & SysFiletype
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "ATTACH_FILE", SysFileName, DB.FieldTypes.ftText)
                End Select
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", UserFile, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "ANNOUNCES", "ANNOUNCE_ID=" & DB.SQLValue(DataId, DB.FieldTypes.ftNumeric))
                usrsysFilename = SysFileName
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                Return ""

            Catch ex As Exception
                'DB.CloseConn()
                Return "เกิดข้อผิดพลาดจากการ  Upload File ข้อมูล : " & ex.Message
            End Try
        End Function

        Public Sub DeleteAnnounceFile(ByVal DataID As Decimal, ByVal UserId As String, ByVal FileType As String)
            Dim SQL, SQL1, SQL2 As String
            Dim conn As OleDb.OleDbConnection

            Try
                'DB.OpenConn(_ConnectStr)

                SQL = "" : SQL1 = "" : SQL2 = ""
                Select Case FileType
                    Case "DOC_CLEAR"
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "ATTACH_FILE", "", DB.FieldTypes.ftText)
                    Case "IMG_CLEAR"
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "IMAGE_FILE", "", DB.FieldTypes.ftText)
                End Select

                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", UserId, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "ANNOUNCES", "ANNOUNCE_ID=" & DB.SQLValue(DataID, DB.FieldTypes.ftNumeric))
                DB.ExecSQL(SQL)
                'DB.CloseConn()

            Catch ex As Exception
                DB.CloseConn(conn)
                Throw New DALException(ex.Message)
            End Try
        End Sub

        Public Function LoadAnnounce(ByVal AnnID As Decimal, ByVal Title As String, ByVal StartDate As String, ByVal EndDate As String, ByVal AnnType As Integer, Optional ByVal AddCri As String = "") As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(AnnID) AndAlso AnnID <> 0 Then DB.AddCriteria(CriteriaSQL, "ANN.ANNOUNCE_ID", AnnID, DBUTIL.FieldTypes.ftNumeric)

                If Title <> "" Then DB.AddCriteria(CriteriaSQL, "ANN.TITLE", Title, DBUTIL.FieldTypes.ftText)

                If StartDate <> "" And EndDate <> "" Then DB.AddCriteriaRange(CriteriaSQL, "ANN.ANNOUNCE_DATE", StartDate, EndDate, DBUTIL.FieldTypes.ftDateTime)

                If IsNumeric(AnnType) AndAlso AnnType <> 0 Then DB.AddCriteria(CriteriaSQL, "ANN.ANNOUNCE_TYPE", AnnType, DBUTIL.FieldTypes.ftNumeric)

                'SQL = " SELECT ANN.*, LAT.ANNOUNCE_TYPE_DESC,DECODE(ANN.SOURCE_FLAG,'T','ข้อความ','F','ไฟล์','U','URL') AS SOURCE_DESC, " & _
                '             " ANF.ORIGIN_FILE, ANF.FILE_ID, ANF.SYS_FILE " & _
                '             " FROM ANNOUNCES ANN, LSTANNOUNCE_TYPE LAT,ANNOUNCE_FILES ANF " & _
                '             " WHERE ANN.ANNOUNCE_ID=ANF.ANNOUNCE_ID(+) AND ANN.ANNOUNCE_TYPE = LAT.ANNOUNCE_TYPE (+) "

                SQL = " SELECT ANN.*, LAT.ANNOUNCE_TYPE_DESC,DECODE(ANN.SOURCE_FLAG,'T','ข้อความ','F','ไฟล์','U','URL') AS SOURCE_DESC " & _
                             " FROM ANNOUNCES ANN, LSTANNOUNCE_TYPE LAT " & _
                             " WHERE  ANN.ANNOUNCE_TYPE = LAT.ANNOUNCE_TYPE (+) "
                If CriteriaSQL <> "" Then SQL &= " AND " & CriteriaSQL
                If AddCri <> "" Then SQL &= " AND " & AddCri

                SQL &= " ORDER BY ANN.ANNOUNCE_DATE DESC "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function SaveAnnounceData(ByRef AnnID As Decimal, ByVal Title As String, ByVal AnnDate As String, ByVal AnnType As Integer, _
                                                                        ByVal Display As String, ByVal Detail As String, ByVal ExpireDate As String, ByVal DisplayFlag As String, ByVal Uname As String) As String
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim DR As DataRow
            Dim IsNewData As Boolean
            Dim op As Integer

            Try
                'DB.OpenConn(_ConnectStr)
                SQL = "" : SQL1 = "" : SQL2 = ""

                If AnnID <> 0 Then
                    op = DB.opUPDATE
                Else
                    op = DB.opINSERT
                    MaxID = ToLong(DB.GetMaxData("ANNOUNCES", "ANNOUNCE_ID", "")) + 1
                    AnnID = MaxID
                    DB.AddSQL(op, SQL1, SQL2, "ANNOUNCE_ID", AnnID, DB.FieldTypes.ftNumeric)
                End If
                DB.AddSQL(op, SQL1, SQL2, "TITLE", Title, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "ANNOUNCE_DATE", AppDateValue(AnnDate), DB.FieldTypes.ftDate)
                DB.AddSQL(op, SQL1, SQL2, "ANNOUNCE_TYPE", AnnType, DB.FieldTypes.ftNumeric)
                DB.AddSQL(op, SQL1, SQL2, "DETAIL", Detail, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "EXPIRE_DATE", AppDateValue(ExpireDate), DB.FieldTypes.ftDate)
                DB.AddSQL(op, SQL1, SQL2, "SOURCE_FLAG", Display, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "DISPLAY_FLAG", DisplayFlag, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDateTime)
                DB.AddSQL(op, SQL1, SQL2, "USER_UPDATED", Uname, DB.FieldTypes.ftText)

                SQL = DB.CombineSQL(op, SQL1, SQL2, "ANNOUNCES", "ANNOUNCE_ID=" & DB.SQLValue(AnnID, DB.FieldTypes.ftNumeric))
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                SaveAnnounceData = ""

            Catch ex As Exception
                'DB.CloseConn()
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function DeleteAnnounceData(ByVal DataKey As Decimal) As String
            Dim SQL As String
            Dim conn As OleDb.OleDbConnection
            Try
                DB.OpenConn(_ConnectStr)
                SQL = "DELETE FROM ANNOUNCES WHERE ANNOUNCE_ID = " & DataKey & ""
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                DeleteAnnounceData = ""

            Catch ex As Exception
                DB.CloseConn(conn)
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadVendorList(ByVal VendorID As Integer, ByVal VendorGrp As Integer) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(VendorID) AndAlso VendorID <> 0 Then DB.AddCriteria(CriteriaSQL, "VENDOR_ID", VendorID, DBUTIL.FieldTypes.ftNumeric)


                If IsNumeric(VendorGrp) AndAlso VendorGrp <> 0 Then DB.AddCriteria(CriteriaSQL, "VENDOR_GROUP", VendorGrp, DBUTIL.FieldTypes.ftNumeric)


                SQL = " SELECT * FROM VENDORS"
                If CriteriaSQL <> "" Then SQL &= " WHERE " & CriteriaSQL
                SQL &= " ORDER BY VENDOR_ID "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadDCQList(ByVal ShipTo As String, ByVal CondType As String, ByVal VFrom As DateTime, ByVal VTo As DateTime) As DataSet
            Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try

                SQL = " SELECT RATE,to_char(VALID_ON,'dd/mm/yyyy') VALID_ON,to_char(VALID_TO,'dd/mm/yyyy') VALID_TO"
                SQL &= " FROM SAP_GAS_NGR_DCQ@TMASTER.WORLD"
                SQL &= " WHERE SHIP_TO='" & ShipTo & "' "
                SQL &= " AND COND_TYPE = '" & CondType & "'"
                SQL &= " AND ( to_date('" & VFrom.ToString("dd/MM/yyyy") & "','dd/mm/yyyy') BETWEEN VALID_ON AND VALID_TO  OR"
                SQL &= " to_date('" & VTo.ToString("dd/MM/yyyy") & "','dd/mm/yyyy') BETWEEN VALID_ON AND VALID_TO  )"

                'SQL &= " AND (VALID_ON BETWEEN to_date('" & VFrom.ToString("dd/MM/yyyy") & "','dd/mm/yyyy') AND to_date('" & VTo.ToString("dd/MM/yyyy") & "','dd/mm/yyyy') "
                'SQL &= " OR VALID_TO BETWEEN to_date('" & VFrom.ToString("dd/MM/yyyy") & "','dd/mm/yyyy') AND to_date('" & VTo.ToString("dd/MM/yyyy") & "','dd/mm/yyyy'))"

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function SaveEmergencyEvent(ByRef ChangeID As Integer, ByVal Title As String, ByVal DestType As Integer, ByVal Destination As String, ByVal EventDate As String, ByVal EventTime As String, ByVal ExpireDate As String, ByVal Uname As String, ByVal FileName As String) As String
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim DR As DataRow
            Dim IsNewData As Boolean
            Dim op As Integer

            Try
                'DB.OpenConn(_ConnectStr)
                SQL = "" : SQL1 = "" : SQL2 = ""

                If ChangeID <> 0 Then
                    op = DB.opUPDATE
                Else
                    op = DB.opINSERT
                    MaxID = ToLong(DB.GetMaxData("EMERGENCY_EVENT", "EVENT_ID", "")) + 1
                    ChangeID = MaxID
                    DB.AddSQL(op, SQL1, SQL2, "EVENT_ID", ChangeID, DB.FieldTypes.ftNumeric)
                End If
                DB.AddSQL(op, SQL1, SQL2, "TITLE", Title, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "DEST_TYPE", DestType, DB.FieldTypes.ftNumeric)
                DB.AddSQL(op, SQL1, SQL2, "DESTINATION", Destination, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "EVENT_DATE", AppDateValue(EventDate), DB.FieldTypes.ftDate)
                DB.AddSQL(op, SQL1, SQL2, "EVENT_TIME", AppFormatTime(EventTime), DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDateTime)
                DB.AddSQL(op, SQL1, SQL2, "USER_UPDATED", Uname, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "EXPIRE_DATE", AppDateValue(ExpireDate), DB.FieldTypes.ftDateTime)
                DB.AddSQL(op, SQL1, SQL2, "FILENAME", FileName, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(op, SQL1, SQL2, "EMERGENCY_EVENT", "EVENT_ID=" & DB.SQLValue(ChangeID, DB.FieldTypes.ftNumeric))
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                SaveEmergencyEvent = ""

            Catch ex As Exception
                'DB.CloseConn()
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function DeleteEmergencyEvent(ByVal DataKey As Integer) As String
            Dim SQL As String

            Try
                'DB.OpenConn(_ConnectStr)
                SQL = "DELETE FROM EMERGENCY_EVENT WHERE EVENT_ID = " & DataKey & ""
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                DeleteEmergencyEvent = ""

            Catch ex As Exception
                'DB.CloseConn()
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function AttachFileEmergencyEvent(ByVal DataId As String, ByVal SysFiletype As String, ByVal UserFile As String, ByRef usrsysFilename As String, ByVal FType As String)
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim SysFileName As String

            Try
                'DB.OpenConn(_ConnectStr)
                SQL = "" : SQL1 = "" : SQL2 = ""
                Select Case FType
                    Case "DOC_ATTACH"
                        SysFileName = "event" & "_" & DataId & SysFiletype
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "FILENAME", SysFileName, DB.FieldTypes.ftText)
                End Select
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", UserFile, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "EMERGENCY_EVENT", "EVENT_ID=" & DB.SQLValue(DataId, DB.FieldTypes.ftNumeric))
                usrsysFilename = SysFileName
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                Return ""

            Catch ex As Exception
                'DB.CloseConn()
                Return "เกิดข้อผิดพลาดจากการ  Upload File ข้อมูล : " & ex.Message
            End Try
        End Function

        Public Sub DeleteAttachFileEmergencyEvent(ByVal DataID As Decimal, ByVal UserId As String)
            Dim SQL, SQL1, SQL2 As String

            Try
                'DB.OpenConn(_ConnectStr)

                SQL = "" : SQL1 = "" : SQL2 = ""

                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "FILENAME", "", DB.FieldTypes.ftText)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", UserId, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "EMERGENCY_EVENT", "EVENT_ID=" & DB.SQLValue(DataID, DB.FieldTypes.ftNumeric))
                DB.ExecSQL(SQL)
                'DB.CloseConn()

            Catch ex As Exception
                'DB.CloseConn()
                Throw New DALException(ex.Message)
            End Try
        End Sub

        Public Function LoadFaqList(ByVal FaqID As Integer) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(FaqID) AndAlso FaqID <> 0 Then DB.AddCriteria(CriteriaSQL, "FAQ_ID", FaqID, DBUTIL.FieldTypes.ftNumeric)


                SQL = " SELECT * FROM FAQS"
                If CriteriaSQL <> "" Then SQL &= " WHERE " & CriteriaSQL
                SQL &= " ORDER BY FAQ_ID "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function LoadCurrencyList(ByVal MM As Integer, ByVal YY As Integer) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Dim OYY As Integer

            Try
                If YY <> 0 AndAlso MM <> 0 Then
                    If YY < 2400 Then
                        OYY = YY + 543
                    Else
                        OYY = YY - 543
                    End If
                    CriteriaSQL = " TO_CHAR(EX_DATE,'MM') = " & MM
                    CriteriaSQL += " AND ( TO_CHAR(EX_DATE,'YYYY') = " & YY & " OR TO_CHAR(EX_DATE,'YYYY') = " & OYY & ") "
                End If

                '*****************For PTT ********************
                SQL = " SELECT DISTINCT * FROM V_CURRENCY WHERE CUR_TYPE='B' AND INTER_CUR='US4' AND THB_CUR='THB' "
                '*****************For INTERSOL ********************
                'SQL = " SELECT DISTINCT * FROM V_CURRENCY WHERE CUR_TYPE='B' AND INTER_CUR='USD' AND THB_CUR='THB' "
                If CriteriaSQL <> "" Then SQL &= " AND " & CriteriaSQL
                SQL &= " ORDER BY EX_DATE "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Sub CountVisitPage(ByVal PageID As Integer, ByVal PageName As String, ByVal IPPage As String, ByVal Username As String)
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim DR As DataRow
            Dim IsNewData As Boolean
            Dim op As Integer

            Try
                SQL = "" : SQL1 = "" : SQL2 = ""
                If HttpContext.Current.Session(PageName) = "" Then
                    op = DB.opINSERT
                    DB.AddSQL(op, SQL1, SQL2, "PAGE_ID", PageID, DB.FieldTypes.ftNumeric)
                    DB.AddSQL(op, SQL1, SQL2, "USER_NAME", Username, DB.FieldTypes.ftText)
                    DB.AddSQL(op, SQL1, SQL2, "USER_IP", IPPage, DB.FieldTypes.ftText)
                    DB.AddSQL(op, SQL1, SQL2, "DATE_VISITED", Now, DB.FieldTypes.ftDateTime)

                    SQL = DB.CombineSQL(op, SQL1, SQL2, "SYS_INTER_COUNTERS", "")
                    DB.ExecSQL(SQL)
                    HttpContext.Current.Session(PageName) = "Y"
                End If


            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Sub

        Public Sub CountIntraPage(ByVal PageID As Integer, ByVal PageName As String, ByVal Username As String)
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim DR As DataRow
            Dim IsNewData As Boolean
            Dim op As Integer

            Try
                SQL = "" : SQL1 = "" : SQL2 = ""
                If HttpContext.Current.Session(PageName) = "" Then
                    op = DB.opINSERT
                    DB.AddSQL(op, SQL1, SQL2, "PAGE_ID", PageID, DB.FieldTypes.ftNumeric)
                    DB.AddSQL(op, SQL1, SQL2, "USER_NAME", Username, DB.FieldTypes.ftText)
                    DB.AddSQL(op, SQL1, SQL2, "DATE_VISITED", Now, DB.FieldTypes.ftDateTime)
                    SQL = DB.CombineSQL(op, SQL1, SQL2, "SYS_INTRA_COUNTERS", "")
                    DB.ExecSQL(SQL)
                    HttpContext.Current.Session(PageName) = "Y"
                End If


            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Sub

        Public Function LoadNewsFile(ByVal AnnID As Decimal, Optional ByVal FileID As Decimal = 0) As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String = ""
            Dim DS As DataSet
            Try
                If IsNumeric(AnnID) AndAlso AnnID <> 0 Then DB.AddCriteria(CriteriaSQL, "ANNOUNCE_ID", AnnID, DBUTIL.FieldTypes.ftNumeric)

                If IsNumeric(FileID) AndAlso FileID <> 0 Then DB.AddCriteria(CriteriaSQL, "FILE_ID", FileID, DBUTIL.FieldTypes.ftNumeric)




                SQL = " SELECT *  FROM ANNOUNCE_FILES"
                If CriteriaSQL <> "" Then SQL &= " WHERE " & CriteriaSQL

                SQL &= " ORDER BY ANNOUNCE_ID,FILE_ID "

                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function SaveNewsFile(ByVal DataId As Decimal, ByVal DataFileName As String, ByVal DataFileDesc As String, ByVal SysFiletype As String, ByRef SysFilename As String, ByVal UserName As String)
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long



            Try

                SQL = "" : SQL1 = "" : SQL2 = ""
                MaxID = ToDec(DB.GetMaxData("ANNOUNCE_FILES", "FILE_ID", "")) + 1
                SysFilename = "NEWS_" & CStr(DataId) & "_" & CStr(MaxID) & "" & SysFiletype
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "FILE_ID", MaxID, DB.FieldTypes.ftNumeric)
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "ANNOUNCE_ID", DataId, DB.FieldTypes.ftNumeric)
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "ORIGIN_FILE", DataFileName, DB.FieldTypes.ftText)
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "SYS_FILE", SysFilename, DB.FieldTypes.ftText)
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "FILE_DESC", DataFileDesc, DB.FieldTypes.ftText)
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opINSERT, SQL1, SQL2, "USER_UPDATED", UserName, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opINSERT, SQL1, SQL2, "ANNOUNCE_FILES", "")
                DB.ExecSQL(SQL)
                Return ""

            Catch ex As Exception
                Return "เกิดข้อผิดพลาดจากการ  Upload File ข้อมูล : " & ex.Message

            End Try
        End Function

        Public Sub DeleteNewsData(ByVal FileID As Decimal)
            Dim SQL As String

            Try

                SQL = "DELETE FROM ANNOUNCE_FILES WHERE FILE_ID = " & FileID
                DB.ExecSQL(SQL)

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Sub

        Public Function LoadInternetDetail(ByVal userName As String) As DataSet
            Dim status As String = ""
            Dim SQL, CriteriaSQL As String
            Dim DS As DataSet

            Try

                If userName <> "" Then

                    If userName <> "" Then DB.AddCriteria(CriteriaSQL, "USER_NAME", userName, DBUTIL.FieldTypes.ftText)


                    SQL = " SELECT  *  " & _
                                 " FROM APPR_CUST_USERS  "
                    If CriteriaSQL <> "" Then SQL &= " WHERE  " & CriteriaSQL

                    DB.OpenDS(DS, SQL)
                    Return DS
                End If
            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try

        End Function

        Public Function ChangePassword(ByVal UID As String, ByVal UPwd As String, ByVal UUpdated As String) As String
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim DR As DataRow
            Dim IsNewData As Boolean
            Dim op As Integer

            Try
                UID = UID.ToUpper
                ''DB.OpenConn(_ConnectStr)
                SQL = "" : SQL1 = "" : SQL2 = ""


                op = DB.opUPDATE


                If UPwd <> "****" Then DB.AddSQL(op, SQL1, SQL2, "PASSWORD", UPwd, DB.FieldTypes.ftText)
                DB.AddSQL(op, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDateTime)
                DB.AddSQL(op, SQL1, SQL2, "USER_UPDATED", UUpdated, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(op, SQL1, SQL2, "APPR_CUST_USERS", "USER_NAME=" & DB.SQLValue(UID, DB.FieldTypes.ftText))
                DB.ExecSQL(SQL)
                'DB.CloseConn()

                ChangePassword = ""
            Catch ex As Exception
                'DB.CloseConn()
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Function SearchContactList(ByVal CustID As String, ByVal CustName As String, ByVal ContFrDate As String, ByVal ContToDate As String, ByVal ContMethod As Integer, Optional ByVal AddCri As String = "") As DataSet
            Dim SQL As String
            Dim CriteriaSQL As String
            Dim DS As DataSet

            Try
                If CustID & "" <> "" Then DB.AddCriteria(CriteriaSQL, "CT.CUST_ID", CustID, DBUTIL.FieldTypes.ftText)

                If CustName & "" <> "" Then DB.AddCriteria(CriteriaSQL, "VCM.CUST_NAME", CustName, DBUTIL.FieldTypes.ftText)

                If ContFrDate & "" <> "" Or ContToDate & "" <> "" Then DB.AddCriteriaRange(CriteriaSQL, "CT.CONT_DATE", AppDateValue(ContFrDate), AppDateValue(ContToDate), DBUTIL.FieldTypes.ftDate, True)

                If ContMethod <> 0 Then DB.AddCriteria(CriteriaSQL, "CT.CONT_METHOD", ContMethod, DBUTIL.FieldTypes.ftNumeric)

                SQL = " SELECT     DECODE(VCM.CUST_ID,NULL,CT.CUST_ID,VCM.CUST_ID) AS SCUST_ID, DECODE(VCM.SHIP_TO,NULL,CT.CUST_ID,VCM.SHIP_TO) AS SHIP_TO, " & _
                             " DECODE(VCM.CUST_NAME,NULL,'บุคคลทั่วไป',VCM.CUST_NAME) AS SCUST_NAME, VCM.CUST_ABBR, " & _
                             "  LCM.DESCRIPTION AS METHOD_NAME, LS.DESCRIPTION AS STATUS_NAME, " & _
                             " LCT.DESCRIPTION AS TYPE_NAME, VCA.ADDRESS, VCA.TUMBOL, VCA.AMPHUR, VCA.PROVINCE_NAME, VCA.POST_CODE, CT.* " & _
                             " FROM  LSTCONT_METHOD LCM, CONTACTS CT,  LSTCONT_TYPE LCT, LSTCONT_STATUS LS, V_CUSTOMERS VCM, V_CUST_ADDRESS VCA " & _
                             " WHERE ( LCM.CONT_METHOD (+) = CT.CONT_METHOD) AND (CT.CONT_TYPE = LCT.CONT_TYPE (+)) AND " & _
                             " (CT.CONT_STATUS = LS.CONT_STATUS (+)) AND (CT.CUST_ID = VCM.SHIP_TO(+)) AND (VCM.SHIP_TO = VCA.CUST_ID (+)) "

                If CriteriaSQL <> "" Then
                    SQL = SQL + " AND " + CriteriaSQL
                End If
                If AddCri <> "" Then
                    SQL = SQL + AddCri
                End If
                SQL += " ORDER BY CT.CONT_DATE DESC,VCM.CUST_NAME,CT.CONT_ID "
                DB.OpenDS(DS, SQL)
                Return DS

            Catch ex As Exception
                Throw New DALException(ex.Message)
            End Try
        End Function

        Public Sub DeleteAttachData(ByVal DataID As String, ByVal AttachType As String, ByVal UserId As String)
            Dim SQL, SQL1, SQL2 As String

            Try
                'DB.OpenConn(_ConnectStr)

                SQL = "" : SQL1 = "" : SQL2 = ""
                Select Case AttachType
                    Case "DOC_CLEAR"
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "INPL_FILE", "", DB.FieldTypes.ftText)
                    Case "RPT_CLEAR"
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "REPORT_FILE", "", DB.FieldTypes.ftText)
                        'DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "REPORT_NAME", "", DB.FieldTypes.ftText)

                End Select
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", UserId, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "CONTACTS", "CONT_ID=" & DB.SQLValue(DataID, DB.FieldTypes.ftText))
                DB.ExecSQL(SQL)
                'DB.CloseConn()


            Catch ex As Exception
                'DB.CloseConn()
                Throw New DALException(ex.Message)
            End Try
        End Sub

        Public Function InsertAttachFile(ByVal DataId As String, ByVal SysFiletype As String, ByVal UserFile As String, ByRef usrsysFilename As String, ByVal FType As String, Optional ByVal RptName As String = "")
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim SysFileName As String

            Try
                'DB.OpenConn(_ConnectStr)
                SQL = "" : SQL1 = "" : SQL2 = ""
                Select Case FType
                    Case "DOC_ATTACH"
                        SysFileName = "INPL" & "_" & Replace(DataId, "/", "_") & SysFiletype
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "INPL_FILE", SysFileName, DB.FieldTypes.ftText)
                    Case "RPT_ATTACH"
                        SysFileName = "RPT" & "_" & Replace(DataId, "/", "_") & SysFiletype
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "REPORT_FILE", SysFileName, DB.FieldTypes.ftText)
                        DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "REPORT_NAME", RptName, DB.FieldTypes.ftText)
                End Select
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", UserFile, DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "CONTACTS", "CONT_ID=" & DB.SQLValue(DataId, DB.FieldTypes.ftText))
                usrsysFilename = SysFileName
                DB.ExecSQL(SQL)
                'DB.CloseConn()
                Return ""

            Catch ex As Exception
                'DB.CloseConn()
                Return "เกิดข้อผิดพลาดจากการ  Upload File ข้อมูล : " & ex.Message
            End Try
        End Function

        Public Function SaveRptContData(ByVal DataId As String, ByVal RptName As String) As String
            Dim SQL1, SQL2, SQL As String
            Dim MaxID As Long
            Dim SysFileName As String

            Try
                SQL = "" : SQL1 = "" : SQL2 = ""
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "REPORT_NAME", RptName, DB.FieldTypes.ftText)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "DATE_UPDATED", Now, DB.FieldTypes.ftDate)
                DB.AddSQL(DB.opUPDATE, SQL1, SQL2, "USER_UPDATED", HttpContext.Current.Session("USER_NAME") & "", DB.FieldTypes.ftText)
                SQL = DB.CombineSQL(DB.opUPDATE, SQL1, SQL2, "CONTACTS", "CONT_ID=" & DB.SQLValue(DataId, DB.FieldTypes.ftText))
                DB.ExecSQL(SQL)
                Return ""

            Catch ex As Exception
                Return "เกิดข้อผิดพลาดจากการ  Upload File ข้อมูล : " & ex.Message
            End Try
        End Function


    End Class

End Namespace