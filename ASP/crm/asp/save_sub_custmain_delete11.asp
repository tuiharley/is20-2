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

	Dim customer_id, cgcode
	cgcode = Request.Form("cgcode")
	customer_id = Request.Form("customer_id")

'	Sql = "DELETE MKT_CUSTOMER WHERE MC_CUSTOMER_ID = '" & customer_id & "' AND CG_CODE = '"& cgcode &"'"
	Sql = "DELETE MKT_CUSTOMER WHERE MC_CUSTOMER_ID = '" & customer_id & "' "
	Rs.Open Sql,Session("Conn1"),1,3
	
	Sql = "UPDATE CSS_CUSTOMER SET STATUS = null WHERE CUSTOMER_ID = '"& customer_id &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.HideWindow('Dialog1');
	top.RunWindow('Desktop3','custmain_add11.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>