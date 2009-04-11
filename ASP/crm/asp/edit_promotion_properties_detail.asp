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
   	dim ppid    , promo_id
    Dim Rs,   Sql
	
	 ppid = Request.QueryString("ppid")
	 promo_id = Request.QueryString("promo_id")
	set Rs = Server.CreateObject("Adodb.RecordSet")
	
		
	Sql = "INSERT INTO POMOTION_DETAIL  ( POMOID, PPID) VALUES ( " & promo_id &  "," & ppid & ")"
	Rs.Open Sql,Session("Conn1"),1,3


%>
		<script language= JavaScript>
		top.RunWindow('Desktop2','edit_promotion_detail.asp?promo_id=<%=promo_id%>');
		</script>
		
 </body>
</html>
