<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
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

	Dim cus_id, cbus, cmcode, cmname
	cus_id = Request.QueryString("cus_id")
	cbus = Request.QueryString("cbus")
	cmcode = Request.QueryString("cmcode")
%>
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="8%">&nbsp;</td>
            <td><b><font color="#4B0097" face="JasmineUPC" size="5">ข้อมูลลูกค้า</font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="55%"><font size="2" color="#4B0097">ผู้ใช้ระบบ : <%=Session("User_Name")&"  ( "&Session("User_Id")&" )"%></font></td>
            <td><font size="2" color="#4B0097">วันที่ใช้ระบบ : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td><b><font color="#4B0097" size="4" face="JasmineUPC">แก้ไขข้อมูลรหัสลูกค้า</font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="70%" height="67" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" id="AutoNumber21" style="border-collapse: collapse">
          <tr> 
            <td width="40%" valign="bottom"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
            <td width="2%" valign="bottom" rowspan="4"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="58%" valign="bottom"><div align="left"> 
                <select name="cbus" id="cbus" onChange="document.body.style.cursor='wait'; top.RunWindow('Desktop3','maincomp_edit.asp?cus_id=<%=cus_id%>&cbus='+document.form1.cbus.value);">
                  <%
	Sql = "SELECT CBUS, NBUS FROM BUSINESS_TYPE "
	Rs2.Open Sql,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                  <option value="<%=Rs2("cbus")%>" <%if Rs2("cbus")=cbus then%>selected<%end if%>><%=Rs2("cbus")&" - "&Rs2("nbus")%></option>
                  <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                </select>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">รหัสลูกค้า</font></div></td>
            <td valign="bottom"><div align="left"> 
                <select name="cmcode" id="cmcode" onChange="document.body.style.cursor='wait'; top.RunWindow('Desktop3','maincomp_edit.asp?cus_id=<%=cus_id%>&cbus='+document.form1.cbus.value+'&cmcode='+document.form1.cmcode.value);">
                  <%
	Sql = "SELECT CM_CODE, CM_NAME FROM COMP_MAIN WHERE (CBUS = N'" & cbus & "') "
	Rs2.Open Sql,Session("Conn1"),1,3

	if not Rs2.EOF and not Rs2.BOF then	
		Rs2.MoveFirst
		cmname=Rs2("cm_name")
	end if
	do while not Rs2.EOF
%>
                  <option value="<%=Rs2("cm_code")%>" <%if Rs2("cm_code")=cmcode then%>selected<%cmname=Rs2("cm_name")%><%end if%>><%=Rs2("cm_code")&" - "&Rs2("cm_name")%></option>
                  <%
		Rs2.MoveNext
	loop
%>
                </select>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ชื่อลูกค้า</font><font size="2" color="#FF0000">(ไม่ต้องระบุสาขา)</font></div></td>
            <td valign="bottom"><div align="left">
                <input name="cmname" type="text" id="cmname" class="text" value="<%=cmname%>" size="40" maxlength="50" onKeyPress="if(window.event.keyCode==13){document.form1.send.focus();}">
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><div align="center"> 
          <%
	if cmname<>"" then
%>
          <input name="send" type="button" id="send" value=" บันทึกการแก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <%
	end if
%>
          <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
          <input name="cus_id" type="hidden" id="cus_id" value="<%=cus_id%>">
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
		if(document.form1.cmname.value==""){
			alert('กรุณาระบุชื่อลูกค้า');
			document.form1.cmname.focus();
			return;
		}
		
		if(confirm('ยืนยันการบันทึกข้อมูล')){
			document.form1.send.disabled=true;
			top.RunWindow('Temp1','temp_save_maincomp_edit.asp');
		}
	}
</script>
</body>
</html>