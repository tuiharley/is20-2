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
<body bgcolor="#E8F8FF" onLoad="document.form1.solvename.focus();">
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
<form name="form1" method="post" action="">
  <table width="321" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="26%"><div align="right"><font color="#4B0097" size="2"><strong>วิธีแก้ปัญหา</strong></font></div></td>
      <td width="74%">&nbsp;&nbsp;<input name="solvename" type="text" class="text" id="solvename" size="30" maxlength="50"></td>
    </tr>
     <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="บันทึกข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script languange=JavaScript>

	function dosend () 
	{
		
		if(document.form1.solvename.value==""){
			alert('กรุณาใส่วิธีแก้ปัญหา');
			document.form1.solvename.focus();
			return;
		}
		if(confirm('ยืนยันการบันทึกข้อมูล'))
		{
		top.RunWindow('Temp1','add_solve_name.asp?solvename=' + document.form1.solvename.value+'');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
