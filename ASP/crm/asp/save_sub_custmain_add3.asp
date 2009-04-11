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
	Dim social_id, post, Rs, Sql, cgcode, maxmemid
	set Rs = Server.CreateObject("Adodb.RecordSet")

	social_id = Request.Form("social_id")
	post = Request.Form("post")
	cgcode = Request.Form("cgcode")
	maxmemid = 1
	
	Sql = "SELECT MAX(MEMID) AS MEMID FROM MEMBER WHERE (CG_CODE = '" & cgcode &"') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not isnull(Rs("MEMID")) then
			maxmemid = Rs("MEMID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO MEMBER(CG_CODE, MEMID, SOCIAL_ID, POSTION)  VALUES ('" & cgcode &"'," & maxmemid &"," & social_id &", '" & post & "')"
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "UPDATE CUST_GROUP  SET CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add3.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
</script>
</BODY>
</HTML>