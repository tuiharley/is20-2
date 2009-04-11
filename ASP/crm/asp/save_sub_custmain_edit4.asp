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
	Dim iname, side, post,  Rs, Sql, cgcode, empid, sur, tel, fax, mail, decide
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

	Sql = "UPDATE EMP SET EMP_NAME= '" & iname & "', EMP_SIDE = '"& side &"', EMP_POS = '"& post &"', EMP_SUR = '"& sur &"', EMP_TEL = '"& tel &"', EMP_FAX = '"& fax &"', EMP_MAIL = '"& mail &"', EMP_DECIDE =  "& decide &" WHERE EMP.CG_CODE = '" & cgcode & "' AND ID = '" & empid & "'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add4.asp?cgcode=<%=cgcode%>');
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>