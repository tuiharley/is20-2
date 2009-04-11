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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim  area, prov, show, seltype, variable, area2, prov2, seltype2, variable2
	area = Request.Form("area")
	prov = Request.Form("prov")
	seltype=Request.Form("seltype")
	variable=Request.Form("variable")
	area2 = Request.Form("area2")
	prov2 = Request.Form("prov2")
	seltype2=Request.Form("seltype2")
	variable2=Request.Form("variable2")
    show = Request.Form("show")
	if area="" then
		area = Session("User_Area")
		prov = Session("User_Prov")
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
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">ค้นหาข้อมูล</font></b></td>
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
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="2" face="JasmineUPC">เลือกเงื่อนไขการแสดงข้อมูล</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="700" height="29" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td height="3" valign="bottom"><font size="2" color="#4B0097">ภาคธุรกิจ 
                  <select name="area" id="area" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.prov.focus();}">
                        <option value="10" <%if Cint(area)=Cint(10) then%>selected<%end if%>>ทั้งหมด</option>
                        <option value="0" <%if Cint(area)=Cint(0) then%>selected<%end if%>>0</option>
                        <option value="1" <%if Cint(area)=Cint(1) then%>selected<%end if%>>1</option>
                        <option value="2" <%if Cint(area)=Cint(2) then%>selected<%end if%>>2</option>
                        <option value="3" <%if Cint(area)=Cint(3) then%>selected<%end if%>>3</option>
                        <option value="4" <%if Cint(area)=Cint(4) then%>selected<%end if%>>4</option>
                        <option value="5" <%if Cint(area)=Cint(5) then%>selected<%end if%>>5</option>
                        <option value="6" <%if Cint(area)=Cint(6) then%>selected<%end if%>>6</option>
                        <option value="7" <%if Cint(area)=Cint(7) then%>selected<%end if%>>7</option>
                        <option value="8" <%if Cint(area)=Cint(8) then%>selected<%end if%>>8</option>
                        <option value="9" <%if Cint(area)=Cint(9) then%>selected<%end if%>>9</option>
                      </select>
                  &nbsp;&nbsp;จังหวัด 
                  <select name="prov" id="prov" onkeypress="if(window.event.keyCode==13){document.form1.seltype.focus();}">
				
				  <option value=0>จังหวัดทั้งหมด</option>
				
                      <%
					  			Sql = "SELECT PROVINCE_ID, PROVINCE FROM PROVINCE WHERE (AREA = '" & area & "')"
								Rs.Open Sql,Session("Conn1"),1,3
								'if prov <> "" then
								do while not Rs.EOF
								
						%>
                      <option value="<%=Rs("PROVINCE_ID")%>" <%if Cint(prov)=Cint(Rs("PROVINCE_ID")) then%>selected<%end if%>><%=Rs("PROVINCE")%></option>
                      <%
					  	
								Rs.MoveNext
								loop
								'end if 
								Rs.Close
						%>
                    </select>
                  &nbsp;&nbsp;ค้นหาจาก&nbsp; 
                  <select name="seltype" size="1" id="seltype" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.variable.focus();}">
                    <option value="1" <%if Cint(seltype)=1 then%>selected<%end if%>>เลขที่ผู้เช่า</option>
                    <option value="2" <%if Cint(seltype)=2 then%>selected<%end if%>>เบอร์โทรศัพท์</option>
                    <option value="3" <%if Cint(seltype)=3 then%>selected<%end if%>>ชื่อลูกค้า</option>
                    <option value="4" <%if Cint(seltype)=4 then%>selected<%end if%>>ชื่อสาขา</option>
                    <option value="5" <%if Cint(seltype)=5 then%>selected<%end if%>>ที่อยู่</option>
					<option value="6" <%if Cint(seltype)=6 then%>selected<%end if%>>ชื่อบริษัทในเครือ</option>
                  </select>
                  &nbsp;&nbsp;ข้อมูลที่ค้นหา 
                  <input name="variable" type="text" class="text" id="variable" value="<%=variable%>" size="20" maxlength="50">
				  <input name="search" type="button" id="search" value="ค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();">
                  </font></td>
              </tr>
            </table></td>
        </tr>
         <tr> 
          <td>&nbsp;</td>
        </tr>
