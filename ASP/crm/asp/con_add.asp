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
	Dim show, i, j
	Dim cbus, cgcode, showdate1, opendate1, h1, m1, D1, empid, empid2, empid3, custid1, custid2, custid3
	Dim checkboxall, check, checkcount, remark, checkboxall2, check2, checkcount2, remark2, detail
    cbus = Request.Form("cbus")
	cgcode = Request.Form("cgcode")
	show = Request.Form("show")
	showdate1 = Request.Form("showdate1")
	opendate1= Request.Form("opendate1")
	h1 = Request.Form("h1")
	m1 = Request.Form("m1")
	D1 = Request.Form("D1")
	empid = Request.Form("empid")
	empid2 = Request.Form("empid2")
	empid3 = Request.Form("empid3")
	custid1 = Request.Form("custid1")
	custid2 = Request.Form("custid2")
	custid3 = Request.Form("custid3")
	checkboxall = Request.Form("checkboxall")
	check = split(checkboxall,",")
	checkcount = Request.Form("checkcount")
	remark = Request.Form("remark")
	checkboxall2 = Request.Form("checkboxall2")
	check2 = split(checkboxall2,",")
	checkcount2 = Request.Form("checkcount2")
	remark2 = Request.Form("remark2")
	detail = Request.Form("detail")

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
          <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="30">&nbsp;</td>
                <td width="150" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล</font></b></td>
                <td width="68"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="520" height="44">
                    <tr> 
                      <td valign="bottom" width="110"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
                      <td width="9" valign="bottom" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="410" valign="bottom"><select name="cbus" id="cbus" onChange="donewload()">
                          <option value="">กรุณาระบุกลุ่มลูกค้าธุรกิจองค์กร</option>
                          <% 
					  	SQL = "SELECT  * FROM  BUSINESS_TYPE"
					  	Rs.Open SQL,Session("Conn1"),1,3
						do while not Rs.EOF
						%>
                          <option value="<%=Rs("CBUS") %>"  <%if cbus=Rs("CBUS") then%>selected<%end if%>><%=Rs("CBUS")&" - "&Rs("NBUS")%></option>
                          <%
							Rs.MoveNext
						loop
						Rs.Close
						%>
                        </select> </td>
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ลูกค้า</font></div></td>
                      <td valign="bottom"> <div align="left"> 
                          <select name="cgcode" id="cgcode">
                            <option value="">กรุณาระบุลูกค้า</option>
                            <%
						 if cbus<>"" then
						  SQL = "SELECT CUST_GROUP.CG_CODE, CUST_GROUP.CG_NAME, COMP_MAIN.CM_NAME FROM CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN BUSINESS_TYPE ON COMP_MAIN.CBUS = BUSINESS_TYPE.CBUS WHERE (BUSINESS_TYPE.CBUS = '" & cbus & "') AND (CUST_GROUP.PROVINCE_ID = '"& Session("User_Prov") &"') "
                           Rs2.Open SQL,Session("Conn1"),1,3
								do while not Rs2.EOF
						%>
                            <option value="<%=Rs2("CG_CODE") %>"<%if cgcode=Rs2("CG_CODE")then%>selected<%end if%>><%=Rs2("CG_CODE")&" - "&Rs2("CM_NAME")&"  "&Rs2("CG_NAME")%></option>
                            <%
								Rs2.MoveNext
								loop
								Rs2.Close
								end if
						%>
                          </select>
                          &nbsp;&nbsp; 
                          <input name="search" type="button" class="button" id="search" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','con_add_search_cgcode.asp?iframe='+self.name+'&cbus=<%=cbus%>')">
                          <input name="send" type="button" id="send3" value="ตกลง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();">
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <%
	     if show<> "" then
        %>
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
'					SQL = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE WHERE (CUST_GROUP.CG_CODE = '"& cgcode &"') "
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
					 Rs3.Close
				%>
                  </font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="589" border="3" align="center" cellpadding="0" cellspacing="1" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="175"><p align="right"><font size="2" color="#4B0097">ว/ด/ป(พบลูกค้า)</font></td>
                <td width="346" colspan="2"> <input name="showdate1" type="text" class="text" id="showdate1" size="18" readonly value="<%=showdate1%>"> 
                  <input name="opendate1" type="hidden" id="opendate1" value="<%=opendate1%>"> 
                  <input name="popdate1" type="button" id="popdate13" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop2.document.form1.opendate1&input2=top.Desktop2.document.form1.showdate1');"> 
                  <font  size="2" color="#4B0097">&nbsp;เวลา </font> <select name="h1" id="h1" onkeypress="if(window.event.keyCode==13){document.form1.m1.focus();}">
                    <option value="">hh</option>
                    <%
	for i=0 to 23
