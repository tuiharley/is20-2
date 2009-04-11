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
	  		Dim cgcode, SQL, Rs, headid
			set Rs = Server.CreateObject("Adodb.RecordSet")

			cgcode = Request.QueryString("cgcode")
			headid = Request.QueryString("headid")

			SQL = "SELECT HEAD_NAME, HEAD_SIDE, HEAD_POS FROM HEAD WHERE HEAD.CG_CODE = '" & cgcode &"' AND HEADID='"& headid &"'"
			Rs.open SQL,Session("Conn1"),1,3
	%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>ชื่อ</strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="name" type="text" class="text" id="name" value="<%=Rs("HEAD_NAME")%>" size="30" maxlength="50" readonly>
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
        <input name="headid" type="hidden" id="headid" value="<%=headid%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">หน่วยงาน</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="side" type="text" class="text" id="side" value="<%=Rs("HEAD_SIDE")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font size="2">ตำแหน่ง</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="post" type="text" class="text" id="post" value="<%=Rs("HEAD_POS")%>" size="30" maxlength="50" readonly></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1">
		</td>
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
			top.RunWindow('Temp1','temp_save_sub_custmain_delete5.asp');
		}
	}	
</script>
</body>
</html>
