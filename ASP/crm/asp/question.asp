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
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><div align="center"><img src="../images/sub_d.gif" width="390" height="88" style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','ques_add.asp');"></div></td>
    </tr>
    <tr> 
      <td><div align="center"><font color="#4B0097" size="3" onmouseover="this.color='red'" onmouseout="this.color='#4B0097'" style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','ques_add.asp');"><strong>ตั้งคำถามใหม่ได้ที่นี้</strong></font></div></td>
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
    <%
    Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	dim i, total, totalpage, pagesize, pageno, beginrow, endrow
	pageno=Request.Form("pageno")
	pagesize=20

	Sql = "SELECT TOP 100 PERCENT QUEID, TOPIC, EMPID, NOTE, NUM, DATEQUE, IMAGE FROM QUESTION ORDER BY DATEQUE DESC "
	Rs.Open Sql,Session("Conn1"),1,3
	total = Rs.RecordCount
%>
<!--#include file = "finepage.asp"-->
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td width="65%">&nbsp;</td>
            <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();" <%if totalpage<1 then%>style="display:none"<%end if%>>
<%
	for i=1 to totalpage
%>
                <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%>selected<%end if%>>หน้าที่ <%=i%></option>
<%
	next
%>
              </select></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
          <!--#include file = "finepage.asp"-->
          <%
	if not Rs.EOF and not Rs.BOF then
		Rs.Move pagesize*(pageno-1)
		for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
%>
          <tr> 
            <td><table width="100%" height="1" cellpadding="0" cellspacing="0" bordercolor="#9999FF" style="border-collapse: collapse" bgcolor="#FFFFFF" border="1">
                <tr style="cursor:hand" onClick="top.ShowRunWindow('Desktop2','ans_add.asp?queid=<%=Rs("queid")%>');"> 
                  <td width="10%" bgcolor="#FFFFFF" height="1" bordercolor="#FF9900"><div align="center"><img src="../images/<%=Rs("image")%>.gif" border="0"></div></td>
                  <td width="90%" height="1" valign="middle"><font size="2">&nbsp;&nbsp; <font color="#FF0080"><%=Rs("topic")%></font>&nbsp;&nbsp;<strong><font color="#400080">วันและเวลา</font></strong>&nbsp;&nbsp;
				  <font color="#FF0080"><%=left(formatdatetime(Rs("dateque"),1),len(formatdatetime(Rs("dateque"),1))-4)&year(Rs("dateque"))+543&"  "&formatdatetime(Rs("dateque"),3)%></font>&nbsp;&nbsp;
				  <font color="#400080"><strong>จำนวนผู้ตอบ</strong></font>&nbsp;&nbsp;<font color="#FF0080"><strong><%=Rs("num")%> </strong></font></font></td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
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
            <td><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน 
              <%if not Rs.EOF and not Rs.BOF then%>
              <%if Cint(pageno)=Cint(totalpage) then%>
              <%=endrow%> 
              <%else%>
              <%=pagesize%> 
              <%end if%>
              <%else%>
              0 
              <%end if%>
              รายการ จากข้อมูลทั้งหมด <%=Rs.RecordCount%> รายการ ขณะนี้อยู่ที่หน้า 
              <%if not Rs.EOF and not Rs.BOF then%>
              <%=pageno%> 
              <%else%>
              0 
              <%end if%>
              จำนวนทั้งหมดมี <%=totalpage%> หน้า</font></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><div align="center"> </div></td>
    </tr>
  </table>
</form>
</body>
</html>
