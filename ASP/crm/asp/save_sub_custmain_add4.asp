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
	Dim iname, side, post,  Rs, Sql, cgcode, maxid, maxempid, sur, decide, tel, fax, mail
	set Rs = Server.CreateObject("Adodb.RecordSet")

	iname = Request.Form("name")
	cgcode = Request.Form("cgcode")
	sur = Request.Form("sur")
	side = Request.Form("side")
	post = Request.Form("post")
	decide = Request.Form("decide")
	tel = Request.Form("tel")
	fax = Request.Form("fax")
	mail = Request.Form("mail")

	Sql = "SELECT MAX(EMPID) AS EMPID FROM EMP "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if isnull(Rs("EMPID")) then
			maxempid = 1
		else
			maxempid = Rs("EMPID")+1
		end if
	end if
	Rs.Close

	Sql = "SELECT MAX(ID) AS ID FROM EMP WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if isnull(Rs("ID")) then
			maxid = 1
		else
			maxid = Rs("ID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO EMP(EMPID, CG_CODE, ID, EMP_NAME, EMP_SUR, EMP_SIDE, EMP_POS, EMP_DECIDE, EMP_TEL, EMP_FAX, EMP_MAIL)  VALUES (" & maxempid & ",'" & cgcode & "'," & maxid & ", '"& iname & "', '"& sur &"', '"& side &"', '"& post &"', "& decide &", '"& tel &"', '"& fax &"', '"& mail &"')"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add4.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
	top.HideWindow('Dialog1');
</script>
</BODY>
</HTML>