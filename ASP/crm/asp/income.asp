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
	Dim show, i
	Dim cbus, cmcode, cgcode, showdate1, opendate1, showdate2, opendate2
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	cgcode = Request.Form("cgcode")
	show = Request.Form("show")
	showdate1 = Request.Form("showdate1")
	opendate1= Request.Form("opendate1")
	showdate2 = Request.Form("showdate2")
	opendate2= Request.Form("opendate2")

    Dim Rs, Rs2, Rs3, SQL
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
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">ข้อมูลรายได้</font></b></td>
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
                <td width="17%" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล</font></b></td>
                <td width="73%"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="550" height="44">
                    <tr> 
                      <td valign="bottom" width="100"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
                      <td width="10" valign="bottom" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="440" valign="bottom"><select name="cbus" id="cbus" onkeypress="if(window.event.keyCode==13){document.form1.cmcode.focus();}" onChange="donewload();">
                          <option value="">กรุณาระบุกลุ่มลูกค้าธุรกิจองค์กร</option>
                          <% 
					  SQL = "SELECT  * FROM  BUSINESS_TYPE"
					  Rs.Open SQL,Session("Conn1"),1,3
								do while not Rs.EOF
						%>
                          <option value="<%=Rs("CBUS") %>"  <%if cbus=Rs("CBUS") then%>selected<%end if%>><%=Rs("CBUS")& Response.Write(" ")&Rs("NBUS")%></option>
                          <%
								Rs.MoveNext
								loop
								Rs.Close
						%>
                        </select> </td>
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ลูกค้า</font></div></td>
                      <td valign="bottom"><select name="cmcode" id="cmcode" onkeypress="if(window.event.keyCode==13){document.form1.cgcode.focus();}" onchange="donewload();">
                          <option value="">กรุณาระบุลูกค้า</option>
                          <%
	if cbus<>"" then
		SQL = "SELECT CM_CODE, CM_NAME	FROM COMP_MAIN	WHERE (CBUS = N'" & cbus & "') "
		Rs.Open SQL,Session("Conn1"),1,3
	
		do while not Rs.EOF
%>
                          <option value="<%=Rs("cm_code")%>" <%if Rs("CM_CODE")=cmcode then%>selected<%end if%>><%=Rs("cm_code")&" - "&Rs("cm_name")%></option>
                          <%
			Rs.MoveNext
		loop
		Rs.Close
	end if
%>
                        </select> </td>
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font color="#4B0097" size="2">สาขา</font></div></td>
                      <td valign="bottom"> <div align="left"> 
                          <select name="cgcode" id="cgcode" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
                            <option value="">กรุณาระบุสาขา</option>
                            <%
	if cmcode<>"" then
		Sql = "SELECT CG_CODE, CG_NAME FROM CUST_GROUP WHERE (CM_CODE = N'" & cmcode & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	
		do while not Rs2.EOF
%>
                            <option value="<%=Rs2("cg_code")%>" <%if Rs2("cg_code")=cgcode then%>selected<%end if%>><%=Rs2("cg_code")&" - "&Rs2("cg_name")%></option>
                            <%
			Rs2.MoveNext
		loop
		Rs2.Close
	end if
%>
                          </select>
                          &nbsp;&nbsp; 
                          <input name="send" type="button" id="send" value="แสดงข้อมูล" onClick="doloaddata();" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'">
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
<%if show=1 then%>
        <tr> 
          <td>
<%if cgcode="" then%>
<%
	Sql = "SELECT CM_NAME FROM COMP_MAIN GROUP BY CM_NAME, CM_CODE HAVING (CM_CODE = N'" & cmcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
		  <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="29%"><p align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></td>
                <td width="2%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="74%"><b><font color="#4B0097" size="2"><%=Rs("CM_NAME")%></font></b></td>
              </tr>
            </table>
            <%else%>
