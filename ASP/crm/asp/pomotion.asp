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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
%>
<%
	Dim voice, compid, id
	voice = Request.QueryString("voice")
	compid = Request.QueryString("compid")
	id = Request.QueryString("id")
%>
<form name="form1" method="post" action="">
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td height="1" colspan="7" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
      <td width="45%"><div align="center"><font color="#4B0097"><strong><font size="2">ชื่อโปรโมชั่น</font></strong></font></div></td>
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
      <td width="45%"><div align="center"><font color="#4B0097"><strong><font size="2">รายละเอียดโปรโมชั่น</font></strong></font></div></td>
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
      <td width="10%">&nbsp;</td>
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td height="1" colspan="7" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <%
	Sql = "SELECT POMOID, POMONAME FROM POMOTION WHERE (COMPID = " & compid & ") AND (TYPE = " & voice & ") AND (ID = " & id & ") "
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
    <tr> 
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
      <td valign="top"><font size="2"><%=Rs("POMONAME")%></font></td>
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
      <td><font size="2">
<%
	Dim i
	i=1
	Sql = "SELECT POMOTION_PROPERTIES.PPNAME FROM POMOTION_DETAIL INNER JOIN POMOTION_PROPERTIES ON POMOTION_DETAIL.PPID = POMOTION_PROPERTIES.PPID WHERE (POMOTION_DETAIL.POMOID = " & Rs("POMOID") & ") "
	Rs2.Open SQL, Session("Conn1"),1,3
	do while not Rs2.EOF	
%>
	  <%=i%>&nbsp;&nbsp;<%=Rs2("PPNAME")%><br>
<%
		Rs2.MoveNext
		i=i+1
	loop
	Rs2.Close
%>
	  </font></td>
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
      <td><div align="center"> 
          <input type="button" name="Button" value="เลือก" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doclick('<%=Rs("POMOID")%>','<%=Rs("POMONAME")%>');">
        </div></td>
      <td width="1" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <tr> 
      <td height="1" colspan="7" bgcolor="#FFFFFF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
    <%
		Rs.MoveNext
	loop
	Rs.Close
%>
    <tr> 
      <td height="1" colspan="7"> <div align="center"> 
          <input type="button" name="Button" value="ปิดหน้าต่าง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
        </div></td>
    </tr>
  </table>
  <div align="center"></div>
</form>
<script language="JavaScript">
function doclick(id, name){
	top.Dialog1.document.form1.pomo.value = name;
	top.Dialog1.document.form1.pomoid.value = id;
	top.HideWindow(self.name);
}
</script>
</body>
</html>
