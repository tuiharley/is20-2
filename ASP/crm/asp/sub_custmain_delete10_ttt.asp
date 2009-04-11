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
<body bgcolor="#E8F8FF" onLoad="document.form1.tpid.focus();">
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
	Dim cgcode, showpdate, showsdate, pdate, sdate, prob_id
	cgcode = Request.QueryString("cgcode")
	prob_id = Request.QueryString("prob_id")
%>
<form name="form1" method="post" action="">
  <table width="450" height="160" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="35%" height="22"><div align="right"><font color="#4B0097" size="2"><strong>ปัญหาที่เกิด</strong></font></div></td>
      <td width="65%">&nbsp; <select name="tpid" id="tpid" onkeyPress="if(window.event.keyCode==13){document.form1.pdate.focus();}">
<%
	  Sql = "SELECT TTT_PROB.TPNAME, PROBLEM.PID, PROBLEM.PDATE, SOLVE.SOLID, SOLVE.SOLNAME, PROBLEM.SDATE FROM PROBLEM INNER JOIN SOLVE ON PROBLEM.SOLID = SOLVE.SOLID INNER JOIN TTT_PROB ON PROBLEM.PID = TTT_PROB.TPID WHERE PROBLEM.CG_CODE = '"& cgcode &"' AND PROBLEM.PROB_ID = '"& prob_id &"' AND PROBLEM.TYPE= 't'"	 
	  Rs.Open SQL, Session("Conn1"),1,3
%>	
      <option value="<%=Rs("PID")%>"><%=Rs("TPNAME")%></option>
        </select>
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
		<input name="prob_id" type="hidden" id="prob_id" value="<%=prob_id%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>วันที่เกิดปัญหา</strong></font></div></td>
      <td width="80%">&nbsp; <input name="showpdate" type="text" class="text" id="showpdate" size="18" readonly value="<%=left(FormatDateTime(Rs("PDATE"),1),len(FormatDateTime(Rs("PDATE"),1))-4)&right(FormatDateTime(Rs("PDATE"),1),4)+543%>">
      </td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">การแก้ไข</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<select name="solid" id="select" onkeyPress="if(window.event.keyCode==13){document.form1.sdate.focus();}">
          <option value="<%=Rs("SOLID")%>"><%=Rs("SOLNAME")%></option>
        </select></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>วันที่คาดว่าจะแก้ได้</strong></strong></font><font color="#4B0097"><strong></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;
        <input name="showsdate" type="text" class="text" id="showsdate" size="18" readonly value="<%=left(FormatDateTime(Rs("SDATE"),1),len(FormatDateTime(Rs("SDATE"),1))-4)&right(FormatDateTime(Rs("SDATE"),1),4)+543%>">
      </td>
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
	if(confirm('ยืนยันการลบข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_custmain_delete10_ttt.asp');
	}
}
</script>
</body>
</html>
