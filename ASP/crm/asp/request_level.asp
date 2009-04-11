<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
		Dim Sql, Rs1, Rs2, Rs3, show, empid
			set Rs1 = Server.CreateObject("Adodb.RecordSet")
			set Rs2 = Server.CreateObject("Adodb.RecordSet")
			set Rs3 = Server.CreateObject("Adodb.RecordSet")
			show = Request.Form("show")
			empid = Request.Form("empid")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
<div align="center" name="form1" method="post" action="">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">ขอสิทธิใช้งานระบบ 
                  CRM </font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="55%">&nbsp;</td>
                <td><font size="2" color="#4B0097">วันที่ใช้ระบบ : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td> <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td><font size="2" color="#FF8C24"><b>สำหรับท่านใดที่ไม่เคยใช้งานระบบ 
                  CRM Version</b>&nbsp;&nbsp;กรุณาใส่รหัสพนักงานของท่าน&nbsp;และคลิกปุ่มตรวจสอบข้อมูล&nbsp;&nbsp;เพื่อตรวจสอบข้อมูลพนักงานของท่าน&nbsp;&nbsp;จากนั้นคลิกปุ่มส่งข้อมูลถึงผู้ดูแลระบบ&nbsp;เมื่อผู้ดูแลระบบกำหนดสิทธิการใช้งานให้กับท่านเรียบร้อยแล้ว 
                  ระบบจะมี E-Mail แจ้งผลให้ทราบทันที</font> </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td> <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td><font size="2" color="#FF8C24"><b>สำหรับท่านใดที่เคยใช้งานระบบ 
                  CRM Version เก่ามาก่อน</b>&nbsp;&nbsp;ท่านจะสามารถใช้งานระบบนี้ได้ทันที&nbsp;&nbsp;โดยใช้ 
                  Login และ Password ที่ใช้ดู Mail ของท่าน&nbsp;&nbsp;โดยไม่ต้องขอสิทธิการใช้งานใหม่</font> 
                </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td> <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">รหัสพนักงาน 
                    <input name="empid" type="text" class="text" id="empid" size="10" maxlength="4" value="<%=empid%>">
                    <input name="ok" type="button" id="ok" value="ตรวจสอบข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doloaddata();">
                    </font></div></td>
              </tr>
            </table>
            <font color="#4B0097" size="2">&nbsp; </font></td>
        </tr>
        <%
		if show <> "" then
		Sql = "SELECT TOP 100 PERCENT EMP_ID FROM EMPLOYEE WHERE (EMP_ID = '"&empid&"')"
		Rs1.Open Sql, Session("Conn1"),1,3
		if not Rs1.EOF and not Rs1.BOF then
			Sql = "SELECT EL_EMPID FROM EMP_LEVEL WHERE (EL_EMPID = '"&empid&"')"
			Rs2.Open Sql, Session("Conn1"),1,3
			if Rs2.EOF or Rs2.BOF then
				Sql = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, JOB.EMP_THAI_POSITION_NAME, ORGANIZATION.ORGANIZE_THAI_DESC, PROVINCE.AREA, PROVINCE.PROVINCE FROM EMPLOYEE INNER JOIN JOB ON EMPLOYEE.POSITION_CODE = JOB.POSITION_CODE INNER JOIN ORGANIZATION ON EMPLOYEE.ORGANIZE_CODE = ORGANIZATION.ORGANIZE_CODE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '"&empid&"')"
				Rs3.Open Sql, Session("Conn1"),1,3
		%>
        <tr> 
          <td><table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="30%"><div align="right"><font color="#4B0097" size="2">รหัสพนักงาน</font></div></td>
                <td width="2%" rowspan="7"><font size="2" color="#4B0097">&nbsp;<img src="../images/blank.gif" width="1" height="1"></font></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("EMP_ID")%>
              </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ชื่อ-สกุล</font></div></td>
                <td><font color="#4B0097" size="2"><%=Rs3("TITLE_THAI")&Rs3("NAME_THAI")&"  "&Rs3("SURNAME_THAI")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ตำแหน่ง</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("EMP_THAI_POSITION_NAME")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4b0097" size="2">หน่วยงาน</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("ORGANIZE_THAI_DESC")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ภาคธุรกิจ</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("AREA")%></font></td>
              </tr>
              <tr> 
                <td height="22"><div align="right"><font color="#4B0097" size="2">จังหวัด</font></div></td>
                <td width="68%"><font color="#4B0097" size="2"><%=Rs3("PROVINCE")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">เบอร์โทรติดต่อ</font></div></td>
                <td width="68%"><input name="req_tel" type="text" class="text" id="tel" value="" size="20"  onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}"></td>
              </tr>
            </table>
            <% else %>
            <table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%"><div align="center"><strong><font color="#4B0097" size="4">มีสิทธิเข้าใช้งานระบบแล้ว</font></strong></div></td>
              </tr>
            </table>
            <% end if %>
            <% else %>
            <table width="50%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%"><div align="center"><strong><font color="#4B0097" size="4">ไม่พบข้อมูลพนักงาน</font></strong></div></td>
              </tr>
            </table></td>
        </tr>
        <% end if%>
        <% end if %>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center"> 
              <%if show <> "" then%>
              <input name="send" type="button" id="send" value="ส่งคำขอสิทธิใช้งาน" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
              <span style="background-color: #FFFFFF"></font></span> 
              <% end if%>
              &nbsp;&nbsp; <span style="background-color: #FFFFFF"> <font color="#4B0097"> 
              <input id="back" type="button" value="ปิดหน้าต่าง" name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunWindow('FullPage','login.asp');">
              </font></span> </div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
  </center>
</div>
<div align="center"> 
  <center>
    <form name="form2" method="post" action="">
      <input name="show" type="hidden" value="1">
      <input name="empid" type="hidden" id="empid">
    </form>
  </center>
</div>
</body>
<script language="JavaScript">
function doloaddata() {
		top.FullPage.document.form2.empid.value=top.FullPage.document.form1.empid.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
function dosend(){
	if(document.form1.req_tel.value==""){
			alert('กรุณาระบุเบอร์โทรศัพท์');
			document.form1.req_tel.focus();
			return;
		}
		document.form1.send.disabled=true;
		top.RunWindow('Temp1','temp_save_request_level.asp');
}
</script>
</center>
</div>
</body>
</html>