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
   	dim tvname    
    Dim Rs,  Rs2 , Sql
	Dim tv_id, i, oid
	
	 tvname = Request.QueryString("tvname")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	tv_id = 1
	Sql = "select max(TVID) from TV"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		tv_id = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO TV  values (" & tv_id & ",'" &  tvname & "') "
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','tv.asp');
		</script>
		
 </body>
</html>
