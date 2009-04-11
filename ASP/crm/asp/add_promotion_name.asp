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
   	dim promotionname   ,kind , comp ,id
    Dim Rs,  Rs2 , Sql
	dim promo_id	
	 	 promotionname = Request.QueryString("promotionname")
		 kind = Request.QueryString("kind")
		 comp = Request.QueryString("comp")
		 id = Request.QueryString("id")
		 
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	if kind = 1 then kind = 0
	if kind = 2 then kind = 1 
	promo_id = 1
	Sql = "select max(POMOID) from POMOTION"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		promo_id = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO POMOTION  values ( " & promo_id & " ,"  &  comp  &  " ,'"  &  promotionname  &   "'," &   kind &  "," & id & ")"
	Rs.Open Sql,Session("Conn1"),1,3
response.write(Sql)

%>
		<script language= JavaScript>
		
		top.RunWindow('Desktop2','add_promotion.asp');
		</script>
		
 </body>
</html>
