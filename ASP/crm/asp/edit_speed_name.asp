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
   	dim speedname    , speedid
    Dim Rs,  Rs2 , Sql
	Dim speed_id, i, oid
	
	 speedname = Request.QueryString("speedname")
	 speedid = Request.QueryString("speed_id")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	
	Sql = "UPDATE SPEED SET  SPEEDNAME= '" + speedname + "'  WHERE SPEEDID = " + speedid 
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','add_speed.asp');
		</script>
		
 </body>
</html>
