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
<form name="form1" id="form1" method="post" action="save_create_level.asp">
  <input type="hidden" name="empid" id="empid" value="">
  <input type="hidden" name="level" id="level" value="">
  <input type="hidden" name="opendate1" id="opendate1" value="">
  <input type="hidden" name="tel" id="tel" value="">
</form>
<script language="javascript">
	document.form1.empid.value=top.Desktop2.document.form1.empid2.value;
	document.form1.level.value=top.Desktop2.document.form1.level.value;
	document.form1.opendate1.value=top.Desktop2.document.form1.opendate1.value;
	document.form1.tel.value=top.Desktop2.document.form1.tel.value;
	document.form1.submit();
</script>
</body>
</html>