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
<form name="form1" id="form1" method="post" action="save_sub_sub_edit3.asp">
  <input type="type" name="social_name" id="social_name" value="">
  <input type="type" name="cgcode" id="cgcode" value="">
  <input type="type" name="memid" id="memid" value="">
 </form>
<script language="javascript">
	document.form1.social_name.value=top.Dialog2.document.form1.social_name.value;
	document.form1.cgcode.value=top.Dialog2.document.form1.cgcode.value;
	document.form1.memid.value=top.Dialog2.document.form1.memid.value;
	document.form1.submit();
</script>
</body>
</html>