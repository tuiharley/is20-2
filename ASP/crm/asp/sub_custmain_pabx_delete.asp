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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
%>
<%
	Dim cgcode, pabxid
	cgcode = Request.QueryString("cgcode")
	pabxid = Request.QueryString("pabxid")
%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%
	Sql = "SELECT PABXID, PABXNAME, SPEC, LINEIN, LINEOUT FROM PABX WHERE (CG_CODE = '" & cgcode & "') AND (PABXID = " & pabxid & ") "
	Rs2.Open Sql, Session("Conn1"),1,3	
%>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong><font color="#4B0097" size="2">ผู้ให้บริการ</font></strong></font></div></td>
      <td width="65%">&nbsp; <input name="textfield" type="text" class="text" value="<%=Rs2("PABXNAME")%>" size="30" readonly=""> 
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
        <input name="pabxid" type="hidden" id="pabxid" value="<%=pabxid%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></font></div></td>
      <td width="80%">&nbsp; <input name="textfield2" type="text" class="text" value="<%=Rs2("SPEC")%>" size="30" readonly=""></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">จำนวนเลขหมาย</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="num" type="text" class="text" id="num2" onChange="Calaverage();" onkeyPress="if(window.event.keyCode==13){document.form1.total.focus();}" value="<%=Rs2("LINEIN")%>" size="10" maxlength="10" readonly=""></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">รายได้รวม</font></strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="total" type="text" class="text" id="total2" onChange="Calaverage();" onkeyPress="if(window.event.keyCode==13){document.form1.send.focus();}" value="<%=Rs2("LINEOUT")%>" size="10" maxlength="10" readonly=""></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="  ลบข้อมูล  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosend(){
	if(confirm('ยืนยันการลบข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_pabx_delete.asp');
		top.HideWindow('Dialog1');
	}
}
</script>
</body>
</html>
