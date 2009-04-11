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
Dim BEGINDATE, ENDDATE, SHOWDATE
	BEGINDATE = Request.Form("BEGINDATE")
	ENDDATE = Request.Form("ENDDATE")
	SHOWDATE = Request.Form("SHOWDATE")

	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Sql = "INSERT INTO ROUND_NEW(BEGINDATE, ENDDATE, SHOWDATE) "
	Rs2.Open Sql,Session("Conn1"),1,3

	oid = split(app_obj,",")
	for i=0 to Cint(app_count)-1
		if Cint(oid(i))=255 then
			Sql = "INSERT INTO APP_OBJECT(APP_ID, OID, REMARK) values(" & app_id &"," & oid(i) & ",'" & remark & "') "
		else
			Sql = "INSERT INTO APP_OBJECT(APP_ID, OID) values(" & app_id &"," & oid(i) & ") "
		end if
		Rs2.Open Sql,Session("Conn1"),1,3
	next
%>
<script language=javascript>
	alert('บันทึกข้อมูลเรียบร้อย');
	top.Desktop2.document.body.style.cursor='wait'; 
//	top.RunWindow('Desktop2','custgrouping.asp?cus_id=<%'=cus_id%>&cbus=<%'=cbus%>&cmcode=<%'=cbus&Right("00"&maxnumber,3)%>');
	top.HideWindow('Desktop2');
</script>
</BODY>
</HTML>
