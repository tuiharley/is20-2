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
	end if
%>
<% 
	Dim show, i, j
	Dim cbus, cgcode, showdate1, opendate1, showdate2, opendate2, h1, h2, m1, m2, checkboxall, checkcount, remark, empid, APP_EMPAPP1, APP_EMPAPP2, APP_REMARK, check
	cbus = Request.Form("cbus")
	cgcode = Request.Form("cgcode")
	show = Request.Form("show")
	showdate1 = Request.Form("showdate1")
	opendate1= Request.Form("opendate1")
	showdate2 = Request.Form("showdate2")
	opendate2= Request.Form("opendate2")
	h1 = Request.Form("h1")
	h2= Request.Form("h2")
	m1 = Request.Form("m1")
	m2= Request.Form("m2")
	checkboxall = Request.Form("checkboxall")
	check = split(checkboxall,",")
	checkcount = Request.Form("checkcount")
	remark = Request.Form("remark")
	empid= Request.Form("empid")
	APP_EMPAPP1 = Request.Form("APP_EMPAPP1")
	APP_EMPAPP2 = Request.Form("APP_EMPAPP2")
	APP_REMARK = Request.Form("APP_REMARK")

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
          <td><table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="150" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล</font></b></td>
                <td width="600"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="600">
                    <tr> 
                      <td valign="bottom" width="110"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
                      <td width="9" valign="bottom" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="490" valign="bottom"><select name="cbus" id="cbus" onChange="donewload()" onkeypress="if(window.event.keyCode==13){document.form1.cgcode.focus();}">
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
                        </select> </td
                    >
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ลูกค้า</font></div></td>
                      <td valign="bottom"> <div align="left">
                          <select name="cgcode" id="cgcode" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
                            <option value="">กรุณาระบุลูกค้า</option>
                            <%
							
						 if cbus<>"" then
						  SQL = "SELECT CUST_GROUP.CG_CODE, CUST_GROUP.CG_NAME, COMP_MAIN.CM_NAME FROM CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN BUSINESS_TYPE ON COMP_MAIN.CBUS = BUSINESS_TYPE.CBUS WHERE (BUSINESS_TYPE.CBUS = '" & cbus & "') AND (CUST_GROUP.PROVINCE_ID = '"& Session("User_Prov") &"') "
                     
						   Rs2.Open SQL,Session("Conn1"),1,3
						
						
								do while not Rs2.EOF
						%>
                            <option value="<%=Rs2("CG_CODE") %>"<%if cgcode=Rs2("CG_CODE")then%>selected<%end if%>><%=Rs2("CG_CODE")&" : "&Rs2("CM_NAME")&" - "&Rs2("CG_NAME")%></option>
                            <%
								Rs2.MoveNext
								loop
								Rs2.Close
								end if
						%>
                          </select>    
                          &nbsp;&nbsp; 
                          <input name="search" type="button" class="button" id="search" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_cgcode.asp?iframe='+self.name+'&cbus=<%=cbus%>')">
                          <input name="send" type="button" id="send" value="ตกลง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();">
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
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="4" face="JasmineUPC">บันทึกข้อมูลการนัดหมาย</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="75%" height="79" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
              <%
					SQL = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
    				Rs3.Open SQL,Session("Conn1"),1,3
					if Not Rs3.EOF and Not Rs3.BOF then
			  %>
              <tr> 
                <td width="30%"><div align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></div></td>
                <td width="2%"rowspan="5"><img src="../images/blank.gif" width="1" height="1"> 
                </td>
                <td width="68%"><b><font color="#4b0097" size="2"><%=Rs3("CM_NAME")&"  "&Rs3("CG_NAME")%></font></b></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">ที่อยู่</font></div></td>
                <td><font color="#4b0097" size="2"><%=Rs3("CGADDR_SNAME")&" "&Rs3("CGADDR_BAND")&" "&Rs3("CGADDR_SOI")&" "&Rs3("CGADDR_STREET")&" "&Rs3("CGADDR_TUMBOL")&" "&Rs3("CGADDR_DISTRICT")&" "&Rs3("CGADDR_PROVINCE")&" "&Rs3("CGADDR_POSTCODE")%></font></td>
              </tr>
              <tr> 
                <td height="19"><div align="right"><font size="2" color="#4B0097">ภาคธุรกิจ</font></div></td>
                <td><font color="#4b0097" size="2"> 
                  <% Response.Write(Rs3("AREA")) %>
                  </font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">จังหวัด</font></div></td>
                <td><font size="2" color="#4B0097"><%=Rs3("PROVINCE")%></font></td>
              </tr>
              <% 
					  end if
				%>
            </table></td>
        </tr>
        <tr> 
          <td><table width="580" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="161"><div align="right"><font size="2" color="#4B0097">ว/ด/ป 
                    (ติดต่อ)</font></div></td>
                <td width="14" rowspan="17"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="398" colspan="2"><input name="showdate1" type="text" class="text" id="showdate1" size="18" readonly value="<%=showdate1%>"> 
                  <input name="opendate1" type="hidden" id="opendate1" value="<%=opendate1%>"> 
                  <input name="popdate1" type="button" id="popdate13" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop2.document.form1.opendate1&input2=top.Desktop2.document.form1.showdate1');"> 
                  <font size="2" color="#4B0097">&nbsp;&nbsp;เวลา</font> <select name="h1" id="h1" onkeypress="if(window.event.keyCode==13){document.form1.m1.focus();}">
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
                  <select name="m1" id="m1">
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
                <td><div align="right"><font size="2"  color="#4B0097"> ว/ด/ป(นัดหมาย)</font></div></td>
                <td colspan="2"><input name="showdate2" type="text" class="text" id="showdate2" size="18" readonly value="<%=showdate2%>"> 
                  <input name="opendate2" type="hidden" id="opendate2" value="<%=opendate2%>"> 
                  <input name="popdate2" type="button" id="popdate2" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop2.document.form1.opendate2&input2=top.Desktop2.document.form1.showdate2');"> 
                  <font  size="2" color="#4B0097">&nbsp;&nbsp;เวลา</font> <select name="h2" id="h2" onkeypress="if(window.event.keyCode==13){document.form1.m2.focus();}">
                    <option value="">hh</option>
                    <%
	for i=0 to 23
