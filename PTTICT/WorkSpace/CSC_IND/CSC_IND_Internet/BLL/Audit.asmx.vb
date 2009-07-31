#Region ".NET base class name space imports"
Imports System
Imports System.Web.Services
Imports System.Security.Principal
Imports System.Web.Services.Protocols
Imports System.Threading.Thread
Imports System.Xml
#End Region

<System.Web.Services.WebService(Namespace:="http://tempuri.org/PTT.CaseMonitor.BLL.Service/Audit")> _
Public Class AuditService
    Inherits System.Web.Services.WebService

    Public SecurityPrincipal As SecurityPrincipalType
    Public ErrorMessage As ApplicationError
    Private facadeAudit As New Audit

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
        components = New System.ComponentModel.Container
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
        If Not IsNothing(SecurityPrincipal) Then
            Dim identity As New GenericIdentity(SecurityPrincipal.UserName)
            Context.User = New GenericPrincipal(identity, SecurityPrincipal.Roles)
            CurrentThread.CurrentPrincipal = New GenericPrincipal(identity, SecurityPrincipal.Roles)
        End If
    End Sub

    <WebMethod(), SoapHeader("SecurityPrincipal", Direction:=SoapHeaderDirection.In), _
    SoapHeader("ErrorMessage", direction:=SoapHeaderDirection.Fault Or SoapHeaderDirection.InOut)> _
    Public Sub Insert(ByVal transaction As AuditData)
        Try
            CreateContext()
            facadeAudit.Insert(transaction)
        Catch bex As Exception
            facadeAudit = Nothing
            ErrorMessage.Message = bex.Message
            Throw New BLLException(bex.Message)
        End Try
    End Sub

    <WebMethod(), SoapHeader("SecurityPrincipal", Direction:=SoapHeaderDirection.In), _
    SoapHeader("ErrorMessage", direction:=SoapHeaderDirection.Fault Or SoapHeaderDirection.InOut)> _
    Public Function SearchAudit(ByVal TransactionFromDate As Date, ByVal TransactionToDate As Date, _
                                ByVal UserId As String, ByVal DeptName As String, ByVal Category As String, ByVal Action As String) As AuditDatas
        Dim result As AuditDatas

        Try
            CreateContext()
            facadeAudit = New Audit
            result = facadeAudit.SearchAudit(TransactionFromDate, TransactionToDate, UserId, DeptName, Category, Action)
            facadeAudit = Nothing

            Return result

        Catch bex As BLLException
            facadeAudit = Nothing
            ErrorMessage.Message = bex.Message
            Throw (bex)
        End Try
    End Function

End Class
