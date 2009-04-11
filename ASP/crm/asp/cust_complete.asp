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
<body bgcolor="#E8F8FF" onLoad="document.form1.phone.focus();">
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

	Dim gtype, ccat, cbus, cmcode, phone, cusid, area, prov, show, gtype2, ccat2, phone2, cusid2, area2, prov2, cbus2, cmcode2
	ccat = Request.Form("ccat")
	gtype = Request.Form("gtype")
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	phone = Request.Form("phone")
	cusid = Request.Form("cusid")
	area = Request.Form("area")
	prov = Request.Form("prov")
	show = Request.Form("show")
	ccat2 = Request.Form("ccat2")
	gtype2 = Request.Form("gtype2")
	cbus2 = Request.Form("cbus2")
	cmcode2 = Request.Form("cmcode2")
	phone2 = Request.Form("phone2")
	cusid2 = Request.Form("cusid2")
	area2 = Request.Form("area2")
	prov2 = Request.Form("prov2")

	if area="" then
		Sql = "SELECT PROVINCE.AREA, PROVINCE.P_LOC FROM PROVINCE INNER JOIN EMPLOYEE ON PROVINCE.P_LOC = EMPLOYEE.WORKING_PROVINCE WHERE (EMPLOYEE.EMP_ID = '" & Session("User_Id") & "') "
		Rs.Open Sql,Session("Conn1"),1,3
			area = Rs("AREA")
			prov = Rs("P_LOC")
		Rs.close
	end if
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
      <td><div align="center"><font size="2" color="#4B0097"><b>เลือกเงื่อนไขการแสดงข้อมูลลูกค้าที่กำหนด 
          Customer Grouping</b></font></div></td>
    </tr>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><table width="550" height="81" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
          <tr> 
            <td width="130" valign="bottom"><div align="right"><font color="#4b0097" size="2">เบอร์โทรศัพท์</font></div></td>
            <td width="8" valign="bottom" rowspan="8"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="320" valign="bottom"> <input name="phone" type="text" class="text" id="phone" size="9" maxlength="9" value="<%=phone%>" onkeypress="if(window.event.keyCode==13){document.form1.cusid.focus();}"> 
            </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font color="#4b0097" size="2">เลขที่ผู้เช่า</font></div></td>
            <td valign="bottom"> <input name="cusid" type="text" class="text" id="cusid" size="20" maxlength="20" value="<%=cusid%>" onkeypress="if(window.event.keyCode==13){document.form1.ccat.focus();}"> 
            </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ประเภทผู้เช่า</font></div></td>
            <td valign="bottom"> <select name="ccat" id="ccat" onkeypress="if(window.event.keyCode==13){document.form1.gtype.focus();}">
                <option value="">ประเภทผู้เช่าทั้งหมด</option>
                <%
	Sql = "SELECT CCAT, LCAT FROM P_CATEGORIES "
	Rs.Open Sql,Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                <option value="<%=Rs("CCAT")%>" <%if ccat<>"" then%><%if Cint(ccat)=Cint(Rs("CCAT")) then%>selected<%end if%><%end if%>><%=Rs("LCAT")%></option>
                <%
		Rs.MoveNext
	loop
	Rs.Close
%>
              </select> </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้า</font></div></td>
            <td valign="bottom"> <select name="gtype" id="gtype" onkeypress="if(window.event.keyCode==13){document.form1.cbus.focus();}">
                <option>ทุกกลุ่มลูกค้า</option>
                <option value="Platinum" <%if "Platinum"=gtype then%>selected<%end if%>>Platinum</option>
                <option value="Gold" <%if "Gold"=gtype then%>selected<%end if%>>Gold</option>
                <option value="Silver" <%if "Silver"=gtype then%>selected<%end if%>>Silver</option>
                <option value="Bronze" <%if "Bronze"=gtype then%>selected<%end if%>>Bronze</option>
              </select> </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font color="#4b0097" size="2">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
            <td valign="bottom"><select name="cbus" id="cbus" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.cmcode.focus();}">
                <%
	Sql = "SELECT CBUS, NBUS FROM BUSINESS_TYPE GROUP BY CBUS, NBUS "
	Rs.Open Sql,Session("Conn1"),1,3
