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
	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim empid
	empid = Request.QueryString("empid")

	Sql = "DELETE EMP_LEVEL  WHERE EL_EMPID = '" & empid & "' "
	Rs.Open Sql,Session("Conn1"),1,3

	Sql = "DELETE STATUS_USER  WHERE EL_EMPID = '" & empid & "' "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop2.document.body.style.cursor='wait'; 
	top.Desktop2.document.form4.submit();
</script>
</BODY>
</HTML>
