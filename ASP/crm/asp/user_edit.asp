<%@LANGUAGE="VBSCRIPT"%>
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
<body bgcolor="#E8F8FF">
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
	Dim empid
	empid = Request.QueryString("empid")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">User Management</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="55%"><font size="2" color="#4B0097">ผู้ใช้ระบบ : <%=Session("User_Name")&"  ( "&Session("User_Id")&" )"%></font></td>
                <td><font size="2" color="#4B0097">วันที่ใช้ระบบ : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="3" face="JasmineUPC">แก้ไขสิทธิการใช้งาน</font></b></td>
              </tr>
            </table></td>
        </tr>
	<%
 	Dim Rs, Sql
	Set Rs = Server.CreateObject("Adodb.RecordSet")

	Sql = "SELECT EMP_LEVEL.EL_EMPID, EMP_LEVEL.EL_TEL, EMP_LEVEL.L_LEVEL_CODE, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, PROVINCE.AREA, PROVINCE.PROVINCE, STATUS_USER.SU_BEGINDATE, JOB.EMP_THAI_POSITION_NAME FROM EMP_LEVEL INNER JOIN EMPLOYEE ON EMP_LEVEL.EL_EMPID = EMPLOYEE.EMP_ID INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC INNER JOIN STATUS_USER ON EMP_LEVEL.EL_EMPID = STATUS_USER.EL_EMPID INNER JOIN JOB ON EMPLOYEE.POSITION_CODE = JOB.POSITION_CODE WHERE EMP_LEVEL.EL_EMPID='"&empid&"' "
	Rs.Open Sql,Session("Conn1"),1,3
	%>
        <tr> 
          <td><table width="455" height="103" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="140"><div align="right"><font color="#4B0097" size="2">รหัสพนักงาน</font></div></td>
                <td width="5" rowspan="8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="310"><font size="2" color="#4B0097"><%=empid%>
                  <input name="empid" type="hidden" id="empid" value="<%=empid%>">
                  </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ชื่อ 
                    - สกุล</font></div></td>
                <td><font size="2" color="#4B0097"><%=Rs("TITLE_THAI")&Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">ตำแหน่ง</font></div></td>
                <td width="310"><font size="2" color="#4B0097"><%=Rs("EMP_THAI_POSITION_NAME")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">ภาคธุรกิจ</font></div></td>
                <td width="310"><font size="2" color="#4B0097"><%=Rs("AREA")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">จังหวัด</font></div></td>
                <td width="310"><font size="2" color="#4B0097"><%=Rs("PROVINCE")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">วันที่เปิดให้เข้าระบบ</font></span></div></td>
                <td width="310"><font size="2" color="#4B0097"><%=left(formatdatetime(Rs("SU_BEGINDATE"),1),len(formatdatetime(Rs("SU_BEGINDATE"),1))-4)&year(Rs("SU_BEGINDATE"))+543%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ระดับสิทธิ</font></div></td>
                <td width="310"><select name="flag">
                    <option value="1" <%if Cint(Rs("L_LEVEL_CODE"))=Cint(1) then%>selected<%end if%>>1 VIP</option>
                    <option value="2" <%if Cint(Rs("L_LEVEL_CODE"))=Cint(2) then%>selected<%end if%>>2 Manager</option>
                    <option value="3" <%if Cint(Rs("L_LEVEL_CODE"))=Cint(3) then%>selected<%end if%>>3 Officer</option>
                    <option value="4" <%if Cint(Rs("L_LEVEL_CODE"))=Cint(4) then%>selected<%end if%>>4 Admin</option>
                  </select> </td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">เบอร์โทรศัพท์</font></div></td>
                <td width="310"><input name="tel" type="text" class="text" size="20" maxlength="30" value="<%=Rs("EL_TEL")%>"></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center"> 
              <input id="send" type="button" value="บันทึกการแก้ไข" name="send" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.RunWindow('Temp1','temp_save_user_edit.asp');">&nbsp;&nbsp;
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
            </div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
</body>
</html>