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
<body bgcolor="#E8F8FF" onLoad="document.form1.tvname.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	dim TVNAME , TVID
	TVNAME = Request.QueryString("TVNAME")
	TVID = Request.QueryString("TVID")
	%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>�÷�ȹ�</strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="tvname" type="text" class="text" id="tvname" size="30" maxlength="50" value="<%=TVNAME%>"></td>
    </tr>
     <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="�ѹ�֡������" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  �Դ˹�ҵ�ҧ  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
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
		
		if(document.form1.tvname.value==""){
			alert('��س�����Ը���ѭ��');
			document.form1.tvname.focus();
			return;
		}
		if(confirm('�׹�ѹ��úѹ�֡������'))
		{
		top.RunWindow('Temp1','edit_tv_name.asp?TVNAME=' + document.form1.tvname.value + '&TVID=<%=TVID%>');
		top.HideWindow('Dialog1');
		}
	}	
</script>

</body>
</html>
