	<!-- #include file="css.css"-->
	<!-- #include file="openform.inc"-->
		<%
 	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql="Select start_time from meeting where committee_date = #"&s_date&"#"
rs.open sql,conn,1,3
if not rs.eof then
response.write "<br><br><center><b>ได้ทำการบันทึกเวลาเริ่มการประชุมเมื่อเวลา "&rs(0)&"</b></center>"
else
%>
<html>
<head>
	<title>Untitled</title>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    บันทึกเริ่มการประชุม</font></font></b></td>
  </tr>
</table>
<form action="start_meeting2.asp" method="post"><br><br>
<center><input type="Submit" value="   บันทึกเริ่มการประชุม   " onClick="return window.confirm('คุณต้องการบันทึกเริ่มการประชุม?  ')"></center>
</form>
</body>
</html><% End If %>
