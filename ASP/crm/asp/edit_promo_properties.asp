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
<body bgcolor="#E8F8FF" onLoad="document.form1.promop.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	dim ppname , promo_id , ppid
	ppname = Request.QueryString("ppname")
	promo_id = Request.QueryString("promo_id")
	ppid =  Request.QueryString("ppid")
	%>
<form name="form1" method="post" action="">
  <table width="441" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="28%"><div align="right"><font color="#4B0097" size="2"><strong>รายการของโปรโมชั่น</strong></font></div></td>
      <td width="72%">&nbsp;&nbsp;<input name="promop" type="text" class="text" id="promop" size="50" maxlength="60" value="<%=ppname%>"></td>
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
		
		if(document.form1.promop.value==""){
			alert('กรุณาใส่ชื่อบริษัท');
			document.form1.promop.focus();
			return;
		}
		if(confirm('ยืนยันการบันทึกข้อมูล'))
		{
		top.RunWindow('Temp1','edit_promop_name.asp?promop=' + document.form1.promop.value + '&promo_id=<%=promo_id%>&ppid=<%=ppid%>');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
