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
<form name="form1" id="form1" method="post" action="save_app_edit.asp">
  <input type="hidden" name="app_id" id="app_id" value="">
  <input type="hidden" name="cgcode" id="cgcode" value="">
  <input type="hidden" name="opendate1" id="opendate1" value="">
  <input type="hidden" name="h1" id="h1" value="">
  <input name="m1" type="hidden" id="m1">
  <input type="hidden" name="opendate2" id="opendate2" value="">
  <input type="hidden" name="h2" id="h2" value="">
  <input name="m2" type="hidden" id="m2">
  <input name="app_obj" type="hidden" id="app_obj">
  <input name="app_count" type="hidden" id="app_count">
  <input name="remark" type="hidden" id="remark">
  <input name="app_cust_name" type="hidden" id="app_cust_name">
  <input name="app_tel_contact" type="hidden" id="app_tel_contact">
  <input name="app_status" type="hidden" id="app_status">
  <input name="app_fax_no" type="hidden" id="app_fax_no">
  <input name="app_mail" type="hidden" id="app_mail">
  <input name="APP_EMPAPP1" type="hidden" id="APP_EMPAPP1">
  <input name="APP_EMPAPP2" type="hidden" id="APP_EMPAPP2">
  <input name="APP_REMARK" type="hidden" id="APP_REMARK">
   <input name="selectdate" type="hidden" id="selectdate">
</form>
<script language="javascript">
	var check=false;
	var count=0;
	document.form1.app_id.value=top.Desktop2.document.form1.app_id.value;
	document.form1.cgcode.value=top.Desktop2.document.form1.cgcode.value;
	document.form1.opendate1.value=top.Desktop2.document.form1.opendate1.value;
	document.form1.h1.value=top.Desktop2.document.form1.h1.value;
	document.form1.m1.value=top.Desktop2.document.form1.m1.value;
	document.form1.opendate2.value=top.Desktop2.document.form1.opendate2.value;
	document.form1.h2.value=top.Desktop2.document.form1.h2.value;
	document.form1.m2.value=top.Desktop2.document.form1.m2.value;
	for(i=0; i<top.Desktop2.document.form1.radio_obj.length; i++){
		if(top.Desktop2.document.form1.radio_obj[i].checked){
			if(check==true){
				document.form1.app_obj.value = document.form1.app_obj.value+"," + top.Desktop2.document.form1.radio_obj[i].value;
			}else{
				document.form1.app_obj.value = top.Desktop2.document.form1.radio_obj[i].value;
				check=true;
			}
			count++;
		}
	}
	document.form1.app_count.value=count;
	document.form1.remark.value=top.Desktop2.document.form1.remark.value;
	document.form1.app_cust_name.value=top.Desktop2.document.form1.app_cust_name.value;
	document.form1.app_tel_contact.value=top.Desktop2.document.form1.app_tel_contact.value;
	document.form1.app_fax_no.value=top.Desktop2.document.form1.app_fax_no.value;
	document.form1.app_mail.value=top.Desktop2.document.form1.app_mail.value;
	document.form1.app_status.value=top.Desktop2.document.form1.app_status.value;
	//document.form1.selectdate.value=top.Desktop2.document.form1.selectdate.value;
	//document.form1.APP_EMPAPP1.value=top.Desktop2.document.form1.APP_EMPAPP1.value;
	//document.form1.APP_EMPAPP2.value=top.Desktop2.document.form1.APP_EMPAPP2.value;
	document.form1.APP_REMARK.value=top.Desktop2.document.form1.APP_REMARK.value;
		document.form1.submit();
</script>

</body>
</html>
