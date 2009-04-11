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
	Dim cus_id, ccat, cbus, cmcode, cgcode
	cus_id = Request.QueryString("cus_id")
	ccat = Request.QueryString("ccat")
	cbus = Request.QueryString("cbus")
	cmcode = Request.QueryString("cmcode")
	cgcode = Request.QueryString("cgcode")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "INSERT INTO MKT_CUSTOMER(CG_CODE, MC_CUSTOMER_ID, MC_CCAT, BTYPE, MC_DATE_RC, MC_CODE_RC, MC_DATE_UPDATE, MC_CODE_UPDATE) VALUES('"& cgcode &"','"& cus_id &"','" & ccat & "','" & cbus & "',getdate(),'"& Session("User_Id") &"',getdate(),'"& Session("User_Id") &"') "
	Rs.Open Sql,Session("Conn1"),1,3

	Sql = "INSERT INTO MKT_CUSTOMER(CG_CODE, MC_CUSTOMER_ID, MC_CCAT, BTYPE, MC_DATE_RC, MC_CODE_RC, MC_DATE_UPDATE, MC_CODE_UPDATE) VALUES('"& left(cgcode,5) &"01001','"& cus_id &"','" & ccat & "','" & cbus & "',getdate(),'"& Session("User_Id") &"',getdate(),'"& Session("User_Id") &"') "
	Rs.Open Sql,Session("Conn1"),1,3
	
	Sql = "UPDATE CSS_CUSTOMER SET STATUS='*' WHERE CUSTOMER_ID='" & cus_id & "' "
	Rs.Open Sql,Session("Conn1"),1,3
	
%>
<script language=javascript>
	top.Desktop1.doloaddata2();
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
