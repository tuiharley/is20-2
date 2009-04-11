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
   	dim compname    , compid
    Dim Rs,  Rs2 , Sql
	Dim comp_id, i, oid
	
	 compname = Request.QueryString("compname")
	 compid = Request.QueryString("compid")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	
	Sql = "UPDATE COMPANY  SET  COMPNAME= '" + compname + "'  WHERE COMPID = " + compid 
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','admin_company.asp');
		</script>
		
 </body>
</html>