%>
                <option value="">ทุกกลุ่มลูกค้าธุรกิจองค์กร</option>
                <%	
	do while not Rs.EOF
%>
                <option value="<%=Rs("CBUS")%>" <%if Rs("CBUS")=cbus then%>selected<%end if%>><%=Rs("CBUS")&" - "&Rs("NBUS")%></option>
                <%
		Rs.MoveNext
	loop
	Rs.Close
%>
              </select> </td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  color="#4b0097" size="2">ชื่อลูกค้า</font></div></td>
            <td valign="bottom"><select name="cmcode" id="cmcode" onChange="" onkeypress="if(window.event.keyCode==13){document.form1.area.focus();}">
                <%
	if cbus<>"" then
		Sql = "SELECT CM_CODE, CM_NAME	FROM COMP_MAIN	WHERE (CBUS = '" & cbus & "') "
		Rs.Open Sql,Session("Conn1"),1,3
%>
                <option value="">ทุกชื่อลูกค้า</option>
                <%		
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
            <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ภาคธุรกิจ</font></div></td>
            <td valign="bottom"><font color="#4B0097"> 
              <select name="area" id="select" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.prov.focus();}">
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
              </font></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font color="#4B0097" size="2">จังหวัด</font></div></td>
            <td valign="bottom"> <select name="prov" id="select2" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
                <%
	Sql = "SELECT PROVINCE_ID, PROVINCE FROM PROVINCE WHERE (AREA = '" & area & "')"
	Rs.Open Sql,Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
                <option value="<%=Rs("PROVINCE_ID")%>" <%if Cint(prov)=Cint(Rs("PROVINCE_ID")) then%>selected<%end if%>><%=Rs("PROVINCE")%></option>
                <%
		Rs.MoveNext
	loop
	Rs.Close
%>
              </select> &nbsp;&nbsp; <input name="send" type="button" id="send" value="แสดงข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doloaddata();"> 
            </td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <%if show<>"" then%>
    <tr> 
      <td><div align="center"><b><font face="JasmineUPC" color="#4B0097" size="4">แสดงข้อมูลลูกค้าที่กำหนด 
          Customer Grouping</font></b></div></td>
    </tr>
    <%
	dim i, total, totalpage, pagesize, pageno, beginrow, endrow
	pageno=Request.Form("pageno")
	pagesize=20

	Sql = "SELECT DISTINCT CUST_GROUP.CG_DATA, CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.SMT FROM CG_ADDRESS INNER JOIN CUST_GROUP ON CG_ADDRESS.CGADDR_ID = CUST_GROUP.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE AND CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN MKT_CUSTOMER ON CUST_GROUP.CG_CODE = MKT_CUSTOMER.CG_CODE INNER JOIN TELNUMBER ON MKT_CUSTOMER.MC_CUSTOMER_ID = TELNUMBER.CUSTOMER_ID WHERE (CUST_GROUP.PROVINCE_ID = '" & prov2 & "')"
	if phone2<>"" then
		Sql = Sql & " AND (TELNUMBER.TELNO like '" & phone2 & "%') "
	end if
	if cusid2<>"" then
		Sql = Sql & " AND (TELNUMBER.CUSTOMER_ID = '" & cusid2 & "') "
	end if
	if cmcode2<>"" then
		Sql = Sql & " AND (left(CUST_GROUP.CG_CODE,5) = '" & cmcode2 & "') "
	end if
	if cbus2<>"" then
		Sql = Sql & " AND (left(CUST_GROUP.CG_CODE,2) = '" & cbus2 & "') "
	end if
	if ccat2<>"" then
		Sql = Sql & " AND (MKT_CUSTOMER.MC_CCAT = N'" & ccat2 & "') "
	end if
	if gtype2<>"" then
		Sql = Sql & " AND (CUST_GROUP.SMT = N'" & gtype2 & "') "
	end if
	Sql = Sql & " ORDER BY (CUST_GROUP.CG_CODE) "
