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

	Dim queid, detail, maxid, numid, image
	queid = Request.Form("queid")
	detail = Request.Form("detail")
	image = Request.Form("R1")

	Sql = "select max(num) as numid from question where queid="&queid&""
	Rs.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs(0)) then
		numid = Rs(0)+1
		end if
	Rs.Close

	maxid = 1	
	Sql = "select max(ansid) as maxid from answer "
	Rs.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs(0)) then
		maxid = Rs(0)+1
		end if
	Rs.Close

	Sql = "INSERT INTO ANSWER(ANSID, QUEID, NUM, EMPID, NOTE, DATEANS, IMAGE) VALUES("&maxid&","&queid&","&numid&",'"&Session("User_Id")&"','"&detail&"',getdate(),'"&image&"') "
	Rs.Open Sql,Session("Conn1"),1,3
	
	Sql = "update question set num="&numid&" where queid="&queid&""
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.RunWindow('Desktop2','ans_add.asp?queid=<%=queid%>');
	top.RunWindow('Desktop1','question.asp');
</script>
</BODY>
</HTML>
