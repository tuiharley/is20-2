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
	Dim Rs, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")

	Dim name, spec, linein, lineout, cgcode, pabxid, dateef
	name = Request.Form("name")
	spec = Request.Form("spec")
	linein = Request.Form("linein")
	lineout = Request.Form("lineout")
	dateef = Request.Form("dateef")
	cgcode = Request.Form("cgcode")
	pabxid = Request.Form("pabxid")
%>
<%
				Dim day1, month1, year1
				Function format_date(chdate)
					if Day(chdate) < 10 then day1= 0&Day(chdate) else day1 = Day(chdate) end if	
					if Month(chdate) < 10 then month1= 0&Month(chdate)  else month1 = Month(chdate) end if
					year1 = Year(chdate)	
					format_date = day1&"/"&month1&"/"&year1
				End Function
%>
<%
	dateef = format_date(dateef)
	Sql = "UPDATE PABX_FUTURE SET PABXNAME= '" & name & "', SPEC = '"& spec &"', linein=" & linein & ", lineout=" & lineout & ", DATEEF = CONVERT(DATETIME, '" & right(dateef,4) & "-" & mid(dateef,4,2) & "-" & left(dateef,2) & " 00:00:00', 102) WHERE CG_CODE = '" & cgcode & "' AND PABXID = '"& pabxid &"'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Dialog2.document.body.style.cursor='wait'; 
	top.HideWindow('Dialog1');
	top.RunWindow('Desktop3','custmain_add9.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>