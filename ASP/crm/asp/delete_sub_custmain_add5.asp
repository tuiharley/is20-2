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
	Dim iname, side, post,  Rs, Sql, cgcode
	iname = Request.Form("name")
	cgcode = Request.Form("cgcode")
	side = Request.Form("side")
	post = Request.Form("post")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "INSERT INTO HEAD(CG_CODE, HEAD_NAME, HEAD_SIDE, HEAD_POS)  VALUES ('" & cgcode & "', '"& iname & "', '"& side &"', '"& post &"')"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add5.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>