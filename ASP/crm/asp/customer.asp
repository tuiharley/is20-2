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

	Dim ccat, area, prov, phone, cusid, show, ccat2, area2, prov2, phone2, cusid2
	phone = Request.Form("phone")
	cusid = Request.Form("cusid")
	ccat = Request.Form("ccat")
	area = Request.Form("area")
	prov = Request.Form("prov")
	show = Request.Form("show")
	phone2 = Request.Form("phone2")
	cusid2 = Request.Form("cusid2")
	ccat2 = Request.Form("ccat2")
	area2 = Request.Form("area2")
	prov2 = Request.Form("prov2")

	if area="" then
		area = Session("User_Area")
		prov = Session("User_Prov")
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
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="12%">&nbsp;</td>
            <td width="20%" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล</font></b></td>
            <td width="68"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="380" id="AutoNumber24" height="44">
                <tr> 
                  <td valign="bottom" width="133"><div align="right"><font color="#4B0097" size="2">เบอร์โทรศัพท์</font></div></td>
                  <td width="9" valign="bottom" rowspan="6"><img src="../images/blank.gif" width="1" height="1"></td>
                  <td width="262" valign="bottom"><input name="phone" type="text" class="text" id="phone" value="<%=phone%>" size="10" maxlength="9" onKeyPress="if(window.event.keyCode==13){document.form1.cusid.focus();}">
                  </td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font color="#4B0097" size="2">เลขที่ผู้เช่า</font></div></td>
                  <td valign="bottom"><input name="cusid" type="text" class="text" id="cusid" value="<%=cusid%>" size="20" maxlength="20" onKeyPress="if(window.event.keyCode==13){document.form1.ccat.focus();}">
                  </td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ประเภทผู้เช่า</font></div></td>
                  <td valign="bottom"> <div align="left"> 
                      <select name="ccat" id="ccat" onkeypress="if(window.event.keyCode==13){document.form1.area.focus();}">
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
                      </select>
                    </div></td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ภาคธุรกิจ</font></div></td>
                  <td valign="bottom"> <div align="left"> 
                      <select name="area" id="area" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.prov.focus();}">
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
                    </div></td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font color="#4B0097"size="2">จังหวัด</font></div></td>
                  <td valign="bottom"> <select name="prov" id="prov" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
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
                    </select> &nbsp;&nbsp; <input name="send" type="button" id="send" value="แสดงข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();"> 
                  </td>
                </tr>
              </table></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
<%
	if show<>"" then
%>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><div align="center"><font color="#4B0097" size="4" face="JasmineUPC"><b>ข้อมูลลูกค้าที่ยังไม่กำหนด 
                Customer Grouping</b></font></div></td>
          </tr>
        </table></td>
    </tr>
<%
	dim i, total, totalpage, pagesize, pageno, beginrow, endrow
	pageno=Request.Form("pageno")
	pagesize=20

	Sql = "SELECT TOP 100 PERCENT CSS_CUSTOMER.CUSTOMER_ID, CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE FROM CSS_CUSTOMER INNER JOIN ADDRESS ON CSS_CUSTOMER.NADR_CLI = ADDRESS.ADDR_ID WHERE (CSS_CUSTOMER.STATUS <> '*' OR CSS_CUSTOMER.STATUS IS NULL) AND (CSS_CUSTOMER.CUSTOMER_ID IN (SELECT TOP 100 PERCENT CUSTOMER_ID FROM TELNUMBER WHERE (PROVINCE_ID = '" & prov2 & "') "
	if phone2<>"" then
		Sql = Sql & " AND (TELNUMBER.TELNO like '"& phone2 & "%') "
	end if
	if cusid2<>"" then
		Sql = Sql & " AND (TELNUMBER.CUSTOMER_ID = '"& cusid2 & "') "
	end if
	Sql = Sql + "GROUP BY CUSTOMER_ID)) "
	if ccat2<>"" then
		Sql = Sql & " AND (CSS_CUSTOMER.CCAT = '" & ccat2 & "') "
	end if

	Rs.Open Sql,Session("Conn1"),1,3
	total = Rs.RecordCount
%>
<!--#include file = "finepage.asp"-->
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td width="65%"><font size="2"><img src="../images/PRINT3.ICO" style="cursor:hand" onclick="window.open('print_customer.asp?phone2=<%=phone2%>&cusid2=<%=cusid2%>&ccat2=<%=ccat2%>&area2=<%=area2%>&prov2=<%=prov2%>&pageno=<%=pageno%>','','');"></font></td>
            <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
<%
	for i=1 to totalpage
%>
                <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%>selected<%end if%>>หน้าที่ <%=i%></option>
<%
	next
