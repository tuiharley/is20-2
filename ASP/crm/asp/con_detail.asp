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
	Dim Rs, Rs2, Rs3, SQL
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
	
	Dim con_id, cgcode
	con_id = Request.QueryString("con_id")
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
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">การพบลูกค้า</font></b></td>
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
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="4" face="JasmineUPC">บันทึกการพบลูกค้า</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="75%" height="79" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <%
					SQL = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
    				Rs3.Open SQL,Session("Conn1"),1,3
			     %>
                <td width="28%"><div align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></div></td>
                <td width="2%"rowspan="5"><img src="../images/blank.gif" width="1" height="1"> 
                </td>
                <td width="70%"><b><font color="#4b0097" size="2"> <%=Rs3("CM_NAME")&"  "&Rs3("CG_NAME")%></font></b></td>
              </tr>
              <tr> 
                <td> <div align="right"><font size="2" color="#4B0097">ที่อยู่</font></div></td>
                <td><font color="#4b0097" size="2"> <%=Rs3("CGADDR_SNAME")&" "&Rs3("CGADDR_BAND")&" "&Rs3("CGADDR_SOI")&" "&Rs3("CGADDR_STREET")&" "&Rs3("CGADDR_TUMBOL")&" "&Rs3("CGADDR_DISTRICT")&" "&Rs3("CGADDR_PROVINCE")&" "&Rs3("CGADDR_POSTCODE")%> 
                  </font></td>
              </tr>
              <tr> 
                <td height="19"><div align="right"><font size="2" color="#4B0097">ภาคธุรกิจ</font></div></td>
                <td><font color="#4b0097" size="2"> 
                  <% Response.Write(Rs3("AREA")) %>
                  </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">จังหวัด</font></div></td>
                <td><font size="2" color="#4B0097"> 
                  <% 
					 Response.Write(Rs3("PROVINCE"))
				%>
                  </font></td>
              </tr>
            </table></td>
        </tr>
        <%
	SQL = "SELECT CONTACT.* FROM CONTACT WHERE (CT_ID = " & con_id & ") "
	Rs.Open SQL,Session("Conn1"),1,3
%>
        <tr> 
          <td><table width="589" border="3" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="175"><p align="right"><font size="2" color="#4B0097">ว/ด/ป(พบลูกค้า)</font></td>
                <td width="346" colspan="2"> <font  size="2" color="#4B0097">&nbsp;<%=left(FormatDateTime(Rs("CT_DATEMET"),1),len(FormatDateTime(Rs("CT_DATEMET"),1))-4)&right(FormatDateTime(Rs("CT_DATEMET"),1),4)+543%> 
                  เวลา <%=left(FormatDateTime(Rs("CT_DATEMET"),3),len(FormatDateTime(Rs("CT_DATEMET"),3))-3)%> 
                  </font> </td>
              </tr>
              <tr> 
                <td><p align="right"><font  size="2" color="#4B0097">ประเภทการเยี่ยม</font></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;
                  <%if Rs("CT_TYPEMET") then%>
                  เข้าพบ 
                  <%else%>
                  โทรเยี่ยม 
                  <%end if%>
                  </font></td>
              </tr>
              <tr> 
                <td height="22"><p align="right"><font size="2"  color="#4B0097"> 
                    เข้าพบครั้งที่</font></td>
                <td colspan="2"><font  size="2" color="#4B0097">&nbsp;<%=Rs("CT_NO")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097"> ชื่อ-สกุลพนักงานผู้เข้าพบ</font></td>
                <td colspan="2"><font size="2" color="#4B0097">&nbsp;
                  <% 
				SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '"& Rs("CT_EMPMET") &"') "
			    Rs2.Open SQL,Session("Conn1"),1,3
%>
                  <%=Rs2("TITLE_THAI")&""&Rs2("NAME_THAI")&"  "&Rs2("SURNAME_THAI")%> 
                  <%
                Rs2.Close
			  %>
                  </font></td>
              </tr>
              <tr> 
                <td  rowspan="2"><p align="right"><font  color="#4b0097" size="2">ชื่อ-สกุล 
                    ผู้เชี่ยวชาญ<br>
                    เฉพาะด้านหรือผู้บริหารที่เข้าพบ<br>
                    </font></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;
                  <% 
if Rs("CT_EMPMET1")<>"" then
				SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '"& Rs("CT_EMPMET1") &"') "
			    Rs2.Open SQL,Session("Conn1"),1,3
%>
                  <%=Rs2("TITLE_THAI")&Rs2("NAME_THAI")&"  "&Rs2("SURNAME_THAI")%> 
                  <%
                Rs2.Close
end if
			  %>
                  </font></td>
              </tr>
              <tr> 
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;
                  <% 
if Rs("CT_EMPMET2")<>"" then
				SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '"& Rs("CT_EMPMET2") &"') "
			    Rs2.Open SQL,Session("Conn1"),1,3
%>
                  <%=Rs2("TITLE_THAI")&Rs2("NAME_THAI")&"  "&Rs2("SURNAME_THAI")%> 
                  <%
                Rs2.Close
end if
			  %>
                  </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_NAME")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_TEL")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_FAX")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_EMAIL")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_NAME1")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_TEL1")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_FAX1")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_EMAIL1")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_NAME2")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_TEL2")%></font></td>
              </tr>
              <tr> 
                <td height="23"><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_FAX2")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><font color="#4B0097" size="2">&nbsp;<%=Rs("CT_CUST_EMAIL2")%></font></td>
              </tr>
              <%		  
			  SQL = "SELECT OBJECT.ONAME, CON_OBJECT.REMARK FROM CON_OBJECT INNER JOIN OBJECT ON CON_OBJECT.OID = OBJECT.OID WHERE (CON_OBJECT.CT_ID = '" & con_id & "') "
			  Rs2.Open SQL,Session("Conn1"),1,3 
			  %>
              <tr> 
                <td valign="top"><div align="right"><font color="#4B0097" size="2">วัตถุประสงค์การพบลูกค้า</font></div></td>
                <td> <table>
                    <%
					do while Not Rs2.EOF
					%>
                    <tr> 
                      <td> <font size="2" color="#4B0097"><%=Rs2("ONAME")&"   "&Rs2("REMARK")%></font> 
                      </td>
                    </tr>
                    <%  Rs2.MoveNext
			     		loop
                 		Rs2.Close
				 		%>
                  </table></tr>
              <%		  
			  SQL = "SELECT RESULT.RENAME, CON_RESULT.REMARK FROM CON_RESULT INNER JOIN RESULT ON CON_RESULT.REID = RESULT.REID WHERE (CON_RESULT.CT_ID = "& con_id &") "
			  Rs2.Open SQL,Session("Conn1"),1,3 
			  %>
              <tr> 
                <td valign="top"><div align="right"><font color="#4B0097" size="2">ผลการพบลูกค้า</font></div></td>
                <td> <table>
                    <%
					do while Not Rs2.EOF %>
                    <tr> 
                      <td> <font size="2" color="#4B0097"><%=Rs2("RENAME")&"   "&Rs2("REMARK")%></font> 
                      </td>
                    </tr>
                    <%  Rs2.MoveNext
			     		loop
                 		Rs2.Close
				 		%>
                  </table></td>
              </tr>
              <tr> 
                <td valign="top"><div align="right"><font  size="2" color="#FF93C9"><b>หมายเหตุ</b></font><font  size="2" color="#4B0097"></font></div></td>
                <td valign="top" colspan="2"><font size="2">&nbsp;<%=Rs("CT_REMARK")%></font></td>
              </tr>
            </table></tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
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
    </center>
</div>
</body>
</html>