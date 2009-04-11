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
	Dim payid, Rs, Rs2, Sql, cgcode
	payid = Request.Form("payid")
	cgcode = Request.Form("cgcode")

	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "SELECT CG_CODE, PAYID FROM PAY_CUST_USE WHERE (CG_CODE = '" & cgcode & "')"
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		Sql = "UPDATE PAY_CUST_USE SET  PAYID="& payid & " WHERE CG_CODE='" & cgcode & "' "
	else
		Sql = "INSERT INTO PAY_CUST_USE(CG_CODE, PAYID)  VALUES ('" & cgcode & "', "& payid & ")"
	end if
	Rs2.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add8.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
</script>
</BODY>
</HTML>