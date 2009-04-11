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
	Dim Rs, Sql, cgcode, empid3
	set Rs = Server.CreateObject("Adodb.RecordSet")

	empid3 = Request.QueryString("empid3")
	cgcode = Request.QueryString("cgcode")

if empid3<>"" then
	Sql = "SELECT EMP_NAME, EMP_SUR, EMP_TEL, EMP_FAX, EMP_MAIL, CG_CODE, EMPID FROM EMP WHERE (CG_CODE = '" & cgcode & "') AND (EMPID = " & empid3 & ") "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop2.document.form1.custname3.value='<%=Rs("EMP_NAME")&" "&Rs("EMP_SUR")%>'; 
	top.Desktop2.document.form1.custtel3.value='<%=Rs("EMP_TEL")%>'; 
	top.Desktop2.document.form1.custfax3.value='<%=Rs("EMP_FAX")%>'; 
	top.Desktop2.document.form1.custmail3.value='<%=Rs("EMP_MAIL")%>';
</script>
<%else%>
<script language=javascript>
	top.Desktop2.document.form1.custname3.value=''; 
	top.Desktop2.document.form1.custtel3.value=''; 
	top.Desktop2.document.form1.custfax3.value=''; 
	top.Desktop2.document.form1.custmail3.value=''; 
</script>
<%end if%>
</BODY>
</HTML>