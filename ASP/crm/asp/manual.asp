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
<body bgcolor="#E8F8FF" >
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

	Dim cus_id
	cus_id = Request.QueryString("cus_id")
%>
    <form name="form1" method="post" action="">
      
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="8%">&nbsp;</td>
            <td><b><font color="#4B0097" face="JasmineUPC" size="5">คู่มือระบบ</font></b></td>
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
      <td align="center"><b><font size="4" color="#4B0097">หัวข้อ</font></b></td>
    </tr>
    <tr> 
      <td><table width="53%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
          <tr>
            <td width="89%" style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000';" onMouseOut="document.all.f2.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','../Manual/Customer_Grouping.htm');"><font  name="f2" id="f2" color="#4B0097" size="2">กำหนด Customer Grouping ให้ลูกค้า</font></td> 
            <td width="6%" ><a href="../Manual/Customer_Grouping.doc"><img src="../images/words.gif" width="21" height="19" border="0"></a></td>
            <td width="5%" ><a href="../Manual/Customer_Grouping.pdf"><img src="../images/acrobat.gif" width="18" height="20" border="0"></a></td>
          </tr>
          <tr>
            <td style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000';" onMouseOut="document.all.f3.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','../Manual/Customer_data.htm');"><font name="f3" id="f3"size="2" color="#4B0097">ข้อมูลลูกค้าที่กำหนด Customer Grouping แล้ว</font></td> 
            <td width="6%" ><a href="../Manual/Customer_data.doc"><img src="../images/words.gif" width="21" height="19" border="0"></a></td>
            <td width="5%" ><a href="../Manual/Customer_data.pdf"><img src="../images/acrobat.gif" width="18" height="20" border="0"></a></td>
          </tr>
          <tr>
            <td style="cursor:hand" onMouseOver="document.all.f4.color='#ff0000';" onMouseOut="document.all.f4.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','../Manual/Making_appointment.htm');"><font name="f4" id="f4" size="2" color="#4B0097">บันทึกการนัดหมายลูกค้า</font></td> 
            <td width="6%" ><a href="../Manual/Making_appointment.doc"><img src="../images/words.gif" width="21" height="19" border="0"></a></td>
            <td width="5%" ><a href="../Manual/Making_appointment.pdf"><img src="../images/acrobat.gif" width="18" height="20" border="0"></a></td>
          </tr>
          <tr>
            <td style="cursor:hand" onMouseOver="document.all.f5.color='#ff0000';" onMouseOut="document.all.f5.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','../Manual/Edit_appointment.htm');"><font name="f5" id="f5" color="#4B0097" size="2">แก้ไขการนัดหมายลูกค้า</font></td> 
            <td width="6%" ><a href="../Manual/Edit_appointment.doc"><img src="../images/words.gif" width="21" height="19" border="0"></a></td>
            <td width="5%" ><a href="../Manual/Edit_appointment.pdf"><img src="../images/acrobat.gif" width="18" height="20" border="0"></a></td>
          </tr>
          <tr>
            <td style="cursor:hand" onMouseOver="document.all.f6.color='#ff0000';" onMouseOut="document.all.f6.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','../Manual/Cancel_appointment.htm');"><font name="f6" id="f6" color="#4B0097" size="2">ยกเลิกการนัดหมายลูกค้า</font></td> 
            <td width="6%" ><a href="../Manual/cancel_appointment.doc"><img src="../images/words.gif" width="21" height="19" border="0"></a></td>
            <td width="5%" ><a href="../Manual/cancel_appointment.pdf"><img src="../images/acrobat.gif" width="18" height="20" border="0"></a></td>
          </tr>
          <tr>
            <td style="cursor:hand" onMouseOver="document.all.f7.color='#ff0000';" onMouseOut="document.all.f7.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','../Manual/Meet_customer.htm');"><font name="f7" id="f7" color="#4B0097" size="2">บันทึกการเข้าพบลูกค้า</font></td> 
            <td width="6%" ><a href="../Manual/meet_customer.doc"><img src="../images/words.gif" width="21" height="19" border="0"></a></td>
            <td width="5%" ><a href="../Manual/meet_customer.pdf"><img src="../images/acrobat.gif" width="18" height="20" border="0"></a></td>
          </tr>
          <tr>
            <td style="cursor:hand">&nbsp;</td> 
            <td width="6%" >&nbsp;</td>
            <td width="5%" >&nbsp;</td>
          </tr>
          <tr>
            <td style="cursor:hand" >&nbsp;</td> 
            <td width="6%" >&nbsp;</td>
            <td width="5%" >&nbsp;</td>
          </tr>
          <tr>
            <td style="cursor:hand" >&nbsp;</td> 
            <td width="6%" >&nbsp;</td>
            <td width="5%" >&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
  </table>
    </form>
</body>
</html>
