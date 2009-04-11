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
   	dim JOBNAME    , JOBID
    Dim Rs,  Sql
	
	
	 JOBNAME = Request.QueryString("JOBNAME")
	 JOBID = Request.QueryString("JOBID")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	
	Sql = "UPDATE EMP_JOB  SET  JOBNAME= '" + JOBNAME + "'  WHERE JOBID = " + JOBID 
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','job.asp');
		</script>
		
 </body>
</html>
