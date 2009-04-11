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
	Dim social_id, post, Rs, Sql, cgcode, memid
	set Rs = Server.CreateObject("Adodb.RecordSet")

	social_id = Request.Form("social_id")
	post = Request.Form("post")
	memid = Request.Form("memid")
	cgcode = Request.Form("cgcode")

	Sql = "UPDATE MEMBER SET SOCIAL_ID = "& social_id &", POSTION = '" & post & "' WHERE MEMBER.CG_CODE='" & cgcode &"' AND MEMID = "& memid &""
Response.Write(Sql)
Response.End()
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add3.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>