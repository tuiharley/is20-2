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
<form name="form1" id="form1" method="post" action="save_maincomp_edit.asp">
	<input type="hidden" name="cus_id" id="cus_id" value="">
	<input type="hidden" name="cbus" id="cbus" value="">
	<input type="hidden" name="cmcode" id="cmcode" value="">
	<input type="hidden" name="cmname" id="cmname" value="">
</form>
<script language="javascript">
	document.form1.cus_id.value=top.Desktop3.document.form1.cus_id.value;
	document.form1.cbus.value=top.Desktop3.document.form1.cbus.value;
	document.form1.cmcode.value=top.Desktop3.document.form1.cmcode.value;
	document.form1.cmname.value=top.Desktop3.document.form1.cmname.value;
	document.form1.submit();
</script>
</body>
</html>
