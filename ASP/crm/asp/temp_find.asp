<%@ Language=VBScript %>
<%
	Option Explicit
	Response.Expires = 0
	
	Dim desktop, fileasp, cgcode, area
	
	desktop = Request.QueryString("desktop")
	fileasp = Request.QueryString("fileasp")
	cgcode = Request.QueryString("cgcode")
	area = Request.QueryString("area")
	
	Session("Temp") = area
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body>
<script language="javascript">
 top.ShowRunWindow('<%=desktop%>','<%=fileasp%>?cgcode=<%=cgcode%>');
 </script>
</body>
</html>
