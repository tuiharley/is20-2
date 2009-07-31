#Region "Summary"
#End Region

#Region ".NET Framework Class Import"
Imports System
Imports System.Xml.Serialization
Imports System.IO
Imports System.Runtime.Serialization
Imports System.Runtime.Serialization.Formatters.Binary
Imports System.Collections
#End Region

<Serializable()> _
Public Class AppException
    Inherits Exception

    Public Sub New()
        MyBase.New()
        'WriteErrorLog(MyBase.Message())
    End Sub

    Public Sub New(ByVal errorMessage As String)
        MyBase.New(errorMessage)
        'WriteErrorLog(errorMessage)
    End Sub

    Public Sub New(ByVal info As SerializationInfo, ByVal context As StreamingContext)
        MyBase.New(info, context)
    End Sub

    Public Overrides Sub GetObjectData(ByVal info As SerializationInfo, ByVal context As StreamingContext)
        MyBase.GetObjectData(info, context)
    End Sub

End Class
