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
<form name="form1" action="">
<input name="empid" type="hidden" value="<%=empid%>">
</form>
<script language=javascript>
	top.Desktop2.document.form1.custname1.value='<%=Rs("EMP_NAME")&" "&Rs("EMP_SUR")%>'; 
	top.Desktop2.document.form1.custtel1.value='<%=Rs("EMP_TEL")%>'; 
	top.Desktop2.document.form1.custfax1.value='<%=Rs("EMP_FAX")%>'; 
	top.Desktop2.document.form1.custmail1.value='<%=Rs("EMP_MAIL")%>';
</script>
<%else%>
<script language=javascript>
	top.Desktop2.document.form1.custname1.value=''; 
	top.Desktop2.document.form1.custtel1.value=''; 
	top.Desktop2.document.form1.custfax1.value=''; 
	top.Desktop2.document.form1.custmail1.value=''; 
</script>
<%end if%>
</BODY>
</HTML>