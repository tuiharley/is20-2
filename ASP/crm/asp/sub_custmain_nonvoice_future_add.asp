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
	Dim Rs, Rs2, Sql, showdate
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
      <td width="78%">&nbsp; <select name="compid" id="compid" onkeyPress="if(window.event.keyCode==13){document.form1.service.focus();}">
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
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></font></div></td>
      <td>&nbsp; <select name="service" id="service" onkeyPress="if(window.event.keyCode==13){document.form1.speed.focus();}">
          <option value="">กรุณาเลือกประเภทบริการ</option>
          <%
	Sql = "SELECT TOP 100 PERCENT NONID, NONNAME FROM NONVOICE_SERVICE ORDER BY NONID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("NONID")%>"><%=Rs("NONNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>ความเร็ว</strong></font></div></td>
      <td>&nbsp; <select name="speed" id="speed" onkeyPress="if(window.event.keyCode==13){document.form1.num.focus();}">
          <option value="">กรุณาเลือกความเร็ว</option>
          <%
	Sql = "SELECT TOP 100 PERCENT SPEEDID, SPEEDNAME FROM SPEED ORDER BY SPEEDID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("SPEEDID")%>"><%=Rs("SPEEDNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>โปรโมชั่น</strong></font></div></td>
      <td>&nbsp;<strong><font color="#4B0097" size="2"> 
        <textarea name="pomo" cols="40" rows="3" class="text" id="pomo" onKeyPress="if(window.event.keyCode==13){document.form1.num.focus();}" readonly></textarea>
        <input name="pomoid" type="hidden" id="pomoid">
        <input name="pro" type="button" id="pro" value="เลือกโปร" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if(document.form1.compid.value!='' && document.form1.service.value!=''){top.ShowRunCenterSizeWindow('DialogSS1','350px','650px','pomotion.asp?voice=0&compid='+document.form1.compid.value+'&id='+document.form1.service.value);}">
        <input name="del" type="button" id="del2" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="document.form1.pomo.value=''; document.form1.pomoid.value='';">
        </font></strong></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">จำนวน</font></strong></font></div></td>
      <td>&nbsp;<strong><font color="#4B0097" size="2"> 
        <input name="num" type="text" class="text" id="num" size="10" maxlength="10" onkeyPress="if(window.event.keyCode==13){document.form1.num.focus();}">
        วงจร </font></strong></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>ภายในวันที่</strong></font></div></td>
      <td>&nbsp; <input name="showdate" type="text" class="text" id="showdate" size="18" readonly value="<%=showdate%>"> <input name="dateef" type="hidden" id="dateef" value="">
        <input name="popdate" type="button" id="popdate" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog2','280','120','250px','260px','calendar-sdmy-ddmy_dia2.asp?input1=top.Dialog1.document.form1.dateef&input2=top.Dialog1.document.form1.showdate');"></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="  บันทึกข้อมูล  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosend(){
	if(document.form1.compid.value==""){
		alert('กรุณาระบุผู้ให้บริการ');
		document.form1.compid.focus();
		return;
	}
	if(document.form1.service.value==""){
		alert('กรุณาระบุประเภทบริการ');
		document.form1.service.focus();
		return;
	}
	if(document.form1.speed.value==""){
		alert('กรุณาระบุความเร็ว');
		document.form1.speed.focus();
		return;
	}
	if(document.form1.num.value==""){
		alert('กรุณาระบุจำนวน');
		document.form1.num.focus();
		return;
	}
	if(isFinite(document.form1.num.value)==false){
		alert('กรุณาระบุจำนวนให้ถูกต้อง');
		document.form1.num.focus();
		return;
	}
	if(confirm('ยืนยันการบันทึกข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_custmain_nonvoice_future_add.asp');
	}
}
</script>
</body>
</html>
