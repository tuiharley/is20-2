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
   	dim jobname    
    Dim Rs,  Rs2 , Sql
	Dim job_id, i, oid
	
	 jobname = Request.QueryString("jobname")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	job_id = 1
	Sql = "select max(JOBID) from EMP_JOB"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		job_id = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO EMP_JOB  values (" & job_id & ",'" &  jobname & "') "
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','job.asp');
		</script>
		
 </body>
</html>