'Response.Write(Sql)
	Rs.Open Sql,Session("Conn1"),1,3
	total = Rs.RecordCount
%>
    <!--#include file = "finepage.asp"-->
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="10%">&nbsp;</td>
                  <td width="65%"><font size="2"><img src="../images/PRINT3.ICO" style="cursor:hand" onclick="window.open('print_cust_complete.asp?ccat2=<%=ccat2%>&gtype2=<%=gtype2%>&cbus2=<%=cbus2%>&cmcode2=<%=cmcode2%>&phone2=<%=phone2%>&cusid2=<%=cusid2%>&area2=<%=area2%>&prov2=<%=prov2%>&pageno=<%=pageno%>','','');"></font></td>
                  <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
                      <%
	for i=1 to totalpage
%>
                      <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%>selected<%end if%>>หน้าที่ 
                      <%=i%></option>
                      <%
	next
%>
                    </select></td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
    <%
	Dim p, c
	Sql = "SELECT PROVINCE FROM PROVINCE WHERE (PROVINCE_ID = '" & prov2 & "') "
	Rs2.Open Sql,Session("Conn1"),1,3
		p = Rs2("province")
	Rs2.Close

	if ccat2<>"" then
		Sql = "SELECT LCAT FROM P_CATEGORIES WHERE (CCAT = '" & ccat2 & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
			c = Rs2("lcat")
		Rs2.Close
	end if
	
	Session("Temp")=area2
%>
    <tr bordercolor="#111111"> 
      <td><font size="2" color="#4B0097"> 
        <p align="center">ภาคธุรกิจ<%=area2%>&nbsp;&nbsp;จังหวัด<%=p%>&nbsp;
          <%if ccat<>"" then%>
          ประเภทผู้เช่า<%=c%>
          <%end if%>
        </font></td>
    </tr>
    <tr bordercolor="#111111"> 
      <td><p align="center"><font color="#FF8000" size="2">P = Platinum, G = Gold, 
          S = Silver, B = Bronze&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NA 
          = ใช้บริการ, CA = ยกเลิก</font></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="12%"><div align="center"><font size="2" color="#4B0097"><b>รหัสสาขา</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="28%"><div align="center"><font size="2" color="#4B0097"><b>ชื่อลูกค้า 
                - </b></font><b><font color="#FF7DBE" size="2">ชื่อสาขา</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="40%"><div align="center"><font size="2" color="#4B0097"><b>ที่อยู่ 
                (สถานที่ติดตั้ง)</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%"><div align="center"><font size="2" color="#4B0097"><b>สถานะ</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font size="2" color="#4B0097"><b>ดำเนินการ</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
	if not Rs.EOF and not Rs.BOF then
	Rs.Move pagesize*(pageno-1)
	for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
%>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"><font color="#4B0097" size="2"><%=Rs("cg_code")%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font color="#4B0097" size="2" style="text-decoration: 'underline'; cursor:hand" onmouseover="this.color='red'" onmouseout="this.color='#4B0097'" onclick="top.ShowRunWindow('Desktop3','cust_main.asp?cgcode=<%=Rs("cg_code")%>');"><%=Left(Rs("smt"),1)&"  "&Rs("cm_name")&" - "&Rs("cg_name")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font color="#4B0097" size="2"><%=Rs("cgaddr_sname")&" "&Rs("cgaddr_band")&" "&Rs("cgaddr_soi")&" "&Rs("cgaddr_street")&" "&Rs("cgaddr_tumbol")&" "&Rs("cgaddr_district")&" "&Rs("cgaddr_province")&" "&Rs("cgaddr_postcode")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"><font color="#4B0097" size="2">-</font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top" style="cursor:hand" onclick="top.ShowRunWindow('Desktop3','custmain_add<%if Cint(Session("User_Level"))=Cint(3) and Cint(Session("User_Area"))<>Cint(area2) then%>_readonly<%end if%>.asp?cgcode=<%=Rs("CG_CODE")%>');" onMouseOver="document.all.f<%=beginrow%>.color='#ff0000'" onMouseOut="document.all.f<%=beginrow%>.color='#4B0097'"><div align="center"><font name=f<%=beginrow%> id=f<%=beginrow%> color="#4B0097" size="2"> 
                <%if Rs("CG_DATA")=true then%>
                ดู/แก้ไข 
                <%else%>
                บันทึก 
                <%end if%>
                </font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
		Rs.MoveNext
	next
	Rs.MoveFirst
	end if
