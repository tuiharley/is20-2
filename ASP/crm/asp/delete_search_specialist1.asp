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
	Dim empcode , empcodetmp , app_id, cgcode
	empcode = Request.QueryString("empcode")
	empcodetmp= Request.QueryString("empcodetmp")
	app_id = Request.QueryString("app_id")
	cgcode=Request.QueryString("cgcode")
	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	Sql = "DELETE  FROM APP_EMPAPP  WHERE (EMP_ID ='" & empcode & "' ) AND (APP_ID = '" & app_id & "')"
	Rs.Open Sql,Session("Conn1"),1,3
	
	
%>
<script language=javascript>

top.ShowRunWindow('DialogS1','add_specialist1.asp?cgcode=<%=cgcode%>&app_id=<%=app_id%>&empcode=<%=empcodetmp%>')
</script>
</BODY>
</HTML>
