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
<form name="form1" id="form1" method="post" action="save_sub_custmain_add10_ttt.asp">
  <input type="hidden" name="tpid" id="tpid" value="">
   <input type="hidden" name="pdate" id="pdate" value="">
  <input type="hidden" name="solid" id="solid" value="">
  <input type="hidden" name="sdate" id="sdate" value="">
  <input type="hidden" name="cgcode" id="cgcode" value="">
  </form>
<script language="javascript">
	document.form1.tpid.value=top.Dialog1.document.form1.tpid.value;
    document.form1.pdate.value=top.Dialog1.document.form1.pdate.value;
	document.form1.solid.value=top.Dialog1.document.form1.solid.value;
	document.form1.sdate.value=top.Dialog1.document.form1.sdate.value;
	document.form1.cgcode.value=top.Dialog1.document.form1.cgcode.value;	
	document.form1.submit();
</script>
</body>
</html>