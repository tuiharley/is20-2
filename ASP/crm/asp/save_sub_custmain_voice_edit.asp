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

	Dim compid, service, num, total, cgcode, vcid, pomoid
	compid = Request.Form("compid")
	pomoid = Request.Form("pomoid")
	if pomoid = "" then
		pomoid = "null"
	end if
	service = Request.Form("service")
	num = Request.Form("num")
	total = Request.Form("total")
	cgcode = Request.Form("cgcode")
	vcid = Request.Form("vcid")

	Sql = "UPDATE VOICE_CUST_USE SET COMPID= " & compid & ", VOICEID = "& service &", num=" & num & ", PROMOID=" & pomoid & ", total=" & total & " WHERE CG_CODE = '" & cgcode & "' AND VCID = '"& vcid &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>