%>
              </select></td>
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
%>
    <tr> 
      <td><div align="center"><font size="2" color="#4B0097">ข้อมูลลูกค้าที่เปิดใช้บริการ&nbsp;&nbsp;ภาคธุรกิจ<%=area2%>&nbsp;&nbsp;จังหวัด<%=p%>&nbsp;&nbsp;<%if ccat<>"" then%>ประเภทผู้เช่า<%=c%><%end if%></font></div></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="680" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="5%"><div align="center"><b><font size="2" color="#4B0097">ลำดับ</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%"><div align="center"><b><font size="2" color="#4B0097">Customer<br>
                Grouping</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font color="#4B0097" size="2"><b>เลขที่ผู้เช่า</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30%"><div align="center"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="40%"><div align="center"><b><font size="2" color="#4B0097">ที่อยู่ลูกค้า</font></b></div></td>
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
            <td valign="top"><div align="center"><font size="2" color="#4B0097"><%=beginrow%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"> 
                <input name="create" type="button" id="create" value="สร้าง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.Desktop2.document.body.style.cursor='wait'; top.ShowRunWindow('Desktop2','custgrouping.asp?cus_id=<%=Rs("customer_id")%>');" <%if Cint(Session("User_Level"))=Cint(3) and Cint(Session("User_Area"))<>Cint(area2) then%>disabled<%end if%>>
              </div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"><font color="#4B0097" size="2"><%=Rs("customer_id")%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font color="#4B0097" size="2"><%=Rs("inititle")%><%=Rs("first_name")%>&nbsp;&nbsp;<%=Rs("last_name")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font color="#4B0097" size="2"><%=Rs("ADDR_SNAME")&"  "&Rs("ADDR_SOI")&"  "&Rs("ADDR_STREET")&"  "&Rs("ADDR_TUMBOL")&"  "&Rs("ADDR_DISTRICT")&"  "&Rs("ADDR_PROVINCE")&"  "&Rs("ADDR_POSTCODE")%></font></td>
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
        </table>
        <div align="center"></div></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="12%">&nbsp;</td>
            <td><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน <%if not Rs.EOF and not Rs.BOF then%><%if Cint(pageno)=Cint(totalpage) then%><%=endrow%><%else%><%=pagesize%><%end if%><%else%>0<%end if%> รายการ จากข้อมูลทั้งหมด 
              <%=Rs.RecordCount%> รายการ ขณะนี้อยู่ที่หน้า <%if not Rs.EOF and not Rs.BOF then%><%=pageno%><%else%>0<%end if%> จำนวนทั้งหมดมี <%=totalpage%> หน้า</font></td>
          </tr>
        </table></td>
    </tr>
<%
	end if
%>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td>&nbsp;</td>
            <td><div align="right"><font color="#FF00FF" size="2">ลูกค้าที่กำหนด 
                Customer Grouping&nbsp;แล้วคลิกที่นี่--&gt;</font><img border="0" src="../images/SUPPLIERS.ico" width="25" height="27" style="cursor:hand" onclick="top.ShowRunWindow('Desktop2','cust_complete.asp');"></div></td>
            <td width="15%">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<form name="form2" method="post" action="customer.asp">
  <input name="phone" type="hidden" id="phone">
  <input name="cusid" type="hidden" id="cusid">
  <input name="ccat" type="hidden" id="ccat">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="show" type="hidden" id="show" value="<%'=show%>">
  <input name="phone2" type="hidden" id="phone2" value="<%'=phone2%>">
  <input name="cusid2" type="hidden" id="cusid2"  value="<%'=cusid2%>">
  <input name="ccat2" type="hidden" id="ccat2" value="<%'=ccat2%>">
  <input name="area2" type="hidden" id="area2" value="<%'=area2%>">
  <input name="prov2" type="hidden" id="prov2" value="<%'=prov2%>">
</form>
<form name="form3" method="post" action="customer.asp">
  <input name="phone" type="hidden" id="phone">
  <input name="cusid" type="hidden" id="cusid">
  <input name="ccat" type="hidden" id="ccat">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="show" type="hidden" id="show" value="1">
  <input name="phone2" type="hidden" id="phone2">
  <input name="cusid2" type="hidden" id="cusid2">
  <input name="ccat2" type="hidden" id="ccat2">
  <input name="area2" type="hidden" id="area2">
  <input name="prov2" type="hidden" id="prov2">
</form>
<form name="form4" method="post" action="customer.asp">
  <input name="phone" type="hidden" id="phone">
  <input name="cusid" type="hidden" id="cusid">
  <input name="ccat" type="hidden" id="ccat">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="pageno" type="hidden" id="pageno">
  <input name="show" type="hidden" id="show" value="1">
  <input name="phone2" type="hidden" id="phone2">
  <input name="cusid2" type="hidden" id="cusid2">
  <input name="ccat2" type="hidden" id="ccat2">
  <input name="area2" type="hidden" id="area2">
  <input name="prov2" type="hidden" id="prov2">
</form>
<script language="JavaScript">
	function donewload(){
		document.form2.phone.value=document.form1.phone.value;
		document.form2.cusid.value=document.form1.cusid.value;
		document.form2.ccat.value=document.form1.ccat.value;
		document.form2.area.value=document.form1.area.value;
		document.form2.prov.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form2.submit();
	}
	function doloaddata(){
		document.form3.phone.value=document.form1.phone.value;
		document.form3.cusid.value=document.form1.cusid.value;
		document.form3.ccat.value=document.form1.ccat.value;
		document.form3.area.value=document.form1.area.value;
		document.form3.prov.value=document.form1.prov.value;
		document.form3.phone2.value=document.form1.phone.value;
		document.form3.cusid2.value=document.form1.cusid.value;
		document.form3.ccat2.value=document.form1.ccat.value;
		document.form3.area2.value=document.form1.area.value;
		document.form3.prov2.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form3.submit();
	}
	function doloaddata2(){
		document.form4.phone.value=document.form1.phone.value;
		document.form4.cusid.value=document.form1.cusid.value;
		document.form4.ccat.value=document.form1.ccat.value;
		document.form4.area.value=document.form1.area.value;
		document.form4.prov.value=document.form1.prov.value;
		document.form4.pageno.value=document.form1.pageno.value;
		document.form4.phone2.value=document.form1.phone.value;
		document.form4.cusid2.value=document.form1.cusid.value;
		document.form4.ccat2.value=document.form1.ccat.value;
		document.form4.area2.value=document.form1.area.value;
		document.form4.prov2.value=document.form1.prov.value;
		document.body.style.cursor='wait';
		document.form4.submit();
	}
</script>
</body>
</html>
