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
   	dim newsname    
    Dim Rs,  Rs2 , Sql
	Dim news_id, i, oid
	
	 newsname = Request.QueryString("newsname")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	news_id = 1
	Sql = "select max(NPID) from NEWS_PAPER"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		news_id = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO NEWS_PAPER  values (" & news_id & ",'" &  newsname & "') "
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','newspaper.asp');
		</script>
		
 </body>
</html>
