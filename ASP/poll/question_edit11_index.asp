<!-- #include file="openform.inc"-->
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">เลือกหัวข้อวาระการประชุม</font></b></span></td>
  </tr>
</table>
<br>
<p>&nbsp;&nbsp;&nbsp; <b><font size="2" face="MS Sans Serif" color="#0000FF">
วันที่</font></b>&nbsp;&nbsp;<%=date%><br>
&nbsp;</p>
<%
 s_date=date()
s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
Set rs=Server.CreateObject("ADODB.recordset")
sql ="select question_id,question_name,question_date,question_time from question where question_date= # "&s_date&" # order by question_id"
rs.open sql,conn,1,3
'response.redirect "stock_list.asp"
do until rs.eof or rs.bof
%>
</p>
<ul>
	<% If rs(3) > time()  then%>
	<li><a href=stock_edit_list.asp?question_id=<%=rs(0) %>&question_name=<%=rs(1)%>><%=rs(1) %></a><br>
	<% Else  %>
	<li><%=rs(1) %>&nbsp;<font size="-1" color="#408080">Complete!</font><br>
	<% End If %>
</ul>
</p>
</body>
</html>
<%
	rs.movenext
	loop
	'response.redirect "stock_list.asp?stockholder_id="&rs(2)
rs.close
%>