%>
                    <option value="<%=right("0"&i,2)%>" <%if right("0"&i,2)=h1 then%>selected<%end if%>><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select>
                  : 
                  <select name="m1" id="m1" onkeypress="if(window.event.keyCode==13){document.form1.D1.focus();}">
                    <option value="">mm</option>
                    <%
	for i=0 to 59
%>
                    <option value="<%=right("0"&i,2)%>" <%if right("0"&i,2)=m1 then%>selected<%end if%>><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select> <font size="2" color="#FF93C9">(hh.mm)</font></td>
              </tr>
              <tr> 
                <td><p align="right"><font  size="2" color="#4B0097">ประเภทการเยี่ยม</font></td>
                <td colspan="2"> <select size="1" name="D1" onkeypress="if(window.event.keyCode==13){document.form1.APP_EMPAPP1.focus();}">
                    <option value="1" <%if Cint(D1)=Cint(1) then%>selected<%end if%>>เข้าพบ</option>
                    <option value="2" <%if Cint(D1)=Cint(2) then%>selected<%end if%>>โทรเยี่ยม</option>
                  </select></td>
              </tr>
              <tr> 
                <td height="22"><p align="right"><font size="2"  color="#4B0097"> 
                    เข้าพบครั้งที่</font></td>
                <td colspan="2"><font  size="2" color="#4B0097"> 
                  <% 
				sql="SELECT MAX(CT_NO) AS counter FROM  CONTACT WHERE (CG_CODE='"&cgcode&"')"
				Rs3.Open SQL,Session("Conn1"),1,3
				Dim  ct_no
				ct_no = 1
				if Rs3("counter")<>"" and not isnull(Rs3("counter")) then
					ct_no = Rs3("counter") + 1
				end if
			 	Response.Write(ct_no)
                Rs3.Close
				%>
                  <input name="ct_no" type="hidden" value="<%=ct_no%>">
                  </font></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097"> ชื่อ-สกุลพนักงานผู้เข้าพบ</font></td>
                <td colspan="2"><font size="2" color="#4B0097"> 
                  <% Response.Write(Session("User_Name"))%>
                  <input name="empid1" type="hidden" id="empid1" value="<%=Session("User_Id")%>">
                  </font></td>
              </tr>
              <tr> 
                <td  rowspan="2"><p align="right"><font  color="#4b0097" size="2">ชื่อ-สกุล 
                    ผู้เชี่ยวชาญ<br>
                    เฉพาะด้านหรือผู้บริหารที่เข้าพบ<br>
                    </font></td>
                <td colspan="2"><p dir="ltr" align="left"> 
                    <select name="empid2" size="1" id="empid2" onkeypress="if(window.event.keyCode==13){document.form1.APP_EMPAPP2.focus();}">
                      <option>กรุณาระบุ</option>
                      <% 
				SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '"& Session("USER_Area") &"') ORDER BY EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI "
			    Rs.Open SQL,Session("Conn1"),1,3
				do while Not Rs.EOF
%>
                      <option value="<%=Rs("EMP_ID")%>" <%if Rs("EMP_ID")=empid2 then%>selected<%end if%>><%=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></option>
                      <%
					Rs.MoveNext
			    loop
                Rs.Close
			  %>
                    </select>
                    <input name="search2" type="button" class="button" id="search2" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_emp.asp?iframe='+self.name+'&selectname=empid2')">
                </td>
              </tr>
              <tr> 
                <td colspan="2"> <select name="empid3" size="1" id="empid3" onkeypress="if(window.event.keyCode==13){document.form1.cust_name.focus();}">
                    <option>กรุณาระบุ</option>
                    <% 
				SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '"& Session("USER_Area") &"') ORDER BY EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI "
			    Rs.Open SQL,Session("Conn1"),1,3
				do while Not Rs.EOF
