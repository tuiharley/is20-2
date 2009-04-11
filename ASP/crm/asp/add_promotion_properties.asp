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
   	dim promop_name   
    Dim Rs,  Rs2 , Sql
	dim promop_id	, promo_id
	 	 promop_name = Request.QueryString("promop_name")
		promo_id = Request.QueryString("promo_id")
		 
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	
	promop_id = 1
	Sql = "select max(PPID) from POMOTION_PROPERTIES"
	Rs2.Open Sql,Session("Conn1"),1,3
		if not isnull(Rs2(0)) then
		promop_id = Rs2(0)+1
		End if
	
	
	Sql = "INSERT INTO POMOTION_PROPERTIES values ( " & promop_id &  " ,'"  &  promop_name  & "')"
	
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','edit_promotion_detail.asp?promo_id=<%=promo_id%>');
		</script>
		
 </body>
</html>
