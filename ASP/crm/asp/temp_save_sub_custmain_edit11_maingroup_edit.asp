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
<form name="form1" id="form1" method="post" action="save_sub_custmain_edit11_maingroup_edit.asp">
	<input type="hidden" name="cus_id" id="cus_id" value="">
	<input type="hidden" name="cbus" id="cbus" value="">
	<input type="hidden" name="cmcode" id="cmcode" value="">
	<input type="hidden" name="cgcode" id="cgcode" value="">
	<input type="hidden" name="cgname" id="cgname" value="">
	<input type="hidden" name="cgid" id="cgid" value="">
	<input type="hidden" name="prov" id="prov" value="">
	<input type="hidden" name="band" id="band" value="">
	<input type="hidden" name="home" id="home" value="">
	<input type="hidden" name="soi" id="soi" value="">
	<input type="hidden" name="street" id="street" value="">
	<input type="hidden" name="tumbol" id="tumbol" value="">
	<input type="hidden" name="dis" id="dis" value="">
	<input type="hidden" name="provname" id="provname" value="">
	<input type="hidden" name="postcode" id="postcode" value="">
	<input type="text" name="oldiframe" id="oldiframe" value="<%=Request.QueryString("oldiframe")%>">
	<input type="text" name="iframe" id="iframe" value="<%=Request.QueryString("iframe")%>">
</form>
<script language="javascript">
	document.form1.cus_id.value=top.<%=Request.QueryString("iframe")%>.document.form1.cus_id.value;
	document.form1.cbus.value=top.<%=Request.QueryString("iframe")%>.document.form1.cbus.value;
	document.form1.cmcode.value=top.<%=Request.QueryString("iframe")%>.document.form1.cmcode.value;
	document.form1.cgcode.value=top.<%=Request.QueryString("iframe")%>.document.form1.cgcode.value;
	document.form1.cgname.value=top.<%=Request.QueryString("iframe")%>.document.form1.cgname.value;
	document.form1.cgid.value=top.<%=Request.QueryString("iframe")%>.document.form1.cgid.value;
	document.form1.prov.value=top.<%=Request.QueryString("iframe")%>.document.form1.prov.value;
	document.form1.band.value=top.<%=Request.QueryString("iframe")%>.document.form1.band.value;
	document.form1.home.value=top.<%=Request.QueryString("iframe")%>.document.form1.home.value;
	document.form1.soi.value=top.<%=Request.QueryString("iframe")%>.document.form1.soi.value;
	document.form1.street.value=top.<%=Request.QueryString("iframe")%>.document.form1.street.value;
	document.form1.tumbol.value=top.<%=Request.QueryString("iframe")%>.document.form1.tumbol.value;
	document.form1.dis.value=top.<%=Request.QueryString("iframe")%>.document.form1.dis.value;
	document.form1.provname.value=top.<%=Request.QueryString("iframe")%>.document.form1.prov_name.value;
	document.form1.postcode.value=top.<%=Request.QueryString("iframe")%>.document.form1.postcode.value;
	document.form1.submit();
</script>
</body>
</html>
