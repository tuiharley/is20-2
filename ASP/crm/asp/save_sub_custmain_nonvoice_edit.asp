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

	Dim compid, service, speed, num, total, setup, cgcode, nvid, pomoid, ratio
	pomoid = Request.Form("pomoid")
	if pomoid = "" then
		pomoid = "null"
	end if
	compid = Request.Form("compid")
	service = Request.Form("service")
	speed = Request.Form("speed")
	num = Request.Form("num")
	total = Request.Form("total")
	setup = Request.Form("setup")
	ratio = Request.Form("ratio")
	cgcode = Request.Form("cgcode")
	nvid = Request.Form("nvid")

	Sql = "UPDATE NONVOICE_CUST_USE SET COMPID= " & compid & ", NONID = "& service &", SPEEDID = "& speed &", RATIOID = '" & ratio & "',num=" & num & ", PROMOID=" & pomoid & ", total=" & total & ", service=" & setup & " WHERE CG_CODE = '" & cgcode & "' AND NVID = '"& nvid &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>