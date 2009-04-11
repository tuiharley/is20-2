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
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
%>
<%
	Dim empid, tel, level, opendate1, Rs, Sql
	empid = Request.Form("empid")
	tel = Request.Form("tel")
	level = Request.Form("level")
	opendate1 = Request.Form("opendate1")
	
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "INSERT INTO EMP_LEVEL(EL_EMPID, EL_TEL, EL_DATE_REQ, L_LEVEL_CODE, EL_DATE_UPDATE, EL_CODE_UPDATE) values ('"& empid &"', '" & tel & "', CONVERT(DATETIME, '" & right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2) & " " & "00:00:00', 102),'" & level & "', getdate(),'" & Session("User_Id") &"') "
	Rs.Open Sql,Session("Conn1"),1,3

	Sql = "INSERT INTO STATUS_USER(EL_EMPID, SU_BEGINDATE) values ('"& empid &"', getdate()) "
	Rs.Open Sql,Session("Conn1"),1,3
	
	Sql = "DELETE REQUEST_LOGIN WHERE EMP_ID = '"& empid &"'"
	Rs.Open Sql,Session("Conn1"),1,3

	Dim CDONTS, emailfrom, emailto, subject, body, body2, side_ab, name, sur

	emailfrom = "CRM"
	subject = "CRM : แจ้งอนุมัติ user login"
	body2 = ""
	body2 = body2 & "<br>"
	body2 = body2 & "ระบบได้ทำการอนุมัติ user login ของท่านเป็นการเรียบร้อยแล้ว"

	body = ""
	Sql = "SELECT EMP_ID, TITLE_THAI, NAME_THAI, SURNAME_THAI, EMAIL FROM EMPLOYEE WHERE EMP_ID='" & empid & "' "
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
	top.Desktop2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop2','create_level.asp');
</script>
</BODY>
</HTML>