%>
                    <option value="<%=right("0"&i,2)%>" <%if right("0"&i,2)=h2 then%>selected<%end if%>><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select>
                  : 
                  <select name="m2" id="m2">
                    <option value="">mm</option>
                    <%
	for i=0 to 59
%>
                    <option value="<%=right("0"&i,2)%>" <%if right("0"&i,2)=m2 then%>selected<%end if%>><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select> <font  size="2" color="#FF93C9">(hh.mm)</font></td>
              </tr>
              <tr> 
                <% 
     		  SQL = "SELECT OID, ONAME FROM OBJECT"
			  Rs2.Open SQL,Session("Conn1"),1,3
			  %>
                <td height="49" valign="top"><div align="right"><font color="#4B0097" size="2">วัตถุประสงค์การนัดหมาย</font></div></td>
                <td> <table width="100%">
                    <%
							i=0
							j=0
							do  While Not Rs2.EOF 
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
                  <input type="hidden" name="app_obj"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"> <select name="empid" id="empid" onChange="top.RunWindow('Temp1','select_emp_cust.asp?cgcode=<%=cgcode%>&empid='+document.form1.empid.value);">
                    <option value="">ระบุลูกค้าที่ติดต่อ</option>
                    <%
	SQL = "SELECT EMPID, EMP_NAME, EMP_SUR FROM EMP WHERE (CG_CODE = '" & cgcode & "') "
	Rs2.Open SQL,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                    <option value="<%=Rs2("EMPID")%>" <%if empid<>"" then%><%if Cint(Rs2("EMPID"))=Cint(empid) then%>selected<%end if%><%end if%>><%=Rs2("EMP_NAME")&" "&Rs2("EMP_SUR")%></option>
                    <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                  </select> <input name="empname" type="hidden" id="empname"> 
                  <input name="add" type="button" id="add" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','250px','350px','app_add_cust_add.asp?cgcode=<%=cgcode%>');"> 
                  <input name="add" type="button" id="edit" value="  แก้ไข  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if (document.form1.empid.value != ''){top.ShowRunCenterSizeWindow('Dialog1','250px','350px','app_add_cust_edit.asp?cgcode=<%=cgcode%>&empid='+document.form1.empid.value);}"> 
                  <input name="check" type="hidden" id="check" onChange="doload();"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><input name="APP_TEL_CONTACT" type="text" class="text" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><input name="APP_FAX_NO" type="text" class="text" size="20" maxlength="50" readonly=""></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">e-mail.</font></div></td>
                <td colspan="2"><input name="APP_MAIL" type="text" class="text" id="APP_MAIL" readonly="" size="30" maxlength="50"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  color="#4B0097" size="2">ผู้นัดหมาย</font></div></td>
                <td colspan="2"><p dir="ltr" align="left"><font  size="2" color="#4B0097"> 
                    <% Response.Write(Session("User_Name")) %>
                    <input name="APP_EMPAPP" type="hidden" id="APP_EMPAPP" value="<%=Session("User_Id")%>">
                    </font></td>
              </tr>
              <tr> 
                <% SQL = "SELECT EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.PROVINCE_ID WHERE (PROVINCE.AREA = '5')"
			    Rs.Open SQL,Session("Conn1"),1,3
				While Not Rs.EOF
				Rs.MoveNext
			    Wend
                Rs.Close
			  %>
                <td valign="top"><div align="right"><font  color="#4b0097" size="2">ผู้เชี่ยวชาญเฉพาะด้าน<br>
                    หรือผู้บริหารที่ออกพบด้วย</font><font size="2"  color="#4B0097"></div></td>
                <td colspan="2"><!--<select size="1" name="APP_EMPAPP1" onKeyPress="if(window.event.keyCode==13){document.form1.APP_EMPAPP2.focus();}">
                    <option value="">กรุณาระบุ</option>
                    <% 
				'SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '"& Session("USER_Area") &"') AND (EMPLOYEE.USEROW = 1) ORDER BY EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI "
			  '  Rs.Open SQL,Session("Conn1"),1,3
				'do while Not Rs.EOF
