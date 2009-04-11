<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
	Dim Sql, Rs
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim   empcode, empname , app_id, cgcode
	cgcode = Request.QueryString("cgcode")
	app_id = Request.QueryString("app_id")
	empcode = Request.QueryString("empcode")
	empname = Request.QueryString("empname")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.empcode.focus();">
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="15%">&nbsp;</td>
            <td width="70%"><div align="center"><font size="3"><strong>ค้นหาพนักงาน</strong></font></div></td>
            <td width="15%"><div align="center"><img name="ok" src="../images/true.gif" width="25" height="25" style="cursor:hand" onClick="top.HideWindow('DialogS1');"></div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="25%"><div align="right"><font size="2">รหัสพนักงาน</font></div></td>
            <td width="3%">&nbsp;</td>
            <td width="52%"> 
              <input name="empcode" type="text" class="text" id="empcode" value="<%=empcode%>" size="5" maxlength="4" onKeyPress="if(window.event.keyCode==13){document.form1.empname.focus();}"></td>
            <td width="20%">&nbsp;</td>
          </tr>
          <tr> 
            <td height="30"><div align="right"><font size="2">ชื่อหรือสกุลพนักงาน</font></div></td>
            <td>&nbsp;</td>
            <td><input name="empname" type="text" class="text" id="empname" onkeypress="if(window.event.keyCode==13){document.form1.search.focus();}" value="<%=empname%>" size="30" maxlength="50"></td>
            <td><input name="search" type="button" id="search" value="ค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosubmit();"></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%if empcode<>"" or empname<>"" then%>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="20%"><div align="center"><font size="2"><strong>รหัสพนักงาน</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="80%"><div align="center"><font size="2"><strong>ชื่อพนักงาน</strong></font></div></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="3"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
	Sql = "SELECT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.PROVINCE_ID = '" & Session("User_Prov") & "') AND (EMPLOYEE.USEROW = 1) "
if empcode<>"" then
	Sql = Sql & " AND (EMPLOYEE.EMP_ID like '"&empcode&"%') AND (EMPLOYEE.EMP_ID NOT IN (SELECT EMP_ID FROM APP_EMPAPP WHERE APP_ID = " & app_id & "))"
end if
if empname<>"" then
	Sql = Sql&"AND ((EMPLOYEE.NAME_THAI LIKE '%"&empname&"%') OR (EMPLOYEE.SURNAME_THAI LIKE '%"&empname&"%')) AND (EMPLOYEE.EMP_ID NOT IN (SELECT EMP_ID FROM APP_EMPAPP WHERE APP_ID = " & app_id & "))"
end if
	Rs.Open Sql,Session("Conn1"),1,3

	do while not Rs.EOF
%>
          <tr> 
            <td><div align="center"><font size="2"><input type="button" name="send" value="<%=Rs("EMP_ID")%>" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Temp1','add_search_specialist2.asp?empcode=<%=Rs("EMP_ID")%>&cgcode=<%=cgcode%>&app_id=<%=app_id%>&empcodetmp=' + document.form1.empcode.value);"></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td>&nbsp;&nbsp;<font size="2"><%=Rs("TITLE_THAI")&Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></font></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="3"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
<%
		Rs.MoveNext
	loop
%>
        </table></td>
    </tr>
<%end if%>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosubmit(){
	if(document.form1.empcode.value=="" && document.form1.empname.value==""){
		alert('กรุณาใส่ข้อมูลในการค้นหา');
		document.form1.empcode.focus();
		return;
	}

top.ShowRunWindow('DialogS1','add_specialist2.asp?app_id=<%=app_id%>&cgcode=<%=cgcode%>&empcode='+document.form1.empcode.value+'&empname='+document.form1.empname.value);
}
</script>

</body>
</html>
