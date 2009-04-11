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
	Dim  Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim name, spec, linein, lineout, cgcode, maxid
	name = Request.Form("name")
	spec = Request.Form("spec")
	linein = Request.Form("linein")
	lineout = Request.Form("lineout")
	cgcode = Request.Form("cgcode")

	maxid = 1
	Sql = "SELECT MAX(PABXID) AS PABXID FROM PABX WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
	if not Rs.EOF and not Rs.BOF then
		if not IsNull(Rs("PABXID")) then
			maxid = Rs("PABXID")+1
		end if
	end if
	Rs.Close

	Sql = "INSERT INTO PABX(PABXID, CG_CODE, PABXNAME, SPEC, LINEIN, LINEOUT)  VALUES (" & maxid & ",'" & cgcode & "', '"& name & "', '"& spec &"'," & linein & "," & lineout & ") "
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>');
	top.HideWindow(self.name);
</script>
</BODY>
</HTML>