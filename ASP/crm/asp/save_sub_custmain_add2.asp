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
	Dim compname, Rs, Sql, cgcode, maxscid
	set Rs = Server.CreateObject("Adodb.RecordSet")

	compname = Request.Form("compname")
	cgcode = Request.Form("cgcode")
	maxscid = 1

	Sql = "SELECT MAX(SCID) AS SCID FROM SUB_COMPANY WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not isnull(Rs("SCID")) then
			maxscid = Rs("SCID")+1
		end if
	end if
	Rs.Close
	
	Sql = "INSERT INTO SUB_COMPANY(CG_CODE, SCID, COMP_NAME)  VALUES ('" & cgcode & "'," & maxscid & ", '"& compname & "')"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add2.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
</script>
</BODY>
</HTML>