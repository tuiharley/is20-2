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
<form name="form1" id="form1" method="post" action="save_sub_custmain_delete4.asp">
  <input type="hidden" name="cgcode" id="cgcode" value="">
   <input type="hidden" name="empid" id="empid" value="">
 </form>
<script language="javascript">
	document.form1.cgcode.value=top.Dialog1.document.form1.cgcode.value;
	document.form1.empid.value=top.Dialog1.document.form1.empid.value;
	document.form1.submit();
</script>
</body>
</html>