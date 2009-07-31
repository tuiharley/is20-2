#Region ".NET Framework Class Import"
Imports System
Imports System.Xml.Serialization
Imports System.Runtime.Serialization
Imports System.Collections
#End Region

Public Class ContactData

#Region "Internal member variables"
    Private _CONT_ID As String
    Private _CUST_ID As String
    Private _CONT_DATE As Date
    Private _CONT_TIME As String
    Private _CONT_STATUS As Integer
    Private _CONT_METHOD As Integer
    Private _CONT_OTHER As String
    Private _CONT_TYPE As Integer
    Private _CONT_TEL As String
    Private _CONT_FAX As String
    Private _CONT_EMAIL As String
    Private _DETAIL As String
    Private _CONT_ADD As String
    Private _REC_NAME As String
    Private _REC_POS As String
    Private _REC_DATE As Date
    Private _W_EMP_ID As String
    Private _W_NAME As String
    Private _W_POS As String
    Private _W_DATE As Date
    Private _W_REMARK As String
    Private _C_NAME As String
    Private _C_POS As String
    Private _C_DATE As Date
    Private _INFORM_DATE As Date
    Private _CUST_NAME As String
    Private _INFORM_TYPE As Integer
    Private _WORK_UNIT As String
    Private _WORK_UNITCODE As String
    Private _INPL_TYPE As Integer
    Private _ACTUAL_DESC As String
    Private _PLAN_DESC As String
    Private _INPL_FILE As String
    Private _C_EMP_ID As String
    Private _C_UNIT As String
    Private _C_UNITCODE As String
    Private _REPORT_FILE As String
    Private _REPORT_NAME As String
    Private _USER_UPDATED As String
    Private _DATE_UPDATED As DateTime
#End Region

    Public Sub New(ByVal CONT_ID As String, _
                            ByVal CUST_ID As String, _
                            ByVal CONT_DATE As Date, _
                            ByVal CONT_TIME As String, _
                            ByVal CONT_STATUS As Integer, _
                            ByVal CONT_METHOD As Integer, _
                            ByVal CONT_OTHER As String, _
                            ByVal CONT_TYPE As Integer, _
                            ByVal CONT_TEL As String, _
                            ByVal CONT_FAX As String, _
                            ByVal CONT_EMAIL As String, _
                            ByVal DETAIL As String, _
                            ByVal CONT_ADD As String, _
                            ByVal REC_NAME As String, _
                            ByVal REC_POS As String, _
                            ByVal REC_DATE As Date, _
                            ByVal W_EMP_ID As String, _
                            ByVal W_NAME As String, _
                            ByVal W_POS As String, _
                            ByVal W_DATE As Date, _
                            ByVal W_REMARK As String, _
                            ByVal C_NAME As String, _
                            ByVal C_POS As String, _
                            ByVal C_DATE As Date, _
                            ByVal INFORM_DATE As Date, _
                            ByVal CUST_NAME As String, _
                            ByVal INFORM_TYPE As Integer, _
                            ByVal WORK_UNIT As String, _
                            ByVal WORK_UNITCODE As String, _
                            ByVal INPL_TYPE As Integer, _
                            ByVal ACTUAL_DESC As String, _
                            ByVal PLAN_DESC As String, _
                            ByVal INPL_FILE As String, _
                            ByVal C_EMP_ID As String, _
                            ByVal C_UNIT As String, _
                            ByVal C_UNITCODE As String, _
                            ByVal REPORT_FILE As String, _
                            ByVal REPORT_NAME As String, _
                            ByVal USER_UPDATED As String, _
                            ByVal DATE_UPDATED As DateTime)


        _CONT_ID = CONT_ID
        _CUST_ID = CUST_ID
        _CONT_DATE = CONT_DATE
        _CONT_TIME = CONT_TIME
        _CONT_STATUS = CONT_STATUS
        _CONT_METHOD = CONT_METHOD
        _CONT_OTHER = CONT_OTHER
        _CONT_TYPE = CONT_TYPE
        _CONT_TEL = CONT_TEL
        _CONT_FAX = CONT_FAX
        _CONT_EMAIL = CONT_EMAIL
        _DETAIL = DETAIL
        _CONT_ADD = CONT_ADD
        _REC_NAME = REC_NAME
        _REC_POS = REC_POS
        _REC_DATE = REC_DATE
        _W_EMP_ID = W_EMP_ID
        _W_NAME = W_NAME
        _W_POS = W_POS
        _W_DATE = W_DATE
        _W_REMARK = W_REMARK
        _C_NAME = C_NAME
        _C_POS = C_POS
        _C_DATE = C_DATE
        _C_EMP_ID = C_EMP_ID
        _C_UNIT = C_UNIT
        _C_UNITCODE = C_UNITCODE
        _INFORM_DATE = INFORM_DATE
        _CUST_NAME = CUST_NAME
        _INFORM_TYPE = INFORM_TYPE
        _WORK_UNIT = WORK_UNIT
        _WORK_UNITCODE = WORK_UNITCODE
        _INPL_TYPE = INPL_TYPE
        _ACTUAL_DESC = ACTUAL_DESC
        _PLAN_DESC = PLAN_DESC
        _INPL_FILE = INPL_FILE
        _REPORT_FILE = REPORT_FILE
        _REPORT_NAME = REPORT_NAME
        _USER_UPDATED = USER_UPDATED
        _DATE_UPDATED = DATE_UPDATED


    End Sub

    Public Sub New()
        _CONT_ID = Nothing
        _CUST_ID = Nothing
        _CONT_DATE = Nothing
        _CONT_TIME = Nothing
        _CONT_STATUS = Nothing
        _CONT_METHOD = Nothing
        _CONT_OTHER = Nothing
        _CONT_TYPE = Nothing
        _CONT_TEL = Nothing
        _CONT_FAX = Nothing
        _CONT_EMAIL = Nothing
        _DETAIL = Nothing
        _CONT_ADD = Nothing
        _REC_NAME = Nothing
        _REC_POS = Nothing
        _REC_DATE = Nothing
        _W_EMP_ID = Nothing
        _W_NAME = Nothing
        _W_POS = Nothing
        _W_DATE = Nothing
        _W_REMARK = Nothing
        _C_NAME = Nothing
        _C_POS = Nothing
        _C_DATE = Nothing
        _C_EMP_ID = Nothing
        _C_UNIT = Nothing
        _C_UNITCODE = Nothing
        _INFORM_DATE = Nothing
        _CUST_NAME = Nothing
        _INFORM_TYPE = Nothing
        _WORK_UNIT = Nothing
        _WORK_UNITCODE = Nothing
        _INPL_TYPE = Nothing
        _ACTUAL_DESC = Nothing
        _PLAN_DESC = Nothing
        _INPL_FILE = Nothing
        _REPORT_FILE = Nothing
        _REPORT_NAME = Nothing
        _USER_UPDATED = Nothing
        _DATE_UPDATED = Nothing
    End Sub

