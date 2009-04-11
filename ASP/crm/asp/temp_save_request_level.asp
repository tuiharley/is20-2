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
<form name="form1" id="form1" method="post" action="save_request_level.asp">
  <input type="hidden" name="empid" id="empid" value="">
  <input type="hidden" name="req_tel" id="req_tel" value="">
</form>
<script language="javascript">
	document.form1.empid.value=top.FullPage.document.form1.empid.value;
	document.form1.req_tel.value=top.FullPage.document.form1.req_tel.value;
	document.form1.submit();
</script>
</body>
</html>