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
<body bgcolor="#E8F8FF" onLoad="document.form1.name.focus();">
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
	Dim Rs, Rs2, Rs3, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
%>
<%
	Dim cgcode, vcid
	cgcode = Request.QueryString("cgcode")
	vcid = Request.QueryString("vcid")
%>
<form name="form1" method="post" action="">
  <table width="450" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%
	Sql = "SELECT VOICE_CUST_USE.PROMOID, COMPANY.COMPNAME, VOICE_SERVICE.VOICENAME, VOICE_CUST_USE.NUM, VOICE_CUST_USE.TOTAL FROM VOICE_CUST_USE INNER JOIN COMPANY ON VOICE_CUST_USE.COMPID = COMPANY.COMPID INNER JOIN VOICE_SERVICE ON VOICE_CUST_USE.VOICEID = VOICE_SERVICE.VOICEID WHERE (CG_CODE = '" & cgcode & "') AND (VCID = " & vcid & ") "
	Rs2.Open Sql, Session("Conn1"),1,3	
%>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong><font color="#4B0097" size="2">ผู้ให้บริการ</font></strong></font></div></td>
      <td width="65%">&nbsp; <input name="textfield" type="text" class="text" value="<%=Rs2("COMPNAME")%>" readonly=""> 
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
        <input name="vcid" type="hidden" id="vcid" value="<%=vcid%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></font></div></td>
      <td width="80%">&nbsp; <input name="textfield2" type="text" class="text" value="<%=Rs2("VOICENAME")%>" readonly=""></td>
    </tr>
	<tr> 
      <td width="25%" height="22"><div align="right"><font color="#4B0097" size="2"><strong>โปรโมชั่น</strong></font></div></td>
      <td width="75%">&nbsp; <textarea name="pomo" cols="40" rows="3" class="text" id="pomo" onKeyPress="if(window.event.keyCode==13){document.form1.num.focus();}" readonly>
<%	if Rs2("PROMOID")<> "" then
		SQL = "SELECT POMONAME FROM POMOTION WHERE (POMOID = " & Rs2("PROMOID") & ") "
		Rs3.Open SQL, Session("Conn1"),1,3
%>	
<%=Rs3("POMONAME")%>
<%	Rs3.Close
		end if 
%>
	  </textarea> 
      </td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">จำนวนเลขหมาย</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="num" type="text" class="text" id="num2" onChange="Calaverage();" onkeyPress="if(window.event.keyCode==13){document.form1.total.focus();}" value="<%=Rs2("NUM")%>" size="10" maxlength="10" readonly=""></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">รายได้รวม</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="total" type="text" class="text" id="total2" onChange="Calaverage();" onkeyPress="if(window.event.keyCode==13){document.form1.send.focus();}" value="<%=Rs2("TOTAL")%>" size="15" maxlength="20" readonly=""></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">รายได้เฉลี่ย</font></strong></font></div></td>
      <td width="80%">&nbsp; 
        <input name="average" type="text" class="text" id="average" value="<%if Rs2("NUM")<>0 then%><%=Rs2("TOTAL")/Rs2("NUM")%><%end if%>" size="15" maxlength="20" readonly></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="  ลบข้อมูล  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
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
		top.RunWindow('Temp1','temp_save_sub_voice_delete.asp');
		top.HideWindow('Dialog1');
	}
}
</script>
</body>
</html>