#Region "Property"

    Public Property CONT_ID() As String
        Get
            Return _CONT_ID
        End Get
        Set(ByVal Value As String)
            _CONT_ID = Value
        End Set
    End Property

    Public Property CUST_ID() As String
        Get
            Return _CUST_ID
        End Get
        Set(ByVal Value As String)
            _CUST_ID = Value
        End Set
    End Property

    Public Property CONT_DATE() As Date
        Get
            Return _CONT_DATE
        End Get
        Set(ByVal Value As Date)
            _CONT_DATE = Value
        End Set
    End Property

    Public Property CONT_TIME() As String
        Get
            Return _CONT_TIME
        End Get
        Set(ByVal Value As String)
            _CONT_TIME = Value
        End Set
    End Property

    Public Property CONT_STATUS() As Integer
        Get
            Return _CONT_STATUS
        End Get
        Set(ByVal Value As Integer)
            _CONT_STATUS = Value
        End Set
    End Property

    Public Property CONT_METHOD() As Integer
        Get
            Return _CONT_METHOD
        End Get
        Set(ByVal Value As Integer)
            _CONT_METHOD = Value
        End Set
    End Property

    Public Property CONT_OTHER() As String
        Get
            Return _CONT_OTHER
        End Get
        Set(ByVal Value As String)
            _CONT_OTHER = Value
        End Set
    End Property

    Public Property CONT_TYPE() As Integer
        Get
            Return _CONT_TYPE
        End Get
        Set(ByVal Value As Integer)
            _CONT_TYPE = Value
        End Set
    End Property

    Public Property CONT_TEL() As String
        Get
            Return _CONT_TEL
        End Get
        Set(ByVal Value As String)
            _CONT_TEL = Value
        End Set
    End Property

    Public Property CONT_FAX() As String
        Get
            Return _CONT_FAX
        End Get
        Set(ByVal Value As String)
            _CONT_FAX = Value
        End Set
    End Property

    Public Property CONT_EMAIL() As String
        Get
            Return _CONT_EMAIL
        End Get
        Set(ByVal Value As String)
            _CONT_EMAIL = Value
        End Set
    End Property

    Public Property DETAIL() As String
        Get
            Return _DETAIL
        End Get
        Set(ByVal Value As String)
            _DETAIL = Value
        End Set
    End Property

    Public Property CONT_ADD() As String
        Get
            Return _CONT_ADD
        End Get
        Set(ByVal Value As String)
            _CONT_ADD = Value
        End Set
    End Property

    Public Property REC_NAME() As String
        Get
            Return _REC_NAME
        End Get
        Set(ByVal Value As String)
            _REC_NAME = Value
        End Set
    End Property

    Public Property REC_POS() As String
        Get
            Return _REC_POS
        End Get
        Set(ByVal Value As String)
            _REC_POS = Value
        End Set
    End Property

    Public Property REC_DATE() As Date
        Get
            Return _REC_DATE
        End Get
        Set(ByVal Value As Date)
            _REC_DATE = Value
        End Set
    End Property

    Public Property W_EMP_ID() As String
        Get
            Return _W_EMP_ID
        End Get
        Set(ByVal Value As String)
            _W_EMP_ID = Value
        End Set
    End Property

    Public Property W_NAME() As String
        Get
            Return _W_NAME
        End Get
        Set(ByVal Value As String)
            _W_NAME = Value
        End Set
    End Property

    Public Property W_POS() As String
        Get
            Return _W_POS
        End Get
        Set(ByVal Value As String)
            _W_POS = Value
        End Set
    End Property

    Public Property W_DATE() As Date
        Get
            Return _W_DATE
        End Get
        Set(ByVal Value As Date)
            _W_DATE = Value
        End Set
    End Property

    Public Property W_REMARK() As String
        Get
            Return _W_REMARK
        End Get
        Set(ByVal Value As String)
            _W_REMARK = Value
        End Set
    End Property

    Public Property C_NAME() As String
        Get
            Return _C_NAME
        End Get
        Set(ByVal Value As String)
            _C_NAME = Value
        End Set
    End Property

    Public Property C_POS() As String
        Get
            Return _C_POS
        End Get
        Set(ByVal Value As String)
            _C_POS = Value
        End Set
    End Property

    Public Property C_DATE() As Date
        Get
            Return _C_DATE
        End Get
        Set(ByVal Value As Date)
            _C_DATE = Value
        End Set
    End Property

    Public Property C_EMP_ID() As String
        Get
            Return _C_EMP_ID
        End Get
        Set(ByVal Value As String)
            _C_EMP_ID = Value
        End Set
    End Property

    Public Property C_UNIT() As String
        Get
            Return _C_UNIT
        End Get
        Set(ByVal Value As String)
            _C_UNIT = Value
        End Set
    End Property

    Public Property C_UNITCODE() As String
        Get
            Return _C_UNITCODE
        End Get
        Set(ByVal Value As String)
            _C_UNITCODE = Value
        End Set
    End Property


    Public Property INFORM_DATE() As Date
        Get
            Return _INFORM_DATE
        End Get
        Set(ByVal Value As Date)
            _INFORM_DATE = Value
        End Set
    End Property

    Public Property CUST_NAME() As String
        Get
            Return _CUST_NAME
        End Get
        Set(ByVal Value As String)
            _CUST_NAME = Value
        End Set
    End Property

    Public Property INFORM_TYPE() As Integer
        Get
            Return _INFORM_TYPE
        End Get
        Set(ByVal Value As Integer)
            _INFORM_TYPE = Value
        End Set
    End Property

    Public Property WORK_UNIT() As String
        Get
            Return _WORK_UNIT
        End Get
        Set(ByVal Value As String)
            _WORK_UNIT = Value
        End Set
    End Property

    Public Property WORK_UNITCODE() As String
        Get
            Return _WORK_UNITCODE
        End Get
        Set(ByVal Value As String)
            _WORK_UNITCODE = Value
        End Set
    End Property

    Public Property INPL_TYPE() As Integer
        Get
            Return _INPL_TYPE
        End Get
        Set(ByVal Value As Integer)
            _INPL_TYPE = Value
        End Set
    End Property

    Public Property ACTUAL_DESC() As String
        Get
            Return _ACTUAL_DESC
        End Get
        Set(ByVal Value As String)
            _ACTUAL_DESC = Value
        End Set
    End Property

    Public Property PLAN_DESC() As String
        Get
            Return _PLAN_DESC
        End Get
        Set(ByVal Value As String)
            _PLAN_DESC = Value
        End Set
    End Property

    Public Property INPL_FILE() As String
        Get
            Return _INPL_FILE
        End Get
        Set(ByVal Value As String)
            _INPL_FILE = Value
        End Set
    End Property

    Public Property REPORT_FILE() As String
        Get
            Return _REPORT_FILE
        End Get
        Set(ByVal Value As String)
            _REPORT_FILE = Value
        End Set
    End Property

    Public Property REPORT_NAME() As String
        Get
            Return _REPORT_NAME
        End Get
        Set(ByVal Value As String)
            _REPORT_NAME = Value
        End Set
    End Property

    Public Property USER_UPDATED() As String
        Get
            Return _USER_UPDATED
        End Get
        Set(ByVal Value As String)
            _USER_UPDATED = Value
        End Set
    End Property

    Public Property DATE_UPDATED() As DateTime
        Get
            Return _DATE_UPDATED
        End Get
        Set(ByVal Value As DateTime)
            _DATE_UPDATED = Value
        End Set
    End Property


#End Region

End Class