<%
	Sql = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
            <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="29%"><p align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></td>
                <td width="2%" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="74%"><strong><font  color="#4b0097" size="2"><%=Rs("CM_NAME")&"  "&Rs("CG_NAME")%></font></strong></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097">ที่อยู่ลูกค้า</font></td>
                <td><font  color="#4b0097" size="2"><%=Rs("CGADDR_SNAME")&" "&Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font color="#4b0097" size="2">ภาคธุรกิจ</font></td>
                <td><font  size="2" color="#4B0097"> 
                  <% =Rs("Area")%>
                  </font></td>
              </tr>
              <tr> 
                <td><p align="right"><font color="#4b0097" size="2">จังหวัด</font></td>
                <td><font  size="2" color="#4B0097"><%=Rs("PROVINCE")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097">กลุ่มลูกค้า</font></td>
                <td><font  color="#4B0097" size="2"> 
                  <%
							Response.Write(Rs("SMT"))
						%>
                  </font></td>
              </tr>
            </table>
<%end if%>
	<%Rs.Close%>
			</td>
        </tr>
        <tr> 
          <td>
		<!--  <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%"><font size="2">กราฟ <img src="../images/PRINT3.ICO" style="cursor:hand" onclick=""></font></td>
                <td width="25%">&nbsp;</td>
              </tr>
            </table> -->
			</td>
        </tr>
        <tr> 
          <td><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td height="21"><p align="center"><font size="3" color="#4B0097"><b>ข้อมูลแสดงการเปรียบเทียบรายได้&nbsp;ปี 
<%if Year(Date())<Session("Year_Thai") then%>
                    <%=Year(Date())+542%> - <%=Year(Date())+543%>
<%else%>
                    <%=Year(Date())-1%> - <%=Year(Date())%>
<%end if%>
					</b></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="500" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="20%" rowspan="2"><div align="center"><font size="2" color="#4B0097"><b>เดือน</b></font></div></td>
                <td colspan="2"><div align="center"><font size="2" color="#4B0097"><b>รายได้</b></font></div></td>
                <td width="30%" rowspan="2"><div align="center"><font size="2" color="#4B0097"><b>ส่วนต่างของรายได้<br>
                    </b>(คิดเป็นเปอร์เซ็นต์)</font></div></td>
              </tr>
<%
	Dim tmpyear
%>
              <tr> 
                    <%if Year(Date())<Session("Year_Thai") then%>
                    <%tmpyear =Year(Date())+542%> 
                    <%else%>
                    <%tmpyear =Year(Date())-1%> 
                    <%end if%>
                <td width="25%" style="cursor:hand" onMouseOver="document.all.f1.color='#ff0000';" onMouseOut="document.all.f1.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','inc_year.asp?year=<%=tmpyear%>&cmcode=<%=cmcode%>&cgcode=<%=cgcode%>');"><div align="center"><font name="f1" id="f1" size="2" color="#4B0097" style="text-decoration: 'underline'"><b>ปี <%=tmpyear%></b></font></div></td>
                    <%tmpyear =tmpyear+1%> 
                <td width="25%" style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000';" onMouseOut="document.all.f2.color='#4B0097';" onClick="//top.ShowRunWindow('Desktop2','inc_year.asp?year=<%=tmpyear%>&cmcode=<%=cmcode%>&cgcode=<%=cgcode%>');"><div align="center"><font name="f2" id="f2" size="2" color="#4B0097" style="text-decoration: 'underline'"><b>ปี <%=tmpyear%></b></font></div></td>
              </tr>
              <%
	Dim total1, total2, num1, num2
	total1=0
	total2=0
%>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>มกราคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
if cgcode="" then
		'Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW01 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW01.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM   VIEW_BILL_NEW01 INNER JOIN  VIEW_CG_CODE ON  VIEW_BILL_NEW01.CUSTOMER_ID =  VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW01.NDOS =  VIEW_CG_CODE.NDOS   WHERE     (CM_CODE = '" & cmcode & "')  GROUP BY   BILLING_YEAR ORDER BY BILLING_YEAR"
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW01 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW01 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW01.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW01.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
	'---------------------------------------------------------------------------------มกราคม-------------------------------------------------------------------------------------------
	end if 

	dim  m1(2) , x
	for x = 1 to 2
		m1(x) = 0
	next
	x = 1
		Rs.Open Sql, Session("Conn1"),1,3
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
	Rs.Close
	num1=0
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))

