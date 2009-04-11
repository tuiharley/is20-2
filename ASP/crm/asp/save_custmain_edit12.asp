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
	Dim  cgcode, sname, band, soi, street, tumbol, district, province, postcode , cgaddr_id
	cgcode = Request.Form("cgcode")
	cgaddr_id = Request.Form("cgaddr_id")
	sname = Request.Form("sname")
	band = Request.Form("band")
	soi = Request.Form("soi")
	street = Request.Form("street")
	tumbol = Request.Form("tumbol")
	district = Request.Form("district")
	province = Request.Form("province")
	postcode = Request.Form("postcode")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	
	Sql = "UPDATE CG_ADDRESS SET CGADDR_SNAME = '" & sname & "', CGADDR_BAND = '" & band & "' , CGADDR_SOI = '" & soi & "', CGADDR_STREET = '" & street & "', CGADDR_TUMBOL = '" & tumbol & "', CGADDR_DISTRICT = '" & district & "', CGADDR_PROVINCE = '" & province & "', CGADDR_POSTCODE = '" & postcode & "'  WHERE CGADDR_ID = "& cgaddr_id 
	Rs.Open Sql,Session("Conn1"),1,3
	%>
<script language=javascript>
			top.Desktop3.document.form1.send.disabled=false;
</script>
</BODY>
</HTML>
