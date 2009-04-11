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
 	Dim cgcode, i
	cgcode = Request.QueryString("cgcode")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">บันทึกข้อมูลลูกค้า</font></b></td>
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
		<% 
		Dim SQL, Rs
		set Rs = Server.CreateObject("Adodb.RecordSet")
		SQL = "SELECT     CUST_GROUP.CG_CODE, COMP_MAIN.CM_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.AREA, PROVINCE.PROVINCE, CUST_GROUP.CG_CODE FROM         CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID WHERE     (CUST_GROUP.CG_CODE = N'" & cgcode & "')"
		Rs.Open SQL, Session("Conn1"),1,3	
		%>
        <tr> 
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="13%">&nbsp;</td>
                <td width="2%" rowspan="2"><img src="../images/blank.gif"></td>
                <td width="85%"><table width="100%" border="3" cellSpacing="0" borderColor="#ada2eb" bgColor="#ffffff">
                    <tr> 
                      <td width="16%" bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>ชื่อ-สกุล</b></font></div></td>
                      <td width="84%" bgColor="#fff0df"><font color="#4b0097" size="2"><%=Rs("CM_NAME") &"  "&Rs("CG_NAME")%> 
                        <input name="gccode" type="hidden" value="<%=Rs("CM_CODE") %>">
                        <input name="cgcode" type="hidden" value="<%=Rs("CG_CODE") %>">
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>ที่อยู่</b></font></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font size="1" color="#FFFFFF">ภาคธุรกิจ</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097">
                        <% =Rs("AREA")%>
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font size="1" color="#FFFFFF">จังหวัด</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("PROVINCE")%></font></td>
                    </tr>
                  </table></td>
              </tr>
<%Rs.Close%>
              <tr> 
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f1.color='#ff0000'" onMouseOut="document.all.f1.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f1" id="f1" size="2">ข้อมูลทั่วไป</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f11.color='#ff0000'" onMouseOut="document.all.f11.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add11_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f11" id="f11" size="2">เลขที่ผู้เช่า</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000'" onMouseOut="document.all.f2.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add2_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f2" id="f2" size="2">บริษัทฯในเครือ</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000'" onMouseOut="document.all.f3.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add3_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f3" id="f3" size="2">สมาชิกสมาคม</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f4.color='#ff0000'" onMouseOut="document.all.f4.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add4_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f4" id="f4" size="2">เจ้าหน้าที่ที่ติดต่อ</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f6.color='#ff0000'" onMouseOut="document.all.f6.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add6_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f6" id="f6" size="2">สินค้าและบริการที่ใช้อยู่</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f7.color='#ff0000'" onMouseOut="document.all.f7.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add7_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f7" id="f7" size="2">การใช้บริการพิเศษ 
                          (SPC)</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f8.color='#ff0000'" onMouseOut="document.all.f8.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add8_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f8" id="f8" size="2">วิธีการชำระค่าบริการ</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f9.color='#ff0000'" onMouseOut="document.all.f9.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add9_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f9" id="f9" size="2">สินค้าและบริการในอนาคต</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f10.color='#ff0000'" onMouseOut="document.all.f10.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add10_readonly.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f10" id="f10" size="2">ปํญหาและการแก้ไข</font></div></td>
                    </tr>
                  </table></td>
                <td valign="top"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="5" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>เลขที่ผู้เช่า</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">ลำดับ</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">เลขที่ผู้เช่า</font></strong></div></td>
                      <td width="25%"><div align="center"><strong><font color="#4B0097" size="2">ชื่อผู้เช่า</font></strong></div></td>
                      <td width="40%"><div align="center"><strong><font color="#4B0097" size="2">ที่อยู่</font></strong></div></td>
                      <td width="10%">&nbsp;</td>
					</tr>
<%
	i=1
'	Sql = "SELECT CSS_CUSTOMER.CUSTOMER_ID, CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE, CSS_CUSTOMER.STATUS FROM MKT_CUSTOMER INNER JOIN CSS_CUSTOMER ON MKT_CUSTOMER.MC_CUSTOMER_ID = CSS_CUSTOMER.CUSTOMER_ID INNER JOIN ADDRESS ON CSS_CUSTOMER.NADR_CLI = ADDRESS.ADDR_ID WHERE MKT_CUSTOMER.CG_CODE = N'"& cgcode &"'"

	Sql = "SELECT TOP 100 PERCENT CSS_CUSTOMER.CUSTOMER_ID, CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE FROM CSS_CUSTOMER INNER JOIN ADDRESS ON CSS_CUSTOMER.NADR_CLI = ADDRESS.ADDR_ID WHERE (CSS_CUSTOMER.CUSTOMER_ID IN (SELECT MC_CUSTOMER_ID FROM MKT_CUSTOMER WHERE (CG_CODE = N'" & cgcode & "'))) "
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                      <td><font color="#4B0097" size="2">&nbsp;&nbsp;<%=Rs("CUSTOMER_ID")%></font></td>
 					  <td><font color="#4B0097" size="2"><%=Rs("INITITLE")&" "&Rs("FIRST_NAME")&" "&Rs("LAST_NAME")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("ADDR_SNAME")&" "&Rs("ADDR_BAND")&" "&Rs("ADDR_SOI")&" "&Rs("ADDR_STREET")&" "&Rs("ADDR_TUMBOL")&" "&Rs("ADDR_DISTRICT")&" "&Rs("ADDR_PROVINCE")&" "&Rs("ADDR_POSTCODE")%></font></td>
                      <td> <div align="center"> </div></td>
                    </tr>
<%
		i=i+1
		Rs.MoveNext
	loop
	Rs.Close
%>
                    <tr> 
                      <td colspan="5" valign="top"><div align="right"> </div></td>
                    </tr>
				</table>
				  
                </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td> <div align="center"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
            </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
</body>
</html>