%>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="12%">&nbsp;</td>
                  <td><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน 
                    <%if not Rs.EOF and not Rs.BOF then%>
                    <%if Cint(pageno)=Cint(totalpage) then%>
                    <%=endrow%> 
                    <%else%>
                    <%=pagesize%> 
                    <%end if%>
                    <%else%>
                    0 
                    <%end if%>
                    รายการ จากข้อมูลทั้งหมด <%=Rs.RecordCount%> รายการ ขณะนี้อยู่ที่หน้า 
                    <%if not Rs.EOF and not Rs.BOF then%>
                    <%=pageno%> 
                    <%else%>
                    0 
                    <%end if%>
                    จำนวนทั้งหมดมี <%=totalpage%> หน้า</font></td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
    <%end if%>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><div align="center">
          <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop2');">
        </div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<form name="form2" method="post" action="cust_complete.asp">
  <input name="ccat" type="hidden" id="ccat">
  <input name="gtype" type="hidden" id="gtype">
  <input name="cbus" type="hidden" id="cbus">
  <input name="cmcode" type="hidden" id="cmcode">
  <input name="phone" type="hidden" id="phone">
  <input name="cusid" type="hidden" id="cusid">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="show" type="hidden" id="show">
  <input name="gtype2" type="hidden" id="gtype2" value="<%=gtype2%>">
  <input name="ccat2" type="hidden" id="ccat2" value="<%=ccat2%>">
  <input name="cbus2" type="hidden" id="cbus2" value="<%=cbus2%>">
  <input name="cmcode2" type="hidden" id="cmcode2" value="<%=cmcode2%>">
  <input name="phone2" type="hidden" id="phone2" value="<%=phone2%>">
  <input name="cusid2" type="hidden" id="cusid2" value="<%=cusid2%>">
  <input name="area2" type="hidden" id="area2" value="<%=area2%>">
  <input name="prov2" type="hidden" id="prov2" value="<%=prov2%>">
</form>
<form name="form3" method="post" action="cust_complete.asp">
  <input name="ccat" type="hidden" id="ccat">
  <input name="gtype" type="hidden" id="gtype">
  <input name="cbus" type="hidden" id="cbus">
  <input name="cmcode" type="hidden" id="cmcode">
  <input name="phone" type="hidden" id="phone">
  <input name="cusid" type="hidden" id="cusid">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="show" type="hidden" id="show" value="1">
  <input name="ccat2" type="hidden" id="ccat2">
  <input name="gtype2" type="hidden" id="gtype2">
  <input name="cbus2" type="hidden" id="cbus2">
  <input name="cmcode2" type="hidden" id="cmcode2">
  <input name="phone2" type="hidden" id="phone2">
  <input name="cusid2" type="hidden" id="cusid2">
  <input name="area2" type="hidden" id="area2">
  <input name="prov2" type="hidden" id="prov2">
</form>
<form name="form4" method="post" action="cust_complete.asp">
  <input name="ccat" type="hidden" id="ccat">
  <input name="gtype" type="hidden" id="gtype">
  <input name="cbus" type="hidden" id="cbus">
  <input name="cmcode" type="hidden" id="cmcode">
  <input name="phone" type="hidden" id="phone">
  <input name="cusid" type="hidden" id="cusid">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="pageno" type="hidden" id="pageno">
  <input name="show" type="hidden" id="show" value="1">
  <input name="ccat2" type="hidden" id="ccat2">
  <input name="gtype2" type="hidden" id="gtype2">
  <input name="cbus2" type="hidden" id="cbus2">
  <input name="cmcode2" type="hidden" id="cmcode2">
  <input name="phone2" type="hidden" id="phone2">
  <input name="cusid2" type="hidden" id="cusid2">
  <input name="area2" type="hidden" id="area2">
  <input name="prov2" type="hidden" id="prov2">
