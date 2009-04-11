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
<body bgcolor="#E8F8FF" onLoad="document.form1.social_id.focus();">
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
	Dim cgcode, memid
	cgcode = Request.QueryString("cgcode")
	memid = Request.QueryString("memid")
%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
	<%
	  		Dim SQL, Rs
			set Rs = Server.CreateObject("Adodb.RecordSet")
			SQL = "SELECT MEMBER.MEMID, MEMBER.SOCIAL_ID, MEMBER.POSTION, SOCIAL.SOCIAL_NAME FROM MEMBER INNER JOIN SOCIAL ON MEMBER.SOCIAL_ID = SOCIAL.SOCIAL_ID WHERE MEMBER.CG_CODE = '" & cgcode &"' AND MEMBER.MEMID = "& memid &""
			Rs.open SQL,Session("Conn1"),1,3
	%>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>สมาคม</strong></font></div></td>
      <td width="80%">&nbsp; 
	  <input type=text  name="social_id" id="social_id" value="<%=Rs("SOCIAL_NAME")%>" class="text" readonly>
	  <input name="cgcode" type="hidden" value="<%=cgcode%>">
      <input name="memid" type="hidden" id="memid" value="<%=Rs("MEMID")%>"> </td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>ตำแหน่ง</strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="post" type="text" class="text" id="post" size="30" maxlength="50" value="<%=Rs("POSTION")%>" readonly></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
	</tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="ลบข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
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
			top.RunWindow('Temp1','temp_save_sub_custmain_delete3.asp');
		}
	}	
</script>
</body>
</html>
