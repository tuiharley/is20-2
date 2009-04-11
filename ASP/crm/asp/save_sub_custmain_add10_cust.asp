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
	Dim cpid, pdate, solid, sdate, Rs, Sql, cgcode, maxid
	set Rs = Server.CreateObject("Adodb.RecordSet")

	cpid = Request.Form("cpid")
	pdate = Request.Form("pdate")
	solid = Request.Form("solid")
	sdate = Request.Form("sdate")
	cgcode = Request.Form("cgcode")
	maxid = 1
	
	Sql = "SELECT MAX(PROB_ID) AS PROB_ID FROM PROBLEM WHERE (CG_CODE = '" & cgcode &"') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not isnull(Rs("PROB_ID")) then
			maxid = Rs("PROB_ID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO PROBLEM(CG_CODE, PROB_ID, TYPE, PID, PDATE, SOLID, SDATE)  VALUES ('" & cgcode &"'," & maxid &",'c', '" & cpid & "', CONVERT(DATETIME, '" & right(pdate,4) & "-" & mid(pdate,4,2) & "-" & left(pdate,2) & " 00:00:00', 102), '"& solid &"', CONVERT(DATETIME, '" & right(sdate,4) & "-" & mid(sdate,4,2) & "-" & left(sdate,2) & " 00:00:00', 102))"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.HideWindow('Dialog1');
	top.RunWindow('Desktop3','custmain_add10.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>