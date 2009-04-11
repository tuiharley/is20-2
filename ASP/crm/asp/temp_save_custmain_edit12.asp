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
<form name="form1" id="form1" method="post" action="save_custmain_edit12.asp">
  <input type="hidden" name="cgcode" id="cgcode" value="">
  <input type="hidden" name="cgaddr_id" id="cgaddr_id" value="">
  <input type="hidden" name="sname" id="sname" value="">
  <input type="hidden" name="band" id="band" value="">
  <input type="hidden" name="soi" id="soi" value="">
  <input type="hidden" name="street" id="street" value="">
  <input type="hidden" name="tumbol" id="tumbol" value="">
  <input type="hidden" name="district" id="district" value="">
  <input type="hidden" name="province" id="province" value="">
  <input type="hidden" name="postcode" id="postcode" value="">
</form>
<script language="javascript">
	document.form1.cgcode.value=top.Desktop3.document.form1.cgcode.value;
	document.form1.cgaddr_id.value=top.Desktop3.document.form1.cgaddr_id.value;
	document.form1.sname.value=top.Desktop3.document.form1.sname.value;
	document.form1.band.value=top.Desktop3.document.form1.band.value;
	document.form1.soi.value=top.Desktop3.document.form1.soi.value;
	document.form1.street.value=top.Desktop3.document.form1.street.value;
	document.form1.tumbol.value=top.Desktop3.document.form1.tumbol.value;
	document.form1.district.value=top.Desktop3.document.form1.district.value;
	document.form1.province.value=top.Desktop3.document.form1.province.value;
	document.form1.postcode.value=top.Desktop3.document.form1.postcode.value;
	document.form1.submit();
</script>
</body>
</html>