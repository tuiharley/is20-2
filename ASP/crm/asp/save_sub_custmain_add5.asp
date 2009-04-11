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
	Dim iname, side, post,  Rs, Sql, cgcode, maxheadid
	set Rs = Server.CreateObject("Adodb.RecordSet")

	iname = Request.Form("name")
	cgcode = Request.Form("cgcode")
	side = Request.Form("side")
	post = Request.Form("post")
	maxheadid = 0

	Sql = "SELECT MAX(HEADID) AS HEADID FROM HEAD WHERE (CG_CODE = '" & cgcode &"') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not isnull(Rs("HEADID")) then
			maxheadid = Rs("HEADID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO HEAD(CG_CODE, HEADID, HEAD_NAME, HEAD_SIDE, HEAD_POS)  VALUES ('" & cgcode & "'," & maxheadid & ", '"& iname & "', '"& side &"', '"& post &"')"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add5.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
</script>
</BODY>
</HTML>