</form>
<form name="form5" method="post" action="cust_complete.asp">
  <input name="ccat" type="hidden" id="ccat" value="<%=ccat%>">
  <input name="gtype" type="hidden" id="gtype" value="<%=gtype%>">
  <input name="cbus" type="hidden" id="cbus" value="<%=cbus%>">
  <input name="cmcode" type="hidden" id="cmcode" value="<%=cmcode%>">
  <input name="phone" type="hidden" id="phone" value="<%=phone%>">
  <input name="cusid" type="hidden" id="cusid" value="<%=cusid%>">
  <input name="area" type="hidden" id="area" value="<%=area%>">
  <input name="prov" type="hidden" id="prov" value="<%=prov%>">
  <input name="show" type="hidden" id="show" value="<%=show%>">
  <input name="gtype2" type="hidden" id="gtype2" value="<%=gtype2%>">
  <input name="ccat2" type="hidden" id="ccat2" value="<%=ccat2%>">
  <input name="cbus2" type="hidden" id="cbus2" value="<%=cbus2%>">
  <input name="cmcode2" type="hidden" id="cmcode2" value="<%=cmcode2%>">
  <input name="phone" type="hidden" id="phone" value="<%=phone2%>">
  <input name="cusid2" type="hidden" id="cusid2" value="<%=cusid2%>">
  <input name="area2" type="hidden" id="area2" value="<%=area2%>">
  <input name="prov2" type="hidden" id="prov2" value="<%=prov2%>">
</form>
<script language="JavaScript">
	function donewload(){
		document.form2.ccat.value=document.form1.ccat.value;
		document.form2.gtype.value=document.form1.gtype.value;
		document.form2.cbus.value=document.form1.cbus.value;
		document.form2.cmcode.value=document.form1.cmcode.value;
		document.form2.phone.value=document.form1.phone.value;
		document.form2.cusid.value=document.form1.cusid.value;
		document.form2.area.value=document.form1.area.value;
		document.form2.prov.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form2.submit();
	}
	function doloaddata(){
		document.form3.ccat.value=document.form1.ccat.value;
		document.form3.gtype.value=document.form1.gtype.value;
		document.form3.cbus.value=document.form1.cbus.value;
		document.form3.cmcode.value=document.form1.cmcode.value;
		document.form3.phone.value=document.form1.phone.value;
		document.form3.cusid.value=document.form1.cusid.value;
		document.form3.area.value=document.form1.area.value;
		document.form3.prov.value=document.form1.prov.value;
		document.form3.ccat2.value=document.form1.ccat.value;
		document.form3.gtype2.value=document.form1.gtype.value;
		document.form3.cbus2.value=document.form1.cbus.value;
		document.form3.cmcode2.value=document.form1.cmcode.value;
		document.form3.phone2.value=document.form1.phone.value;
		document.form3.cusid2.value=document.form1.cusid.value;
		document.form3.area2.value=document.form1.area.value;
		document.form3.prov2.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form3.submit();
	}
	function doloaddata2(){
		document.form4.ccat.value=document.form1.ccat.value;
		document.form4.gtype.value=document.form1.gtype.value;
		document.form4.cbus.value=document.form1.cbus.value;
		document.form4.cmcode.value=document.form1.cmcode.value;
		document.form4.phone.value=document.form1.phone.value;
		document.form4.cusid.value=document.form1.cusid.value;
		document.form4.area.value=document.form1.area.value;
		document.form4.prov.value=document.form1.prov.value;
		document.form4.pageno.value=document.form1.pageno.value;
		document.form4.ccat2.value=document.form1.ccat.value;
		document.form4.gtype2.value=document.form1.gtype.value;
		document.form4.cbus2.value=document.form1.cbus.value;
		document.form4.cmcode2.value=document.form1.cmcode.value;
		document.form4.phone2.value=document.form1.phone.value;
		document.form4.cusid2.value=document.form1.cusid.value;
		document.form4.area2.value=document.form1.area.value;
		document.form4.prov2.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form4.submit();
	}
</script>
</body>
</html>
