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
<body bgcolor="#E8F8FF" onLoad="document.form1.name.focus();">
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
	
	Dim cgcode, nvid, dateef, showdate
	cgcode = Request.QueryString("cgcode")
	nvid = Request.QueryString("nvid")
%>
<form name="form1" method="post" action="">
  <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
<%
	Sql = "SELECT COMPID, NONID, SPEED, NUM, PROMOID, DATEEF FROM NONVOICE_FUTURE WHERE (CG_CODE = '" & cgcode & "') AND (NVID = '" & nvid & "') "
	Rs2.Open SQL, Session("Conn1"),1,3	
%>
    <tr> 
      <td width="22%" height="23"><div align="right"><font color="#4B0097" size="2"><strong><font color="#4B0097" size="2">�������ԡ��</font></strong></font></div></td>
      <td width="78%">&nbsp; <select name="compid" id="compid" onkeyPress="if(window.event.keyCode==13){document.form1.service.focus();}">
          <option value="">��س����͡�������ԡ��</option>
          <%
	Sql = "SELECT TOP 100 PERCENT COMPID, COMPNAME FROM COMPANY ORDER BY COMPID "
	Rs.Open SQL, Session("Conn1"),1,3	

	do while not Rs.EOF
%>
          <option value="<%=Rs("COMPID")%>" <%if Cint(Rs("COMPID"))=Cint(Rs2("COMPID")) then%>selected<%end if%>><%=Rs("COMPNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select>
        <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>">
        <input name="nvid" type="hidden" id="nvid" value="<%=nvid%>"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">��������ԡ��</font></strong></font></div></td>
      <td>&nbsp; <select name="service" id="select" onkeyPress="if(window.event.keyCode==13){document.form1.speed.focus();}">
          <option value="">��س����͡��������ԡ��</option>
          <%
	Sql = "SELECT TOP 100 PERCENT NONID, NONNAME FROM NONVOICE_SERVICE ORDER BY NONID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("NONID")%>" <%if Cint(Rs("NONID"))=Cint(Rs2("NONID")) then%>selected<%end if%>><%=Rs("NONNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>��������</strong></font></div></td>
      <td>&nbsp; <select name="speed" id="select2" onkeyPress="if(window.event.keyCode==13){document.form1.num.focus();}">
          <option value="">��س����͡��������</option>
          <%
	Sql = "SELECT TOP 100 PERCENT SPEEDID, SPEEDNAME FROM SPEED ORDER BY SPEEDID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("SPEEDID")%>" <%if Cint(Rs("SPEEDID"))=Cint(Rs2("SPEED")) then%>selected<%end if%>><%=Rs("SPEEDNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
	<tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>�������</strong></font></div></td>
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
        <input name="pomoid" type="hidden" id="pomoid" value="<%=Rs2("PROMOID")%>"> <input name="pro" type="button" id="pro" value="���͡��" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if(document.form1.compid.value!='' && document.form1.service.value!=''){top.ShowRunCenterSizeWindow('DialogSS1','350px','650px','pomotion.asp?voice=0&compid='+document.form1.compid.value+'&id='+document.form1.service.value);}"> 
        <input name="del" type="button" id="del" value="ź" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="document.form1.pomo.value=''; document.form1.pomoid.value='';"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">�ӹǹ</font></strong></font></div></td>
      <td>&nbsp;&nbsp;<input name="num" type="text" class="text" id="num" value="<%=Rs2("NUM")%>" size="10" maxlength="10" onkeyPress="if(window.event.keyCode==13){document.form1.dateef.focus();}"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>�����ѹ���</strong></font></div></td>
      <td>&nbsp; 
        <input name="showdate" type="text" class="text" id="showdate" size="18" readonly value="<%=left(FormatDateTime(Rs2("DATEEF"),1),len(FormatDateTime(Rs2("DATEEF"),1))-4)&right(FormatDateTime(Rs2("DATEEF"),1),4)+543%>"> <input name="dateef" type="hidden" id="dateef" value="<%=Rs2("DATEEF")%>">
        <input name="popdate" type="button" id="popdate" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog2','280','120','250px','260px','calendar-sdmy-ddmy_dia2.asp?input1=top.Dialog1.document.form1.dateef&input2=top.Dialog1.document.form1.showdate');"></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="  �ѹ�֡������  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  �Դ˹�ҵ�ҧ  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">
function dosend(){
	if(document.form1.compid.value==""){
		alert('��س��кؼ������ԡ��');
		document.form1.compid.focus();
		return;
	}
	if(document.form1.service.value==""){
		alert('��س��кػ�������ԡ��');
		document.form1.service.focus();
		return;
	}
	if(document.form1.speed.value==""){
		alert('��س��кؤ�������');
		document.form1.speed.focus();
		return;
	}
	if(document.form1.num.value==""){
		alert('��س��кبӹǹ');
		document.form1.num.focus();
		return;
	}
	if(isFinite(document.form1.num.value)==false){
		alert('��س��кبӹǹ���١��ͧ');
		document.form1.num.focus();
		return;
	}

	if(confirm('�׹�ѹ��úѹ�֡������')){
		top.RunWindow('Temp1','temp_save_sub_custmain_nonvoice_future_edit.asp');
	}
}
</script>
</body>
</html>