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
	Dim  cgcode, bus_website2, bus_phone2, bus_fax2, bus_companyemp2, bus_branchemp2, select_type, text_area, smt
	cgcode = Request.Form("cgcode")
	bus_website2 = Request.Form("bus_website2")
	bus_phone2 = Request.Form("bus_phone2")
	bus_fax2 = Request.Form("bus_fax2")
	bus_companyemp2 = Request.Form("bus_companyemp2")
	bus_branchemp2 = Request.Form("bus_branchemp2")
	select_type = Request.Form("select_type")
	text_area = Request.Form("text_area")
	smt = Request.Form("smt")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	

	Sql = "INSERT INTO CUST_DATA(CG_CODE, WEB, TEL, FAX, NUM_EMP1, NUM_EMP2, RELATION, DETAIL) VALUES('" & cgcode & "', '" & bus_website2 & "','" & bus_phone2 & "' ,'" & bus_fax2 & "'," & bus_companyemp2 & "," & bus_branchemp2 & "," & select_type & ",'" & text_area & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	Sql = "UPDATE CUST_GROUP  SET SMT = '" & smt & "', CG_DATA = '1' WHERE CUST_GROUP.CG_CODE = '"& cgcode &"'"
	Rs.Open Sql,Session("Conn1"),1,3
	%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add.asp?cgcode=<%=cgcode%>');
	top.Desktop2.document.form5.submit();
</script>
</BODY>
</HTML>
