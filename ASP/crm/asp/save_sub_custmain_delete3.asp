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
	Dim Rs, Sql, cgcode, memid
	cgcode = Request.Form("cgcode")
	memid = Request.Form("memid")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "DELETE FROM MEMBER WHERE MEMBER.CG_CODE = '" & cgcode & "' AND MEMBER.MEMID= '"& memid &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add3.asp?cgcode=<%=cgcode%>');
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>