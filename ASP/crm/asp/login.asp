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
</head>
<body topmargin="35" bgcolor="#ADADD6" onLoad="document.login.username.focus();">
	<form name="login" id="login" action="check_level.asp" method="post">
      <table width="65%" height="400" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="30">&nbsp;</td>
        </tr>
        <tr>
          <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" bordercolor="#000000" background="../images/b_login.gif" style="border-collapse: collapse">
          <tr> 
            <td align="center"><img border="0" src="../images/h_login.gif" width="543" height="209"></td>
          </tr>
          <tr> 
            <td><table	width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
                <tr> 
                  <td width="43%" align="right"><font size="2" color="#FFFFFF"><b>User 
                    Login</b>(E-Mail)</font> </td>
                  <td width="2%"><img src="../images/blank.gif" width="1" height="1"></td>
                  <td width="55%"><input type="text" name="username" id="username" class="text" size="15" onKeyPress="if(window.event.keyCode==13){document.login.password.focus();}"> 
                    <font color="#FFFFFF" size="2">@ttt.co.th</font></td>
                </tr>
                <tr> 
                  <td align="right"><font size="2" color="#FFFFFF"><b>Password</b></font></td>
                  <td><img src="../images/blank.gif" width="1" height="1"></td>
                  <td><font color="#FFFFFF"> 
                    <input type="password" name="password" id="password" class="text" size="15" onKeyPress="if(window.event.keyCode==13){document.login.B1.focus();}">
                    </font></td>
                </tr>
		       <tr>
               		
                  <td height="10" colspan="3"><img src="../images/blank.gif" width="1" height="1"></td>
          		</tr>
                <tr> 
                  <td colspan="3"><div align="center"> 
                      <input type="button" value="เข้าระบบ" name="B1" id="B1" onclick="dosend();">
                    </div></td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td height="20" valign="top">&nbsp;</td>
          </tr>
          <tr> 
            <td><div align="right"> 
                <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="51%">
                  <tr> 
                    <td height="9"><p align="center"><font size="2" color="#FFFF00" style="cursor:hand" onclick="top.ShowRunWindow('FullPage','request_level.asp');">ขอสิทธิใช้งาน</font></td>
                  </tr>
                </table>
              </div></td>
          </tr>
          <tr> 
            <td height="19"><p align="center"><font size="2" color="#FFCCFF">มีปัญหาการใช้งานระบบ 
                CRM คลิกที่นี่ -&gt; &nbsp;</font><font size="2" color="#FFFF00"> 
                <B><a href="mailto:jiraphongp@ttt.co.th"><font color="#FFCCFF">คุณจิระพงศ์ 
                เผ่าดิษฐ์</font></a></B></font><font size="2" color="#FFCCFF">&nbsp; 
                หรือโทร<b> 02-6932100 </b>ต่อ<b> 4606</b></font> </td>
          </tr>
          <tr> 
            <td height="20">&nbsp;</td>
          </tr>
        </table></td>
        </tr>
      </table>
	</form>
<script language="JavaScript">
function dosend(){
	top.RunWindow('Temp1','temp_check_level.asp');
}
</script>
</body>
</html>
