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
	Dim Sql, Rs, Rs1, Rs2, Rs3, show, empid, showdate1, opendate1
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs1 = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
	show = Request.Form("show")
	empid = Request.Form("empid")	
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">กำหนดสิทธิการใช้งานระบบ 
                  CRM</font></b></td>
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
                <td width="8%" height="25">&nbsp;</td>
                <td width="40%"><b><font color="#4B0097" size="4" face="JasmineUPC">กำหนดสิทธิการใช้งาน</font></b></td>
                <td><font color="#4B0097" size="2">รหัสพนักงาน</font><font size="2">&nbsp;&nbsp; 
                  <input name="empid" type="text" class="text" id="empid" value="<%=empid%>" size="10" maxlength="4">
                  <input name="empid2" type="hidden" value="<%=empid%>">
                  &nbsp;&nbsp; 
                  <input name="ok" type="button" id="ok" value="กำหนดสิทธิ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();">
                  </font></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td height="15"><img src="../images/blank.gif" width="1" height="1"></td>
        </tr>
		<%
			Sql = "SELECT REQUEST_LOGIN.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, REQUEST_LOGIN.DATE_REQ, REQUEST_LOGIN.TEL FROM EMPLOYEE INNER JOIN REQUEST_LOGIN ON EMPLOYEE.EMP_ID = REQUEST_LOGIN.EMP_ID"
			Rs.Open SQL,Session("Conn1"),1,3
			If not Rs.EOF Then
		%>
        <tr> 
          <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="11" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><font size="2" color="#4B0097">รหัส</font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="30%"><div align="center"><font size="2" color="#4B0097">ชื่อ</font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="15%"><div align="center"><font size="2" color="#4B0097">วันที่ขอ</font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="15%"><div align="center"><font size="2" color="#4B0097">เบอร์โทร</font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="30%">&nbsp;</td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="11" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
			  <%
			  While Not Rs.EOF
			  %>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font size="2" color="#4B0097"><%=Rs("EMP_ID")%></font></td></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font size="2" color="#4B0097"><%=Rs("TITLE_THAI")&Rs("NAME_THAI")&" "&Rs("SURNAME_THAI")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font size="2" color="#4B0097"><%=left(FormatDateTime(Rs("DATE_REQ"),1),len(FormatDateTime(Rs("DATE_REQ"),1))-4)&right(FormatDateTime(Rs("DATE_REQ"),1),4)+543%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font size="2" color="#4B0097"><%=Rs("TEL")%></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center">
                    <input type="button" name="Button" value="กำหนดสิทธิ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="document.form1.empid.value='<%=Rs("EMP_ID")%>'; doloaddata();">
                    <input type="button" name="Button" value="ไม่กำหนดสิทธิให้" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.RunWindow('Temp1','save_nocreate_level.asp?empid=<%=Rs("EMP_ID")%>');">
                  </div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
	<%
			  	Rs.MoveNext
				Wend
				Rs.Close			
	%>
              <tr> 
                <td height="1" colspan="11" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
            </table> </td>
        </tr>
	<%end if%>
        <tr>
          <td height="15"><img src="../images/blank.gif" width="1" height="1"></td>
        </tr>	
<%
 if show  <> "" then 
		Sql = "SELECT TOP 100 PERCENT EMP_ID FROM EMPLOYEE WHERE (EMP_ID = '"&empid&"')"
		Rs1.Open Sql, Session("Conn1"),1,3
			

		if not Rs1.EOF and not Rs1.BOF then
			Sql = "SELECT EL_EMPID FROM EMP_LEVEL WHERE (EL_EMPID = '"&empid&"')"
			Rs2.Open Sql, Session("Conn1"),1,3
			
			if Rs2.EOF or Rs2.BOF then
				Sql = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, JOB.EMP_THAI_POSITION_NAME, ORGANIZATION.ORGANIZE_THAI_DESC, PROVINCE.AREA, PROVINCE.PROVINCE FROM EMPLOYEE INNER JOIN JOB ON EMPLOYEE.POSITION_CODE = JOB.POSITION_CODE INNER JOIN ORGANIZATION ON EMPLOYEE.ORGANIZE_CODE = ORGANIZATION.ORGANIZE_CODE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (EMPLOYEE.EMP_ID = '"& empid &"') "
				Rs3.Open Sql, Session("Conn1"),1,3
				
%>
  <tr>
          <td><table width="460" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
			  <tr> 
                <td width="150"><div align="right"><font color="#4B0097" size="2">รหัสพนักงาน 
                    </font></div></td>
                <td width="10" rowspan="9"><img src="../images/blank.gif"></td>
                <td width="300"><font color="#4B0097" size="2"> <%=Rs3("EMP_ID") %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ชื่อ-สกุล</font></div></td>
                <td><font color="#4B0097" size="2"><%=Rs3("TITLE_THAI")&Rs3("NAME_THAI")&"  "&Rs3("SURNAME_THAI")%></font></td>
              </tr>
              <tr> 
                <td height="21"><div align="right"><font color="#4B0097" size="2">ตำแหน่ง</font></div></td>
                <td><font color="#4B0097" size="2" face="MS Sans Serif"><%=Rs3("EMP_THAI_POSITION_NAME")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">สังกัด</font></div></td>
                <td><font color="#4B0097" size="2"><%=Rs3("ORGANIZE_THAI_DESC")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ภาค</font></div></td>
                <td><font size="2" color="#4B0097"><%=Rs3("AREA")%></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">จังหวัด</font></div></td>
                <td><font color="#4B0097" size="2"><%=Rs3("PROVINCE")%></font></td>
              </tr>
			  	<%
					Dim Rsx
					set Rsx = Server.CreateObject("Adodb.RecordSet")
					Sql = "SELECT DATE_REQ FROM REQUEST_LOGIN WHERE EMP_ID = '"& empid &"'"
					Rsx.Open SQL,Session("Conn1"),1,3
				%>
