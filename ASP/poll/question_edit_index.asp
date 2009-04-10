<!-- #include file="openform.inc"-->
<!-- #include file="css.css"-->
	<STYLE type=text/css> 
A:link {COLOR: black; TEXT-DECORATION: none} 
A:visited {COLOR: black; TEXT-DECORATION: none} 
A:hover {COLOR: #FF0000; TEXT-DECORATION: underline} 
</STYLE>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <b>
    <span lang="th">
    <font face="MS Sans Serif" size="4" color="#0000FF"><div align="center">เลือกหัวข้อวาระการประชุม</div></font></b></td>
  </tr>
</table>
<!--- &nbsp;&nbsp;&nbsp; <b><font class=f1>
วันที่ : <%'=date%></font></b> ---><br>
&nbsp;
&nbsp;&nbsp;<font class=f1>เลือกวาระ</font>

<%
 s_date=date()
s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
Set rs=Server.CreateObject("ADODB.recordset")
sql ="select question_id,question_name,question_date,question_time from question where question_date= # "&s_date&" # order by question_id"
rs.open sql,conn,1,3
do until rs.eof or rs.bof
	Set rs1=Server.CreateObject("ADODB.recordset")
	sql ="select sub_question_id,sub_question_name,question_id from sub_question where question_id= " & rs(0) & "  order by sub_question_id"
	rs1.open sql,conn,1,3
%>

<ul>
<% 	if rs1.eof or rs1.bof then 
		 If rs(3) > time()  then%>
		<li><a target="right" href=stock_edit_list.asp?question_id=<%=rs(0) %>&sub_question_id=0><font class=f1><%=rs(1) %></font></a>
		<% Else  %>
		<li><%=rs(1) %>&nbsp;<font size="-1" color="#408080">Complete!</font><br>
		<% End If %>
	<% Else 
					If rs(3) > time()  then%>
			<li><font class=f1><%=rs(1) %></font>
			<% Else  %>
			<li><font class=f1><%=rs(1) %></font>&nbsp;<font size="-1" color="#408080">Complete!</font>
			<% End If %>
	<ul>
	<% 
	do until rs1.eof
		If rs(3) > time()  then%>
		<li><a target="right" href=stock_edit_list.asp?question_id=<%=rs(0) %>&sub_question_id=<%= rs1(0) %>><font class=f1><%=rs1(1) 	%></font></a>			
		<% 
		else%>
		<li><font class=f1><%=rs1(1) 	%></font>			
		<%
		end if
	rs1.movenext
	loop
	response.write "</ul>"
End If %> 
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