<% 
if show <> "" then
%>
		 <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="2" face="JasmineUPC">แสดงข้อมูลที่ค้นหา</font></b></td>
              </tr>
            </table></td>
        </tr>
       <%  Dim i, j, total, totalpage, pagesize, pageno, beginrow, endrow , x
				pageno=Request.Form("pageno")
				pagesize=20

			if Cint(area2) <>  Cint(10) then				
				if prov2 <> 0 then
					 x = "(CUST_GROUP.PROVINCE_ID = '"&prov2&"') AND" 
				else
				 	x = "(PROVINCE.AREA = " & area2 & ") AND "
				end if 
				IF Cint(seltype2)=Cint(1) then	
					Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE " & x & " (CUST_GROUP.CG_CODE in (SELECT MKT_CUSTOMER.CG_CODE FROM TELNUMBER INNER JOIN MKT_CUSTOMER ON TELNUMBER.CUSTOMER_ID = MKT_CUSTOMER.MC_CUSTOMER_ID WHERE (TELNUMBER.CUSTOMER_ID = '"&variable2&"'))) "
				End if
				IF Cint(seltype2)=Cint(2) then
					Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE " & x & " (CUST_GROUP.CG_CODE in (SELECT MKT_CUSTOMER.CG_CODE FROM TELNUMBER INNER JOIN MKT_CUSTOMER ON TELNUMBER.CUSTOMER_ID = MKT_CUSTOMER.MC_CUSTOMER_ID WHERE (TELNUMBER.TELNO LIKE '"&variable2&"%'))) "
				End if
				IF Cint(seltype2)=Cint(3) then
					Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT,  CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID,  PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE  " & x & " (COMP_MAIN.CM_NAME LIKE N'%"&variable2&"%')"
				End if
				IF Cint(seltype2)=Cint(4) then 				
					 Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE  " & x & " (CUST_GROUP.CG_NAME LIKE N'%"&variable2&"%')"
				End If		  
				IF Cint(seltype2)=Cint(5)  then	
					 Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID,  PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE " & x & " ((CG_ADDRESS.CGADDR_BAND LIKE N'%"&variable2&"%') OR (CG_ADDRESS.CGADDR_SOI LIKE N'%"&variable2&"%') OR  (CG_ADDRESS.CGADDR_STREET LIKE N'%"&variable2&"%') OR (CG_ADDRESS.CGADDR_TUMBOL LIKE N'%"&variable2&"%') OR (CG_ADDRESS.CGADDR_DISTRICT LIKE N'%"&variable2&"%' )OR (CG_ADDRESS.CGADDR_POSTCODE LIKE N'%"&variable2&"%'))"
				End if	
				IF Cint(seltype2)=Cint(6)  then	
					 Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN SUB_COMPANY ON CUST_GROUP.CG_CODE = SUB_COMPANY.CG_CODE WHERE  " & x & " (SUB_COMPANY.COMP_NAME LIKE N'%"&variable2&"%')"
				End if	
			else
				IF Cint(seltype2)=Cint(1) then
					Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE in (SELECT MKT_CUSTOMER.CG_CODE FROM TELNUMBER INNER JOIN MKT_CUSTOMER ON TELNUMBER.CUSTOMER_ID = MKT_CUSTOMER.MC_CUSTOMER_ID WHERE (TELNUMBER.CUSTOMER_ID = '"&variable2&"'))) "
				End if
				IF Cint(seltype2)=Cint(2) then
					Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE in (SELECT MKT_CUSTOMER.CG_CODE FROM TELNUMBER INNER JOIN MKT_CUSTOMER ON TELNUMBER.CUSTOMER_ID = MKT_CUSTOMER.MC_CUSTOMER_ID WHERE (TELNUMBER.TELNO LIKE '"&variable2&"%'))) "
				End if
				IF Cint(seltype2)=Cint(3) then
					Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT,  CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID,  PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE  (COMP_MAIN.CM_NAME LIKE N'%"&variable2&"%')"
				End if
				IF Cint(seltype2)=Cint(4) then 				
					 Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE  (CUST_GROUP.CG_NAME LIKE N'%"&variable2&"%')"
				End If		  
				IF Cint(seltype2)=Cint(5)  then	
					 Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID,  PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE ((CG_ADDRESS.CGADDR_BAND LIKE N'%"&variable2&"%') OR (CG_ADDRESS.CGADDR_SOI LIKE N'%"&variable2&"%') OR  (CG_ADDRESS.CGADDR_STREET LIKE N'%"&variable2&"%') OR (CG_ADDRESS.CGADDR_TUMBOL LIKE N'%"&variable2&"%') OR (CG_ADDRESS.CGADDR_DISTRICT LIKE N'%"&variable2&"%' )OR (CG_ADDRESS.CGADDR_POSTCODE LIKE N'%"&variable2&"%'))"
				End if	
				IF Cint(seltype2)=Cint(6)  then	
					 Sql = "SELECT CUST_GROUP.CG_CODE, PROVINCE.PROVINCE,COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.PROVINCE_ID, PROVINCE.AREA FROM  COMP_MAIN INNER JOIN CUST_GROUP ON COMP_MAIN.CM_CODE = CUST_GROUP.CM_CODE INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN SUB_COMPANY ON CUST_GROUP.CG_CODE = SUB_COMPANY.CG_CODE WHERE  (SUB_COMPANY.COMP_NAME LIKE N'%"&variable2&"%')"				
				End if	
			end if
			Rs.Open Sql, Session("Conn1"),1,3
		
			total = Rs.RecordCount
				%>		
