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
	Dim ObjRegExp
	set ObjRegExp = New RegExp
	ObjRegExp.Global = True
	ObjRegExp.IgnoreCase = True
	ObjRegExp.Pattern = chr(13)

    Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	
	Dim queid
	queid = Request.QueryString("queid")
%>
<form action="" method="post" name="form1">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><div align="center"><img src="../images/sub_d.gif" width="390" height="88"></div></td>
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
      <td><table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
          <%
	Sql = "SELECT QUESTION.TOPIC, QUESTION.EMPID, QUESTION.NOTE, QUESTION.DATEQUE, QUESTION.IMAGE, EMPLOYEE.EMAIL, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM QUESTION INNER JOIN EMPLOYEE ON QUESTION.EMPID = EMPLOYEE.EMP_ID WHERE (QUESTION.QUEID = "&queid&") "
	Rs.Open Sql,Session("Conn1"),1,3
%>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="100" bgcolor="#9999FF"><div align="right"><font color="#4B0097" size="2"><strong>หัวข้อคำถาม</strong></font></div></td>
            <td width="10" bgcolor="#9999FF">&nbsp;</td>
            <td width="640" bgcolor="#9999FF"><font size="2"><%=Rs("topic")%></font></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td bgcolor="#CCCCFF"><div align="right"><font color="#4B0097" size="2"><strong>รายละเอียด</strong></font></div></td>
            <td bgcolor="#CCCCFF">&nbsp;</td>
            <td bgcolor="#CCCCFF"><font size="2"><%=ObjRegExp.Replace(Rs("note"),"<br>")%></font></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td colspan="3" bgcolor="#FFFFFF"><font size="2"><img src="../images/<%=Rs("image")%>.gif" width="44" height="32"> 
              <strong>จากคุณ</strong> <font color="#FF0080"><%=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")&"  ("&Rs("EMPID")&")  "&Rs("EMAIL")%></font> 
              <strong>วัน/เวลา</strong><font color="#FF0080"><%=left(formatdatetime(Rs("dateque"),1),len(formatdatetime(Rs("dateque"),1))-4)&year(Rs("dateque"))+543&"  "&formatdatetime(Rs("dateque"),3)%></font></font></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td height="10" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
	Rs.Close
	
	Sql = "SELECT ANSWER.NUM, ANSWER.EMPID, ANSWER.DATEANS, ANSWER.NOTE, ANSWER.IMAGE, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, EMPLOYEE.EMAIL FROM ANSWER INNER JOIN EMPLOYEE ON ANSWER.EMPID = EMPLOYEE.EMP_ID WHERE (ANSWER.QUEID = "&queid&") ORDER BY NUM DESC "
	Rs.Open Sql,Session("Conn1"),1,3
	
	do while not Rs.EOF
%>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td bgcolor="#CCCCFF"><div align="right"><font color="#4B0097" size="2"><strong>คำตอบที่ 
                <%=Rs("num")%></strong></font></div></td>
            <td bgcolor="#CCCCFF">&nbsp;</td>
            <td bgcolor="#CCCCFF"><font size="2"><%=ObjRegExp.Replace(Rs("note"),"<br>")%></font></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td colspan="3" bgcolor="#FFFFFF"><font size="2"><img src="../images/<%=Rs("image")%>.gif" width="44" height="32"> 
              <strong>จากคุณ</strong> <font color="#FF0080"> <%=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")&"  ("&Rs("EMPID")&")  "&Rs("EMAIL")%> 
              </font> <strong>วัน/เวลา</strong><font color="#FF0080"> <%=left(formatdatetime(Rs("dateans"),1),len(formatdatetime(Rs("dateans"),1))-4)&year(Rs("dateans"))+543&"  "&formatdatetime(Rs("dateans"),3)%> 
              </font></font></td>
            <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#00CCFF"> 
            <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td height="10" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
		Rs.MoveNext
	loop
%>
        </table>
        <img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><div align="center"> 
          <table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr bgcolor="#00CCFF"> 
              <td height="1" colspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
            </tr>
            <tr> 
              <td width="1" bgcolor="#00CCFF"><img src="../images/blank.gif" width="1" height="1"></td>
              <td width="70"><div align="right"><font color="#4B0097" size="2"><strong>คำตอบ</strong></font></div></td>
              <td width="10">&nbsp;</td>
              <td width="710"><textarea name="detail" cols="80" rows="5" id="detail" onKeyPress="if(this.value.length>=500){event.returnValue=false;}"></textarea></td>
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
          </table>
        </div></td>
    </tr>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td><div align="center">
          <input name="send" type="button" id="send" value="   บันทึก   " style="cursor:hand" onClick="top.RunWindow('Temp1','temp_save_ans_add.asp');">&nbsp;&nbsp;
          <input type="button" name="Button" value="ปิดหน้าต่าง" style="cursor:hand" onClick="top.HideWindow(self.name)">
          <input name="queid" type="hidden" id="queid" value="<%=queid%>">
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
</body>
</html>			 