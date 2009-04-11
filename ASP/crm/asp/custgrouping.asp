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

	Dim cus_id, cbus, cmcode, cgcode
	cus_id = Request.QueryString("cus_id")
	cbus = Request.QueryString("cbus")
	cmcode = Request.QueryString("cmcode")
	cgcode = Request.QueryString("cgcode")
	
	Sql = "SELECT CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE, P_CATEGORIES.CCAT, P_CATEGORIES.LCAT, TELNUMBER.AREA, TELNUMBER.PROVINCE_ID, PROVINCE.PROVINCE FROM CSS_CUSTOMER INNER JOIN P_CATEGORIES ON CSS_CUSTOMER.CCAT = P_CATEGORIES.CCAT INNER JOIN ADDRESS ON CSS_CUSTOMER.NADR_CLI = ADDRESS.ADDR_ID INNER JOIN TELNUMBER ON CSS_CUSTOMER.CUSTOMER_ID = TELNUMBER.CUSTOMER_ID INNER JOIN PROVINCE ON TELNUMBER.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CSS_CUSTOMER.CUSTOMER_ID = '" & cus_id & "') GROUP BY CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE, P_CATEGORIES.CCAT, P_CATEGORIES.LCAT, TELNUMBER.AREA, TELNUMBER.PROVINCE_ID, PROVINCE.PROVINCE "
	Rs.Open Sql,Session("Conn1"),1,3
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
            <td><b><font color="#4B0097" size="4" face="JasmineUPC">สร้าง Customer 
              Grouping</font></b></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><table width="85%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
          <tr> 
            <td width="23%" valign="bottom"><div align="right"><font size="2" color="#4B0097">เลขที่ผู้เช่า</font></div></td>
            <td width="2%" rowspan="10"><img src="../images/blank.gif" width="1" height="1"> 
            </td>
            <td width="75%" valign="bottom"><div align="left"><font color="#4b0097" size="2"><%=cus_id%></font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ชื่อลูกค้า</font></div></td>
            <td valign="bottom"><div align="left"><font color="#4b0097" size="2"><%=Rs("inititle")%><%=Rs("first_name")%>&nbsp;&nbsp;<%=Rs("last_name")%></font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ที่อยู่</font></div></td>
            <td valign="bottom"><div align="left"><font color="#4B0097" size="2"><%=Rs("ADDR_SNAME")&"  "&Rs("ADDR_SOI")&"  "&Rs("ADDR_STREET")&"  "&Rs("ADDR_TUMBOL")&"  "&Rs("ADDR_DISTRICT")&"  "&Rs("ADDR_PROVINCE")&"  "&Rs("ADDR_POSTCODE")%></font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  color="#4B0097" size="2">ประเภทผู้เช่า</font></div></td>
            <td valign="bottom"><div align="left"><font color="#4b0097" size="2"><%=Rs("lcat")%> 
                <input name="ccat" type="hidden" id="ccat" value="<%=Rs("CCAT")%>">
                </font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  color="#4B0097" size="2">ภาคธุรกิจ</font></div></td>
            <td valign="bottom"><div align="left"><font color="#4b0097" size="2"><%=Rs("area")%> 
                <input name="area" type="hidden" id="area" value="<%=Rs("AREA")%>">
                </font></div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  color="#4B0097" size="2">จังหวัด</font></div></td>
            <td valign="bottom"><div align="left"> <font color="#4b0097" size="2"><%=Rs("province")%></font> 
                <input name="prov" type="hidden" id="prov" value="<%=Rs("PROVINCE_ID")%>">
              </div></td>
          </tr>
          <tr> 
            <td  valign="bottom"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
            <td  valign="bottom"><div align="left"> 
                <select name="cbus" id="cbus" onkeypress="if(window.event.keyCode==13){document.form1.cmcode.focus();}" onchange="document.body.style.cursor='wait'; top.RunWindow('Desktop2','custgrouping.asp?cus_id=<%=cus_id%>&cbus='+document.form1.cbus.value);">
                  <option value="">กรุณาระบุกลุ่มลูกค้าธุรกิจองค์กร</option>
                  <%
	Sql = "SELECT CBUS, NBUS FROM BUSINESS_TYPE GROUP BY CBUS, NBUS "
	Rs2.Open Sql,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                  <option value="<%=Rs2("CBUS")%>" <%if Rs2("CBUS")=cbus then%>selected<%end if%>><%=Rs2("CBUS")&" - "&Rs2("NBUS")%></option>
                  <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                </select>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font size="2" color="#4B0097">รหัสลูกค้า</font></div></td>
            <td valign="bottom"><div align="left"> 
                <select name="cmcode" id="cmcode" onkeypress="if(window.event.keyCode==13){document.form1.cgcode.focus();}" onchange="document.body.style.cursor='wait'; top.RunWindow('Desktop2','custgrouping.asp?cus_id=<%=cus_id%>&cbus='+document.form1.cbus.value+'&cmcode='+document.form1.cmcode.value);">
                  <option value="">กรุณาระบุรหัสลูกค้า</option>
                  <%
	if cbus<>"" then
		Sql = "SELECT CM_CODE, CM_NAME	FROM COMP_MAIN	WHERE (CBUS = N'" & cbus & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	
		do while not Rs2.EOF
