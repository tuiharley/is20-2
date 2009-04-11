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

	Dim compid, service, speed, num, total, setup, cgcode, maxid, pomoid, dateef
	compid = Request.Form("compid")
	service = Request.Form("service")
	pomoid = Request.Form("pomoid")
	dateef = Request.Form("dateef")
	if pomoid = "" then
		pomoid = "null"
	end if
	num = Request.Form("num")
	total = Request.Form("total")
	cgcode = Request.Form("cgcode")

	maxid = 1
	Sql = "SELECT MAX(VCID) AS VCID FROM VOICE_CUST_USE WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("VCID")) then
			maxid = Rs("VCID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO VOICE_CUST_USE(VCID, CG_CODE, COMPID, VOICEID, PROMOID, NUM, TOTAL)  VALUES (" & maxid & ",'" & cgcode & "', "& compid & ", "& service &"," & pomoid & "," & num & "," & total & ") "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>');
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>