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
	Dim iname, side, post,  Rs, Sql, cgcode, empid, sur, tel, fax, mail, decide, cust_no
	set Rs = Server.CreateObject("Adodb.RecordSet")

	iname = Request.Form("name")
	cgcode = Request.Form("cgcode")
	sur = Request.Form("sur")
	side = Request.Form("side")
	post = Request.Form("post")
	tel = Request.Form("tel")
	fax = Request.Form("fax")
	mail = Request.Form("mail")
	decide = Request.Form("decide")
	empid = Request.Form("empid")
	cust_no = Request.Form("cust_no")
	
	Sql = "UPDATE EMP SET EMP_NAME= '" & iname & "', EMP_SIDE = '"& side &"', EMP_POS = '"& post &"', EMP_SUR = '"& sur &"', EMP_TEL = '"& tel &"', EMP_FAX = '"& fax &"', EMP_MAIL = '"& mail &"', EMP_DECIDE =  "& decide &" WHERE EMP.CG_CODE = '" & cgcode & "' AND EMPID = '" & empid & "'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
<%
	if cust_no = 1 then
%>
	top.Desktop2.document.form1.custname1.value='<%=empid%>';
	top.Desktop2.document.form1.check1.onchange();
<%end if
if cust_no = 2 then
%>
	top.Desktop2.document.form1.custname2.value='<%=empid%>';
	top.Desktop2.document.form1.check2.onchange();
<%end if
if cust_no = 3 then
%>
	top.Desktop2.document.form1.custname3.value='<%=empid%>';
	top.Desktop2.document.form1.check3.onchange();
<%end if%>
</script>
</BODY>
</HTML>