<!--#include file = "finepage.asp"-->
	    <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%">&nbsp;</td>
                <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
<%
	for i=1 to totalpage
%>
                <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%> selected<%end if%>>หน้าที่ <%=i%></option>
<%
	next
%>
              </select></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="750" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#000080" style="border-collapse: collapse">
              <tr> 
                <td height="1" colspan="9" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td align="center"width="40%"><b><font size="2" color="#4B0097">ชื่อลูกค้า 
                  - สาขา</font></b></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td align="center"width="42%"><font size="2" color="#4B0097"><b>ที่อยู่</b></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td align="center"width="9%"><font size="2" color="#4B0097"><b>ข้อมูลลูกค้า</b></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td align="center"width="9%"><b><font size="2" color="#4B0097">e-mail</font></b></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="9" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <% 
				If not Rs.EOF and not Rs.BOF then 
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
				%>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4b0097" size="2"> <%=Rs("CG_CODE")&" : "&Rs("CM_NAME")&" - "&Rs("CG_NAME")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4b0097" size="2"><%=Rs("CGADDR_SNAME")&" "&Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td align="center"><font color="#4b0097" size="2"> 
                  <input name="data" type="button" id="data" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.RunWindow('Temp1','temp_find.asp?desktop=Desktop3&fileasp=custmain_add<%if Cint(Session("User_Level"))=Cint(3) and Cint(Session("User_Area"))<>Cint(area2) then%>_readonly<%end if%>.asp&cgcode=<%=Rs("CG_CODE")%>&area=<%=Rs("AREA")%>');" value="ข้อมูล">
                  </font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td align="center"><input name="mail" type="button" id="mail" value="e-mail" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.RunWindow('Temp1','temp_find.asp?desktop=Desktop3&fileasp=custmain_add4<%if Cint(Session("User_Level"))=Cint(3) and Cint(Session("User_Area"))<>Cint(area2) then%>_readonly<%end if%>.asp&cgcode=<%=Rs("CG_CODE")%>&area=<%=Rs("AREA")%>');"></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="9" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%Rs.MoveNext
				next
				Rs.MoveFirst
				end if %>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
             <tr> 
                <td width="12%">&nbsp;</td>
                <td width="88%"><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน 
              <%if not Rs.EOF and not Rs.BOF then%>
              <%if Cint(pageno)=Cint(totalpage) then%>
              <%=endrow%> 
              <%else%>
              <%=pagesize%> 
              <%end if%>
              <%else%>
              <%end if%>
              รายการ จากข้อมูลทั้งหมด <%=Rs.RecordCount%> รายการ ขณะนี้อยู่ที่หน้า 
              <%if not Rs.EOF and not Rs.BOF then%>
              <%=pageno %> 
              <%else%>
              <%end if%>
              จำนวนทั้งหมดมี <%=totalpage%> หน้า</font></td>
              </tr>
            </table></td>
        </tr> 
  <% end if %>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
