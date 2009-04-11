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
<form name="form1" id="form1" method="post" action="save_custmain_add7.asp">
  <input type="hidden" name="spcid" id="spcid" value="">
  <input type="hidden" name="countspc" id="countspc" value="">
  <input type="hidden" name="cgcode" id="cgcode" value="">
 </form>
<script language="javascript">
	var checkbox = false;
	var count = 0
	for (counter = 0; counter < top.Desktop3.document.form1.SPC.length; counter++){
		if (top.Desktop3.document.form1.SPC[counter].checked) {
			if(checkbox==true){
				document.form1.spcid.value=document.form1.spcid.value+',';
			}
			document.form1.spcid.value=document.form1.spcid.value+top.Desktop3.document.form1.SPC[counter].value;
			count++;
			checkbox = true;
		}
	}
	document.form1.countspc.value=count;
	document.form1.cgcode.value=top.Desktop3.document.form1.cgcode.value;
	document.form1.submit();
</script>
</body>
</html>