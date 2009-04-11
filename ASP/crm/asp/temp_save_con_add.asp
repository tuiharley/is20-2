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
  <form name="form1" id="form1" method="post" action="save_con_add.asp">
  <input type="hidden" name="cgcode" id="cgcode" value="">
  <input type="hidden" name="opendate1" id="opendate1" value="">
  <input type="hidden" name="h1" id="h1" value="">
  <input name="m1" type="hidden" id="m1">
  <input name="D1" type="hidden" id="D1">
  <input name="ct_no" type="hidden" id="ct_no">
  <input name="empid1" type="hidden" id="empid1">
  <input name="empid2" type="hidden" id="empid2">
  <input name="empid3" type="hidden" id="empid3">
  <input name="custname1" type="hidden" id="custname1">
  <input name="custtel1" type="hidden" id="custtel1">
  <input name="custfax1" type="hidden" id="custfax1">
  <input name="custmail1" type="hidden" id="custmail1">
  <input name="custname2" type="hidden" id="custname2">
  <input name="custtel2" type="hidden" id="custtel2">
  <input name="custfax2" type="hidden" id="custfax2">
  <input name="custmail2" type="hidden" id="custmail2">
  <input name="custname3" type="hidden" id="custname3">
  <input name="custtel3" type="hidden" id="custtel3">
  <input name="custfax3" type="hidden" id="custfax3">
  <input name="custmail3" type="hidden" id="custmail3">
  <input name="checkboxall" type="hidden" id="checkboxall" value="">
  <input name="checkcount" type="hidden" id="checkcount" value="">
  <input name="remark" type="hidden" id="remark" value="">
  <input name="checkboxall2" type="hidden" id="checkboxall2" value="">
  <input name="checkcount2" type="hidden" id="checkcount2" value="">
  <input name="remark2" type="hidden" id="remark2" value="">
  <input name="detail" type="hidden" id="detail" value="">
</form>
<script language="javascript">
	var check=false;
	var count=0;
	document.form1.cgcode.value=top.Desktop2.document.form1.cgcode.value;
	document.form1.opendate1.value=top.Desktop2.document.form1.opendate1.value;
	document.form1.h1.value=top.Desktop2.document.form1.h1.value;
	document.form1.m1.value=top.Desktop2.document.form1.m1.value;
	document.form1.D1.value=top.Desktop2.document.form1.D1.value;
	document.form1.ct_no.value=top.Desktop2.document.form1.ct_no.value;
	document.form1.empid1.value=top.Desktop2.document.form1.empid1.value;
	document.form1.empid2.value=top.Desktop2.document.form1.empid2.value;
	document.form1.empid3.value=top.Desktop2.document.form1.empid3.value;
	document.form1.custname1.value=top.Desktop2.document.form1.custname1.value;
    document.form1.custtel1.value=top.Desktop2.document.form1.custtel1.value;
	document.form1.custfax1.value=top.Desktop2.document.form1.custfax1.value;
	document.form1.custmail1.value=top.Desktop2.document.form1.custmail1.value;
	document.form1.custname2.value=top.Desktop2.document.form1.custname2.value
    document.form1.custtel2.value=top.Desktop2.document.form1.custtel2.value;
	document.form1.custfax2.value=top.Desktop2.document.form1.custfax2.value;
	document.form1.custmail2.value=top.Desktop2.document.form1.custmail2.value;
	document.form1.custname3.value=top.Desktop2.document.form1.custname3.value;
    document.form1.custtel3.value=top.Desktop2.document.form1.custtel3.value;
	document.form1.custfax3.value=top.Desktop2.document.form1.custfax3.value;
	document.form1.custmail3.value=top.Desktop2.document.form1.custmail3.value;
	for(i=0; i<top.Desktop2.document.form1.radio_obj.length; i++){
		if(top.Desktop2.document.form1.radio_obj[i].checked){
			if(check==true){
				document.form1.checkboxall.value = document.form1.checkboxall.value+"," + top.Desktop2.document.form1.radio_obj[i].value;
			}else{
				document.form1.checkboxall.value = top.Desktop2.document.form1.radio_obj[i].value;
				check=true;
			}
			count++;
		}
	}
	document.form1.checkcount.value = count;
	document.form1.remark.value=top.Desktop2.document.form1.remark.value;
	for(i=0, count=0, check=false; i<top.Desktop2.document.form1.radio_obj2.length; i++){
		if(top.Desktop2.document.form1.radio_obj2[i].checked){
			if(check==true){
				document.form1.checkboxall2.value = document.form1.checkboxall2.value+"," + top.Desktop2.document.form1.radio_obj2[i].value;
			}else{
				document.form1.checkboxall2.value = top.Desktop2.document.form1.radio_obj2[i].value;
				check=true;
			}
			count++;
		}
	}
	document.form1.checkcount2.value = count;
	document.form1.remark2.value=top.Desktop2.document.form1.remark2.value;
	document.form1.detail.value=top.Desktop2.document.form1.detail.value;
	document.form1.submit();
</script>
</body>
</html>
