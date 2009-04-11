<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
	Dim Sql, Rs
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim iframe, cus_id, cbus, cmcode, cgname
	iframe = Request.QueryString("iframe")
	cbus = Request.QueryString("cbus")
	cgname = Request.QueryString("cgname")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.cgname.focus();">
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="15%">&nbsp;</td>
            <td width="70%"><div align="center"><font size="3"><strong>ค้นหาลูกค้า 
                - สาขา</strong></font></div></td>
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
            <td width="25%" height="30"><div align="right"><font size="2">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
            <td width="3%">&nbsp;</td>
            <td width="52%"><select name="cbus" id="cbus" onkeypress="if(window.event.keyCode==13){document.form1.cgname.focus();}">
                <option value=""></option>
                <% 
					  SQL = "SELECT  * FROM  BUSINESS_TYPE"
					  Rs.Open SQL,Session("Conn1"),1,3
								do while not Rs.EOF
						%>
                <option value="<%=Rs("CBUS") %>"  <%if cbus=Rs("CBUS") then%>selected<%end if%>><%=Rs("CBUS")&" - "&Rs("NBUS")%></option>
                <%
								Rs.MoveNext
								loop
								Rs.Close
						%>
              </select></td>
            <td width="20%">&nbsp;</td>
          </tr>
          <tr> 
            <td height="30"><div align="right"><font size="2">ชื่อลูกค้า - สาขา</font></div></td>
            <td>&nbsp;</td>
            <td><input name="cgname" type="text" class="text" id="cgname" onkeypress="if(window.event.keyCode==13){document.form1.search.focus();}" value="<%=cgname%>" size="30" maxlength="50"></td>
            <td><input name="search" type="button" id="search" value="ค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosubmit();"></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%if cgname<>"" then%>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="20%"><div align="center"><font size="2"><strong>รหัสลูกค้า 
                - สาขา</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="80%"><div align="center"><font size="2"><strong>ชื่อลูกค้า 
                - สาขา</strong></font></div></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="3"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
	Sql = "SELECT COMP_MAIN.CM_NAME, CUST_GROUP.CG_CODE, CUST_GROUP.CG_NAME FROM CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE WHERE (COMP_MAIN.CBUS = '"&cbus&"') AND (CUST_GROUP.PROVINCE_ID = '"&Session("User_Prov")&"') AND ((COMP_MAIN.CM_NAME LIKE '%"&cgname&"%') OR (CG_NAME LIKE '%"&cgname&"%')) "
	Rs.Open Sql,Session("Conn1"),1,3

	do while not Rs.EOF
%>
          <tr> 
            <td><div align="center"><font size="2"><input type="button" name="send" value="<%=Rs("CG_CODE")%>" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.<%=iframe%>.document.form2.cbus.value='<%=cbus%>'; top.<%=iframe%>.document.form2.cgcode.value='<%=Rs("CG_CODE")%>'; top.<%=iframe%>.document.form2.show.value='1'; top.<%=iframe%>.document.form2.submit(); top.HideWindow(self.name);"></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td>&nbsp;&nbsp;<font size="2"><%=Rs("CM_NAME")&" - "&Rs("CG_NAME")%></font></td>
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
	if(document.form1.cgname.value==""){
		alert('กรุณาใส่ชื่อในการค้นหา');
		document.form1.cgname.focus();
		return;
	}
	top.ShowRunWindow(self.name,'con_add_search_cgcode.asp?iframe=<%=iframe%>&cbus=<%=cbus%>&cgname='+document.form1.cgname.value);
}
</script>
</body>
</html>
