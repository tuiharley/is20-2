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
	Dim iname, side, post,  Rs, Sql, cgcode, headid
	iname = Request.Form("name")
	cgcode = Request.Form("cgcode")
	side = Request.Form("side")
	post = Request.Form("post")
	headid = Request.Form("headid")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "UPDATE HEAD SET HEAD_NAME= '" & iname & "', HEAD_SIDE = '"& side &"', HEAD_POS = '"& post &"' WHERE HEAD.CG_CODE = '" & cgcode & "' AND HEADID = '"& headid &"'"
	Response.Write(Sql)
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add5.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>