<form name="form2" method="post" action="find_data.asp"> 
<input name="area" type="hidden" id="area">
 <input name="prov" type="hidden" id="prov">
 <input name="seltype" type="hidden" id="seltype">
 <input name="variable" type="hidden" id="variable">
   <input name="area2" type="hidden" id="area2" value="<%=area2%>">
   <input name="prov2" type="hidden" id="prov2" value="<%=prov2%>">
   <input name="seltype2" type="hidden" id="seltype2" value="<%=seltype2%>">
   <input name="variable2" type="hidden" id="variable2" value="<%=variable2%>">
   <input name="pageno" type="hidden" id="pageno" value="<%=pageno%>">
   <input name="show" type="hidden" id="show" value="<%=show%>">
 </form>
  <form name="form3" method="post" action="find_data.asp"> 
  <input name="area" type="hidden" id="area">
 <input name="prov" type="hidden" id="prov">
 <input name="seltype" type="hidden" id="seltype">
 <input name="variable" type="hidden" id="variable">
   <input name="area2" type="hidden" id="area2">
   <input name="prov2" type="hidden" id="prov2">
   <input name="seltype2" type="hidden" id="seltype2">
   <input name="variable2" type="hidden" id="variable2">
 <input name="show" type="hidden" id="show" value="1">
</form>
<form name="form4" method="post" action="find_data.asp"> 
   <input name="area" type="hidden" id="area" value="<%=area%>">
   <input name="prov" type="hidden" id="prov" value="<%=prov%>">
   <input name="seltype" type="hidden" id="seltype" value="<%=seltype%>">
   <input name="variable" type="hidden" id="variable" value="<%=variable%>">
   <input name="area2" type="hidden" id="area2" value="<%=area2%>">
   <input name="prov2" type="hidden" id="prov2" value="<%=prov2%>">
   <input name="seltype2" type="hidden" id="seltype2" value="<%=seltype2%>">
   <input name="variable2" type="hidden" id="variable2" value="<%=variable2%>">
   <input name="show" type="hidden" id="show" value="<%=show%>">
   <input name="pageno" type="hidden" id="pageno">
</form>
<script language="JavaScript">
	function donewload(){
		document.form2.area.value=document.form1.area.value;
		document.form2.prov.value=document.form1.prov.value;
		document.form2.seltype.value=document.form1.seltype.value;
		document.form2.variable.value=document.form1.variable.value;
		document.body.style.cursor='wait';
		document.form2.submit();
		}
		
		function doloaddata(){
		document.form3.area.value=document.form1.area.value;
		document.form3.prov.value=document.form1.prov.value;
		document.form3.seltype.value=document.form1.seltype.value;
		document.form3.variable.value=document.form1.variable.value;
		document.form3.area2.value=document.form1.area.value;
		document.form3.prov2.value=document.form1.prov.value;
		document.form3.seltype2.value=document.form1.seltype.value;
		document.form3.variable2.value=document.form1.variable.value;
		document.body.style.cursor='wait';
		document.form3.submit();
		}
		function doloaddata2() {
		document.form4.area.value=document.form1.area.value;
		document.form4.prov.value=document.form1.prov.value;
		document.form4.seltype.value=document.form1.seltype.value;
		document.form4.variable.value=document.form1.variable.value;
		document.form4.pageno.value=document.form1.pageno.value;
		document.body.style.cursor='wait';
		document.form4.submit();
		} 
	</script>
</body>
</html>
