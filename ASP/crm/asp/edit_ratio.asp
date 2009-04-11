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
<body bgcolor="#E8F8FF" onLoad="document.form1.rationame.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	dim ratio_name , ratio_id
	ratio_name = Request.QueryString("RATIONAME")
	ratio_id = Request.QueryString("RATIOID")
	%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>Ratio</strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="rationame" type="text" class="text" id="rationame" size="30" maxlength="50" value="<%=ratio_name%>"></td>
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
		
		if(document.form1.rationame.value==""){
			alert('กรุณาใส่Ratio');
			document.form1.rationame.focus();
			return;
		}
		if(confirm('ยืนยันการบันทึกข้อมูล'))
		{
		top.RunWindow('Temp1','edit_ratio_name.asp?rationame=' + document.form1.rationame.value + '&ratio_id=<%=ratio_id%>');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
