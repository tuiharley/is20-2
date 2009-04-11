<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	end if
%>



<%
	Dim Sql, Rs
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim  empcode, empname, app_id , cgcode
	cgcode= Request.QueryString("cgcode")
	empcode = Request.QueryString("empcode")
	empname = Request.QueryString("empname")
	app_id = Request.QueryString("app_id")
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" >
<form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="90%"><div align="center"><font size="3"><strong>พนักงาน</strong></font></div></td>
            <td width="10%" ></td>
          </tr>
		    <tr> 
      <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
		  <%
	Sql = "SELECT     APP_EMPAPP.EMP_ID AS empcode, EMPLOYEE.TITLE_THAI as title, EMPLOYEE.NAME_THAI as empname, EMPLOYEE.SURNAME_THAI as empsur  FROM  APP_EMPAPP INNER JOIN EMPLOYEE ON APP_EMPAPP.EMP_ID = EMPLOYEE.EMP_ID WHERE (APP_EMPAPP.APP_ID = '" & app_id & "')"
	Rs.Open Sql,Session("Conn1"),1,3

	if Rs.recordcount <> 0 then
		do while not Rs.EOF 
 %>
          <tr> 
            <td ><div align="left"><font size="2"><%=Rs("empcode")%> - <%=Rs("title") &  "." & Rs("empname") & "  " & Rs("empsur")%></font></div></td>
            <td ><input name="search" type="button" id="search" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.RunWindow('Temp1','delete_search_specialist2.asp?app_id=<%=app_id%>&cgcode=<%=cgcode%>&empcode=<%=Rs("empcode")%>&empcodetmp=<%=empcode%>' ); "></td>
          </tr>
<%
		  		Rs.Movenext
		  loop
	end if
%>
          <tr> 
            <td>&nbsp;</td>
          </tr>
        </table>

</form>

</body>
</html>
