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

	dim PROBID , PROBTYPE
	PROBID = Request.QueryString("PROBID")
	PROBTYPE= Request.QueryString("PROBTYPE")

	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	if PROBTYPE = "1" then
			Sql = "DELETE  FROM TTT_PROB WHERE TPID = " +  PROBID 
	elseif  PROBTYPE = "2" then
			Sql = "DELETE  FROM CUST_PROB WHERE CPID = " +  PROBID 
	end if
	
	
	response.write(Sql)
	Rs.Open Sql,Session("Conn1"),1,3
	
	
%>
<script language=javascript>
	top.RunWindow('Desktop2','problem.asp?opt=<%=PROBTYPE%>');
</script>
</BODY>
</HTML>
