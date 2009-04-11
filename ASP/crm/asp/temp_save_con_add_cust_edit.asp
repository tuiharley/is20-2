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
<form name="form1" id="form1" method="post" action="save_con_add_cust_edit.asp">
  <input type="hidden" name="name" id="name" value="">
  <input type="hidden" name="sur" id="sur" value="">
  <input type="hidden" name="side" id="side" value="">
  <input type="hidden" name="post" id="post" value="">
  <input type="hidden" name="decide" id="decide" value="">
  <input type="hidden" name="tel" id="tel" value="">
  <input type="hidden" name="fax" id="fax" value="">
  <input type="hidden" name="mail" id="mail" value="">
  <input type="hidden" name="cgcode" id="cgcode" value="">
  <input type="hidden" name="empid" id="empid" value="">
  <input type="hidden" name="cust_no" id="cust_no" value="">
 </form>
<script language="javascript">
	document.form1.name.value=top.Dialog1.document.form1.name.value;
	document.form1.sur.value=top.Dialog1.document.form1.sur.value;
    document.form1.side.value=top.Dialog1.document.form1.side.value;
	document.form1.post.value=top.Dialog1.document.form1.post.value;
	document.form1.decide.value=top.Dialog1.document.form1.decide.value;
	document.form1.tel.value=top.Dialog1.document.form1.tel.value;
	document.form1.fax.value=top.Dialog1.document.form1.fax.value;
	document.form1.mail.value=top.Dialog1.document.form1.mail.value;
	document.form1.cgcode.value=top.Dialog1.document.form1.cgcode.value;
	document.form1.empid.value=top.Dialog1.document.form1.empid.value;
	document.form1.cust_no.value=top.Dialog1.document.form1.cust_no.value;
	document.form1.submit();
</script>
</body>
</html>