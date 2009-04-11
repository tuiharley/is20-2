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

	dim service_id , service_type
	service_id = Request.QueryString("SERVICEID")
	service_type= Request.QueryString("SERVICETYPE")

	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	if service_type = "voice" then
			Sql = "DELETE  FROM VOICE_SERVICE WHERE VOICEID = " +  service_id 
	elseif  service_type = "nonvoice" then
			Sql = "DELETE  FROM NONVOICE_SERVICE WHERE NONID = " +  service_id 
	end if
	
	
	response.write(Sql)
	Rs.Open Sql,Session("Conn1"),1,3
	
	
%>
<script language=javascript>
	top.RunWindow('Desktop2','kind_of_service.asp?opt=<%=service_type%>');
</script>
</BODY>
</HTML>
