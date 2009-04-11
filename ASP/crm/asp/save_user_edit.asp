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

	Dim empid, flag, tel
	empid = Request.Form("empid")
	flag = Request.Form("flag")
	tel = Request.Form("tel")

	Sql = "UPDATE EMP_LEVEL SET EL_EMPID= '" & empid & "', EL_TEL= '"& tel &"', L_LEVEL_CODE=" & flag & " WHERE EL_EMPID = '" & empid & "' "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop2.document.body.style.cursor='wait'; 
	top.Desktop2.document.form4.submit();
	top.HideWindow('Desktop3')
</script>
</BODY>
</HTML>
