<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body>
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
<form name="form1" id="form1" method="post" action="save_sub_custmain_edit11_maincomp_add.asp">
	<input type="text" name="cus_id" id="cus_id" value="">
	<input type="text" name="cbus" id="cbus" value="">
	<input type="text" name="cmname" id="cmname" value="">
	<input type="text" name="oldiframe" id="oldiframe" value="<%=Request.QueryString("oldiframe")%>">
	<input type="text" name="iframe" id="iframe" value="<%=Request.QueryString("iframe")%>">
</form>
<script language="javascript">
	document.form1.cus_id.value=top.<%=Request.QueryString("iframe")%>.document.form1.cus_id.value;
	document.form1.cbus.value=top.<%=Request.QueryString("iframe")%>.document.form1.cbus.value;
	document.form1.cmname.value=top.<%=Request.QueryString("iframe")%>.document.form1.cmname.value;
	document.form1.submit();
</script>
</body>
</html>
