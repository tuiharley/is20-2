Imports System.Web.Services.Protocols


Public Module ServiceAgent


    Public SecurityService As New SecurityWS.SecurityService
    Public PISService As New PIS.PISService
    'Public AuditService As New Audit
    Public AuditWS As New Audit
    Public CRReportWS As New CRReportWS.CRReport

    Public IndBLL As New BLLComponent
    Public IndDAL As New DAL.Component
    Public IndAdmin As New Admin
    Public IndReport As New CRReports
    ' *************************
    ' ห้ามลบ
    Private ReportDAL As New Report
    ' *************************
    Public Sub Initialize()

        'AuditWS = Nothing
        'AuditWS = New AuditWS.AuditService
        ReadConfigurations()
    End Sub

    Public Sub Insert(ByVal transaction As AuditData)
        Try
            AuditWS.Insert(transaction)
        Catch ex As SoapException
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Function SearchAudit(ByVal TransactionFromDate As Date, ByVal TransactionToDate As Date, _
                                ByVal UserId As String, ByVal DeptName As String, ByVal Category As String, ByVal Action As String) As AuditDatas

        Try
            Return AuditWS.SearchAudit(TransactionFromDate, TransactionToDate, UserId, DeptName, Category, Action)
        Catch ex As SoapException
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Sub WriteAppLog(ByVal Msg As String)
        Try
            AuditWS.Insert(New AuditData(Now, HttpContext.Current.Session("USER_NAME"), HttpContext.Current.Session("ORG_NAME"), catAppLog, Msg, HttpContext.Current.Request.ServerVariables("LOCAL_ADDR") & ""))
        Catch ex As SoapException
            ' Ignore write log error
        End Try
    End Sub

    Public Sub WriteErrorLog(ByVal Msg As String)
        Try
            AuditWS.Insert(New AuditData(Now, HttpContext.Current.Session("USER_NAME"), HttpContext.Current.Session("ORG_NAME"), catErrorLog, Msg, HttpContext.Current.Request.ServerVariables("LOCAL_ADDR") & ""))
        Catch
            ' Ignore write log error
        End Try
    End Sub

    ' *******************************************
    ' ห้ามลบ ใช้สำหรับการสร้างรายงาน
    ' *******************************************
    Public Function QueryData(ByVal SelectSQL As String) As DataSet
        Try
            Return ReportDAL.QueryData(SelectSQL)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SQLDate(ByVal D As Date) As String
        Return ReportDAL.SQLDate(D)
    End Function

    Public Function SQLDateTime(ByVal DT As Date) As String
        Return ReportDAL.SQLDateTime(DT)
    End Function

    Public Function GetReportFile(ByVal FileName As String, ByVal ParamData As String, ByVal FileType As String, ByVal FSelection As String) As Byte()
        Try
            Return CRReportWS.GetReportFile(FileName, ParamData, FileType, FSelection)
        Catch ex As Exception
            Throw New BLLException(CRReportWS.ApplicationErrorValue.Message)
        End Try
    End Function

    Public Function ExportReport(ByVal FileName As String, ByVal ParamData As String, ByVal Format As String, ByVal FSelection As String) As String
        Try
            Return CRReportWS.ExportReport(FileName, ParamData, Format, FSelection)
        Catch ex As Exception
            Throw New BLLException(CRReportWS.ApplicationErrorValue.Message)
        End Try
    End Function
    ' *******************************************

    Public Function LoadQueryList(ByVal DSName As String, ByVal SQLQuery As String, ByVal SQLOrder As String) As DataSet
        Dim DS As DataSet
        Try
            DS = IndAdmin.LoadQueryList(DSName, SQLQuery, SQLOrder)
            Return DS
            'DS = CType(HttpContext.Current.Cache.Get(DSName), DataSet)
            'If IsNothing(DS) Then
            '    DS = IndAdmin.LoadQueryList(DSName, SQLQuery, SQLOrder)
            '    HttpContext.Current.Cache.Add(DSName, DS, Nothing, DateTime.MaxValue, TimeSpan.FromMinutes("30"), Caching.CacheItemPriority.High, Nothing)
            'End If
            'Return DS
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SaveReportFile(ByVal FileName As String, ByVal ParamData As String, ByVal Format As String, ByVal OFileName As String) As String
        Try
            Return IndReport.SaveReportFile(FileName, ParamData, Format, OFileName)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadInplantList(ByVal CompanyID As String, Optional ByVal AddCri As String = "") As DataSet
        Try
            Return IndDAL.LoadInplantList(CompanyID, AddCri)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadCompanyData(ByVal KeyId As String) As DataSet
        Try
            If KeyId <> "" Then
                Return IndDAL.LoadCompanyData(KeyId)
            End If
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadContactData(ByVal KeyId As String) As DataSet
        Try
            If KeyId <> "" Then
                Return IndDAL.LoadContactData(KeyId)
            End If
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadPersonContData(ByVal KeyId As String) As DataSet
        Try
            If KeyId <> "" Then
                Return IndDAL.LoadPersonContData(KeyId)
            End If
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadNews(ByVal NewsID As Decimal, ByVal HeadLine As String, ByVal StartDate As String, ByVal EndDate As String) As DataSet
        Try
            Return IndDAL.LoadNews(NewsID, HeadLine, StartDate, EndDate)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadEmergencyEvent(ByVal EventID As Integer, ByVal HeadLine As String, ByVal StartDate As String, ByVal EndDate As String) As DataSet
        Try
            Return IndDAL.LoadEmergencyEvent(EventID, HeadLine, StartDate, EndDate)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function ShowEmergencyEvent(ByVal EventID As Integer, ByVal HeadLine As String, ByVal StartDate As String, ByVal EndDate As String) As DataSet
        Try
            Return IndDAL.ShowEmergencyEvent(EventID, HeadLine, StartDate, EndDate)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadEmergency(ByVal KeyId As String) As DataSet
        Try
            If KeyId <> "" Then
                Return IndDAL.LoadEmergency(KeyId)
            End If
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadPersonalData(ByVal KeyId As String, ByVal AddSQL As String) As DataSet
        Try
            If KeyId <> "" Then
                Return IndDAL.LoadPersonalData(KeyId, AddSQL)
            End If
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadAnnounce(ByVal AnnID As Decimal, ByVal Title As String, ByVal StartDate As String, ByVal EndDate As String, ByVal AnnType As Integer, Optional ByVal AddCri As String = "") As DataSet
        Try
            Return IndDAL.LoadAnnounce(AnnID, Title, StartDate, EndDate, AnnType, AddCri)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SaveAnnounceData(ByRef AnnID As Decimal, ByVal Title As String, ByVal AnnDate As String, ByVal AnnType As Integer, _
                                                                                    ByVal Display As String, ByVal Detail As String, ByVal ExpireDate As String, ByVal DisplayFlag As String) As String
        Try
            Return IndDAL.SaveAnnounceData(AnnID, Title, AnnDate, AnnType, Display, Detail, ExpireDate, DisplayFlag, HttpContext.Current.Session("USER_NAME"))
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function DeleteAnnounceData(ByVal DataKey As Decimal) As String
        Try
            Return IndDAL.DeleteAnnounceData(DataKey)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SaveAnnounceFile(ByVal DataId As Decimal, ByVal SysFiletype As String, ByVal UserFile As String, ByRef usrSysFile As String, ByVal FType As String, ByVal AnnName As String)
        Try
            Return IndDAL.SaveAnnounceFile(DataId, SysFiletype, UserFile, usrSysFile, FType, AnnName)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Sub DeleteAnnounceFile(ByVal DataID As Decimal, ByVal UserId As String, ByVal FileType As String)
        Try
            IndDAL.DeleteAnnounceFile(DataID, UserId, FileType)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Function LoadVendorList(ByVal VendorID As Integer, ByVal VendorGrp As Integer) As DataSet
        Try
            Return IndDAL.LoadVendorList(VendorID, VendorGrp)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadDCQList(ByVal ShipTo As String, ByVal CondType As String, ByVal VFrom As DateTime, ByVal VTo As DateTime) As DataSet
        Try
            Return IndDAL.LoadDCQList(ShipTo, CondType, VFrom, VTo)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SaveEmergencyEvent(ByRef EventID As Integer, ByVal Title As String, ByVal DestType As Integer, ByVal Destination As String, ByVal EventDate As String, ByVal EventTime As String, ByVal ExpireDate As String, ByVal Uname As String, ByVal FileName As String) As String
        Try
            Return IndDAL.SaveEmergencyEvent(EventID, Title, DestType, Destination, EventDate, EventTime, ExpireDate, HttpContext.Current.Session("USER_NAME"), FileName)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function DeleteEmergencyEvent(ByVal DataKey As Integer) As String
        Try
            Return IndDAL.DeleteEmergencyEvent(DataKey)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SaveAttachFileEmergencyEvent(ByVal DataId As Decimal, ByVal SysFiletype As String, ByVal UserFile As String, ByRef usrSysFile As String, ByVal FType As String)
        Try
            Return IndDAL.AttachFileEmergencyEvent(DataId, SysFiletype, UserFile, usrSysFile, FType)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Sub DeleteAttachFileEmergencyEvent(ByVal DataID As Decimal, ByVal UserId As String)
        Try
            IndDAL.DeleteAttachFileEmergencyEvent(DataID, UserId)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Function LoadFaqList(ByVal FaqID As Integer) As DataSet
        Try
            Return IndDAL.LoadFaqList(FaqID)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadCurrencyList(ByVal MM As Integer, ByVal YY As Integer) As DataSet
        Try
            Return IndDAL.LoadCurrencyList(MM, YY)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Sub CountVisitPage(ByVal PageID As Integer, ByVal PageName As String, ByVal IPPage As String)
        Try
            IndDAL.CountVisitPage(PageID, PageName, IPPage, HttpContext.Current.Session("USER_NAME"))
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Sub CountIntraPage(ByVal PageID As Integer, ByVal PageName As String)
        Try
            IndDAL.CountIntraPage(PageID, PageName, HttpContext.Current.Session("USER_NAME"))
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Function LoadNewsFile(ByVal AnnID As Decimal, Optional ByVal FileID As Decimal = 0) As DataSet
        Try
            Return IndDAL.LoadNewsFile(AnnID, FileID)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SaveNewsFile(ByVal DataId As Decimal, ByVal DataFileName As String, ByVal DataFileDesc As String, ByVal SysFiletype As String, ByRef SysFilename As String)
        Try
            Return IndDAL.SaveNewsFile(DataId, DataFileName, DataFileDesc, SysFiletype, SysFilename, HttpContext.Current.Session("USER_NAME"))
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Sub DeleteNewsFile(ByVal DataID As Decimal)
        Try
            IndDAL.DeleteNewsData(DataID)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Function LoadInternetDetail(ByVal UserID As String) As DataSet
        Try
            Return IndDAL.LoadInternetDetail(UserID)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function ChangePassword(ByVal UID As String, ByVal UPwd As String, ByVal UUpdated As String) As String
        Try
            ChangePassword = IndDAL.ChangePassword(UID, UPwd, UUpdated)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function LoadCustomerListWithShipto() As DataSet
        Dim DS As DataSet
        Dim SQL As String
        Try
            'DS = CType(HttpContext.Current.Cache.Get("ShipIDList"), DataSet)
            If IsNothing(DS) Then
                'SQL = " SELECT DISTINCT SHIP_TO AS CUST_ID,SHIP_TO || ' ' || CUST_NAME AS CUSTOMER_DESC FROM V_CUSTOMERS WHERE GAS_BLOCK IS NULL "
                SQL = " SELECT DISTINCT VC.SHIP_TO AS CUST_ID,VC.CUST_NAME AS CUST_NAME,VC.SHIP_TO || ' ' || VC.CUST_NAME AS CUSTOMER_DESC  " & _
                            " FROM V_GENERAL_VIEW VG, V_CUSTOMERS VC " & _
                            " WHERE VG.CUST_NUMBER (+) = VC.CUST_NUM AND (VC.GAS_BLOCK IS NULL AND VG.ALL_AREA_BLOCK IS NULL) "
                DS = LoadQueryList("V_CUST", SQL, "SHIP_TO")
                'HttpContext.Current.Cache.Add("ShipIDList", DS, Nothing , DateTime.MaxValue, TimeSpan.FromMinutes("0"), Caching.CacheItemPriority.High, Nothing)
            End If
            Return DS
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Function SearchContactList(ByVal CustID As String, ByVal CustName As String, ByVal ContFrDate As String, ByVal ContToDate As String, ByVal ContMethod As Integer, Optional ByVal AddCri As String = "") As DataSet
        Try
            Return IndDAL.SearchContactList(CustID, CustName, ContFrDate, ContToDate, ContMethod, AddCri)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Public Sub DeleteAttachFile(ByVal DataID As String, ByVal AttachType As String, ByVal UserId As String)
        Try
            IndDAL.DeleteAttachData(DataID, AttachType, UserId)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Sub

    Public Function SaveAttachFile(ByVal DataId As String, ByVal SysFiletype As String, ByVal UserFile As String, ByRef usrSysFile As String, ByVal FType As String, Optional ByVal RptName As String = "")
        Try
            Return IndDAL.InsertAttachFile(DataId, SysFiletype, UserFile, usrSysFile, FType, RptName)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try

    End Function

    Public Function SaveRptContData(ByVal DataId As String, ByVal RptName As String) As String
        Try
            Return IndDAL.SaveRptContData(DataId, RptName)
        Catch ex As Exception
            Throw New BLLException(ex.Message)
        End Try
    End Function

End Module
