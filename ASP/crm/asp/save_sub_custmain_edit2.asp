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
	Dim compname, Rs, Sql, cgcode, scid
	compname = Request.Form("compname")
	cgcode = Request.Form("cgcode")
	scid = Request.Form("scid")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Sql = "UPDATE SUB_COMPANY SET COMP_NAME = '" & compname & "' WHERE SUB_COMPANY.CG_CODE='" & cgcode &"' AND SCID = " & scid & " "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add2.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>