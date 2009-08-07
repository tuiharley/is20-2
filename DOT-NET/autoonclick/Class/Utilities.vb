Imports System.IO
Imports System.Security.Cryptography
Imports System.Text
Public Class Utilities
    Public Shared Sub CreateConfirmBox(ByRef btn As WebControls.Button, ByVal strMessage As String)
        'btn.Attributes.Add("onclick", "return confirm('" & strMessage & "');")
        btn.Attributes.Add("onclick", "return alert('" & strMessage & "');")
    End Sub
    Public Shared Sub showAlert(ByVal thePage As Page, ByVal ctrl As Control, ByVal strShow As String)
        ' Define the JavaScript function for the specified control.
        'Dim focusScript As String = "<script language='javascript'>" & _
        '  "document.getElementById('" + ctrl.ClientID & _
        '  "').focus();</script>"
        Dim focusScript As String
        focusScript = "<script language='javascript'>"
        focusScript = focusScript & "alert('" & strShow & "');"
        focusScript = focusScript & "document.getElementById('" + ctrl.ClientID + "').value='';"
        focusScript = focusScript & "</script>"

        ' Add the JavaScript code to the page.
        thePage.RegisterStartupScript("FocusScript", focusScript)
    End Sub
    Public Shared Sub showAlert2(ByVal thePage As Page, ByVal ctrl As Control, ByVal strShow As String)
        ' Define the JavaScript function for the specified control.
        'Dim focusScript As String = "<script language='javascript'>" & _
        '  "document.getElementById('" + ctrl.ClientID & _
        '  "').focus();</script>"
        Dim focusScript As String
        focusScript = "<script language='javascript'>"
        focusScript = focusScript & "alert('" & strShow & "');"
        'focusScript = focusScript & "document.getElementById('" + ctrl.ClientID + "').focus();"
        focusScript = focusScript & "alert(document.getElementById('" + ctrl.ClientID + "'));"
        focusScript = focusScript & "</script>"

        ' Add the JavaScript code to the page.
        thePage.RegisterStartupScript("FocusScript", focusScript)
    End Sub


    Public Shared Sub createSubDir(ByVal startPath As String, ByVal usrName As String, ByVal subName As String)

        Dim pathDirectory As String = Path.GetDirectoryName(startPath)
        Dim objdir As DirectoryInfo = New DirectoryInfo(pathDirectory & "userData\")
        objdir.CreateSubdirectory(usrName & "\" & subName)

    End Sub

    Public Shared Function getFileName(ByVal Fileupload As Object) As String
        If Fileupload.PostedFile.ContentLength = 0 Or Fileupload.PostedFile.ContentLength >= 150010 Then
            Return ""
        Else
            Dim FileFullName As String = Fileupload.PostedFile.FileName
            Dim FileName As String = Path.GetFileName(FileFullName)
            'Return "'" & FileName & "'"
            Return FileName
        End If
    End Function
    Public Shared Function UploadFile(ByVal Fileupload As Object, ByVal temppath As String) As String
        Dim FileFullName As String = Fileupload.PostedFile.FileName

        Dim FileName As String = Path.GetFileName(FileFullName)
        '  Dim temppath As String = Server.MapPath("/userData") & "\" & Session("username") & "\" & Session("maxnoticedetailid")
        If FileName <> "" Then
            Fileupload.PostedFile.SaveAs(temppath & "\" & FileName)
        Else
            Return "null"
        End If
        Return "'" & FileName & "'"
    End Function
    Public Shared Function getPasswd(ByVal passwd As String) As String
        Dim key As String = "onclick"
        Dim encrypted As String
        Dim encryptedPassword As New MemoryStream
        Dim RC2 As New RC2CryptoServiceProvider
        RC2.Key = Encoding.ASCII.GetBytes(key)

        Dim iv() As Byte = {11, 12, 33, 50, 78, 25, 72, 84}
        RC2.IV = iv
        Dim myEncryptor As ICryptoTransform = RC2.CreateEncryptor()
        Dim pwd() As Byte = Encoding.ASCII.GetBytes(passwd)
        Dim myCryptoStream As New CryptoStream(encryptedPassword, myEncryptor, CryptoStreamMode.Write)
        myCryptoStream.Write(pwd, 0, pwd.Length)
        myCryptoStream.Close()
        encrypted = Convert.ToBase64String(encryptedPassword.ToArray())


        Return encrypted
    End Function

    Public Shared Function checkDateMore7(ByVal inputDate As Date) As Boolean
        Dim x As Integer

        x = DateDiff(DateInterval.Day, inputDate, Now)
        If x < 7 Then
            Return False
        Else
            Return True
        End If


    End Function

   

End Class

