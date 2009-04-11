<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
		<meta http-equiv=Expires content=0>
		<meta http-equiv=Content-Type content="text/html; charset=Windows-874">
		<link href=/include/stylesheet2.css rel=stylesheet type=text/css>
</head>
<body>
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%end if
   	dim RANAME    , RAID
    Dim Rs,  Sql
	
	
	 RANAME = Request.QueryString("RANAME")
	 RAID = Request.QueryString("RAID")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	
	Sql = "UPDATE RADIO  SET  RANAME= '" + RANAME + "'  WHERE RAID = " + RAID 
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','radio.asp');
		</script>
		
 </body>
</html>
