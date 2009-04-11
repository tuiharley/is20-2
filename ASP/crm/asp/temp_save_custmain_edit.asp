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
<form name="form1" id="form1" method="post" action="save_custmain_edit.asp">
  <input type="hidden" name="cgcode" id="cgcode" value="">
  <input type="hidden" name="bus_website2" id="bus_website2" value="">
  <input type="hidden" name="bus_phone2" id="bus_phone2" value="">
  <input type="hidden" name="bus_fax2" id="bus_fax2" value="">
  <input type="hidden" name="bus_companyemp2" id="bus_companyemp2" value="">
  <input type="hidden" name="bus_branchemp2" id="bus_branchemp2" value="">
  <input type="hidden" name="select_type" id="select_type" value="">
  <input type="hidden" name="text_area" id="text_area" value="">
  <input type="hidden" name="smt" id="smt" value="">
</form>
<script language="javascript">
	document.form1.cgcode.value=top.Desktop3.document.form1.cgcode.value;
	document.form1.bus_website2.value=top.Desktop3.document.form1.bus_website2.value;
	document.form1.bus_phone2.value=top.Desktop3.document.form1.bus_phone2.value;
	document.form1.bus_fax2.value=top.Desktop3.document.form1.bus_fax2.value;
	document.form1.bus_companyemp2.value=top.Desktop3.document.form1.bus_companyemp2.value;
	document.form1.bus_branchemp2.value=top.Desktop3.document.form1.bus_branchemp2.value;
	document.form1.select_type.value=top.Desktop3.document.form1.select_type.value;
	document.form1.text_area.value=top.Desktop3.document.form1.text_area.value;
	document.form1.smt.value=top.Desktop3.document.form1.smt.value;
	document.form1.submit();
</script>
</body>
</html>