%>
                    <option value="<%=Rs("EMP_ID")%>" <%if Rs("EMP_ID")=empid3 then%>selected<%end if%>><%=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></option>
                    <%
					Rs.MoveNext
			    loop
                Rs.Close
			  %>
                  </select> <input name="search3" type="button" class="button" id="search3" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_emp.asp?iframe='+self.name+'&selectname=empid3')"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"> <select name="custid1" id="custid1" onChange="top.RunWindow('Temp1','select_emp_cust_contact.asp?cgcode=<%=cgcode%>&empid='+document.form1.custid1.value);">
                    <option value="">ระบุลูกค้าที่ติดต่อ</option>
                    <%
	SQL = "SELECT EMPID, EMP_NAME, EMP_SUR FROM EMP WHERE (CG_CODE = '" & cgcode & "') "
	Rs2.Open SQL,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                    <option value="<%=Rs2("EMPID")%>" <%if custid1<>"" then%><%if Cint(Rs2("EMPID"))=Cint(custid1) then%>selected<%end if%><%end if%>><%=Rs2("EMP_NAME")&" "&Rs2("EMP_SUR")%></option>
                    <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                  </select> <input name="custname1" type="hidden" id="custname1"> 
                  <input name="add" type="button" id="add2" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','con_add_cust_add.asp?cust_no=1&cgcode=<%=cgcode%>');"> 
                  <input name="add" type="button" id="edit2" value="  แก้ไข  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if (document.form1.custid1.value != ''){top.ShowRunCenterSizeWindow('Dialog1','240px','350px','con_add_cust_edit.asp?cust_no=1&cgcode=<%=cgcode%>&empid='+document.form1.custid1.value);}"> 
                  <input name="check1" type="hidden" id="check1" onChange="doload(1);"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><input name="custtel1" type="text" class="text" id="custtel1" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><input name="custfax1" type="text" class="text" id="custfax1" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><input name="custmail1" type="text" class="text" id="custmail1" size="30" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"> <select name="custid2" id="custid2" onChange="top.RunWindow('Temp2','select_emp_cust_contact2.asp?cgcode=<%=cgcode%>&empid2='+document.form1.custid2.value);">
                    <option value="">ระบุลูกค้าที่ติดต่อ</option>
                    <%
	SQL = "SELECT EMPID, EMP_NAME, EMP_SUR FROM EMP WHERE (CG_CODE = '" & cgcode & "') "
	Rs2.Open SQL,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                    <option value="<%=Rs2("EMPID")%>" <%if custid2<>"" then%><%if Cint(Rs2("EMPID"))=Cint(custid2) then%>selected<%end if%><%end if%>><%=Rs2("EMP_NAME")&" "&Rs2("EMP_SUR")%></option>
                    <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                  </select> <input name="custname2" type="hidden" id="custname2"> 
                  <input name="add" type="button" id="add2" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','app_add_cust_add.asp?cust_no=2&cgcode=<%=cgcode%>');"> 
                  <input name="add" type="button" id="edit2" value="  แก้ไข  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if (document.form1.custid2.value != ''){top.ShowRunCenterSizeWindow('Dialog1','240px','350px','con_add_cust_edit.asp?cust_no=2&cgcode=<%=cgcode%>&empid='+document.form1.custid2.value);}"> 
                  <input name="check2" type="hidden" id="check2" onChange="doload(2);"> 
                </td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><input name="custtel2" type="text" class="text" id="custtel2" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><input name="custfax2" type="text" class="text" id="custfax2" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><input name="custmail2" type="text" class="text" id="custmail2" readonly="" size="30" maxlength="50"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"> <p> 
                    <select name="custid3" id="custid3" onChange="top.RunWindow('Temp3','select_emp_cust_contact3.asp?cgcode=<%=cgcode%>&empid3='+document.form1.custid3.value);">
                      <option value="">ระบุลูกค้าที่ติดต่อ</option>
                      <%
	SQL = "SELECT EMPID, EMP_NAME, EMP_SUR FROM EMP WHERE (CG_CODE = '" & cgcode & "') "
	Rs2.Open SQL,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                      <option value="<%=Rs2("EMPID")%>"  <%if custid3<>"" then%><%if Cint(Rs2("EMPID"))=Cint(custid3) then%>selected<%end if%><%end if%>><%=Rs2("EMP_NAME")&" "&Rs2("EMP_SUR")%></option>
                      <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                    </select>
                    <input name="custname3" type="hidden" id="custname3">
                    <input name="add" type="button" id="add2" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','app_add_cust_add.asp?cust_no=3&cgcode=<%=cgcode%>');">
                    <input name="add" type="button" id="edit2" value="  แก้ไข  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if (document.form1.custid3.value != ''){top.ShowRunCenterSizeWindow('Dialog1','240px','350px','con_add_cust_edit.asp?cust_no=3&cgcode=<%=cgcode%>&empid='+document.form1.custid3.value);}">
                    <input name="check3" type="hidden" id="check3" onChange="doload(3);">
                  </p></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><input name="custtel3" type="text" class="text" id="custtel3" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td height="23"><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><input name="custfax3" type="text" class="text" id="custfax3" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><input name="custmail3" type="text" class="text" id="custmail3" readonly="" size="30" maxlength="50"></td>
              </tr>
              <%		  
			  SQL = "SELECT OID, ONAME FROM OBJECT"  
			  Rs2.Open SQL,Session("Conn1"),1,3 
			  %>
              <tr> 
                <td valign="top"><div align="right"><font color="#4B0097" size="2">วัตถุประสงค์การพบลูกค้า</font></div></td>
                <td> <table>
                    <%
					i=0
					j=0
					do while Not Rs2.EOF
					%>
                    <tr> 
                      <td><input type="checkbox" value="<%=Rs2("OID")%>" name="radio_obj" <%if Cint(Rs2("OID"))=Cint(255) then%>onClick="if(document.form1.radio_obj[<%=i%>].checked){document.form1.remark.disabled=false; document.form1.remark.focus();}else{document.form1.remark.value=''; document.form1.remark.disabled=true;}"<%end if%> <%if checkcount<>"" then%><%if Cint(checkcount)>0 then%><%if Cint(Rs2("OID"))=Cint(check(j)) then%><%if j+1<Cint(checkcount) then%><%j=j+1%><%end if%>checked<%end if%><%end if%><%end if%>> 
                        <font size="2" color="#4B0097"><%=Rs2("ONAME")%></font> 
                        <%if Cint(Rs2("OID"))=Cint(255) then%>
                        <textarea name="remark" cols="50" rows="2" id="remark" onKeyPress="if(document.form1.remark.value.length>=100){event.returnValue=false;}" <%if checkcount<>"" then%><%if Cint(checkcount)>0 then%><%if Cint(255)<>Cint(check(j)) then%>disabled<%end if%><%else%>disabled<%end if%><%else%>disabled<%end if%>><%=remark%></textarea> 
                        <%end if%>
                      </td>
                    </tr>
                    <%  Rs2.MoveNext
						i=i+1
			     		loop
                 		Rs2.Close
				 		%>
                  </table>
                  <input name="app_obj" type="hidden" id="app_obj"></td>
              </tr>
              <%		  
			  SQL = "SELECT REID, RENAME FROM RESULT"  
			  Rs.Open SQL,Session("Conn1"),1,3 
			  %>
              <tr> 
                <td valign="top"><div align="right"><font color="#4B0097" size="2">ผลการพบลูกค้า</font></div></td>
                <td> <table>
                    <%
					i=0
					j=0
					do while Not Rs.EOF %>
                    <tr> 
                      <td><input type="checkbox" value="<%=Rs("REID")%>" name="radio_obj2" <%if Cint(Rs("REID"))=Cint(255) then%>onClick="if(document.form1.radio_obj2[<%=i%>].checked){document.form1.remark2.disabled=false; document.form1.remark2.focus();}else{document.form1.remark2.value=''; document.form1.remark2.disabled=true;}"<%end if%>  <%if checkcount2<>"" then%><%if Cint(checkcount2)>0 then%><%if Cint(Rs("REID"))=Cint(check2(j)) then%><%if j+1<Cint(checkcount2) then%><%j=j+1%><%end if%>checked<%end if%><%end if%><%end if%>> 
                        <font size="2" color="#4B0097"> <%=Rs("RENAME")%> 
                        <%if Cint(Rs("REID"))=Cint(255) then%>
                        <textarea name="remark2" cols="50" rows="2" id="remark2" onKeyPress="if(document.form1.remark2.value.length>=100){event.returnValue=false;}" <%if checkcount<>"" then%><%if Cint(checkcount)>0 then%><%if Cint(255)<>Cint(check(j)) then%>disabled<%end if%><%else%>disabled<%end if%><%else%>disabled<%end if%>><%=remark2%></textarea>
                        <%end if%>
                        <input name="cont_result" type="hidden">
                        </font> </td>
                    </tr>
                    <%  Rs.MoveNext
						i=i+1
			     		loop
                 		Rs.Close
				 		%>
                  </table></td>
              </tr>
              <tr> 
                <td valign="top"><div align="right"><font  size="2" color="#FF93C9"><b>หมายเหตุ</b></font><font  size="2" color="#4B0097"></font></div></td>
                <td valign="top" colspan="2"><textarea name="detail" cols="50" rows="3" id="detail" onKeyPress="if(document.form1.remark2.value.length>=100){event.returnValue=false;}"><%=detail%></textarea></td>
              </tr>
            </table></tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <%else%>
        <tr> </tr>
        <% end if %>
        <tr> 
          <td><div align="center"> 
              <%
	if show<> "" then
