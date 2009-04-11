<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
<body bgcolor="#E8F8FF" onLoad="document.form1.topic.focus();">
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
    <form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><div align="center"><img border="0" src="../images/sub_c.gif"></div></td>
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
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="70"><div align="right"><font color="#4B0097" size="2"><strong>หัวข้อคำถาม</strong></font></div></td>
            <td width="10">&nbsp;</td>
            <td width="710"><input name="topic" type="text" class="text" id="topic" size="80" maxlength="100" onKeyPress="if(window.event.keyCode==13){document.form1.detail.focus();}"></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="right"><font color="#4B0097" size="2"><strong>รายละเอียด</strong></font></div></td>
            <td>&nbsp;</td>
            <td><textarea name="detail" cols="80" rows="5" id="detail" onKeyPress="if(this.value.length>=500){event.returnValue=false;}"></textarea></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="right"><font color="#4B0097" size="2"><strong>ตัวนำโชค</strong></font></div></td>
            <td>&nbsp;</td>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p01" name="R1" checked>
                    <img src="../images/p01.gif" width="44" height="32"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p02" name="R1">
                    <img src="../images/p02.gif" width="44" height="32"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p03" name="R1">
                    <img src="../images/p03.gif" width="44" height="32"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p04" name="R1">
                    <img src="../images/p04.gif" width="44" height="32"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p05" name="R1">
                    <img src="../images/p05.gif" width="45" height="31"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p06" name="R1">
                    <img src="../images/p06.gif" width="41" height="35"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p07" name="R1">
                    <img src="../images/p07.gif" width="29" height="32"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p08" name="R1">
                    <img src="../images/p08.gif" width="35" height="32"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p09" name="R1">
                    <img src="../images/p09.gif" width="33" height="37"> </font></td>
                  <td width="10%"><font face="MS Sans Serif"> 
                    <input type="radio" value="p10" name="R1">
                    <img src="../images/p10.gif" width="41" height="34"> </font></td>
                </tr>
              </table></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><div align="center">
          <input name="send" type="button" id="send" style="cursor:hand" value="   บันทึก   " onClick="dosubmit();">&nbsp;&nbsp;
          <input name="close" type="button" id="close" value="ปิดหน้าต่าง" style="cursor:hand" onClick="top.HideWindow(self.name)">
        </div></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
<script LANGUAGE="JavaScript">
function dosubmit(){
	if(document.form1.topic.value==""){
		alert('กรุณาระบุหัวข้อคำถาม');
		document.form1.questopic.focus();
		return;
	}
	if (document.form1.detail.value==""){
		alert('กรุณาระบุรายละเอียดคำถาม');
		document.form1.quesname.focus();
		return;
	}
	top.RunWindow('Temp1','temp_save_ques_add.asp');
}
</script>
</body>
</html>
