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
<form name="form1" id="form1" method="post" action="save_person_add.asp">
  <input type="hidden" name="empid" id="empid" value="">
  <input type="hidden" name="counttotal" id="counttotal" value="">
  <input type="hidden" name="male" id="male" value="">
  <input type="hidden" name="female" id="female" value="">
  <input name="A14" type="hidden" id="A14">
  <input type="hidden" name="A19" id="A19" value="">
  <input type="hidden" name="A24" id="A24" value="">
  <input name="A29" type="hidden" id="A29">
  <input name="A39" type="hidden" id="A39">
  <input name="A49" type="hidden" id="A49">
  <input name="A50" type="hidden" id="A50">
  <input name="S" type="hidden" id="S">
  <input name="job" type="hidden" id="job">
  <input name="comsevice" type="hidden" id="comsevice">
  <input name="comsevicecount" type="hidden" id="comsevicecount">
  <input name="paymethod" type="hidden" id="paymethod">
  <input name="easycon" type="hidden" id="easycon">
  <input name="remark" type="hidden" id="remark">
  <input name="easycount" type="hidden" id="easycount">
  <input name="commu" type="hidden" id="commu">
  <input name="tv" type="hidden" id="tv">
  <input name="radio" type="hidden" id="radio">
  <input name="newspaper" type="hidden" id="newspaper">
  <input name="commuttt" type="hidden" id="commuttt">
  <input name="commutttcount" type="hidden" id="commutttcount">
  <input name="data" type="hidden" id="data">
</form>
<script language="javascript">
	var check=false;
	var count=0;
	document.form1.empid.value=top.Desktop4.document.form1.empid.value;
	document.form1.counttotal.value=top.Desktop4.document.form1.counttotal.value;
	document.form1.male.value=top.Desktop4.document.form1.male.value;
	document.form1.female.value=top.Desktop4.document.form1.female.value;
	document.form1.A14.value=top.Desktop4.document.form1.A14.value;
	document.form1.A19.value=top.Desktop4.document.form1.A19.value;
	document.form1.A24.value=top.Desktop4.document.form1.A24.value;
	document.form1.A29.value=top.Desktop4.document.form1.A29.value;
	document.form1.A39.value=top.Desktop4.document.form1.A39.value;
	document.form1.A49.value=top.Desktop4.document.form1.A49.value;
	document.form1.A50.value=top.Desktop4.document.form1.A50.value;
	for(i=0; i<top.Desktop4.document.form1.S.length; i++){
		if(top.Desktop4.document.form1.S[i].checked){
				document.form1.S.value = top.Desktop4.document.form1.S[i].value;
		}
	}
	document.form1.job.value=top.Desktop4.document.form1.job.value;
	count=0;
	check=false;
	for(i=0; i<top.Desktop4.document.form1.comsevice.length; i++){
		if(top.Desktop4.document.form1.comsevice[i].checked){
			if(check==true){
				document.form1.comsevice.value = document.form1.comsevice.value+"," + top.Desktop4.document.form1.comsevice[i].value;
			}else{
				document.form1.comsevice.value = top.Desktop4.document.form1.comsevice[i].value;
				check=true;
			}
			count++;
		}
	}
	document.form1.comsevicecount.value=count;
	count=0;
	check=false;
	for(i=0; i<top.Desktop4.document.form1.paymethod.length; i++){
		if(top.Desktop4.document.form1.paymethod[i].checked){
				document.form1.paymethod.value = top.Desktop4.document.form1.paymethod[i].value;
		}
	}
	count=0;
	check=false;
	for(i=0; i<top.Desktop4.document.form1.easycon.length; i++){
		if(top.Desktop4.document.form1.easycon[i].checked){
			if(check==true){
				document.form1.easycon.value = document.form1.easycon.value+"," + top.Desktop4.document.form1.easycon[i].value;
				document.form1.remark.value = document.form1.remark.value+"," + top.Desktop4.document.form1.remark[i].value;
			}else{
				document.form1.easycon.value = top.Desktop4.document.form1.easycon[i].value;
				document.form1.remark.value = top.Desktop4.document.form1.remark[i].value;
				check=true;
			}
			count++;
		}
	}
	document.form1.easycount.value=count;
	document.form1.commu.value=top.Desktop4.document.form1.commu.value;
	document.form1.tv.value=top.Desktop4.document.form1.tv.value;
	document.form1.radio.value=top.Desktop4.document.form1.radio.value;
	document.form1.newspaper.value=top.Desktop4.document.form1.newspaper.value;
	count=0;
	check=false;
	for(i=0; i<top.Desktop4.document.form1.commuttt.length; i++){
		if(top.Desktop4.document.form1.commuttt[i].checked){
			if(check==true){
				document.form1.commuttt.value = document.form1.commuttt.value+"," + top.Desktop4.document.form1.commuttt[i].value;
			}else{
				document.form1.commuttt.value = top.Desktop4.document.form1.commuttt[i].value;
				check=true;
			}
			count++;
		}
	}
	document.form1.commutttcount.value=count;
	document.form1.data.value = top.Desktop4.document.form1.data.value;
	document.form1.submit();
</script>
</body>
</html>
