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

	Dim name, spec, linein, lineout, cgcode, pabxid
	name = Request.Form("name")
	spec = Request.Form("spec")
	linein = Request.Form("linein")
	lineout = Request.Form("lineout")
	cgcode = Request.Form("cgcode")
	pabxid = Request.Form("pabxid")

	Sql = "UPDATE PABX SET PABXNAME= '" & name & "', SPEC = '"& spec &"', linein=" & linein & ", lineout=" & lineout & " WHERE CG_CODE = '" & cgcode & "' AND PABXID = '"& pabxid &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>