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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
%>
<%
	Dim cgcode
	cgcode = Request.QueryString("cgcode")
%>
<form name="form1" method="post" action="">
  <table width="500" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="22%"><div align="right"><font color="#4B0097" size="2"><strong><font color="#4B0097" size="2">�������ԡ��</font></strong></font></div></td>
      <td width="78%">&nbsp; <select name="compid" id="compid" onkeyPress="if(window.event.keyCode==13){document.form1.service.focus();}">
          <option value="">��س����͡�������ԡ��</option>
          <%
	Sql = "SELECT TOP 100 PERCENT COMPID, COMPNAME FROM COMPANY ORDER BY COMPID "
	Rs.Open SQL, Session("Conn1"),1,3	

	do while not Rs.EOF
%>
          <option value="<%=Rs("COMPID")%>"><%=Rs("COMPNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select> <input name="cgcode" type="hidden" id="cgcode" value="<%=cgcode%>"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">��������ԡ��</font></strong></font></div></td>
      <td>&nbsp; <select name="service" id="service" onkeyPress="if(window.event.keyCode==13){document.form1.speed.focus();}">
          <option value="">��س����͡��������ԡ��</option>
          <%
	Sql = "SELECT TOP 100 PERCENT NONID, NONNAME FROM NONVOICE_SERVICE ORDER BY NONID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("NONID")%>"><%=Rs("NONNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>��������</strong></font></div></td>
      <td>&nbsp; <select name="speed" id="speed" onkeyPress="if(window.event.keyCode==13){document.form1.num.focus();}">
          <option value="">��س����͡��������</option>
          <%
	Sql = "SELECT TOP 100 PERCENT SPEEDID, SPEEDNAME FROM SPEED ORDER BY SPEEDID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("SPEEDID")%>"><%=Rs("SPEEDNAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
        </select> 
		<font color="#4B0097" size="2"><strong>Ratio<font color="#4B0097" size="2">
        <select name="ratio"  id="ratio"  onkeyPress="if(window.event.keyCode==13){document.form1.ratio.focus();}">
		 <option value="">�����</option>
          <%
	Sql = "SELECT  RATIOID, RATIONAME FROM RATIO ORDER BY RATIOID "
	Rs.Open SQL, Session("Conn1"),1,3	

do while not Rs.EOF
%>
          <option value="<%=Rs("RATIOID")%>"><%=Rs("RATIONAME")%></option>
          <%
	Rs.Movenext
loop
Rs.Close
%>
		</select>
        </font></strong></font><font color="#4B0097" size="2"><strong>(�����)</strong></font>
      </td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>�������</strong></font></div></td>
      <td>&nbsp;<strong><font color="#4B0097" size="2"> 
        <textarea name="pomo" cols="40" rows="3" class="text" id="pomo" onKeyPress="if(window.event.keyCode==13){document.form1.total.focus();}" readonly></textarea>
        <input name="pomoid" type="hidden" id="pomoid">
        <input name="pro" type="button" id="pro" value="���͡��" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="if(document.form1.compid.value!='' && document.form1.service.value!=''){top.ShowRunCenterSizeWindow('DialogSS1','350px','650px','pomotion.asp?voice=1&compid='+document.form1.compid.value+'&id='+document.form1.service.value);}">
        <input name="del" type="button" id="del2" value="ź" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="document.form1.pomo.value=''; document.form1.pomoid.value='';">
        </font></strong></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font color="#4B0097" size="2">�ӹǹ</font></strong></font></div></td>
      <td>&nbsp;<strong><font color="#4B0097" size="2"> 
        <input name="num" type="text" class="text" id="num" size="10" maxlength="10" onkeyPress="if(window.event.keyCode==13){document.form1.total.focus();}">
        ǧ�� </font></strong></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097" size="2"><strong>��Һ�ԡ�����</strong></font></div></td>
      <td>&nbsp; <input name="total" type="text" class="text" id="total" size="15" maxlength="20" onkeyPress="if(window.event.keyCode==13){document.form1.setup.focus();}"></td>
    </tr>
    <tr> 
      <td><div align="right"><font color="#4B0097"><strong><font size="2">��Һ�ԡ�õԴ���</font></strong></font></div></td>
      <td>&nbsp; <input name="setup" type="text" class="text" id="setup" size="15" maxlength="20" onkeyPress="if(window.event.keyCode==13){document.form1.send.focus();}"></td>
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
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2">&nbsp;</td>
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
	if(document.form1.total.value==""){
		alert('��س��кؤ�Һ�ԡ�����');
		document.form1.total.focus();
		return;
	}
	if(isFinite(document.form1.total.value)==false){
		alert('��س��кؤ�Һ�ԡ��������١��ͧ');
		document.form1.total.focus();
		return;
	}
	if(document.form1.setup.value==""){
		alert('��س��кؤ�Һ�ԡ�õԴ���');
		document.form1.setup.focus();
		return;
	}
	if(isFinite(document.form1.setup.value)==false){
		alert('��س��кؤ�Һ�ԡ�õԴ������١��ͧ');
		document.form1.setup.focus();
		return;
	}

	if(confirm('�׹�ѹ��úѹ�֡������')){
		top.RunWindow('Temp1','temp_save_sub_nonvoice_add.asp');
		top.RunWindow('Dialog1','sub_custmain_nonvoice_add.asp');
	}
}
</script>
</body>
</html>
