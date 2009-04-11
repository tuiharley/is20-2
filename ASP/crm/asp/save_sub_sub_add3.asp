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
	Dim social_name, Rs, Sql, id, cgcode
	social_name = Request.Form("social_name")
	cgcode = Request.Form("cgcode")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	sql = "SELECT MAX(SOCIAL_ID) AS COUNT FROM SOCIAL"
	Rs.Open Sql,Session("Conn1"),1,3
	if IsNull(Rs("COUNT")) then
		id = 1
	else 
		id = Rs("COUNT") + 1
	end if
	Rs.Close
	Sql = "INSERT INTO SOCIAL(SOCIAL_ID, SOCIAL_NAME)  VALUES (" &id &",'" & social_name &"')"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Dialog1','sub_custmain_add3.asp?cgcode=<%=cgcode%>&social_id=<%=id%>');
	top.HideWindow('Dialog2');
</script>
</BODY>
</HTML>