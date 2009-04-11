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
	Dim cgcode, showpdate, showsdate, pdate, sdate
	cgcode = Request.QueryString("cgcode")
%>
<form name="form1" method="post" action="">
  <table width="450" height="160" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="35%" height="22"><div align="right"><font color="#4B0097" size="2"><strong>ปัญหาที่เกิด</strong></font></div></td>
      <td width="65%">&nbsp; <select name="tpid" id="tpid" onkeyPress="if(window.event.keyCode==13){document.form1.pdate.focus();}">
          <option value="">กรุณาระบุปัญหาที่เกิดขึ้น</option>
          <%
	Sql = "SELECT TPID, TPNAME FROM TTT_PROB"
	Rs.Open SQL, Session("Conn1"),1,3	

	do while not Rs.EOF
%>
          <option value="<%=Rs("TPID")%>"><%=Rs("TPNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select>
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>วันที่เกิดปัญหา</strong></font></div></td>
      <td width="80%">&nbsp; <input name="showpdate" type="text" class="text" id="showpdate" size="18" readonly value="<%=showpdate%>"><input name="pdate" type="hidden" id="pdate" value="<%=pdate%>">
        <input name="popdate1" type="button" id="popdate1" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog2','280','120','250px','260px','calendar-sdmy-ddmy_dia2.asp?input1=top.Dialog1.document.form1.pdate&input2=top.Dialog1.document.form1.showpdate');"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">การแก้ไข</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<select name="solid" id="select" onkeyPress="if(window.event.keyCode==13){document.form1.sdate.focus();}">
          <option value="">กรุณาเลือกวิธีการแก้ปัญหา</option>
          <%
	Sql = "SELECT SOLID, SOLNAME FROM SOLVE"
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("SOLID")%>"><%=Rs("SOLNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>วันที่คาดว่าจะแก้ได้</strong></strong></font><font color="#4B0097"><strong></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="showsdate" type="text" class="text" id="showsdate" size="18" readonly value="<%=showsdate%>"> <input name="sdate" type="hidden" id="sdate" value="<%=sdate%>">
        <input name="popdate2" type="button" id="popdate2" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog2','280','120','250px','260px','calendar-sdmy-ddmy_dia2.asp?input1=top.Dialog1.document.form1.sdate&input2=top.Dialog1.document.form1.showsdate');"></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value=" บันทึกข้อมูล " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
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
	if(document.form1.tpid.value==""){
		alert('กรุณาระบุปัญหาที่เกิดขึ้น');
		document.form1.tpid.focus();
		return;
	}
	if(document.form1.pdate.value==""){
		alert('กรุณาระบุวันที่เกิดปัญหา');
		document.form1.pdate.focus();
		return;
	}
	
	if(document.form1.solid.value==""){
		alert('กรุณาระบุวิธีการแก้ไขปัญหา');
		document.form1.solid.focus();
		return;
	}
	if(document.form1.sdate.value==""){
		alert('กรุณาระบุวันที่คาดว่าจะแก้ไขปัญหาได้');
		document.form1.sdate.focus();
		return;
	}
	
	if(confirm('ยืนยันการบันทึกข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_custmain_add10_ttt.asp');
	}
}
</script>
</body>
</html>
