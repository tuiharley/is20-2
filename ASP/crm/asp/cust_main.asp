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
	Dim cgcode
	cgcode=Request.QueryString("cgcode")
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
            <td><b><font color="#4B0097" size="4" face="JasmineUPC">แสดงรายได้แต่ละเลขหมายของลูกค้า</font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
		<% 
			Dim SQLT, RsT
				set RsT = Server.CreateObject("Adodb.RecordSet") 
				SQLT = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
				RsT.Open SQLT, Session("Conn1"),1,3
		%>
    <tr> 
      <td><table width="81%" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
          <tr> 
            <td width="30%" valign="bottom"> <p align="right"><font  color="#4B0097" size="2"> 
                <span lang="th">ชื่อลูกค้า</span></font></td>
            <td width="2%" valign="bottom" rowspan="6">&nbsp; </td>
            <td width="68%" valign="bottom"> <font  color="#4b0097" size="2"> 
              <span lang="th"><%=RsT("CM_NAME")&" - "&RsT("CG_NAME")%></span></font></td>
          </tr>
          <tr> 
            <td valign="bottom"> <p align="right"> <font size="2" color="#4B0097" >ที่อยู่</font></td>
            <td valign="bottom"> <font  size="1" color="#4B0097"> <font  size="1" color="#4B0097"> 
              <font  color="#4b0097" size="2"><%=RsT("CGADDR_SNAME")&" "&RsT("CGADDR_BAND")&" "&RsT("CGADDR_SOI")&" "&RsT("CGADDR_STREET")&" "&RsT("CGADDR_TUMBOL")&" "&RsT("CGADDR_DISTRICT")&" "&RsT("CGADDR_PROVINCE")&" "&RsT("CGADDR_POSTCODE")%></font></font></font></td>
          </tr>
          <tr> 
            <td valign="bottom"> <p align="right"> <font  size="2" color="#4B0097"> 
                ภาคธุรกิจ</font></td>
            <td valign="bottom"> <font  size="2" color="#4B0097"> <span lang="en-us">
              <% =(RsT("AREA")) %>
              </span></font></td>
          </tr>
          <tr> 
            <td valign="bottom"> <p align="right"> <font  size="2" color="#4B0097"> 
                จังหวัด</font></td>
            <td valign="bottom"> <font  size="2" color="#4B0097"> 
              <%
					 Response.Write(RsT("PROVINCE"))
				%>
              </font></td>
          </tr>
          <tr> 
            <td valign="bottom"> <p align="right"><font  color="#4B0097" size="2"> 
                <span lang="th">กลุ่มลูกค้า</span></font></td>
            <td valign="bottom"> <font  color="#4B0097" size="2"> 
              <%
							Response.Write(RsT("SMT"))
						%>
              </font></td>
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
            <td width="65%">&nbsp;</td>
            <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
                <%
'	for i=1 to totalpage
%>
                <option value="<%'=i%>" <%'if Cint(pageno)=Cint(i) then%>selected<%'end if%>>หน้าที่ 
                <%'=i%>
                </option>
                <%
'	next
%>
              </select></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="15"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font size="2" color="#4B0097"><b>เลขที่ผู้เช่า</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font size="2" color="#4B0097"><b>เบอร์โทรศัพท์</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="17%"><div align="center"><font size="2" color="#4B0097"><b>ว/ด/ป 
                <br>
                เริ่มใช้บริการ</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%"><div align="center"><font size="2" color="#4B0097"><b>สถานะ</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font size="2" color="#4B0097"><b>ว/ด/ป 
                <br>
                ยกเลิก</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="28%"><div align="center"><font size="2" color="#4B0097"><b>สาเหตุการยกเลิก</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="15"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
			Dim SQL, Rs
			set Rs = Server.CreateObject("Adodb.RecordSet") 
			SQL = "SELECT TELNUMBER.CUSTOMER_ID, TELNUMBER.TELNO, TELNUMBER.DATEMS FROM MKT_CUSTOMER INNER JOIN TELNUMBER ON MKT_CUSTOMER.MC_CUSTOMER_ID = TELNUMBER.CUSTOMER_ID WHERE (MKT_CUSTOMER.CG_CODE = '"&cgcode&"') ORDER BY TELNUMBER.CUSTOMER_ID, TELNUMBER.TELNO, TELNUMBER.DATEMS "
			Rs.Open SQL, Session("Conn1"),1,3
			
			Do while not Rs.EOF
%>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2"><%=Rs("CUSTOMER_ID")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="center"><font color="#4B0097" size="2"><%=Rs("TELNO")%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2"><%=left(FormatDateTime(Rs("DATEMS"),1),len(FormatDateTime(Rs("DATEMS"),1))-4)&year(Rs("DATEMS"))+543%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2">&nbsp;</font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2">&nbsp;</font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2">&nbsp;</font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="15"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
			Rs.MoveNext
		loop
		Rs.Close
%>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="12%">&nbsp;</td>
            <td><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน 
              <%'if not Rs.EOF and not Rs.BOF then%>
              <%'if pageno=totalpage then%>
              <%'=endrow%>
              <%'else%>
              <%'=pagesize%>
              <%'end if%>
              <%'else%>
              0 
              <%'end if%>
              รายการ จากข้อมูลทั้งหมด 
              <%'=Rs.RecordCount%>
              รายการ ขณะนี้อยู่ที่หน้า 
              <%'if not Rs.EOF and not Rs.BOF then%>
              <%'=pageno%>
              <%'else%>
              0 
              <%'end if%>
              จำนวนทั้งหมดมี 
              <%'=totalpage%>
              หน้า</font></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><div align="center"><span style="background-color: #FFFFFF"><font color="#4B0097"> 
          <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
          </font></span></div></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
  </table>
    </form>
  </body>
</html>