%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>กุมภาพันธ์</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%'-----------------------------------------------------------------------------กุมภาพันธ์-------------------------------------------------------------------------------------------------------
if cgcode="" then
		'Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW02 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW02.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM   VIEW_BILL_NEW02 INNER JOIN  VIEW_CG_CODE ON  VIEW_BILL_NEW02.CUSTOMER_ID =  VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW02.NDOS =  VIEW_CG_CODE.NDOS   WHERE     (CM_CODE = '" & cmcode & "')  GROUP BY   BILLING_YEAR ORDER BY BILLING_YEAR"
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW02 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW02 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW02.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW02.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
	for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
				
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>มีนาคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
'-------------------------------------------------------------------------------------มีนาคม-----------------------------------------------------------------------------------------------------
if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW03 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW03.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW03.NDOS = VIEW_CG_CODE.NDOS  WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW03 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW03 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW03.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW03.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 

	for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>เมษายน</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
'---------------------------------------------------------------------เมษายน----------------------------------------------------------------------------------------------------
if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW04 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW04.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW04.NDOS = VIEW_CG_CODE.NDOS  WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW04 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW04 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW04.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW04.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
	for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
		num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>พฤษภาคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
'------------------------------------------------------------------------------พฤษภาคม----------------------------------------------------------------------------------------------------------------
if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW05 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW05.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW05.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW05 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW05 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW05.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW05.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>มิถุนายน</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	'------------------------------------------------------------------------------มิถุนายน----------------------------------------------------------------------------------------------------------------
	if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW06 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW06.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW06.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW06 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW06 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW06.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW06.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
	
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
			do while not Rs.EOF
				if	 not IsNull(Rs("MNT_HT_FACT")) then
						m1(x) = Rs("MNT_HT_FACT")
				end if
				x = x + 1
			Rs.Movenext
		  loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>กรกฏาคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
'------------------------------------------------------------------------------กรกฏาคม----------------------------------------------------------------------------------------------------------------
if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW07 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW07.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID  AND  VIEW_BILL_NEW07.NDOS = VIEW_CG_CODE.NDOS  WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW07 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW07 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW07.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW07.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>สิงหาคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	'------------------------------------------------------------------------------สิงหาคม----------------------------------------------------------------------------------------------------------------
	if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW08 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW08.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW08.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW08 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW08 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW08.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW08.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>กันยายน</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	'------------------------------------------------------------------------------กันยายน----------------------------------------------------------------------------------------------------------------
	if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW09 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW09.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW09.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW09 WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW09 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW09.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW09.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
		Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
			if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>ตุลาคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	'------------------------------------------------------------------------------ตุลาคม----------------------------------------------------------------------------------------------------------------
	if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW10 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW10.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW10.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW10  WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW10 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW10.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW10.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
			Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
			
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	
				if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
			
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>พฤศจิกายน</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	'------------------------------------------------------------------------------พฤศจิกายน----------------------------------------------------------------------------------------------------------------
	if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW11 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW11.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW11.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW11  WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW11 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW11.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW11.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
	
				Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
			
				
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
			
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>ธันวาคม</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	'------------------------------------------------------------------------------ธันวาคม----------------------------------------------------------------------------------------------------------------
	if cgcode="" then
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW12 INNER JOIN  VIEW_CG_CODE ON VIEW_BILL_NEW12.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND  VIEW_BILL_NEW12.NDOS = VIEW_CG_CODE.NDOS WHERE     (CM_CODE = '" & cmcode & "') GROUP BY BILLING_YEAR ORDER BY BILLING_YEAR "
	else
		'Sql = "	SELECT BILLING_MONTH, SUM(MNT_HT_FACT) AS MNT_HT_FACT,BILLING_YEAR  FROM  VIEW_BILL_NEW12  WHERE  (NDOS = "& ndos & ") AND (CUSTOMER_ID = '" & customer_id & "') GROUP BY  BILLING_YEAR,BILLING_MONTH ORDER BY BILLING_YEAR"
		Sql = "SELECT     TOP 100 PERCENT SUM(MNT_HT_FACT) AS MNT_HT_FACT FROM  VIEW_BILL_NEW12 INNER JOIN VIEW_CG_CODE ON VIEW_BILL_NEW12.CUSTOMER_ID = VIEW_CG_CODE.MC_CUSTOMER_ID AND VIEW_BILL_NEW12.NDOS = VIEW_CG_CODE.NDOS WHERE  (CG_CODE = N'" & cgcode & "')"
