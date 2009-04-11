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
<body bgcolor="#E8F8FF" onLoad="document.form1.sname.focus();">
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
 	Dim cgcode
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
		Dim SQL, Rs , Rs2
		set Rs = Server.CreateObject("Adodb.RecordSet")
		set Rs2 = Server.CreateObject("Adodb.RecordSet")

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
              <tr> 
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f1.color='#ff0000'" onMouseOut="document.all.f1.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f1" id="f1" size="2">ข้อมูลทั่วไป</font></div></td>
                    </tr>
					<tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f12.color='#ff0000'" onMouseOut="document.all.f12.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add12.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f12" id="f12" size="2">ที่อยู่ลูกค้า</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f11.color='#ff0000'" onMouseOut="document.all.f11.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add11.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f11" id="f11" size="2">เลขที่ผู้เช่า</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000'" onMouseOut="document.all.f2.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add2.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f2" id="f2" size="2">บริษัทฯในเครือ</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000'" onMouseOut="document.all.f3.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add3.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f3" id="f3" size="2">สมาชิกสมาคม</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f4.color='#ff0000'" onMouseOut="document.all.f4.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add4.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f4" id="f4" size="2">เจ้าหน้าที่ที่ติดต่อ</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f6.color='#ff0000'" onMouseOut="document.all.f6.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f6" id="f6" size="2">สินค้าและบริการที่ใช้อยู่</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f7.color='#ff0000'" onMouseOut="document.all.f7.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add7.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f7" id="f7" size="2">การใช้บริการพิเศษ 
                          (SPC)</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f8.color='#ff0000'" onMouseOut="document.all.f8.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add8.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f8" id="f8" size="2">วิธีการชำระค่าบริการ</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f9.color='#ff0000'" onMouseOut="document.all.f9.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add9.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f9" id="f9" size="2">สินค้าและบริการในอนาคต</font></div></td>
                    </tr>
                    <tr> 
                      <td style="cursor:hand" onMouseOver="document.all.f10.color='#ff0000'" onMouseOut="document.all.f10.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add10.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f10" id="f10" size="2">ปํญหาและการแก้ไข</font></div></td>
                    </tr>
                  </table>
                  <%
				  Rs.Close
				 ' Sql = "SELECT CUST_GROUP.SMT, CUST_DATA.WEB, CUST_DATA.TEL, CUST_DATA.FAX, CUST_DATA.NUM_EMP1, CUST_DATA.NUM_EMP2, CUST_DATA.RELATION, CUST_DATA.DETAIL, CUST_DATA.CG_CODE FROM CUST_DATA INNER JOIN CUST_GROUP ON CUST_DATA.CG_CODE = CUST_GROUP.CG_CODE WHERE (CUST_DATA.CG_CODE = '" & cgcode & "')"
		Sql = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME,CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.AREA, PROVINCE.PROVINCE, PROVINCE.PROVINCE_ID, CG_ADDRESS.CGADDR_ID FROM  CUST_GROUP INNER JOIN  COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID WHERE (CUST_GROUP.CG_CODE = '" & cgcode & "')"
		
				  Rs.Open SQL, Session("Conn1"),1,3
				  %>
                </td>
                <td valign="top"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="3" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>ที่อยู่ลูกค้า</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="30%"><div align="right"><font color="#4B0097" size="2">เลขที่</font></div></td>
                      <td width="2%" rowspan="8" valign="bottom"></td>
                      <td width="68%"><input name="sname" type="text" class="text" value="<%if not Rs.EOF then%><%=Rs("CGADDR_SNAME")%><%end if%>" size="15" >
					 <input name="cgaddr_id" type="hidden" value="<%=Rs("CGADDR_ID") %>">
					  </td>
                    </tr>
                    <tr> 
                      <td width="30%"><div align="right"><font color="#4B0097" size="2">ชื่อตึก</font></div></td>
                      <td width="68%"><input name="band" class="text" size="20" maxlength="20" value="<%if not Rs.EOF then Response.Write(Rs("CGADDR_BAND"))end if%>"></td>
                    </tr>
                    <tr> 
                      <td height="22"><div align="right"><font size="2" color="#4B0097">ซอย</font></div></td>
                      <td><font size="1" color="#4B0097"> 
                        <input name="soi" class="text" size="20" maxlength="20" value="<%if not Rs.EOF then Response.Write(Rs("CGADDR_SOI"))end if%>">
                        </font></td>
                    </tr>
                    <tr> 
                      <td><div align="right"><font size="2" color="#4B0097">ถนน</font></div></td>
                      <td><font size="1" color="#4B0097"> 
                        <input name="street" class="text" size="20" maxlength="20" value="<%if not Rs.EOF then Response.Write(Rs("CGADDR_STREET"))end if%>">
                        </font></td>
                    </tr>
                    <tr> 
                      <td><div align="right"><font size="2" color="#4B0097">ตำบล</font></div></td>
                      <td><font color="#4B0097" size="1"> 
                        <input name="tumbol" class="text"  size="10" maxlength="10" value="<%if not Rs.EOF then Response.Write(Rs("CGADDR_TUMBOL"))end if%>">
                        &nbsp; </font></td>
                    </tr>
                    <tr> 
                      <td><div align="right"><font size="2" color="#4B0097">อำเภอ</font></div></td>
                      <td><font color="#4B0097" size="1"> 
                        <input name="district" class="text" size="10" maxlength="10" value="<%if not Rs.EOF then Response.Write(Rs("CGADDR_DISTRICT"))end if%>">
                        &nbsp; </font></td>
                    </tr>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2">จัหวัด</font></div></td>
                      <td> <select size="1" name="province">
                          <option value="">กรุณาระบุ</option>
						  <% Sql = "SELECT PROVINCE_ID, PROVINCE FROM PROVINCE"
								  Rs2.Open SQL, Session("Conn1"),1,3
								do  while not Rs2.EOF 
						  %>
                          <option value="<%=Rs2("PROVINCE")%>" <% if not Rs.EOF then%><%if not isnull(Rs("CGADDR_PROVINCE")) then%><%if Rs2("PROVINCE") = Rs("CGADDR_PROVINCE") then  %>selected<%end if%><%end if%><%end if%>><%=Rs2("PROVINCE")%></option>
                         <%
						 Rs2.MoveNext
						 loop
						 Rs2.Close
						 %>
                        </select></td>
                    </tr>
                    <tr> 
                      <td valign="top"><div align="right"><font color="#4B0097" size="2">รหัสไปรษณีย์</font></div></td>
                      <td><font color="#4B0097" size="1">
                        <input name="postcode" class="text" size="10" maxlength="10" value="<%if not Rs.EOF then Response.Write(Rs("CGADDR_POSTCODE")) end if%>">
                      </font></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center">
          
              <input name="send" type="button" id="send" value="แก้ไขข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend2();">
          
              &nbsp;&nbsp; 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
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
	<form name="form2" method="post" action="">
	<input name="sname" type="hidden" id="sname">
   <input name="band" type="hidden" id="band">
   <input name="soi" type="hidden" id="soi">
   <input name="street" type="hidden" id="street">
   <input name="tumbol" type="hidden" id="tumbol">
   <input name="district" type="hidden" id="district">
   <input name="province" type="hidden" id="province">
   <input name="postcode" type="hidden" id="postcode">
   
	</form>
	<script language="JavaScript">
	
	function dosend2(){

		if(confirm('ยืนยันการบันทึกข้อมูล')){
			document.form1.send.disabled=true;
			top.RunWindow('Temp1','temp_save_custmain_edit12.asp');
			top.HideWindow('Dialog1');
		}
	}
	</script>
</center>
</div>
</font>
</body>
</html>