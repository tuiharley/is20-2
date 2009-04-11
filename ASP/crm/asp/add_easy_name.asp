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
   	dim easyname    
    Dim Rs,  Rs2 , Sql
	Dim easy_id, i, oid
	
	 easyname = Request.QueryString("easyname")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	easy_id = 1
	Sql = "select max(ECID) from EASY_CONNECT"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		easy_id = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO EASY_CONNECT  values (" & easy_id & ",'" &  easyname & "') "
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','easy_connect.asp');
		</script>
		
 </body>
</html>
