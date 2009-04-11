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
	  		Dim cgcode, SQL, Rs, empid
			set Rs = Server.CreateObject("Adodb.RecordSet")

			cgcode = Request.QueryString("cgcode")
			empid = Request.QueryString("empid")

			SQL = "SELECT CG_CODE, EMPID, EMP_NAME, EMP_SUR, EMP_SIDE, EMP_POS, EMP_DECIDE, EMP_TEL, EMP_FAX, EMP_MAIL FROM EMP WHERE EMP.CG_CODE = '" & cgcode &"' AND ID = '" & empid & "'"
			Rs.open SQL,Session("Conn1"),1,3
	%>
<form name="form1" method="post" action="">
  <table width="350" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong>ชื่อ</strong></font></div></td>
      <td width="65%">&nbsp;&nbsp;<input name="name" type="text" class="text" id="name" value="<%=Rs("EMP_NAME")%>" size="30" maxlength="50" readonly>
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
		<input name="empid" type="hidden" id="empid" value="<%=empid%>"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>นามสกุล</strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="sur" type="text" class="text" id="sur" value="<%=Rs("EMP_SUR")%>" size="30" maxlength="50"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">หน่วยงาน</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="side" type="text" class="text" id="side" value="<%=Rs("EMP_SIDE")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">ตำแหน่ง</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="post" type="text" class="text" id="post" value="<%=Rs("EMP_POS")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>อำนาจการตัดสินใจ</strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="decide" type="text" class="text" id="decide" value="<%if Rs("EMP_DECIDE") = true then %>มีอำนาจตัดสินใจ<%else%>ไม่มีอำนาจการตัดสินใจ<%end if%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">โทรศัพท์</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="tel" type="text" class="text" id="tel" value="<%=Rs("EMP_TEL")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">fax</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="fax" type="text" class="text" id="fax" value="<%=Rs("EMP_FAX")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">e-mail</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="mail" type="text" class="text" id="mail" value="<%=Rs("EMP_MAIL")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input id="back" type="button" value="ปิดหน้าต่าง" name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">
	function dosend () {
		if(confirm('ยืนยันการลบข้อมูล')){
			top.RunWindow('Temp1','temp_save_sub_custmain_delete4.asp');
		}
	}	
</script>
</body>
</html>