%>
              <input name="commit" type="button" id="commit" value=" บันทึกข้อมูล " valign="bottom" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
              &nbsp;&nbsp; 
              <% end if %>
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop2');">
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
<form name="form2" method="post" action="">
  <input name="cbus" type="hidden" id="cbus">
   <input name="cgcode" type="hidden" id="cgcode">
  <input name="show" type="hidden" id="show">
</form>
<form name="form3" method="post" action="">
  <input name="cbus" type="hidden" id="cbus">
   <input name="cgcode" type="hidden" id="cgcode">
  <input name="show" type="hidden" id="show" value="1">
</form>
<form name="form4" method="post" action="">
  <input name="cbus" type="hidden" id="cbus" value="<%=cbus%>">
  <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
  <input name="show" type="hidden" id="show" value="1">
  <input name="showdate1" type="hidden" id="showdate1" value="">
  <input name="opendate1" type="hidden" id="opendate1" value="">
  <input name="h1" type="hidden" id="h1" value="">
  <input name="m1" type="hidden" id="m1" value="">
  <input name="D1" type="hidden" id="D1" value="">
  <input name="empid" type="hidden" id="empid" value="<%=Session("User_Id")%>">
  <input name="empid2" type="hidden" id="empid2" value="">
  <input name="empid3" type="hidden" id="empid3" value="">
  <input name="custid1" type="hidden" id="custid1" value="">
  <input name="custid2" type="hidden" id="custid2" value="">
  <input name="custid3" type="hidden" id="custid3" value="">
  <input name="checkboxall" type="hidden" id="checkboxall" value="">
  <input name="checkcount" type="hidden" id="checkcount" value="">
  <input name="remark" type="hidden" id="remark" value="">
  <input name="checkboxall2" type="hidden" id="checkboxall2" value="">
  <input name="checkcount2" type="hidden" id="checkcount2" value="">
  <input name="remark2" type="hidden" id="remark2" value="">
  <input name="detail" type="hidden" id="detail" value="">
