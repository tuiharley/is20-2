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
   	dim promoname    , promoid , kind , service , comp
    Dim Rs,   Sql

	 promoname = Request.QueryString("promoname")
	 promoid = Request.QueryString("promoid")
	  kind = Request.QueryString("kind")
	 service = Request.QueryString("service")
	 comp = Request.QueryString("comp")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
	if kind = "False" then kind = 0
	if kind = "True" then kind = 1 
	
	Sql = "UPDATE POMOTION SET  POMONAME= '" & promoname & "' ,COMPID =" & comp & ",TYPE =" & kind &  ",ID =" & service & "  WHERE POMOID = " + promoid 
	Rs.Open Sql,Session("Conn1"),1,3

%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','add_promotion.asp');
		</script>
		
 </body>
</html>
