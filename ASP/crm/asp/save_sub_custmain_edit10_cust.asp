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
	Dim cpid, pdate, solid, sdate, Rs, Sql, cgcode, prob_id
	set Rs = Server.CreateObject("Adodb.RecordSet")
	prob_id = Request.Form("prob_id")
	cpid = Request.Form("cpid")
	pdate = Request.Form("pdate")
	solid = Request.Form("solid")
	sdate = Request.Form("sdate")
	cgcode = Request.Form("cgcode")
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
	pdate = format_date(pdate)
	sdate = format_date(sdate)
	Sql = "UPDATE PROBLEM SET PID = '" & cpid & "', PDATE = CONVERT(DATETIME, '" & right(pdate,4) & "-" & mid(pdate,4,2) & "-" & left(pdate,2) & " 00:00:00', 102), SOLID = '"& solid &"', SDATE = CONVERT(DATETIME, '" & right(sdate,4) & "-" & mid(sdate,4,2) & "-" & left(sdate,2) & " 00:00:00', 102) WHERE CG_CODE = '"& cgcode &"' AND PROB_ID = '"& prob_id &"' AND TYPE='c'"
	Rs.Open Sql,Session("Conn1"),1,3
%>
<script language=javascript>
	top.Desktop3.document.body.style.cursor='wait'; 
	top.HideWindow('Dialog1');
	top.RunWindow('Desktop3','custmain_add10.asp?cgcode=<%=cgcode%>');
</script>
</BODY>
</HTML>