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
                <td><b><font color="#4B0097" size="5">รายงานการเข้าพบ</font></b></td>
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
          <td><div align="center"><font color="#4B0097" size="1"><strong>รายงานผู้ทำการนัดหมายลูกค้า ของเขต <%=Session("User_Area")%> ปี </strong></font><font size="3" color="#4B0097"><b>
            <%if Year(Date())<Session("Year_Thai") then%>
            <%=Year(Date())+543%>
            <%else%>
             <%=Year(Date())%>
            <%end if%> 
          </b></font><font color="#4B0097" size="1"><strong></strong></font>            </div></td>
        </tr>
		
		
		
		
		
        <tr> 
          <td><table width="93%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
            <tr>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ลำดับ</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="19%"><div align="center"><font color="#4B0097" size="1"><strong>ชื่อ-นามสกุล</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="11%"><div align="center"><font color="#4B0097" size="1"><strong>จังหวัด</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ม.ค.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ก.พ.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>มี.ค.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>เม.ย.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>พ.ค.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>มิ.ย.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ก.ค.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ส.ค.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ก.ย.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ต.ค.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>พ.ย.</strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
              <td width="5%"><div align="center"><font color="#4B0097" size="1"><strong>ธ.ค.</strong></font></div></td>
             <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
	         <td width="5%"><div align="center"><font size="1"><strong><font color="#4B0097">รวม</font></strong></font></div></td>
	         <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
<%
	Dim totalno, i, n , totalper , tmpsum
	Dim m()
	Dim totalmonth()
	'Sql = "SELECT APPOINT.APP_EMPAPP, MONTH(APPOINT.APP_DATECT) AS Month, COUNT(APPOINT.APP_DATECT) AS No FROM  APPOINT INNER JOIN EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '" & Session("User_Area") & "') GROUP BY MONTH(APPOINT.APP_DATECT), APPOINT.APP_EMPAPP"
			Sql = "SELECT MONTH(CONTACT.CT_DATEMET) AS Month, COUNT(CONTACT.CT_DATEMET) AS No, CONTACT.CT_EMPMET FROM  EMPLOYEE INNER JOIN  PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC INNER JOIN CONTACT ON EMPLOYEE.EMP_ID = CONTACT.CT_EMPMET WHERE (PROVINCE.AREA = " & Session("User_Area") & ") GROUP BY CONTACT.CT_EMPMET, MONTH(CONTACT.CT_DATEMET)"
			'response.Write(Sql)
			Rs.Open Sql,Session("Conn1"),1,3
			if not  Rs.Eof and not Isnull(Rs("CT_EMPMET")) then
					totalno= Rs.RecordCount
							Redim m(totalno,12)
							for i = 1 to totalno 
									for n = 1 to 12		
										m(i,n) = 0
									next
							next

			for i = 1 to totalno
				totalper = 0 
				
			Select case Rs("Month")
 				 case 1: 	m(i,1) = Rs("No")
 				 case 2: 	m(i,2) = Rs("No")
				 case 3: 	m(i,3) = Rs("No")
 				 case 4: 	m(i,4) = Rs("No")
 				 case 5: 	m(i,5) = Rs("No")
				 case 6: 	m(i,6) = Rs("No")
 				 case 7: 	m(i,7) = Rs("No")
 				 case 8: 	m(i,8) = Rs("No")
				 case 9: 	m(i,9) = Rs("No")
 				 case 10: m(i,10) = Rs("No")
 				 case 11: m(i,11) = Rs("No")
				 case 12: m(i,12) = Rs("No")
			End Select
%>			
            <tr>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td><div align="center"><font size="1"><%=i%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="left"><font color="#4B0097" size="1">  
			  <%
			' Sql = " SELECT TITLE_THAI, NAME_THAI, SURNAME_THAI  FROM  EMPLOYEE WHERE (EMP_ID = '" & Rs("APP_EMPAPP") & "')"
			 Sql = " SELECT EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, PROVINCE.PROVINCE FROM  EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '" & Rs("CT_EMPMET") & "')"
			 Rs2.Open Sql,Session("Conn1"),1,3
			 %>  
			  <%=Rs2("TITLE_THAI") & Rs2("NAME_THAI") & "    " & Rs2("SURNAME_THAI")%></font></div></td>
			
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="left"><font color="#4B0097" size="1"><%= Rs2("PROVINCE")%></font></div></td>
			    <%Rs2.Close%>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,1) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=1&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,1)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,2) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=2&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center" ><font color="#4B0097" size="1"><%=m(i,2)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,3) > 0 then %> style="cursor:hand"  onClick="top.ShowRunWindow('Desktop3','report_appoint_per2.asp?monthapp=3&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,3)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,4) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=4&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,4)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,5) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=5&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,5)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,6) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=6&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,6)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,7) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=7&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,7)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,8) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=8&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,8)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,9) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=9&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,9)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,10) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=10&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,10)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,11) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=11&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,11)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td <%if m(i,12) > 0 then %> style="cursor:hand"onClick="top.ShowRunWindow('Desktop2','report_appoint_per2.asp?monthapp=12&emp_id=<%=Rs("CT_EMPMET")%>');" <%end if%>><div align="center"><font color="#4B0097" size="1"><%=m(i,12)%></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font color="#4B0097" size="1"><%  
			  for n = 1 to 12 
			  		totalper = totalper + m(i,n)
			  next
			  		response.Write(totalper)
			               %></font></div></td>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
			
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
<%
			Rs.MoveNext
			next
			
			Redim totalmonth(12)
			for i = 1 to 12
				tmpsum = 0 
				for n  = 1 to totalno
					tmpsum = tmpsum + m(n,i)
				next
			  		totalmonth(i) =   tmpsum
			  next
%>
            <tr>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td><div align="center"><font size="1"><strong><font color="#4B0097">รวม</font></strong></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="right"><font size="1"><font color="#4B0097"></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="right"><font size="1"><font color="#4B0097">
              </font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(1)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(2)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"> <%=totalmonth(3)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(4)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(5)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(6)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(7)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(8)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(9)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(10)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(11)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
              <td><div align="center"><font size="1"><font color="#4B0097"><%=totalmonth(12)%></font></font></div></td>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td><div align="right"><font size="1"></font></div></td>
              <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
            <tr>
              <td height="1" colspan="33" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
          </table></td>
        </tr>
		 <%else %>
		   </table></td>
        </tr>
		<tr>
		<td align="center"><font size="4" color="#FF0097">
		ไม่พบข้อมูลการนัดหมายในเขตของท่าน</td></tr>
		 <%end if %>
      </table>
    </form>
  </center>
</div></body>
</html>