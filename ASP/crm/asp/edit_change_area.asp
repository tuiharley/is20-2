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
   	dim area    , prov
    Dim Rs,  Rs2 , Sql
	
	 area = Request.Form("area")
	 prov = Request.Form("prov")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	Sql = "SELECT P_LOC FROM PROVINCE WHERE PROVINCE_ID = " & prov 
	Rs.Open Sql,Session("Conn1"),1,3
	prov = Rs("P_LOC")
	Rs.Close	
	
	Sql = "UPDATE EMPLOYEE SET  WORKING_PROVINCE='" + prov + "'  WHERE EMP_ID = '" + Session("User_Id")  + "'"
	Rs.Open Sql,Session("Conn1"),1,3


%>
<script language=javascript>
	top.Logout();
</script>
		
 </body>
</html>
