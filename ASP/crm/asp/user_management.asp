<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
	Dim area, show, empid, empname
	empid = Request.Form("empid")
	empname = Request.Form("empname")
	area = Request.Form("area")
	show = Request.Form("show")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.empid.focus();">
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
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">User Management</font></b></td>
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
                <td width="68"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="380">
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2">รหัสพนักงาน</font></div></td>
                      <td>&nbsp;</td>
                      <td><input name="empid" type="text" class="text" id="empid" onKeyPress="if(window.event.keyCode==13){document.form1.empname.focus();}" value="<%=empid%>" size="5" maxlength="4"></td>
                    </tr>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2">ชื่อหรือนามสกุล</font></div></td>
                      <td>&nbsp;</td>
                      <td><input name="empname" type="text" class="text" id="empname"  onKeyPress="if(window.event.keyCode==13){document.form1.area.focus();}" value="<%=empname%>" size="30" maxlength="30"></td>
                    </tr>
                    <tr> 
                      <td width="100"><div align="right"><font size="2" color="#4B0097">ภาคธุรกิจ</font></div></td>
                      <td width="9"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="280"> <select name="area" size="1" id="area"  onKeyPress="if(window.event.keyCode==13){document.form1.send.focus();}">
                          <option value="-1" selected>ทั้งหมด</option>
                          <option value="0" <%if Cint(area)=Cint(0) and area<>"" then%>selected<%end if%>>0</option>
                          <option value="1" <%if Cint(area)=Cint(1) then%>selected<%end if%>>1</option>
                          <option value="2" <%if Cint(area)=Cint(2) then%>selected<%end if%>>2</option>
                          <option value="3" <%if Cint(area)=Cint(3) then%>selected<%end if%>>3</option>
                          <option value="4" <%if Cint(area)=Cint(4) then%>selected<%end if%>>4</option>
                          <option value="5" <%if Cint(area)=Cint(5) then%>selected<%end if%>>5</option>
                          <option value="6" <%if Cint(area)=Cint(6) then%>selected<%end if%>>6</option>
                          <option value="7" <%if Cint(area)=Cint(7) then%>selected<%end if%>>7</option>
                          <option value="8" <%if Cint(area)=Cint(8) then%>selected<%end if%>>8</option>
                          <option value="9" <%if Cint(area)=Cint(9) then%>selected<%end if%>>9</option>
                        </select> &nbsp;&nbsp; <input name="send" type="button" id="send" value="แสดงข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doloaddata();"> 
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
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="3" face="JasmineUPC">แสดงข้อมูลสิทธิการใช้งาน</font></b></td>
              </tr>
            </table></td>
        </tr>
        <%
 	Dim Rs, Sql
	Set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim i, total, totalpage, pagesize, pageno, beginrow, endrow, check
	pageno=Request.Form("pageno")

	check=1
	Sql = "SELECT EMP_LEVEL.EL_EMPID, EMP_LEVEL.L_LEVEL_CODE, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, PROVINCE.AREA, PROVINCE.PROVINCE, STATUS_USER.SU_BEGINDATE FROM EMP_LEVEL INNER JOIN EMPLOYEE ON EMP_LEVEL.EL_EMPID = EMPLOYEE.EMP_ID INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC INNER JOIN STATUS_USER ON EMP_LEVEL.EL_EMPID = STATUS_USER.EL_EMPID "
	
	if Cint(area) <> Cint(-1) then
		Sql = Sql & "WHERE (PROVINCE.AREA = '" & area & "') "
		check = 0
	end if
	if empid <> "" then
		if check then
			Sql = Sql & "WHERE (EMP_LEVEL.EL_EMPID = '" & empid & "') "
			check = 0
		else
			Sql = Sql & " AND (EMP_LEVEL.EL_EMPID = '" & empid & "') "
		end if
	end if
	if empname <> "" then
		if check then
			Sql = Sql & "WHERE ((EMPLOYEE.NAME_THAI like '" & empname & "%') OR (EMPLOYEE.SURNAME_THAI like '" & empname & "%')) "
			check = 0
		else
			Sql = Sql & " AND ((EMPLOYEE.NAME_THAI like '" & empname & "%') OR (EMPLOYEE.SURNAME_THAI like '" & empname & "%')) "
		end if
	end if
	Sql = Sql & " ORDER BY PROVINCE.AREA, PROVINCE.PROVINCE_ID, EMP_LEVEL.EL_EMPID "
	'response.Write(Sql)
	Rs.Open Sql,Session("Conn1"),1,3
	total = Rs.RecordCount
	pagesize=20
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
                    <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%> selected<%end if%>>หน้าที่ 
                    <%=i%></option>
                    <%
	next
%>
                  </select></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">รหัส</font></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="30%"><div align="center"><strong><font color="#4B0097" size="2">ชื่อ-สกุล</font></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">ภาค</font></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">จังหวัด</font></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">เปิดให้เข้าระบบ</font></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">ระดับสิทธิ</font></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><strong></strong></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <% 
				if not Rs.EOF and not Rs.BOF then
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
 			%>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=Rs("EL_EMPID")%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4B0097" size="2"><%=Rs("TITLE_THAI")&Rs("NAME_THAI")&" "&Rs("SURNAME_THAI")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=Rs("AREA")%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%=Rs("PROVINCE")%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"><%if not isnull(Rs("SU_BEGINDATE")) then%><%=left(formatdatetime(Rs("SU_BEGINDATE"),1),len(formatdatetime(Rs("SU_BEGINDATE"),1))-4)&year(Rs("SU_BEGINDATE"))+543%><%end if%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"> 
                    <%
					select case(Rs("L_LEVEL_CODE"))
					case 1:
						Response.Write("VIP")
					case 2:
						Response.Write("Manager")
					case 3:
						Response.Write("Officer")
					case 4:
						Response.Write("Admin")
					end select
				%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"> 
                    <input name="edit" type="button" id="edit" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop3','user_edit.asp?empid=<%=Rs("EL_EMPID")%>');">
                    <input name="del" type="button" id="del" value=" ลบ " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if(confirm('ยืนยันการลบข้อมูล')){top.RunWindow('Temp1','save_user_del.asp?empid=<%=Rs("EL_EMPID")%>');}">
                  </div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
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
        <%
	end if
%>
        <tr> 
          <td><div align="center"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
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
<input name="show" type="hidden" id="show" value="1">
<input name="empid" type="hidden" id="empid">
<input name="empname" type="hidden" id="empname">
<input name="area" type="hidden" id="area">
<input name="pageno" type="hidden" id="pageno">
</form>
<form name="form4" method="post" action="">
<input name="area" type="hidden" id="area" value="<%=area%>">
<input name="pageno" type="hidden" id="pageno" value="<%=pageno%>">
<input name="show" type="hidden" id="show" value="1">
</form>
    </body>
<script language="JavaScript">
function doloaddata() {
		document.form2.empid.value=document.form1.empid.value;
		document.form2.empname.value=document.form1.empname.value;
		document.form2.area.value=document.form1.area.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
function doloaddata2() {
		document.form2.empid.value=document.form1.empid.value;
		document.form2.empname.value=document.form1.empname.value;
		document.form2.area.value=document.form1.area.value;
		document.form2.pageno.value=document.form1.pageno.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
</script>
</html>