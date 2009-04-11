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

	Dim topic, detail, maxid, image
	topic = Request.Form("topic")
	detail = Request.Form("detail")
	image = Request.Form("R1")

	maxid = 1	
	Sql = "select max(queid) as maxid from question"
	Rs.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs(0)) then
		maxid = Rs(0)+1
		end if
	Rs.Close

	Sql = "INSERT INTO QUESTION(QUEID, TOPIC, EMPID, NOTE, NUM, DATEQUE, IMAGE) VALUES("&maxid&",'"&topic&"','"&Session("User_Id")&"','"&detail&"',0,getdate(),'"&image&"') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.RunWindow('Desktop1','question.asp');
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
