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
	Dim cus_id, cbus, cmcode, cmname, oldiframe, iframe
	cus_id = Request.Form("cus_id")
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	cmname = Request.Form("cmname")
	oldiframe = Request.Form("oldiframe")
	iframe = Request.Form("iframe")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "UPDATE COMP_MAIN SET CM_NAME='" & cmname & "', CM_DATE_UPDATE=getdate(), CM_CODE_UPDATE='" & Session("User_Id") & "' WHERE CM_CODE='" & cmcode & "' "
	Rs2.Open Sql,Session("Conn1"),1,3
	
%>
<script language=javascript>
	top.Desktop2.document.body.style.cursor='wait'; 
	top.RunWindow('<%=oldiframe%>','sub_custmain_edit11.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>');
	top.HideWindow('<%=iframe%>');
</script>
</BODY>
</HTML>