%>
                    <option value="<%'=Rs("EMP_ID")%>" <%'if Rs("EMP_ID")=APP_EMPAPP1 then%>selected<%'end if%>><%'=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></option>
                    <%
					'Rs.MoveNext
			    'loop
               ' Rs.Close
			  %>
           </select> <input name="search2" type="button" class="button" id="search2" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_emp.asp?iframe='+self.name+'&selectname=APP_EMPAPP1')">   -->
                 
				  <input name="APP_EMP_TMP" type="button" class="button" id="APP_EMP_TMP" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="เพิ่มรายชื่อ" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','650px','add_specialist.asp')">				  <br>
				  <!-- <select size="1" name="APP_EMPAPP2" onkeypress="if(window.event.keyCode==13){document.form1.APP_REMARK.focus();}">
                    <option>กรุณาระบุ</option>
                    <% 
				'SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '"& Session("USER_Area") &"') AND (EMPLOYEE.USEROW = 1) ORDER BY EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI "
			    'Rs.Open SQL,Session("Conn1"),1,3
				'do while Not Rs.EOF
%>
                    <option value="<%'=Rs("EMP_ID")%>" <%'if Rs("EMP_ID")=APP_EMPAPP2 then%>selected<%'end if%>><%'=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></option>
                    <%
				'Rs.MoveNext
			    'loop
                'Rs.Close
			  %>
                  </select> <input name="search3" type="button" class="button" id="search3" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_emp.asp?iframe='+self.name+'&selectname=APP_EMPAPP2')">  -->
                </td>
              </tr>
              <tr> 
                <td valign="top"><p align="right"><font  size="2" color="#4B0097">หมายเหตุ</font></td>
                <td colspan="2"><textarea rows="4" name="APP_REMARK" cols="60" onKeyPress="if(document.form1.APP_REMARK.value.length>=500){event.returnValue=false;}"><%=APP_REMARK%></textarea> 
                  <br></td>
              </tr>
            </table></td>
        </tr>
        <%else%>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <% end if %>
        <tr> 
          <td><div align="center"> 
              <%
	if show<> "" then