</form>
<script language="JavaScript">
<%
if custid1<>"" then
%>
	document.form1.custid1.onchange();
<%
end if
%>
<%
if custid2<>"" then
%>
	document.form1.custid2.onchange();
<%
end if
%>
<%
if custid3<>"" then
%>
	document.form1.custid3.onchange();
<%
end if
%>

function doload(choice){
		var check=false;
		var count=0;
		document.form4.showdate1.value=document.form1.showdate1.value;
		document.form4.opendate1.value=document.form1.opendate1.value;
		document.form4.h1.value=document.form1.h1.value;
		document.form4.m1.value=document.form1.m1.value;
		document.form4.D1.value=document.form1.D1.value;
		document.form4.empid2.value=document.form1.empid2.value;
		document.form4.empid3.value=document.form1.empid3.value;
		if(choice==1){
			document.form4.custid1.value=document.form1.custname1.value;
			document.form4.custid2.value=document.form1.custid2.value;
			document.form4.custid3.value=document.form1.custid3.value;
		}
		if(choice==2){
			document.form4.custid2.value=document.form1.custname2.value;
			document.form4.custid1.value=document.form1.custid1.value;
			document.form4.custid3.value=document.form1.custid3.value;
		}
		if(choice==3){
			document.form4.custid3.value=document.form1.custname3.value;
			document.form4.custid1.value=document.form1.custid1.value;
			document.form4.custid2.value=document.form1.custid2.value;
		}
		for(i=0; i<document.form1.radio_obj.length; i++){
			if(document.form1.radio_obj[i].checked){
				if(check==true){
					document.form4.checkboxall.value = document.form4.checkboxall.value+"," + document.form1.radio_obj[i].value;
				}else{
					document.form4.checkboxall.value = document.form1.radio_obj[i].value;
					check=true;
				}
				count++;
			}
		}
		document.form4.checkcount.value = count;
		document.form4.remark.value=document.form1.remark.value;
		for(i=0, count=0, check=false; i<document.form1.radio_obj2.length; i++){
			if(document.form1.radio_obj2[i].checked){
				if(check==true){
					document.form4.checkboxall2.value = document.form4.checkboxall2.value+"," + document.form1.radio_obj2[i].value;
				}else{
					document.form4.checkboxall2.value = document.form1.radio_obj2[i].value;
					check=true;
				}
				count++;
			}
		}
		document.form4.checkcount2.value = count;
		document.form4.remark2.value=document.form1.remark2.value;
		document.form4.detail.value=document.form1.detail.value;
		document.body.style.cursor='wait';
		document.form4.submit();
}
function donewload(){
		document.form2.cbus.value=document.form1.cbus.value;
		document.form2.cgcode.value=document.form1.cgcode.value;
		document.body.style.cursor='wait';
		document.form2.submit();
	}
	function doloaddata(){
		if(document.form1.cbus.value==""){
			alert("กรณาเลือกกลุ่มลูกค้าธุรกิจองค์กร");
			document.form1.cbus.focus();
			return;
		}
		if(document.form1.cgcode.value==""){
			alert("กรณาเลือกลูกค้า");
			document.form1.cgcode.focus();
			return;
		}
		document.form3.cbus.value=document.form1.cbus.value;
		document.form3.cgcode.value=document.form1.cgcode.value;
		document.body.style.cursor='wait';
		document.form3.submit();
	}

