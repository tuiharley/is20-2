<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.compid.focus();">
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
<%
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
%>
<%
	Dim cgcode
	cgcode = Request.QueryString("cgcode")
%>
<form name="form1" method="post" action="">
  <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="22%"><div align="right"><font color="#4B0097" size="2"><strong><font color="#4B0097" size="2">ผู้ให้บริการ</font></strong></font></div></td>
      <td width="78%">&nbsp; <select name="compid" id="select2" onkeypress="if(window.event.keyCode==13){document.form1.service.focus();}" onChange="document.form1.pomo.value=''; document.form1.pomoid.value='';">
          <option value="">กรุณาเลือกผู้ให้บริการ</option>
          <%
	Sql = "SELECT TOP 100 PERCENT COMPID, COMPNAME FROM COMPANY ORDER BY COMPID "
	Rs.Open SQL, Session("Conn1"),1,3	

	do while not Rs.EOF
%>
          <option value="<%=Rs("COMPID")%>"><%=Rs("COMPNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select> <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></font></div></td>
      <td width="80%">&nbsp; <select name="service" id="select" onkeyPress="if(window.event.keyCode==13){document.form1.num.focus();}" onChange="document.form1.pomo.value=''; document.form1.pomoid.value='';">
          <option value="">กรุณาเลือกประเภทบริการ</option>
          <%
	Sql = "SELECT TOP 100 PERCENT VOICEID, VOICENAME FROM VOICE_SERVICE ORDER BY VOICEID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("VOICEID")%>"><%=Rs("VOICENAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td width="20%" height="22"><div align="right"><font color="#4B0097" size="2"><strong>โปรโมชั่น</strong></font></div></td>
      <td width="80%">&nbsp; <textarea name="pomo" cols="40" rows="3" class="text" id="pomo" onKeyPress="if(window.event.keyCode==13){document.form1.total.focus();}" readonly></textarea> 
        <input name="pomoid" type="hidden" id="pomoid"> <input name="pro" type="button" id="pro" value="เลือกโปร" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if(document.form1.compid.value!='' && document.form1.service.value!=''){top.ShowRunCenterSizeWindow('DialogSS1','350px','650px','pomotion.asp?voice=0&compid='+document.form1.compid.value+'&id='+document.form1.service.value);}"> 
        <input name="del" type="button" id="del" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="document.form1.pomo.value=''; document.form1.pomoid.value='';"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">จำนวนเลขหมาย</font></strong></font></div></td>
      <td width="80%">&nbsp; 
        <input name="num" type="text" class="text" id="num" size="10" maxlength="10" onkeyPress="if(window.event.keyCode==13){document.form1.total.focus();}" onChange="Calaverage();"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">รายได้รวม</font></strong></font></div></td>
      <td width="80%">&nbsp; 
        <input name="total" type="text" class="text" id="total" size="15" maxlength="20" onkeyPress="if(window.event.keyCode==13){document.form1.send.focus();}" onChange="Calaverage();"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">รายได้เฉลี่ย</font></strong></font></div></td>
      <td width="80%">&nbsp; <input name="average" type="text" class="text" id="average" size="15" maxlength="20" readonly></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send2" value=" บันทึกข้อมูล " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('DialogS1'); top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function Calaverage(){
	document.form1.average.value='';
	if(document.form1.num.value!="" && document.form1.num.value!=0 && document.form1.total.value!=""){
		document.form1.average.value=document.form1.total.value/document.form1.num.value;
	}
}

function dosend(){
	if(document.form1.compid.value==""){
		alert('กรุณาระบุผู้ให้ยริการ');
		document.form1.compid.focus();
		return;
	}
	if(document.form1.service.value==""){
		alert('กรุณาระบุประเภทบริการ');
		document.form1.service.focus();
		return;
	}
	if(document.form1.num.value==""){
		alert('กรุณาระบุจำนวนเลขหมาย');
		document.form1.num.focus();
		return;
	}
	if(isFinite(document.form1.num.value)==false){
		alert('กรุณาระบุจำนวนเลขหมายให้ถูกต้อง');
		document.form1.num.focus();
		return;
	}
	if(document.form1.total.value==""){
		alert('กรุณาระบุรายได้รวม');
		document.form1.total.focus();
		return;
	}
	if(isFinite(document.form1.total.value)==false){
		alert('กรุณาระบุรายได้รวมให้ถูกต้อง');
		document.form1.total.focus();
		return;
	}
	
	if(confirm('ยืนยันการบันทึกข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_voice_add.asp');
		top.RunWindow('Dialog1','sub_custmain_voice_add.asp');
	}
}
</script>
</body>
</html>
