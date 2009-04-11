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
	Dim cus_id, cbus, cmname, maxnumber
	cus_id = Request.Form("cus_id")
	cbus = Request.Form("cbus")
	cmname = Request.Form("cmname")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "SELECT MAX(CM_CODE) AS CM_CODE FROM COMP_MAIN WHERE (CBUS = N'" & cbus & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	
	maxnumber = 1
	if not Rs.EOF and not Rs.BOF and Rs("CM_CODE")<>"" then
		maxnumber = Right(Rs("CM_CODE"),3)+maxnumber
	end if

	Sql = "INSERT INTO COMP_MAIN(CM_CODE, CM_NAME, CBUS, CM_DATE_RC, CM_CODE_RC, CM_DATE_UPDATE, CM_CODE_UPDATE) VALUES('"& cbus&Right("00"&maxnumber,3) &"','"& cmname &"','"& cbus &"',getdate(),'"& Session("User_Id") &"',getdate(),'"& Session("User_Id") &"') "
	Rs2.Open Sql,Session("Conn1"),1,3
	
%>
<script language=javascript>
	top.Desktop2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop2','custgrouping.asp?cus_id=<%=cus_id%>&cbus=<%=cbus%>&cmcode=<%=cbus&Right("00"&maxnumber,3)%>');
	top.HideWindow('Desktop3');
</script>
</BODY>
</HTML>
