<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<HTML>
<HEAD>
	<meta http-equiv=Expires content=0>
	<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
	<link href=/include/stylesheet.css rel=stylesheet type=text/css>
</HEAD>
<BODY>
<%
	Dim empid, req_tel, Rs, Sql
	empid = Request.Form("empid")
	req_tel = Request.Form("req_tel")
	
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "INSERT INTO REQUEST_LOGIN(EMP_ID, TEL, DATE_REQ) values ('"& empid &"', '" & req_tel &"', getdate())"
	Rs.Open Sql,Session("Conn1"),1,3

	Dim CDONTS, emailfrom, emailto, subject, body, body2, side_ab, name, sur

	emailfrom = "CRM"
	subject = "CRM : แจ้งมีผู้ร้องขอ user login"
	body2 = ""
	body2 = body2 & "<br>"
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & empid & "' "
	Rs.Open Sql,Session("Conn1"),1,3
		body2 = body2 & "คุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " รหัสพนักงาน (" & empid & ") ได้ทำการขอ user login ผ่านระบบจึงแจ้งมาเพื่อทราบ"
	Rs.Close

	body = ""
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='1437' "
	Rs.Open Sql,Session("Conn1"),1,3
		emailto = Rs("EMAIL")
		body = body & "เรียนคุณ" & Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") & " "
		body = body & body2
	Rs.Close
	
	set CDONTS = Server.CreateObject("CDONTS.NewMail")
	CDONTS.From = emailfrom
	CDONTS.To = emailto
	CDONTS.BodyFormat = 0
	CDONTS.MailFormat = 0
	CDONTS.Subject = subject
	CDONTS.Body = body
	CDONTS.Send
%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
	top.FullPage.document.body.style.cursor='wait'; 
	top.RunWindow('FullPage','login.asp');
</script>
</BODY>
</HTML>