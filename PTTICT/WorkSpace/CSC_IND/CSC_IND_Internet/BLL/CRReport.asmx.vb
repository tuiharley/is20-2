#Region ".NET base class name space imports"
Imports System
Imports System.Web.Services
Imports System.Security.Principal
Imports System.Web.Services.Protocols
Imports System.Threading.Thread
Imports System.Xml
#End Region

<System.Web.Services.WebService(Namespace:="http://tempuri.org/PTT.NGVCIS.BLL.Service/CRReport")> Public Class CRReport
    Inherits System.Web.Services.WebService

    Public SecurityPrincipal As SecurityPrincipalType
    Public ErrorMessage As New ApplicationError

    Private fcCRReport As New CRReports


#Region " Web Services Designer Generated Code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Web Services Designer.
        InitializeComponent()

        'Add your own initialization code after the InitializeComponent() call
    End Sub
    'Required by the Web Services Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Web Services Designer
    'It can be modified using the Web Services Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    Protected Overloads Overrides Sub Dispose(ByVal disposing As Boolean)
        'CODEGEN: This procedure is required by the Web Services Designer
        'Do not modify it using the code editor.
        If disposing Then
            If Not (components Is Nothing) Then
                components.Dispose()
            End If
        End If
        MyBase.Dispose(disposing)
    End Sub

#End Region

    Private Sub CreateContext()
        If Not IsNothing(SecurityPrincipal) AndAlso Not IsNothing(SecurityPrincipal.UserName) Then
            Dim identity As New GenericIdentity(SecurityPrincipal.UserName)
            Context.User = New GenericPrincipal(identity, SecurityPrincipal.Roles)
            CurrentThread.CurrentPrincipal = New GenericPrincipal(identity, SecurityPrincipal.Roles)
        End If
    End Sub

    <WebMethod(), SoapHeader("SecurityPrincipal", Direction:=SoapHeaderDirection.In), _
    SoapHeader("ErrorMessage", direction:=SoapHeaderDirection.Fault Or SoapHeaderDirection.InOut)> _
Public Function GetReportFile(ByVal FileName As String, ByVal ParamData As String, ByVal FileType As String, ByVal FSelection As String) As Byte()
        Try
            CreateContext()
            fcCRReport = New CRReports
            GetReportFile = fcCRReport.GetReportFile(FileName, ParamData, FileType, FSelection)
            fcCRReport = Nothing

        Catch bex As BLLException
            fcCRReport = Nothing
            ErrorMessage.Message = bex.Message
            Throw (bex)
        End Try
    End Function

    <WebMethod(), SoapHeader("SecurityPrincipal", Direction:=SoapHeaderDirection.In), _
    SoapHeader("ErrorMessage", direction:=SoapHeaderDirection.Fault Or SoapHeaderDirection.InOut)> _
    Public Function ExportReport(ByVal FileName As String, ByVal ParamData As String, ByVal Format As String, ByVal FSelection As String) As String
        Try
            CreateContext()
            fcCRReport = New CRReports
            ExportReport = fcCRReport.ExportReport(FileName, ParamData, Format, FSelection)
            fcCRReport = Nothing

        Catch bex As BLLException
            fcCRReport = Nothing
            ErrorMessage.Message = bex.Message
            Throw (bex)
        End Try
    End Function



End Class
