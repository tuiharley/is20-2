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

	dim COID
	COID = Request.QueryString("COID")

	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	Sql = "DELETE  FROM COMMUNICATION_TTT WHERE COID = " +  COID 
	response.write(Sql)
	Rs.Open Sql,Session("Conn1"),1,3
	
	
%>
<script language=javascript>
	top.RunWindow('Desktop2','commu_ttt.asp');
</script>
</BODY>
</HTML>