function radio_button_checker(){
		var radio_choice = false;
        var theone;
		for (counter = 0; counter < document.form1.radio_obj.length; counter++){
			if (document.form1.radio_obj[counter].checked) {
			    theone = counter;
			    document.form1.app_obj.value=document.form1.radio_obj[counter].value;
				radio_choice = true;
				}
		}
		if (!radio_choice){
			return (false);
		}
		return (true);
	}
	
	function radio_button_checker2(){
		var radio_choice = false;
		for (counter = 0; counter < document.form1.radio_obj2.length; counter++){
			if (document.form1.radio_obj2[counter].checked) {
			    document.form1.cont_result.value=document.form1.radio_obj2[counter].value;
				radio_choice = true;
				}
		}
		if (!radio_choice){
			return (false);
		}
		return (true);
	}

    function checkdate(date1, date2){
	    if((parseInt(date1.substr(0,2),10)<parseInt(date2.substr(0,2),10) && parseInt(date1.substr(3,2),10)==parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(3,2),10)>parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(6,4),10)>parseInt(date2.substr(6,4),10))){
			return true;
	    }
	    return false;
    }
	
	function dosend(){
		if(document.form1.showdate1.value==""){
			alert('กรุณาระบุวันที่พบลูกค้า');
			return;
		}
		if(checkdate('<%=right("0"&Day(Date()),2)&"/"&right("0"&Month(Date()),2)&"/"&Year(Date())%>',document.form1.opendate1.value)){
			alert('กรุณาระบุวันที่พบลูกค้าให้น้อยกว่าหรือเท่ากับวันปัจจุบัน');
			return;
		}
		if(document.form1.h1.value==""){
			alert('กรุณาระบุเวลา');
			document.form1.h1.focus();
			return;
		}
		if(document.form1.m1.value==""){
			alert('กรุณาระบุเวลา');
			document.form1.m1.focus();
			return;
		}
		if(document.form1.custid1.value=="" && document.form1.custid2.value=="" && document.form1.custid3.value==""){
			alert('กรุณาระบุชื่อลูกค้า ');
			document.form1.cust_name.focus();
			return;
		}
		if(radio_button_checker()==false){
			alert("กรุณาเลือกวัตถุประสงค์การพบลูกค้า")
			return;
		}
		if(radio_button_checker2()==false){
			alert("กรุณาเลือกผลการพบลูกค้า")
			return;
		}
		document.form1.commit.disabled=true;
		top.RunWindow('Temp1','temp_save_con_add.asp');
	}
	
</script>
</body>

</html>