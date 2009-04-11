<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
%>
<HTML>
<HEAD>
	<meta http-equiv=Expires content=0>
	<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
	<link href=/include/stylesheet.css rel=stylesheet type=text/css>
</HEAD>
<BODY>
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
	Dim Rs, Sql, cgcode, empid
	set Rs = Server.CreateObject("Adodb.RecordSet")

	empid = Request.QueryString("empid")
	cgcode = Request.QueryString("cgcode")

if empid<>"" then
	Sql = "SELECT EMP_NAME, EMP_SUR, EMP_TEL, EMP_FAX, EMP_MAIL, CG_CODE, EMPID FROM EMP WHERE (CG_CODE = '" & cgcode & "') AND (EMPID = " & empid & ") "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop2.document.form1.empname.value='<%=Rs("EMP_NAME")&" "&Rs("EMP_SUR")%>'; 
	top.Desktop2.document.form1.APP_TEL_CONTACT.value='<%=Rs("EMP_TEL")%>'; 
	top.Desktop2.document.form1.APP_FAX_NO.value='<%=Rs("EMP_FAX")%>'; 
	top.Desktop2.document.form1.APP_MAIL.value='<%=Rs("EMP_MAIL")%>'; 
</script>
<%else%>
<script language=javascript>
	top.Desktop2.document.form1.empname.value=''; 
	top.Desktop2.document.form1.APP_TEL_CONTACT.value=''; 
	top.Desktop2.document.form1.APP_FAX_NO.value=''; 
	top.Desktop2.document.form1.APP_MAIL.value=''; 
</script>
<%end if%>
</BODY>
</HTML>