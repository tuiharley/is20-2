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
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5">รายงาน</font></b></td>
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
          <td><table width="45%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%" align="center" style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000';" onMouseOut="document.all.f2.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','report_appoint_all.asp');"><font name="f2" id="f2" size="2" color="#4B0097">รายงานการนัดหมายลูกค้า</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000';" onMouseOut="document.all.f3.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','report_appoint_all2.asp');"><font name="f3" id="f3" size="2" color="#4B0097">รายงานการเข้าพบลูกค้า</font></td>
              </tr>
			
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
<div align="center">
  <center>
  </center>
</div>
<div align="center">
  <center>
  </center>
</div>

    </body>

</html>