end if 
		for x = 1 to 2
		m1(x) = 0
	next
	x = 1
	num1=0
	
				Rs.Open Sql, Session("Conn1"),1,3
		if Rs.recordcount <> 0 then
		do while not Rs.EOF
			if	 not IsNull(Rs("MNT_HT_FACT")) then
					m1(x) = Rs("MNT_HT_FACT")
			end if
			x = x + 1
			Rs.Movenext
		loop
		end if 
	Rs.Close
				Response.Write(formatNumber(m1(1),2))
				num1 = CDbl(m1(1))
				total1 = total1 + CDbl(m1(1))
				
%>
                    </font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"> 
<%
	num2=0
	
				if m1(2) = 0 then
			 	response.Write("<center>-</center>")
			else
				Response.Write(formatNumber(m1(2),2))
			end if 
				num2 = CDbl(m1(2))
				total2 = total2 + CDbl(m1(2))
			
%>
                    </font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if num1>num2 then%>FF0000<%else%>4B0097<%end if%>"> 
<%
	if num1<>0 and num2<>0 then
		if num1>num2 then
			Response.Write("-")
		end if
		Response.Write(formatpercent(abs(num1-num2)/num1))
	end if
%>
                    </font></strong></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>รายได้รวมต่อปี</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total1,2)%></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total2,2)%></font></div></td>
                <td><div align="center"><font size="2" color="#<%if total1>total2 then%>FF0000<%else%>4B0097<%end if%>"><b> 
                    <%if total1>total2 then%>
                    - 
                    <%end if%>
					<% if total1 <> 0 then %>
                    <%=formatpercent(abs(total1-total2)/total1)%>
					<% else %>
					<% response.Write("0")%>
					<%end if %>
					
					</b></font></div></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097"><b>รายได้เฉลี่ยต่อปี</b></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total1/12,2)%></font></div></td>
                <td><div align="right"><font size="2" color="#4B0097"><%=formatnumber(total2/12,2)%></font></div></td>
                <td><div align="center"><strong><font size="2" color="#<%if total1/12>total2/12 then%>FF0000<%else%>4B0097<%end if%>"> 
                    <%if total1/12>total2/12 then%>
                    - 
                    <%end if%>
					<% if total1 <> 0 then %>
                    <%=formatpercent(abs((total1/12)-(total2/12))/(total1/12))%>
					<% else %>
					<% response.Write("0")%>
					<%end if %>		
					</font></strong></div></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
<%end if%>
      </table>
    </form>
    <form name="form2" method="post" action="income.asp">
      <input name="cbus" type="hidden" id="cbus">
      <input name="cmcode" type="hidden" id="cmcode">
      <input name="cgcode" type="hidden" id="cgcode">
    </form>
    <form name="form3" method="post" action="income.asp">
      <input name="cbus" type="hidden" id="cbus">
      <input name="cmcode" type="hidden" id="cmcode">
      <input name="cgcode" type="hidden" id="cgcode">
      <input name="show" type="hidden" id="show" value="1">
    </form>
  </center>
</div>
<script language="JavaScript">
	function donewload(){
		document.form2.cbus.value=document.form1.cbus.value;
		document.form2.cmcode.value=document.form1.cmcode.value;
		document.form2.cgcode.value=document.form1.cgcode.value;
		document.body.style.cursor='wait';
		document.form2.submit();
	}

	function doloaddata(){
		if(document.form1.cbus.value==""){
			alert('กรุณาระกลุ่มบุลูกค้าธุรกิจองค์กร');
			document.form1.cbus.focus();
			return;
		}
		if(document.form1.cmcode.value==""){
			alert('กรุณาระบุลูกค้า');
			document.form1.cmcode.focus();
			return;
		}

		document.form3.cbus.value=document.form1.cbus.value;
		document.form3.cmcode.value=document.form1.cmcode.value;
		document.form3.cgcode.value=document.form1.cgcode.value;
		document.body.style.cursor='wait';
		document.form3.submit();
	}
</script>
  </body>
</html>