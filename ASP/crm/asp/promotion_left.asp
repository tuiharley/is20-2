<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
<title>Promotion_left</title>
<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
%>

<body bgcolor="#E8F8FF">	
<% dim promo_id
		dim Sql  , Rs , Rs1
       
	    set Rs = Server.CreateObject("Adodb.RecordSet")
		set Rs1 = Server.CreateObject("Adodb.RecordSet")
		promo_id = Request.QueryString("promo_id")
	    Sql = "SELECT     POMOTION_PROPERTIES.PPNAME AS detail , POMOTION_PROPERTIES.PPID FROM   POMOTION_PROPERTIES INNER JOIN POMOTION_DETAIL ON POMOTION_PROPERTIES.PPID = POMOTION_DETAIL.PPID	WHERE  (POMOTION_DETAIL.POMOID =" + promo_id + ")" 
		Rs.Open Sql, Session("Conn1"),1,3	
		Sql = "select  pomoname from pomotion where pomoid=" & promo_id 
		Rs1.Open Sql, Session("Conn1"),1,3	

%>
<table border="0">
  <tr>
    <td width="25">&nbsp;</td>
    <td width="99">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><span class="text"><font color="#4B0097" size="3"><u><strong>ชื่อโปรโมชั่น</strong></u></font></span></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><b><font color="#4B0097" size="3"><%=Rs1("pomoname")%></font></b></td>
  </tr>
  <tr>
    <td height="22">&nbsp;</td> 
  <td><B></B></td></tr>
</table>
 <table width="543" border="0">
  <tr>
  <%
  Dim i
	i=1
	do while not Rs.EOF
%>
    <td width="106"><div align="right">- </div></td>
	<td width="361" style="cursor:hand"  onClick="top.RunWindow('Temp1','edit_promotion_properties_detail2.asp?ppid=<%=Rs("PPID")%>&promo_id=<%=promo_id%>')"><font name="f2" id="f2" size="2"  onMouseOver="this.color='#ff0000';" onMouseOut="this.color='#4B0097';" color="#4B0097"><%=Rs("detail")%></font></td>
  </tr>
<%         
		i=i+1
		Rs.Movenext
	loop
%>
</table>
</body>
</html>