%>
                  <option value="<%=Rs2("cm_code")%>" <%if Rs2("CM_CODE")=cmcode then%>selected<%end if%>><%=Rs2("cm_code")&" - "&Rs2("cm_name")%></option>
                  <%
			Rs2.MoveNext
		loop
		Rs2.Close
	end if
%>
                </select>
                <%
	if cbus<>"" then
%>
                &nbsp; &nbsp; 
                <input name="search1" type="button" id="search1" value="ค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','custgrouping_search_cmcode.asp?iframe='+self.name+'&cus_id=<%=cus_id%>&cbus=<%=cbus%>')">
                &nbsp; &nbsp;
                <input name="add1" type="button" id="add1" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.Desktop3.document.body.style.cursor='wait'; top.ShowRunWindow('Desktop3','maincomp_add.asp?cus_id=<%=cus_id%>');" value=" เพิ่ม ">
                &nbsp;&nbsp; 
                <input name="edit1" type="button" id="edit1" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.Desktop3.document.body.style.cursor='wait'; top.ShowRunWindow('Desktop3','maincomp_edit.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>');" value="แก้ไข">
                <%
	end if
%>
              </div></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="right"><font  size="2" color="#4B0097">รหัสสาขา</font></div></td>
            <td valign="bottom"><div align="left"> 
                <select name="cgcode" id="cgcode" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
                  <option value="">กรุณาระบุรหัสสาขา</option>
                  <%
	if cmcode<>"" then
		Sql = "SELECT CG_CODE, CG_NAME FROM CUST_GROUP WHERE (CM_CODE = N'" & cmcode & "') AND (PROVINCE_ID = '" & Rs("province_id") & "') "
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
                <%
	if cmcode<>"" then
%>
                &nbsp;&nbsp; 
                <input name="search2" type="button" id="search2" value="ค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','custgrouping_search_cgcode.asp?iframe='+self.name+'&cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&prov=<%=Rs("province_id")%>')">
                &nbsp;&nbsp; 
                <input name="add2" type="button" id="add2" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.Desktop3.document.body.style.cursor='wait'; top.ShowRunWindow('Desktop3','maingroup_add.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&area=<%=Rs("area")%>&prov=<%=Rs("PROVINCE_ID")%>');" value=" เพิ่ม ">
                &nbsp;&nbsp; 
                <input name="edit2" type="button" id="edit2" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.Desktop3.document.body.style.cursor='wait'; top.ShowRunWindow('Desktop3','maingroup_edit.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cmcode%>&area=<%=Rs("area")%>&prov=<%=Rs("PROVINCE_ID")%>&cgcode='+document.form1.cgcode.value);" value="แก้ไข">
                <%
	end if
%>
              </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><div align="center"><font color="#4B0097"> 
          <input name="send" type="button" id="send" value=" บันทึกข้อมูล " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop2');">
          </font></div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
    </form>
<script language="JavaScript">
<%if cbus="" then%>
	document.form1.cbus.focus();
<%else%>
	<%if cmcode="" then%>
	document.form1.cmcode.focus();
	<%else%>
	document.form1.cgcode.focus();
	<%end if%>
<%end if%>

	function dosend(){
		if(document.form1.cbus.value==""){
			alert('กรุณาระบุกลุ่มลูกค้าธุรกิจองค์กร');
			document.form1.cbus.focus();
			return;
		}
		if(document.form1.cmcode.value==""){
			alert('กรุณาระบุรหัสลูกค้า');
			document.form1.cmcode.focus();
			return;
		}
		if(document.form1.cgcode.value==""){
			alert('กรุณาระบุรหัสสาขา');
			document.form1.cgcode.focus();
			return;
		}
		
		if(confirm('ยืนยันการบันทึกข้อมูล')){
			top.RunWindow('Temp1','save_custgrouping.asp?cus_id=<%=cus_id%>&cmcode=<%=cmcode%>&cgcode='+document.form1.cgcode.value+'&ccat='+document.form1.ccat.value+'&cbus=<%=cbus%>');
		}
	}
</script>
</body>
</html>
