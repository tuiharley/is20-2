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

	Dim compid, speed, num, dateef, cgcode, maxid, service, pomoid
	compid = Request.Form("compid")
	service = Request.Form("service")
	speed = Request.Form("speed")
	num = Request.Form("num")
	dateef = Request.Form("dateef")
	cgcode = Request.Form("cgcode")
	pomoid = Request.Form("pomoid")
	if pomoid ="" then
		pomoid="null"
	end if
	maxid = 1
	Sql = "SELECT MAX(NVID) AS NVID FROM NONVOICE_FUTURE WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("NVID")) then
			maxid = Rs("NVID")+1
		end if
	end if
	Rs.Close

	
	Sql = "INSERT INTO NONVOICE_FUTURE(NVID, CG_CODE, COMPID, NONID, PROMOID, SPEED, NUM, DATEEF)  VALUES (" & maxid & ",'" & cgcode & "', "& compid & ", "& service &", "& pomoid &", "& speed &"," & num & ", CONVERT(DATETIME, '" & right(dateef,4) & "-" & mid(dateef,4,2) & "-" & left(dateef,2) & " 00:00:00', 102))"	
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add9.asp?cgcode=<%=cgcode%>');
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>