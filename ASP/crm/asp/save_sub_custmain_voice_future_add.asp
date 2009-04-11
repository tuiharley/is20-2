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
	Dim  Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim compid, service, speed, num, cgcode, maxid, pomoid, dateef
	compid = Request.Form("compid")
	service = Request.Form("service")
	pomoid = Request.Form("pomoid")
	if pomoid = "" then
		pomoid = "null"
	end if
	num = Request.Form("num")
	cgcode = Request.Form("cgcode")
	dateef = Request.Form("dateef")

	maxid = 1
	Sql = "SELECT MAX(VCID) AS VCID FROM VOICE_FUTURE WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("VCID")) then
			maxid = Rs("VCID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO VOICE_FUTURE(VCID, CG_CODE, COMPID, VOICEID, PROMOID, NUM, DATEEF)  VALUES (" & maxid & ",'" & cgcode & "', "& compid & ", "& service &"," & pomoid & "," & num & ", CONVERT(DATETIME, '" & right(dateef,4) & "-" & mid(dateef,4,2) & "-" & left(dateef,2) & " 00:00:00', 102)) "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add9.asp?cgcode=<%=cgcode%>');
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>