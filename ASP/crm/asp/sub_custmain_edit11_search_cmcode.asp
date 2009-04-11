<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
	Dim Sql, Rs
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim iframe, cus_id, cbus, cmname
	iframe = Request.QueryString("iframe")
	cus_id = Request.QueryString("cus_id")
	cbus = Request.QueryString("cbus")
	cmname = Request.QueryString("cmname")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.cmname.focus();">
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="15%">&nbsp;</td>
            <td width="70%"><div align="center"><font size="3"><strong>ค้นหาลูกค้า</strong></font></div></td>
            <td width="15%"><div align="center"><img src="../images/DELETE.ICO" width="25" height="25" style="cursor:hand" onClick="top.HideWindow(self.name);"></div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="25%" height="30"><div align="right"><font size="2">ชื่อลูกค้า</font></div></td>
            <td width="3%">&nbsp;</td>
            <td width="52%"><input name="cmname" type="text" class="text" id="cmname" onkeypress="if(window.event.keyCode==13){document.form1.search.focus();}" value="<%=cmname%>" size="30" maxlength="50"></td>
            <td width="20%"><input name="search" type="button" id="search" value="ค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosubmit();"></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%if cmname<>"" then%>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="20%"><div align="center"><font size="2"><strong>รหัสลูกค้า</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="80%"><div align="center"><font size="2"><strong>ชื่อลูกค้า</strong></font></div></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="3"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
	Sql = "SELECT CM_CODE, CM_NAME FROM COMP_MAIN WHERE (CBUS = '"&cbus&"') AND (CM_NAME LIKE '%"&cmname&"%') "
	Rs.Open Sql,Session("Conn1"),1,3

	do while not Rs.EOF
%>
          <tr> 
            <td><div align="center"><font size="2"><input type="button" name="send" value="<%=Rs("CM_CODE")%>" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('<%=iframe%>','sub_custmain_edit11.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=Rs("CM_CODE")%>'); top.HideWindow(self.name);"></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td>&nbsp;&nbsp;<font size="2"><%=Rs("CM_NAME")%></font></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="3"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
<%
		Rs.MoveNext
	loop
%>
        </table></td>
    </tr>
<%end if%>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosubmit(){
	if(document.form1.cmname.value==""){
		alert('กรุณาใส่ชื่อในการค้นหา');
		document.form1.cmname.focus();
		return;
	}
	top.ShowRunWindow(self.name,'sub_custmain_edit11_search_cmcode.asp?iframe=<%=iframe%>&cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmname='+document.form1.cmname.value);
}
</script>
</body>
</html>
