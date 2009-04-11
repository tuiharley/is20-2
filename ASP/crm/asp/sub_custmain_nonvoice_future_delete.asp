<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.compid.focus();">
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
	Dim Rs, Rs2, Rs3, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
	
	Dim cgcode, nvid
	cgcode = Request.QueryString("cgcode")
	nvid = Request.QueryString("nvid")
%>
<form name="form1" method="post" action="">
  <table width="490" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%
	Sql = "SELECT NONVOICE_FUTURE.PROMOID, COMPANY.COMPNAME, NONVOICE_SERVICE.NONNAME, SPEED.SPEEDNAME, NONVOICE_FUTURE.NUM, NONVOICE_FUTURE.DATEEF FROM NONVOICE_FUTURE INNER JOIN COMPANY ON NONVOICE_FUTURE.COMPID = COMPANY.COMPID INNER JOIN SPEED ON NONVOICE_FUTURE.SPEED = SPEED.SPEEDID INNER JOIN NONVOICE_SERVICE ON NONVOICE_FUTURE.NONID = NONVOICE_SERVICE.NONID WHERE (CG_CODE = '" & cgcode & "') AND (NVID = '" & nvid & "') "
	Rs2.Open SQL, Session("Conn1"),1,3	
%>
    <tr> 
      <td width="25%"><div align="right"><font color="#4B0097" size="2"><strong><font color="#4B0097" size="2">ผู้ให้บริการ</font></strong></font></div></td>
      <td width="75%">&nbsp; <input name="textfield" type="text" class="text" value="<%=Rs2("COMPNAME")%>"> 
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
        <input name="nvid" type="hidden" id="nvid" value="<%=nvid%>"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></font></div></td>
      <td>&nbsp; <input name="textfield2" type="text" class="text" value="<%=Rs2("NONNAME")%>"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>ความเร็ว</strong></font></div></td>
      <td>&nbsp; <input name="textfield3" type="text" class="text" value="<%=Rs2("SPEEDNAME")%>"></td>
    </tr>
	<tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>โปรโมชั่น</strong></font></div></td>
      <td>&nbsp; <textarea name="pomo" cols="40" rows="3" class="text" id="pomo" onKeyPress="if(window.event.keyCode==13){document.form1.num.focus();}" readonly>
<%	if Rs2("PROMOID")<> "" then
		SQL = "SELECT POMONAME FROM POMOTION WHERE (POMOID = " & Rs2("PROMOID") & ") "
		Rs3.Open SQL, Session("Conn1"),1,3
%>	
<%=Rs3("POMONAME")%>
<%	Rs3.Close
		end if 
%>
	  </textarea> 
      </td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">จำนวน</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="num" type="text" class="text" id="num" value="<%=Rs2("NUM")%>" size="10" maxlength="10" onkeyPress="if(window.event.keyCode==13){document.form1.total.focus();}"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>ภายในวันที่</strong></font></div></td>
      <td>&nbsp; 
        <input name="dateef" type="text" class="text" id="dateef" size="18"  value="<%=left(FormatDateTime(Rs2("DATEEF"),1),len(FormatDateTime(Rs2("DATEEF"),1))-4)&right(FormatDateTime(Rs2("DATEEF"),1),4)+543%>" readonly="">
      </td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="  ลบข้อมูล  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosend(){
	if(confirm('ยืนยันการบันทึกข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_custmain_nonvoice_future_delete.asp');
		top.HideWindow('Dialog1');
	}
}
</script>
</body>
</html>
