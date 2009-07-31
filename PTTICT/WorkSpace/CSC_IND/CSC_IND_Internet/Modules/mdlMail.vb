Imports System.Web.Mail
Imports System.Text

Module mdlMail

    Public SMTP_Server As String
    Public Alert_URL As String
    Public Sender_EMail As String
    Public Test_EMail As String

    Public Function SendMail(ByVal usrFrom As String, ByVal usrTo As String, ByVal usrSubject As String, ByVal usrMessage As String, Optional ByVal SendData() As Mail.MailAttachment = Nothing, Optional ByVal IsHTML As Boolean = False, Optional ByVal IncludeSubj As Boolean = False)
        Dim MyMail As New MailMessage
        Dim I As Integer
        Try
            If SMTP_Server = "" Then SMTP_Server = gsSMTPServer
            If usrFrom = "" Then usrFrom = gsSenderEMail
            If Test_EMail = "" Then Test_EMail = gsTestEMail

            If Test_EMail <> "" Then
                usrMessage = "To: " & usrTo & vbCrLf & usrMessage
                usrTo = Test_EMail
            End If
            If IncludeSubj = True AndAlso usrSubject <> "" Then
                If IsHTML = True Then
                    usrMessage = usrSubject + "<br><br>" + usrMessage
                Else
                    usrMessage = usrSubject + Chr(13) + usrMessage
                End If
            End If
            If IsHTML = True Then MyMail.BodyFormat = MailFormat.Html
            MyMail.To = usrTo
            MyMail.From = usrFrom
            MyMail.Subject = usrSubject
            MyMail.Body = usrMessage
            If Not IsNothing(SendData) Then
                For I = 0 To SendData.Length - 1
                    If Not IsNothing(SendData(I)) Then MyMail.Attachments.Add(SendData(I))
                Next
            End If

            SmtpMail.SmtpServer = SMTP_Server
            SmtpMail.Send(MyMail)

            Return ""
            MyMail = Nothing

        Catch ex As Exception
            Return " เกิดข้อผิดพลาดในการส่งเมล์ ( " & ex.Message & " )"
        End Try

    End Function

    Public Function Email_Rights(ByVal Email As String, ByVal Issue_id As Int32)
        Dim rights As String
        rights = Encrypted2(Email & "encrpted by thaiintersol", Issue_id)
        rights = Replace(rights, "+", "")
        Return rights
    End Function

    Function Encrypted2(ByVal Key1, ByVal Key2) As String
        Dim I
        Dim X
        Dim S
        Dim L
        Key1 = Trim(CStr(Key1))
        Key2 = Trim(CStr(Key2))
        X = 55
        L = Len(Key1)
        For I = 1 To L
            If I > L - Len(Key1) Then
                X = (X + I) Xor Asc(Mid(Key1, L - I + 1, 1))
            Else
                X = X Xor I
            End If
            If I <= Len(Key2) Then
                X = X Xor Asc(Mid(Key2, I, 1))
            Else
                X = X Xor (I * 3)
            End If
            X = X And 127
            If X = 124 Then
                X = 125
            ElseIf (X < 32) Then
                X = X + 32
            End If
            If X = 39 Then X = 40
            S = S & Chr(X)
        Next
        Encrypted2 = S
    End Function

    Public Function SendERMail(ByVal RecpEMail As String, ByVal URL As String, Optional ByVal SendData() As Mail.MailAttachment = Nothing) As String
        Dim MailMsg As String

        If RecpEMail <> "" Then
            MailMsg = "เรียน ผู้เกี่ยวข้อง" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "      มีใบสมัครที่ผ่านการทดสอบตามขั้นตอน ซึ่งมีข้อมูลตามรายละเอียดไฟล์ที่แนบมา" & vbCrLf & vbCrLf & vbCrLf & vbCrLf
            MailMsg += " จึงเรียนมาเพื่อทราบ" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "จาก  ผู้จัดการและดูแลใบสมัคร " & vbCrLf & vbCrLf & vbCrLf
            SendERMail = SendMail(Sender_EMail, RecpEMail, "Approved Resume(s) from E-Recruitment System", MailMsg, SendData)
        End If
    End Function

    Public Function SendMailWithURL(ByVal RecpEMail As String, ByVal URL As String) As String
        Dim MailMsg As String

        If RecpEMail <> "" Then
            MailMsg = "เรียน ผู้จัดการและดูแลใบสมัคร" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "      มีใบสมัครที่ผ่านการทดสอบตามขั้นตอน ซึ่งมีข้อมูลตาม URL ที่แนบมา" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += URL
            MailMsg += " จึงเรียนมาเพื่อทราบ" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "จาก  ผู้ตรวจสอบใบสมัคร " & "( " & HttpContext.Current.Session("USER_DESC") & " - " & HttpContext.Current.Session("COMPANY_TNAME") & " )" & vbCrLf & vbCrLf & vbCrLf
            MailMsg = Replace(MailMsg, Chr(13), "<br>")
            SendMailWithURL = SendMail(Sender_EMail, RecpEMail, "Approved Resume(s) from E-Recruitment System", MailMsg, , True)
        End If
    End Function

    Public Function SendPwdMail(ByVal RecpEMail As String, ByVal Pwd As String) As String
        Dim MailMsg As String

        If RecpEMail <> "" Then
            MailMsg = "เรียน ผู้สมัคร" & vbCrLf & vbCrLf & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "      รหัสผ่านของท่าน คือ " & Pwd & vbCrLf & vbCrLf & vbCrLf & vbCrLf
            MailMsg += " กรุณาจำรหัสผ่านของท่านไว้เป็นอย่างดี เพื่อความถูกต้องในการตรวจสอบผลการสอบของท่าน ขอบคุณสำหรับการใช้บริการของท่าน" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "จาก  ผู้ดูแลระบบ " & vbCrLf & vbCrLf & vbCrLf
            MailMsg += " **********************************************************************************************************************" & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "      Your password is  " & Pwd & vbCrLf & vbCrLf & vbCrLf & vbCrLf
            MailMsg += " Please keep your password for correcting to check your tests. Thank you for your apply." & vbCrLf & vbCrLf & vbCrLf
            MailMsg += "From System Administrator " & vbCrLf & vbCrLf & vbCrLf
            MailMsg += " **********************************************************************************************************************" & vbCrLf & vbCrLf & vbCrLf

            SendPwdMail = SendMail(Sender_EMail, RecpEMail, "Your password from E-Recruitment System", MailMsg)
        End If
    End Function

End Module
