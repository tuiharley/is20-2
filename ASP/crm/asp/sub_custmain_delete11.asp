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
<body bgcolor="#E8F8FF" onLoad="document.form1.tpid.focus();">
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
	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	Dim cgcode, customer_id
	cgcode = Request.QueryString("cgcode")
	customer_id = Request.QueryString("customer_id")
	Sql = "SELECT CSS_CUSTOMER.CUSTOMER_ID, CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE, CSS_CUSTOMER.STATUS FROM MKT_CUSTOMER INNER JOIN CSS_CUSTOMER ON MKT_CUSTOMER.MC_CUSTOMER_ID = CSS_CUSTOMER.CUSTOMER_ID INNER JOIN ADDRESS ON CSS_CUSTOMER.NADR_CLI = ADDRESS.ADDR_ID WHERE MKT_CUSTOMER.CG_CODE = N'"& cgcode &"' AND MKT_CUSTOMER.MC_CUSTOMER_ID = N'"& customer_id &"'"
	Rs.Open SQL, Session("Conn1"),1,3
%>
<form name="form1" method="post" action="">
  <table width="400" height="160" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="35%" height="22"><div align="right"><font color="#4B0097" size="2"><strong>เลขที่ผู้เช่า</strong></font></div></td>
      <td width="80%">&nbsp; <input name="cust_id" type="text" class="text" id="cust_id" size="20" readonly value="<%=Rs("CUSTOMER_ID")%>">
	  <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>"> 
      <input name="customer_id" type="hidden" id="customer_id" value="<%=customer_id%>"></td>
    </tr>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong>ชื่อผู้เช่า</strong></font></div></td>
      <td width="80%">&nbsp; <input name="cust_name" type="text" class="text" id="cust_name" size="35" readonly value="<%=Rs("INITITLE")&" "&Rs("FIRST_NAME")&" "&Rs("LAST_NAME")%>"> 
      </td>
    </tr>
    <tr> 
      <td width="35%"><div align="right"><font color="#4B0097" size="2"><strong>ที่อยู่</strong></strong></font><font color="#4B0097"><strong></strong></font></div></td>
     <td width="80%">&nbsp; <textarea name="address" cols="35" rows="3" readonly="readonly"><%=Rs("ADDR_SNAME")&" "&Rs("ADDR_BAND")&" "&Rs("ADDR_SOI")&" "&Rs("ADDR_STREET")&" "&Rs("ADDR_TUMBOL")&" "&Rs("ADDR_DISTRICT")&" "&Rs("ADDR_PROVINCE")&" "&Rs("ADDR_POSTCODE")%></textarea></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value=" ลบข้อมูล " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosend(){
	if(confirm('ยืนยันการลบข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_custmain_delete11.asp');
	}
}
</script>
</body>
</html>
