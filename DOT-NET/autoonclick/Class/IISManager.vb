Imports System
Imports System.DirectoryServices


Public Class IISManager
    Public Sub IISManager()
    End Sub


    Public Function CreateVDir(ByVal NewsiteName As String, ByVal Path As String, ByVal chkRead As Boolean, ByVal chkWrite As Boolean, ByVal chkExecute As Boolean, ByVal chkScript As Boolean, ByVal chkAuth As Boolean, ByVal serverName As String, ByVal DefaultDoc As String, ByVal dirList() As String) As Boolean

        Dim sRet As String = String.Empty
        Dim IISSchema As System.DirectoryServices.DirectoryEntry
        Dim IISAdmin As System.DirectoryServices.DirectoryEntry
        Dim VDir As System.DirectoryServices.DirectoryEntry
        Dim IISUnderNT As Boolean


        ' Determine version of IIS
        IISSchema = New System.DirectoryServices.DirectoryEntry("IIS//" + serverName + "/Schema/AppIsolated")
        If (IISSchema.Properties("Syntax").Value.ToString().ToUpper() = "BOOLEAN") Then
            IISUnderNT = True
        Else
            IISUnderNT = False
        End If


        IISSchema.Dispose()


        'Get a Free SiteID


        Dim siteID As Integer = 1


        For Each e As DirectoryEntry In IISAdmin.Children
            If e.SchemaClassName = "IIsWebServer" Then
                Dim ID As Integer = Convert.ToInt32(e.Name)
                If (ID >= siteID) Then
                    siteID = ID + 1
                End If
            End If
        Next


        ''''''''''''''''Dim site = root.Invoke("Create","IIsWebServer", siteID)
        ''''''''''''''''site.Invoke("Put", "ServerComment",NewsiteName)


        ''''''''''''''''site.Invoke("Put", "KeyType", "IIsWebServer")
        ''''''''''''''''site.Invoke("Put", "ServerBindings", "80")
        ''''''''''''''''site.Invoke("Put", "ServerState", 2)
        ''''''''''''''''site.Invoke("Put", "FrontPageWeb", 1)
        ''''''''''''''''site.Invoke("Put", "DefaultDoc", DefaultDoc)
        '''''''''''''''''site.Invoke("Put", "SecureBindings", "443")
        ''''''''''''''''site.Invoke("Put", "ServerAutoStart", 1)
        ''''''''''''''''site.Invoke("Put", "ServerSize", 1)
        ''''''''''''''''site.Invoke("SetInfo")


        ''''''''''''''''site.CommitChanges()


        siteID = 312010922


        '
        ' Get the admin object
        '
        IISAdmin = New System.DirectoryServices.DirectoryEntry("IIS//" + serverName + "/W3SVC/" + siteID.ToString() + "/Root")


        '
        ' If the virtual directory already exists then delete it
        '
        For Each v As System.DirectoryServices.DirectoryEntry In IISAdmin.Children()
            ' Delete the specified virtual directory if it already            exists()
            Try
                IISAdmin.Invoke("Delete", New String() {v.SchemaClassName, v.Name})
                IISAdmin.CommitChanges()
            Catch ex As Exception
            End Try
        Next


        '
        ' Create the virtual directory
        '
        Dim ii As Integer = 0


        For ii = 0 To dirList.Length - 1
            Dim dirName = dirList(ii).Split("")(dirList(ii).Split("").Length - 1).ToUpper()
            If Not (dirName.toupper() = "BIN" Or dirName.toupper() = "BLL") Then
                Try
                    VDir = IISAdmin.Children.Add(dirName, "IIsWebVirtualDir")
                    '
                    ' Setup the VDir
                    '
                    VDir.Properties("AccessRead")(0) = chkRead
                    VDir.Properties("AccessExecute")(0) = chkExecute
                    VDir.Properties("AccessWrite")(0) = chkWrite
                    VDir.Properties("AccessScript")(0) = chkScript
                    VDir.Properties("AuthNTLM")(0) = chkAuth
                    VDir.Properties("EnableDefaultDoc")(0) = True
                    VDir.Properties("EnableDirBrowsing")(0) = False
                    VDir.Properties("DefaultDoc")(0) = True
                    VDir.Properties("Path")(0) = Path


                    ' NT doesn't support this property
                    '
                    If (IISUnderNT = False) Then
                        VDir.Properties("AspEnableParentPaths")(0) = True
                    End If


                    '
                    ' Set the changes
                    '
                    VDir.CommitChanges()
                    VDir.Invoke("Put", "DefaultDoc", DefaultDoc)
                    VDir.Invoke("SetInfo")
                    '
                    ' Make it a web application
                    '
                    If (IISUnderNT = True) Then
                        VDir.Invoke("AppCreate", False)
                    Else
                        VDir.Invoke("AppCreate", 1)
                    End If
                Catch ex As Exception


                End Try
            End If
        Next


        Return True
    End Function


    Public Property ServerName() As String
        Get
            Return _serverName
        End Get
        Set(ByVal Value As String)
            _serverName = Value
        End Set
    End Property


    Public Shared VirDirSchemaName As String = "IIsWebVirtualDir"
    Private _serverName As String


End Class

