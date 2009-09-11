Imports System.Web
Imports System.Web.SessionState

'Imports System.Data
'Imports System.Data.SqlClient

Public Class Global
    Inherits System.Web.HttpApplication

#Region " Component Designer Generated Code "

    Public Sub New()
        MyBase.New()

        'This call is required by the Component Designer.
        InitializeComponent()

        'Add any initialization after the InitializeComponent() call

    End Sub

    'Required by the Component Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Component Designer
    'It can be modified using the Component Designer.
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        components = New System.ComponentModel.Container
    End Sub

#End Region

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application is started
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session is started
        Dim connstatement As String

        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=127.0.0.1;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=computer;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=SIA-1;"
        'connstatement = "Provider=SQLOLEDB.1;UID=mxauto_onclick_com_auto_search;PWD=Auto15S;DATABASE=mxauto_onclick_com_auto_search;SERVER=127.0.0.1;"
        'connstatement = "Provider=SQLOLEDB.1;UID=auto_onclick_com_auto_search;PWD=Auto15S;DATABASE=auto_onclick_com_auto_search;SERVER=AA;"
        connstatement = DBConnect.getStrDBConnect
        Session.Add("conn", connstatement)

    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires at the beginning of each request
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires upon attempting to authenticate the use
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when an error occurs
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the session ends
        Session.Clear()
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Fires when the application ends
    End Sub

End Class
