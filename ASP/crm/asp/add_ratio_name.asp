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
   	dim rationame
    Dim Rs,  Rs2 , Sql
	Dim ratioid, i, oid
	
	 rationame = Request.QueryString("rationame")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	ratioid = 1
	Sql = "select max(RATIOID) from RATIO"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		ratioid = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO RATIO  values (" & ratioid & ",'" &  rationame & "') "
	Rs.Open Sql,Session("Conn1"),1,3
 

%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','add_ratio.asp');
		</script>
		
 </body>
</html>
