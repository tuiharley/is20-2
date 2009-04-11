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
<body bgcolor="#E8F8FF" onLoad="document.form1.cbus.focus();">
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

	Dim cus_id, iframe
	cus_id = Request.QueryString("cus_id")
	iframe = Request.QueryString("iframe")
%>
    <form name="form1" method="post" action="">
      
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td height="10"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td><b><font color="#FF00FF" size="4" face="JasmineUPC"><b>วิธีการป้อนข้อมูล</b></font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td height="10"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="15%">&nbsp;</td>
            <td><font size="2" color="#FF00FF">ชื่อลูกค้าไม่ต้องระบุจังหวัดหรือสาขา 
              ตัวอย่างเช่น ธนาคารกสิกรไทย จำกัด (มหาชน) เป็นต้น</font></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="95%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
          <tr> 
            <td width="45%" valign="bottom"><div align="right"><font size="2" color="#4B0097">เลือกกลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
            <td width="2%" valign="bottom" rowspan="3">&nbsp; </td>
            <td width="53%" valign="bottom"><div align="left"> 
                <select name="cbus" id="cbus" onkeypress="if(window.event.keyCode==13){document.form1.cmname.focus();}">
                  <option value="">กรุณาระบุกลุ่มลูกค้าธุรกิจองค์กร</option>
                  <%
	Sql = "SELECT CBUS, NBUS FROM BUSINESS_TYPE GROUP BY CBUS, NBUS "
	Rs.Open Sql,Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                  <option value="<%=Rs("CBUS")%>"><%=Rs("CBUS")&" - "&Rs("NBUS")%></option>
                  <%
		Rs.MoveNext
	loop
	Rs.Close
%>
                </select>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ใส่ชื่อลูกค้า</font><font size="2" color="#FF0000">(ไม่ต้องระบุสาขาหรือจังหวัด)</font></div></td>
            <td valign="bottom"><div align="left"> 
                <input name="cmname" type="text" class="text" id="cmname" size="40" maxlength="50" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><div align="center"> 
          <input name="send" type="button" id="send" value=" บันทึกข้อมูล " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
          <input type="hidden" name="cus_id" id="cus_id" value="<%=cus_id%>">
        </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
    </form>
<script language="JavaScript">
	function dosend(){
		if(document.form1.cbus.value==""){
			alert('กรุณาระบุกลุ่มลูกค้าธุรกิจองค์กร');
			document.form1.cbus.focus();
			return;
		}
		if(document.form1.cmname.value==""){
			alert('กรุณาระบุชื่อลูกค้า');
			document.form1.cmname.focus();
			return;
		}
		
		if(confirm('ยืนยันการบันทึกข้อมูล')){
			document.form1.send.disabled=true;
			top.RunWindow('Temp1','temp_save_sub_custmain_edit11_maincomp_add.asp?iframe='+self.name+'&oldiframe=<%=iframe%>');
		}
	}
</script>
</body>
</html>
