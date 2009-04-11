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
   	dim probname    , opt
    Dim Rs,  Rs2 , Sql 
	Dim prob_id, i, oid
	opt = Request.QueryString("opt")
	 probname = Request.QueryString("probname")
	 
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
		
	if opt = "1" then
			Sql = "select max(TPID) from TTT_PROB"
	elseif  opt = "2" then
			Sql = "select max(CPID) from CUST_PROB"		
	end if
	
			prob_id = 1	
			Rs2.Open Sql,Session("Conn1"),1,3
			if not isnull(Rs2(0)) then
					prob_id = Rs2(0)+1
			End if

			if opt = "1" then
				Sql = "INSERT INTO TTT_PROB   values (" & prob_id & ",'" &  probname & "') "
			elseif  opt = "2" then
				Sql = "INSERT INTO CUST_PROB   values (" & prob_id & ",'" &  probname & "') "
			end if
	Rs.Open Sql,Session("Conn1"),1,3
%>


 <script language= JavaScript>
		
		top.RunWindow('Desktop2','problem.asp?opt=<%=opt%>');
		</script>
		
 </body>
</html>
