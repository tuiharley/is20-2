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
	Dim spcid, countspc, Rs, Rs2, Sql, cgcode
	spcid = Request.Form("spcid")
	countspc = Request.Form("countspc")
	cgcode = Request.Form("cgcode")

	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

Dim i, spc
spc = split(spcid,",")

	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "DELETE SPC_CUST_USE WHERE CG_CODE='" & cgcode & "' "
	Rs.Open Sql,Session("Conn1"),1,3
	for i=1 to countspc
		Sql = "INSERT INTO SPC_CUST_USE(CG_CODE, SPCID)  VALUES ('" & cgcode & "', "& spc(i-1) & ")"
		Rs2.Open Sql,Session("Conn1"),1,3
	next
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add7.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
</script>
</BODY>
</HTML>