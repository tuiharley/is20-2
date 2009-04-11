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
<body bgcolor="#E8F8FF" onLoad="document.form1.easyname.focus();">
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
  <table width="374" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="37%"><div align="right"><font color="#4B0097" size="2"><strong>วิธีการติดต่อที่สะดวก</strong></font></div></td>
      <td width="63%">&nbsp;&nbsp;<input name="easyname" type="text" class="text" id="easyname" size="30" maxlength="50"></td>
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
		
		if(document.form1.easyname.value==""){
			alert('กรุณาใส่วิธีแก้ปัญหา');
			document.form1.easyname.focus();
			return;
		}
		if(confirm('ยืนยันการบันทึกข้อมูล'))
		{
		top.RunWindow('Temp1','add_easy_name.asp?easyname=' + document.form1.easyname.value+'');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
