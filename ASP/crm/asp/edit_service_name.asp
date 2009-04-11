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
   	dim probname    , probid , probtype
    Dim Rs, Sql

	
	 probtype = Request.QueryString("probtype")
	 probname = Request.QueryString("probname")
	 probid = Request.QueryString("probid")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	if probtype = "1" then
			Sql = "UPDATE TTT_PROB SET  TPNAME= '" + probname + "'  WHERE TPID = " + probid 
	elseif  probtype= "2" then
			Sql = "UPDATE CUST_PROB SET  CONAME= '" + probname + "'  WHERE CPID = " + probid 
	end if
	
	Rs.Open Sql,Session("Conn1"),1,3


%>
		
		<script language= JavaScript>
		
		top.RunWindow('Desktop2','problem.asp?opt=<%=probtype%>');
		</script>
		
 </body>
</html>
