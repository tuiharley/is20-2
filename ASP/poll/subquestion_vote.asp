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
    <font face="MS Sans Serif" size="4" color="#0000FF">เลือกวาระย่อย</font></b></span></td>
  </tr>
</table>
<br>
<p>&nbsp;&nbsp;&nbsp; <b><font size="2" face="MS Sans Serif" color="#0000FF">
วันที่ : <%=date%></font></b><br>
&nbsp;&nbsp;&nbsp; <br>
<b><font size="2" color="#0000FF">&nbsp;&nbsp;&nbsp; <font face="MS Sans Serif">
วาระ : <%=request("question_name")%></font></font></b></p>
<%
 s_date=date()
s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
Set rs=Server.CreateObject("ADODB.recordset")
sql ="select sub_question_id,sub_question_name,question_id from sub_question where question_id= "&request("question_id")&"  "
'response.write sql
'response.end
rs.open sql,conn,1,3
if rs.eof or rs.bof  then
response.redirect "committee_vote.asp?question_id="&request("question_id")&"&question_name="&request("question_name")&"&sub_question_id=0"
end if
do until rs.eof or rs.bof
%>
</p>
<ul>
<li><a href=committee_vote.asp?question_id=<%=request("question_id") %>&sub_question_id=<%=rs(0)%>&question_name=<%=request("question_name")%>><%=rs(1) %></a><br>
</ul>
</p>
</body>
</html>
<%
	rs.movenext
	loop
rs.close
%>