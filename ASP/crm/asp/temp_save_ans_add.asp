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
<form name="form1" id="form1" method="post" action="save_ans_add.asp">
  <input type="hidden" name="queid" id="queid" value="">
  <input type="hidden" name="detail" id="detail" value="">
  <input type="hidden" name="R1" id="R1" value="">
</form>
<script language="javascript">
	document.form1.queid.value=top.Desktop2.document.form1.queid.value;
    document.form1.detail.value=top.Desktop2.document.form1.detail.value;
	for(i=0; i<top.Desktop2.document.form1.R1.length; i++){
		if(top.Desktop2.document.form1.R1(i).checked){
			document.form1.R1.value=top.Desktop2.document.form1.R1(i).value;
		}
	}
	document.form1.submit();
</script>
</body>
</html>