%>
              <input name="send" type="button" id="send" value="บันทึกข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
              &nbsp;&nbsp; 
              <% end if %>
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.RunWindow('Temp1','close_search_specialist.asp');top.HideWindow('Desktop2');">
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
  <input name="showdate2" type="hidden" id="showdate2" value="">
  <input name="opendate1" type="hidden" id="opendate1" value="">
  <input name="opendate2" type="hidden" id="opendate2" value="">
  <input name="h1" type="hidden" id="h1" value="">
  <input name="h2" type="hidden" id="h2" value="">
  <input name="m1" type="hidden" id="m1" value="">
  <input name="m2" type="hidden" id="m2" value="">
  <input name="checkboxall" type="hidden" id="checkboxall" value="">
  <input name="checkcount" type="hidden" id="checkcount" value="">
  <input name="remark" type="hidden" id="remark" value="">
  <input name="empid" type="hidden" id="empid" value="">
  <input name="APP_EMPAPP1" type="hidden" id="APP_EMPAPP1" value="">
  <input name="APP_EMPAPP2" type="hidden" id="APP_EMPAPP2" value="">
  <input name="APP_REMARK" type="hidden" id="APP_REMARK" value="">
</form>
    <script language="JavaScript">
<%
if empid<>"" then
%>
	document.form1.empid.onchange();
<%
end if
%>

function doload(){
		var check=false;
		var count=0;
		document.form4.showdate1.value=document.form1.showdate1.value;
		document.form4.showdate2.value=document.form1.showdate2.value;
		document.form4.opendate1.value=document.form1.opendate1.value;
		document.form4.opendate2.value=document.form1.opendate2.value;
		document.form4.h1.value=document.form1.h1.value;
		document.form4.h2.value=document.form1.h2.value;
		document.form4.m1.value=document.form1.m1.value;
		document.form4.m2.value=document.form1.m2.value;
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
		document.form4.empid.value=document.form1.empname.value;
		//document.form4.APP_EMPAPP1.value=document.form1.APP_EMPAPP1.value;
		//document.form4.APP_EMPAPP2.value=document.form1.APP_EMPAPP2.value;
		document.form4.APP_REMARK.value=document.form1.APP_REMARK.value;
		document.body.style.cursor='wait';
		document.form4.submit();
}

function donewload(){
		document.form2.cbus.value=document.form1.cbus.value;
//		document.form2.cgcode.value=document.form1.cgcode.value;
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

    function checkdate(date1, date2){
	    if((parseInt(date1.substr(0,2),10)<parseInt(date2.substr(0,2),10) && parseInt(date1.substr(3,2),10)==parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(3,2),10)<parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(6,4),10)<parseInt(date2.substr(6,4),10))){
			return true;
	    }
	    return false;
    }

	function radio_button_checker(rad, obj){
		var radio_choice = false;
        var theone;
		for (counter = 0; counter < rad.length; counter++){
			if (rad[counter].checked) {
			    theone = counter;
			    obj.value=rad[counter].value;
				radio_choice = true;
			}
		}
		if (!radio_choice){
			return (false);
		}
		return (true);
	}
	
	function dosend(){
		if(document.form1.showdate1.value==""){
			alert('กรุณาระบุวันที่ติดต่อ');
			return;
		}
		if(document.form1.showdate2.value==""){
			alert('กรุณาระบุวันที่นัดหมาย');
			return;
		}
		if(checkdate(document.form1.opendate1.value,document.form1.opendate2.value)==false){
			alert('กรุณาระบุวันที่นัดหมายให้ถูกต้อง');
			return;
		}
		if(checkdate(document.form1.opendate2.value,'<%=right("0"&Day(Date()),2)&"/"&right("0"&Month(Date()),2)&"/"&Year(Date())%>')){
			alert('กรุณาระบุวันที่นัดหมายให้มากกว่าหรือเท่ากับวันปัจจุบัน');
			return;
		}
		if(document.form1.h1.value==""){
			document.form1.h1.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(document.form1.m1.value==""){
			document.form1.m1.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(document.form1.h2.value==""){
			document.form1.h2.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(document.form1.m2.value==""){
			document.form1.m2.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(radio_button_checker(document.form1.radio_obj, document.form1.app_obj)==false){
			alert("กรุณาเลือกวัตถุประสงค์การนัดหมาย")
			return;
		}
		if(document.form1.empid.value==""){
			alert("กรณาเลือกชื่อ-สกุลลูกค้าที่ติดต่อ");
			document.form1.empid.focus();
			return;
		}

		if(confirm('ยืนยันการบันทึกข้อมูล')){
			document.form1.send.disabled=true;
			top.RunWindow('Temp1','temp_save_app_add.asp');
			//top.ShowRunWindow('Dialog1','test_email.asp');
		}
	}
</script>
    </center>
</div>
</body>
</html>