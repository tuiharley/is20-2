<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body>
<form name="form1" id="form1" method="post" action="check_level.asp">
<input type="hidden" name="username" id="username" value="">
<input type="hidden" name="password" id="password" value="">
</form>
<script language="javascript">
	document.form1.username.value=top.FullPage.document.login.username.value;
	document.form1.password.value=top.FullPage.document.login.password.value;
	document.form1.submit();
</script>
</body>
</html>
