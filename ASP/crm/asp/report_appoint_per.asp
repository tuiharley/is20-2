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
	
	Dim monthapp , emp_id
	monthapp = 	 Request.QueryString("monthapp")
	emp_id= 	 Request.QueryString("emp_id")

	
	Dim Sql, Rs, Rs2, Rs3
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")

	
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5">รายงานการนัดหมาย</font></b></td>
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
          <td><div align="center"><font color="#4B0097" size="1"><strong>รายงานการนัดหมายลูกค้า ของคุณ <%=Session("User_Name")%> ปี </strong></font><font size="3" color="#4B0097"><b>
            <%if Year(Date())<Session("Year_Thai") then%>
            <%=Year(Date())+543%>
            <%else%>
             <%=Year(Date())%>
            <%end if%> 
          </b></font>            </div></td>
        </tr>
        <tr> 
          <td><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
            <tr>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ลำดับ</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="15%"><div align="center"><font color="#4B0097" size="1"><strong>วันที่นัดหมาย</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="15%"><div align="center"><font color="#4B0097" size="1"><strong>ชื่อบริษัท/ลูกค้า</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="60%"><div align="center"><font color="#4B0097" size="1"><strong>ที่อยู่บริษัทที่ติดต่อ</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>

            </tr>
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
<%
	Dim totalno, i
			'Sql = "SELECT APP_EMPAPP, MONTH(APP_DATECT) AS Month, COUNT(APP_DATECT) AS No FROM  APPOINT GROUP BY MONTH(APP_DATECT), APP_EMPAPP"
		    Sql = " SELECT CUST_GROUP.CG_NAME, APPOINT.APP_EMPAPP, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, CUST_GROUP.CG_CODE, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL,  CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, APPOINT.APP_ID, APPOINT.APP_DATECT FROM  CUST_GROUP INNER JOIN  APPOINT ON CUST_GROUP.CG_CODE = APPOINT.CG_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN  EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID WHERE (MONTH(APPOINT.APP_DATECT) = " & monthapp & ") AND (APPOINT.APP_EMPAPP = '" & emp_id & "')"
			Rs.Open Sql,Session("Conn1"),1,3
			if not Rs.Eof and not Rs.Bof then
			totalno = Rs.Recordcount

			for i = 1 to totalno
				
%>			
            <tr style="cursor:hand"onClick="top.ShowRunWindow('Desktop4','app_detail.asp?app_id=<%=Rs("APP_ID")%>&cgcode=<%=Rs("CG_CODE")%>');">
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td ><div align="center"><font size="1"><%=i%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font color="#4B0097" size="1">  
			  <%=day(Rs("APP_DATECT")) & "/" & month(Rs("APP_DATECT")) & "/" & year(Rs("APP_DATECT"))+543%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="left"><font color="#4B0097" size="1"><%=Rs("CG_NAME")%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font color="#4B0097" size="1"><%=Rs("CGADDR_SNAME") & " " & Rs("CGADDR_BAND") & " " & Rs("CGADDR_SOI") & " " & Rs("CGADDR_STREET") & " " & Rs("CGADDR_TUMBOL") & " " & Rs("CGADDR_DISTRICT")& " " & Rs("CGADDR_PROVINCE") & " " & Rs("CGADDR_POSTCODE")%></font></div></td>

              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
            </tr>
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
<%
			Rs.MoveNext
			next
%>
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
          </table></td>
        </tr>
		<tr>
		<td align="center">
		  <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);"></td>
		</tr>
		<tr>
		<%else%>
		OK
		<%end if %>
		</tr>
      </table>
    </form>
  </center>
</div></body>
</html>