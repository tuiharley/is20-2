Imports System.Web.Mail
Module EmailDB
    
    Public Sub sendMailQuestion(ByVal email As String, ByVal custID As Integer, ByVal carID As Integer, ByVal cat As Integer, ByVal mailDetail As mailQuestion)


        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = email
        myMail.From = "Question@auto-onclick.com"
        myMail.Subject = "Question about Advertise#" & NoticeDB.getNoticeCode2(carID, cat) & " from www.Auto-Onclick.com's member."
        myMail.BodyFormat = MailFormat.Html

        mailbody = "คำถามจากคุณ " & mailDetail.name & "<BR>"
        mailbody = mailbody & "เกี่ยวกับประกาศหมายเลขอ้างอิง  #" & NoticeDB.getNoticeCode2(carID, cat) & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.mail & "<BR>"
        mailbody = mailbody & "Tel  : " & mailDetail.tel & "<BR><BR>"
        mailbody = mailbody & "คำถาม : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody

        Try
            SmtpMail.SmtpServer.Insert(0, "127.0.0.1")
            SmtpMail.Send(myMail)
        Catch ex As Exception
            Dim x As String
            x = ex.Message

        End Try


        myMail = Nothing


    End Sub
    Public Sub sendMailQuestion2(ByVal mailDetail As mailQuestion)


        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = mailDetail.mail

        myMail.From = mailDetail.mail_From
        myMail.Subject = mailDetail.topic
        myMail.BodyFormat = MailFormat.Html

        mailbody = "คำถามจากคุณ " & mailDetail.name & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.mail_From & "<BR>"
        mailbody = mailbody & "คำถาม : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing


    End Sub
    Public Sub sendMailWarn(ByVal mailDetail As mailQuestion, ByVal mailWarn As WarnMail)


        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = mailDetail.mail

        myMail.From = mailDetail.mail_From
        myMail.Subject = "แจ้งลบประกาศ"
        myMail.BodyFormat = MailFormat.Html

        mailbody = "แจ้งลบประกาศจากคุณ " & mailDetail.name & "<BR>"
        mailbody = mailbody & "หัวข้อ: " & mailDetail.topic & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.mail_From & "<BR>"
        mailbody = mailbody & "ประกาศเลขที่: " & mailWarn.Dealer_Notice_Abc & mailWarn.Detail_Id & "<BR>"
        mailbody = mailbody & "ประเภท: " & mailWarn.Dealer_Type & "<BR>"
        mailbody = mailbody & "ของคุณ: " & mailWarn.Customer_Username & " - " & mailWarn.Customer_Name & " " & mailWarn.Customer_Surname & "<BR><BR>"
        mailbody = mailbody & "สิ่งที่ลงประกาศ: " & mailWarn.Brand_name & "<BR>"
        mailbody = mailbody & "Email เจ้าของประกาศ: " & mailWarn.Customer_Email & "<BR>"
        mailbody = mailbody & "เบอร์โทรเจ้าของประกาศ: " & mailWarn.Customer_Phone1 & "<BR><BR>"

        mailbody = mailbody & "สาเหตุการแจ้งลบ : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing


    End Sub
    Public Sub sendMailRequest(ByVal email As String)

        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = email
        myMail.From = "requestSearch@auto-onclick.com"
        myMail.Subject = "รายการฝากค้นหากับ Auto-Onclick.com"
        myMail.BodyFormat = MailFormat.Html

        mailbody = "<table width='848' border='0' cellpadding='0' cellspacing='0' ID='Table1' >"
        mailbody = mailbody & "<tr bgcolor='#FFFFFF' >"
        mailbody = mailbody & "<td height='99' colspan='3' valign='middle'><table width='848' height='99' border='0' cellpadding='0' cellspacing='0' background='http://www.auto-onclick.com/images/main_table/ao_heading_848x99.jpg'"
        mailbody = mailbody & "ID='Table2'>"
        mailbody = mailbody & "<tr>"
        mailbody = mailbody & "<td><div align='right'><img src='http://www.auto-onclick.com/images/objects/full-banner-468-60.gif' width='468' height='60'></div>"
        mailbody = mailbody & "</td>"
        mailbody = mailbody & "<td width='175'></td>"
        mailbody = mailbody & "</tr>"
        mailbody = mailbody & "</table>"
        mailbody = mailbody & "</td>"
        mailbody = mailbody & "</tr>"
        mailbody = mailbody & "</table>"

        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing

    End Sub
    Public Sub sendMailContact(ByVal mailContact As mailRequest)

        Dim myMail As New MailMessage
        Dim myCust As A_Customer = CustomerDB.getA_customer(mailContact.reqTo)
        Dim mailbody As String
        myMail.To = myCust.email
        myMail.From = "Question@auto-onclick.com"
        myMail.Subject = "Question from www.Auto-Onclick.com's member."
        myMail.BodyFormat = MailFormat.Html

        mailbody = "เรียน " & TitleDB.getTitleName(myCust.title) & myCust.name & " " & myCust.surname & "<BR>"
        mailbody = mailbody & "คำถามจาก " & mailContact.title & mailContact.name & "<BR>"
        mailbody = mailbody & "Email: " & mailContact.email & "<BR>"
        mailbody = mailbody & "Tel  : " & mailContact.phone & "<BR><BR>"
        mailbody = mailbody & "มีความประสงค์ : " & mailContact.request & "<BR>"
        mailbody = mailbody & "กรุณาติดต่อกลับ : " & mailContact.callback & "<BR>"
        mailbody = mailbody & "อื่นๆ : " & mailContact.more & "<BR>"


        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing

    End Sub
    Public Sub sendMail2Fr(ByVal mailDetail As send2Friend, ByVal myCar As Object, ByVal cat As Integer)

        Dim picURL As String = ConfigurationSettings.AppSettings("picURL")
        Dim myMail As New MailMessage
        Dim mailbody As String
        myMail.To = mailDetail.send_Email

        myMail.From = mailDetail.send_EmailFrom
        myMail.Subject = "ประกาศจากระบบของ www.auto-onclick.com"
        myMail.BodyFormat = MailFormat.Html

        mailbody = "ประกาศนี้ได้ถูกจัดส่งโดยคุณ " & mailDetail.send_By & "<BR>"
        mailbody = mailbody & "Email: " & mailDetail.send_EmailFrom & "<BR>"
        mailbody = mailbody & "ข้อความฝากถึง: " & mailDetail.send_Topic & "<BR>"
        mailbody = mailbody & "<BR>"
        Select Case cat
            Case 1
                mailbody = mailbody & "ท่านสามารถเข้าดูประกาศนี้ได้จากเวปของเรา : <a href='" & picURL & "public/startpage/search3_detail_car00.aspx?carid=" & myCar.id & "' >คลิ๊กที่นี่</a><BR>"
                mailbody = mailbody & CarDB.getSend2Fr(myCar)
            Case 2
                mailbody = mailbody & "ท่านสามารถเข้าดูประกาศนี้ได้จากเวปของเรา : <a href='" & picURL & "public/startpage/search3_detail_moto00.aspx?carid=" & myCar.id & "' >คลิ๊กที่นี่</a><BR>"
                mailbody = mailbody & BikeDB.getSend2Fr(myCar)
            Case 3
                mailbody = mailbody & "ท่านสามารถเข้าดูประกาศนี้ได้จากเวปของเรา : <a href='" & picURL & "public/startpage/search3_detail_truck00.aspx?carid=" & myCar.id & "' >คลิ๊กที่นี่</a><BR>"
                mailbody = mailbody & TruckDB.getSend2Fr(myCar)
            Case 4, 5
                mailbody = mailbody & "ท่านสามารถเข้าดูประกาศนี้ได้จากเวปของเรา : <a href='" & picURL & "public/startpage/search3_detail_part00.aspx?carid=" & myCar.id & "' >คลิ๊กที่นี่</a><BR>"
                mailbody = mailbody & PartsDB.getSend2Fr(myCar)
            Case 6
                mailbody = mailbody & "ท่านสามารถเข้าดูประกาศนี้ได้จากเวปของเรา : <a href='" & picURL & "public/startpage/search3_detail_job00.aspx?jobId=" & myCar.Job_Id & "' >คลิ๊กที่นี่</a><BR>"
                mailbody = mailbody & JobDB.getSend2Fr(myCar)

        End Select
        'mailbody = mailbody & "ประกาศเลขที่: " & mailWarn.Dealer_Notice_Abc & mailWarn.Notice_Id & "<BR>"
        'mailbody = mailbody & "ประเภท: " & mailWarn.Dealer_Type & "<BR>"
        'mailbody = mailbody & "ของคุณ: " & mailWarn.Customer_Username & " - " & mailWarn.Customer_Name & " " & mailWarn.Customer_Surname & "<BR>"
        'mailbody = mailbody & "สิ่งที่ลงประกาศ: " & mailWarn.Brand_name & "<BR>"
        'mailbody = mailbody & "Email เจ้าของประกาศ: " & mailWarn.Customer_Email & "<BR>"
        'mailbody = mailbody & "เบอร์โทรเจ้าของประกาศ: " & mailWarn.Customer_Phone1 & "<BR>"
        'mailbody = mailbody & "สาเหตุการแจ้งลบ : " & mailDetail.question & "<BR>"
        myMail.Body = mailbody
        SmtpMail.Send(myMail)

        myMail = Nothing


    End Sub

    Structure mailQuestion
        Dim name As String
        Dim mail As String
        Dim mail_From As String
        Dim tel As String
        Dim question As String
        Dim topic As String
    End Structure

    Structure mailRequest
        Dim reqTo As Integer
        Dim title As String
        Dim name As String
        Dim request As String
        Dim phone As String
        Dim callback As String
        Dim email As String
        Dim more As String
    End Structure

End Module
