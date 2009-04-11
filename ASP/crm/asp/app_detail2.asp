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
	Dim app_id, cgcode
	app_id = Request.QueryString("app_id")
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
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">การนัดหมาย</font></b></td>
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
                <td><b><font color="#4B0097" size="4" face="JasmineUPC">ข้อมูลการนัดหมาย</font></b></td>
              </tr>
            </table></td>
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
                <td width="30%" valign="bottom"> <p align="right"><strong><font  color="#4B0097" size="2"> 
                    <span lang="th">ชื่อลูกค้า</span></font></strong></td>
                <td width="2%" valign="bottom" rowspan="6">&nbsp; </td>
                <td width="68%" valign="bottom"> <font  color="#4b0097" size="2"> 
                  <span lang="th"><%=RsT("CM_NAME")&"  "&RsT("CG_NAME")%></span></font></td>
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
<% 
	Dim Rs, Rs1, SQL, SQL1, emp1, emp2
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs1 = Server.CreateObject("Adodb.RecordSet")
	emp1 = ""
	emp2 = ""
	SQL = "SELECT APPOINT.APP_DATEAP, APPOINT.APP_DATECT, APPOINT_STATUS.AS_STATUS_NAME, APPOINT.APP_REMARK, APPOINT.APP_CUST_NAME, APPOINT.APP_TEL_CONTACT, APPOINT.APP_FAX_NO, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, APPOINT.APP_EMPAPP1, APPOINT.APP_EMPAPP2 FROM APPOINT INNER JOIN APPOINT_STATUS ON APPOINT.AS_STATUS_ID = APPOINT_STATUS.AS_STATUS_ID INNER JOIN EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID WHERE (APPOINT.APP_ID = "& app_id &")"
	Rs.Open SQL,Session("Conn1"),1,3
	if Rs("APP_EMPAPP1") <> "" then
		SQL1 = "SELECT NAME_THAI, SURNAME_THAI FROM EMPLOYEE WHERE (EMP_ID = '" & Rs("APP_EMPAPP1")  & "')"
		Rs1.Open SQL1,Session("Conn1"),1,3
		emp1 = Rs1("NAME_THAI") & "  " & Rs1("SURNAME_THAI")
		Rs1.Close
	end if
	if Rs("APP_EMPAPP2") <> "" then
		SQL1 = "SELECT NAME_THAI, SURNAME_THAI FROM EMPLOYEE WHERE (EMP_ID = '" & Rs("APP_EMPAPP2")  & "')"
		Rs1.Open SQL1,Session("Conn1"),1,3
		emp2 = Rs1("NAME_THAI") & "  " & Rs1("SURNAME_THAI")
		Rs1.Close
	end if
	%>
        <tr> 
          <td><table width="506" height="285" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="172"><div align="right"><font size="2" color="#4B0097">ว/ด/ป(ติดต่อ)</font></div></td>
                <td width="10" rowspan="12"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="317"><font  size="2" color="#4B0097"><%=left(FormatDateTime(Rs("APP_DATEAP"),1),len(FormatDateTime(Rs("APP_DATEAP"),1))-4)&right(FormatDateTime(Rs("APP_DATEAP"),1),4)+543%> เวลา <%=left(FormatDateTime(Rs("APP_DATEAP"),3),len(FormatDateTime(Rs("APP_DATEAP"),3))-3)%> </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"> ว/ด/ป(นัดหมาย)</font></div></td>
                <td><font  size="2" color="#4B0097"><%=left(FormatDateTime(Rs("APP_DATECT"),1),len(FormatDateTime(Rs("APP_DATECT"),1))-4)&right(FormatDateTime(Rs("APP_DATECT"),1),4)+543%>  เวลา <%=left(FormatDateTime(Rs("APP_DATECT"),3),len(FormatDateTime(Rs("APP_DATECT"),3))-3)%> </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">สถานะการนัดหมาย</font></div></td>
                <td><font color="#4B0097" size="2" ><% =Rs("AS_STATUS_NAME") %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">วัตถุประสงค์การนัดหมาย</font></div></td>
                <td><font color="#4B0097" size="2">
<%
	SQL = "SELECT APP_OBJECT.OID, OBJECT.ONAME, APP_OBJECT.REMARK FROM APP_OBJECT INNER JOIN OBJECT ON APP_OBJECT.OID = OBJECT.OID WHERE (APP_OBJECT.APP_ID = " & app_id & ") "
	Rs1.Open SQL,Session("Conn1"),1,3
	
	do while not Rs1.EOF
%>
					<%=Rs1("ONAME")&"&nbsp;&nbsp;&nbsp;"&Rs1("REMARK")&"<br>"%>
<%
		Rs1.MoveNext
	loop
	Rs1.Close
%>
				</font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td><font color="#4B0097" size="2"><% =Rs("APP_CUST_NAME") %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td><font size="2" color="#4B0097"><% =Rs("APP_TEL_CONTACT") %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax </font></div></td>
                <td><font color="#4B0097" size="2"><% =Rs("APP_FAX_NO") %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  color="#4B0097" size="2">ผู้นัดหมาย</font></div></td>
                <td><font  size="2" color="#4B0097"><% =Rs("NAME_THAI") & "  " & Rs("SURNAME_THAI") %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  color="#4b0097" size="2">ผู้เชี่ยวชาญเฉพาะด้าน<br>
                    หรือผู้บริหารที่ออกพบด้วย</font></div></td>
                <td><font size="2" color="#4B0097">
				<% 
					SQL1 = "SELECT   EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, EMPLOYEE.TITLE_THAI FROM APP_EMPAPP INNER JOIN EMPLOYEE ON APP_EMPAPP.EMP_ID = EMPLOYEE.EMP_ID WHERE (APP_EMPAPP.APP_ID = " & app_id  & ")"
					Rs1.Open SQL1,Session("Conn1"),1,3
						if  Rs1.Recordcount <> 0 then
								do while not Rs1.EOF 
					%>
				<font size="2" color="#4B0097">	<%=Rs1("NAME_THAI") & "  " & Rs1("SURNAME_THAI")%><br>
				<%          Rs1.Movenext
								loop
						end if 
				%>
				</font></td>
              </tr>
			  <tr> 
                <td><div align="right"><font  color="#4B0097" size="2">หมายเหตุ</font></div></td>
                <td><font  size="2" color="#4B0097"><% =Rs("APP_REMARK") %></font></td>
              </tr>
              
			  <% Rs.Close %>
            </table></td>
        </tr>
        <tr> 
          <td><div align="center"><span style="background-color: #FFFFFF"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
              </span></div></td>
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