<%
				Dim day1, month1, year1
				Function format_date(chdate)
					if Day(chdate) < 10 then day1= 0&Day(chdate) else day1 = Day(chdate) end if	
					if Month(chdate) < 10 then month1= 0&Month(chdate)  else month1 = Month(chdate) end if
					year1 = Year(chdate)	
					format_date = day1&"/"&month1&"/"&year1
				End Function
%>
<%
	If not Rsx.EOF Then
	opendate1 = format_date(Rsx("DATE_REQ"))
	end if
%>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">วันที่ User 
                    ขอสิทธิใช้งาน</font></div></td>
                <td><input name="showdate1" type="text" class="text" id="showdate1" size="18" readonly value="<%If not Rsx.EOF Then Response.Write(left(FormatDateTime(Rsx("DATE_REQ"),1),len(FormatDateTime(Rsx("DATE_REQ"),1))-4)&right(FormatDateTime(Rsx("DATE_REQ"),1),4)+543) ELSE Response.Write(showdate1) END IF%>"><%Rsx.Close%>
				  <input name="opendate1" type="hidden" id="opendate1" value="<%=opendate1%>">
                  <input name="popdate1" type="button" id="popdate13" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop2.document.form1.opendate1&input2=top.Desktop2.document.form1.showdate1');"></td>
              </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">ระดับสิทธิ</font></div></td>
                <td><select name="level" size="1" id="level" onkeypress="if(window.event.keyCode==13){document.form1.tel.focus();}">
                    <option value="0">กรุณาระบุ</option>
                    <option value="1">1--VIP</option>
                    <option value="2">2--Manager</option>
                    <option value="3">3--Officer</option>
                    <option value="4">4--Admin</option>
                  </select> </td>
				  </tr>
              <tr> 
                <td><div align="right"><font color="#4B0097" size="2">เบอร์โทรศัพท์</font></div></td>
				<%
					Sql = "SELECT TEL FROM REQUEST_LOGIN WHERE EMP_ID = '"& empid &"'"
					Rsx.Open SQL,Session("Conn1"),1,3
				%>
                <td><input name="tel" type="text" class="text" id="tel"  onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}" value="<%If not Rsx.EOF Then Response.Write(Rsx("TEL")) END IF%>" size="20" maxlength="30"></td><%Rsx.Close%>
              </tr>
            </table></td>
        </tr>
		<% else%>
        <tr>
          <td><div align="center">
              <table width="60%" height="26" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
                <tr> 
                  <td width="100%" height="26" valign="bottom" align="center"><br> 
                    <br> <font color="#FF5BFF" style="font-size: 14pt; font-weight: 700">รหัสพนักงาน <%=empid%> มีข้อมูลสิทธิการใช้งานแล้ว <br>
                    ระบบไม่สามารถดำเนินการตามคำสั่งได้</font><br> <br> <br></td>
                </tr>
              </table>
              <font color="#FFFFFF" size="1" face="MS Sans Serif"><b> </b></font></div></td>
        </tr>
		<% end if %>
	<% else %>
        <tr>
          <td><table width="55%" height="26" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%" height="26" valign="bottom" align="center"><br> 
                  <br> <font color="#FF5BFF" style="font-size: 14pt; font-weight: 700">ไม่พบข้อมูลที่ต้องการ</font><br> 
                  <br> <br></td>
              </tr>
<% end if %>
<% end if %>
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td><div align="center"><span style="background-color: #FFFFFF">
              <% if show <> "" then%>
              <font color="#FFFFFF" size="1" face="MS Sans Serif"><b> 
              <input name="send" type="button" id="send" value="บันทึกข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
              </b></font> 
              <% end if %>
              <font color="#4B0097"> 
              <input id="back" type="button" value="กลับหน้าเดิม" name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
              </font></span></div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
<form name="form2" method="post" action="">
	<input name="show" type="hidden" value="1">
	<input name="empid" type="hidden" id="empid">
	</form>
  </center>
</div>
</body>
<script language="JavaScript">
function doloaddata() {
		document.form2.empid.value=document.form1.empid.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
function dosend(){
		if(document.form1.opendate1.value==""){
			alert('กรุณาระบุวันที่ยูสเซอร์ขอสิทธิใช้งาน');
			document.form1.opendate1.focus();
			return;
		}
		if(document.form1.level.value=="0"){
			alert('กรุณาระบุระดับสิทธิ');
			document.form1.level.focus();
			return;
		}
		if(document.form1.tel.value==""){
			alert('กรุณาระบุเบอร์โทรศัพท์');
			document.form1.tel.focus();
			return;
		}
		document.form1.send.disabled=true;
		top.RunWindow('Temp1','temp_save_create_level.asp');
}
</script>

</html>