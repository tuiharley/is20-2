#Region ".NET base class name space imports"
Imports System.Configuration
Imports System.Web
Imports System.IO
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
#End Region

Public Class CRReports
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

    Public Function GetReportFile(ByVal FileName As String, ByVal ParamData As String, Optional ByVal Format As String = "pdf", Optional ByVal FSelection As String = "") As Byte()
        Dim ShowFile As String
        Dim FS As Byte()

        Try
            ShowFile = ExportReport(FileName, ParamData, Format, FSelection) & ""
            If ShowFile <> "" Then
                FS = ReadFile(ShowFile)
                DeleteFile(ShowFile)
            End If

            Return FS
        Catch ex As Exception
            DeleteFile(ShowFile)
            GetReportFile = Nothing
            Throw New BLLException(ex.Message)
        End Try
    End Function

    Private Function DeleteFile(ByVal Filename As String)
        Try
            If Filename <> "" Then File.Delete(Filename)
        Catch
        End Try
    End Function

    Private Function ReadFile(ByVal FileName As String) As Byte()
        Dim fs As FileStream

        Try
            ' Read file and return contents
            fs = File.Open(FileName, FileMode.Open, FileAccess.Read)

            Dim lngLen As Long = fs.Length
            Dim Buffer(CInt(lngLen - 1)) As Byte

            fs.Read(Buffer, 0, CInt(lngLen))
            fs.Close()

            Return Buffer

        Catch ex As Exception
            fs.Close()
            Throw New Exception("Unable to read file : " & ex.Message)
        End Try
    End Function

    Private Sub InitReport(ByRef oRptDoc As ReportDocument, ByVal FileName As String, ByVal ParamData As String, ByVal FSelection As String)
        Dim tbCurrent As CrystalDecisions.CrystalReports.Engine.Table
        Dim tliCurrent As CrystalDecisions.Shared.TableLogOnInfo
        Dim P1Name As String, P2Name As String
        Dim P1Value As String, P2Value As String
        Dim PData() As String
        Dim I As Integer = 0

        Try
            oRptDoc.Load(HttpContext.Current.Server.MapPath(ConfigurationSettings.AppSettings("ReportFilePath")) & FileName)

            If ParamData <> "" Then
                PData = Split(ParamData, ",")
                Do While I < UBound(PData)
                    oRptDoc.SetParameterValue(PData(I), PData(I + 1))
                    I += 2
                Loop
            End If

            If FSelection & "" <> "" Then
                oRptDoc.RecordSelectionFormula = FSelection
            End If

            For Each tbCurrent In oRptDoc.Database.Tables
                tliCurrent = tbCurrent.LogOnInfo
                With tliCurrent.ConnectionInfo
                    .ServerName = _DB_DataSource
                    .UserID = _DB_UserName
                    .Password = _DB_Password
                    .DatabaseName = _DB_Name
                End With
                tbCurrent.ApplyLogOnInfo(tliCurrent)
            Next tbCurrent

        Catch ex As Exception
            Throw New Exception("Unable to load report : " & ex.Message)
        End Try
    End Sub

    Public Function ExportReport(ByVal FileName As String, ByVal ParamData As String, Optional ByVal Format As String = "pdf", Optional ByVal FSelection As String = "") As String
        Dim ExportPath As String
        Dim SaveName As String
        Dim TempFile
        Dim crExportOptions As ExportOptions
        Dim crDiskFileDestinationOptions As DiskFileDestinationOptions
        Dim FName As String
        Dim Export_File As String
        Dim oRptDoc As New ReportDocument

        Try
            InitReport(oRptDoc, FileName, ParamData, FSelection)

            FName = Replace(FileName.Substring(FileName.LastIndexOf("/") + 1), ".rpt", "")
            ExportPath = HttpContext.Current.Server.MapPath(ConfigurationSettings.AppSettings("FilePath") & "")
            If Directory.Exists(ExportPath) = False Then
                Directory.CreateDirectory(ExportPath)
            End If

            crDiskFileDestinationOptions = New DiskFileDestinationOptions
            crExportOptions = oRptDoc.ExportOptions
            crExportOptions.ExportDestinationType = ExportDestinationType.DiskFile
            SaveName = FName

            Randomize()
            SaveName = SaveName + "_" + CStr(Rnd())

            SaveName += "." + Format
            With crExportOptions
                Select Case Format.ToUpper
                    Case "PDF"
                        .DestinationOptions = crDiskFileDestinationOptions
                        .ExportFormatType = ExportFormatType.PortableDocFormat
                    Case "XLS", "MS Excel (XLS)"
                        .ExportFormatType = ExportFormatType.Excel
                        .DestinationOptions = crDiskFileDestinationOptions
                End Select
            End With

            crDiskFileDestinationOptions.DiskFileName = ExportPath + SaveName
            Export_File = ExportPath + SaveName
            'Export_File = "../files/Reports/" + SaveName
            oRptDoc.Export()
            Return Export_File


        Catch ex As Exception
            Throw New Exception("Unable to get report file : " & ex.ToString)
        End Try
    End Function

    Public Function SaveReportFile(ByVal FileName As String, ByVal ParamData As String, Optional ByVal Format As String = "pdf", Optional ByVal OwnFileName As String = "", Optional ByVal FSelection As String = "") As String
        Dim ExportPath As String
        Dim SaveName As String
        Dim TempFile
        Dim crExportOptions As ExportOptions
        Dim crDiskFileDestinationOptions As DiskFileDestinationOptions
        Dim FName As String
        Dim Export_File As String
        Dim oRptDoc As New ReportDocument

        Try
            Try
                InitReport(oRptDoc, FileName, ParamData, FSelection)
            Catch ex As Exception
                Throw New Exception("Unable to Init file : " & ex.ToString)
            End Try


            FName = Replace(FileName.Substring(FileName.LastIndexOf("/") + 1), ".rpt", "")
            ExportPath = HttpContext.Current.Server.MapPath(ConfigurationSettings.AppSettings("FilePath") & "")
            If Directory.Exists(ExportPath) = False Then
                Directory.CreateDirectory(ExportPath)
            End If

            crDiskFileDestinationOptions = New DiskFileDestinationOptions
            crExportOptions = oRptDoc.ExportOptions
            crExportOptions.ExportDestinationType = ExportDestinationType.DiskFile
            SaveName = FName

            Randomize()
            SaveName = SaveName + "_" + CStr(Rnd())
            If OwnFileName <> "" Then
                SaveName = OwnFileName
            End If
            SaveName += "." + Format
            With crExportOptions
                Select Case Format.ToUpper
                    Case "PDF"
                        .DestinationOptions = crDiskFileDestinationOptions
                        .ExportFormatType = ExportFormatType.PortableDocFormat
                    Case "XLS", "MS Excel (XLS)"
                        .ExportFormatType = ExportFormatType.Excel
                        .DestinationOptions = crDiskFileDestinationOptions
                End Select
            End With

            crDiskFileDestinationOptions.DiskFileName = ExportPath + SaveName
            Export_File = ExportPath + SaveName
            'Export_File = "../files/Reports/" + SaveName
            oRptDoc.Export()
            'Return Export_File
            Return ""


        Catch ex As Exception
            Throw New Exception("Unable to save report file : " & ex.ToString)
        End Try
    End Function


End Class
