Imports System.Web.Services
Imports System.Security.Principal
Imports System.Web.Services.Protocols

Public Class SecurityPrincipalType : Inherits SoapHeader
    Public UserName As String
    Public Roles() As String
End Class

Public Class ApplicationError : Inherits SoapHeader
    Public Message As String
End Class
