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
<form name="form1" id="form1" method="post" action="save_sub_custmain_voice_future_add.asp">
  <input type="hidden" name="compid" id="compid" value="">
  <input type="hidden" name="service" id="service" value="">
  <input type="hidden" name="pomoid" id="pomoid" value="">
  <input type="hidden" name="num" id="num" value="">
  <input type="hidden" name="dateef" id="dateef" value="">
  <input type="hidden" name="cgcode" id="cgcode" value="">
 </form>
<script language="javascript">
	document.form1.compid.value=top.Dialog1.document.form1.compid.value;
    document.form1.service.value=top.Dialog1.document.form1.service.value;
    document.form1.pomoid.value=top.Dialog1.document.form1.pomoid.value;
	document.form1.num.value=top.Dialog1.document.form1.num.value;
	document.form1.dateef.value=top.Dialog1.document.form1.dateef.value;
	document.form1.cgcode.value=top.Dialog1.document.form1.cgcode.value;
	document.form1.submit();
</script>
</body>
</html>