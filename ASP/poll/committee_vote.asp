<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    <span lang="th">รายชื่อผู้มีสิทธิร่วมการลงคะแนนเสียง</span></font></b></td>
  </tr>
</table>
<p align="left">
&nbsp;&nbsp;
<font face="MS Sans Serif" color="#0000FF" size="2"><b>
วาระ : <%
  Set rs=Server.CreateObject("ADODB.recordset")
	sql = "select question_name from question where question_id ="&request("question_id")
  rs.open sql,conn,1,3
	response.write rs(0)
	rs.close
response.write "</b></font>" 
  Set rs=Server.CreateObject("ADODB.recordset")
	sql = "select sub_question_name from sub_question where sub_question_id ="&request("sub_question_id")
  rs.open sql,conn,1,3
	if not rs.eof or not rs.bof then 
	response.write "<br><font face='MS Sans Serif' color='#0000FF' size=2><b> &nbsp;&nbsp;&nbsp;&nbsp;วาระย่อย : "&rs(0)&"</b></font></p>"
end if
	rs.close
%>
<form action=insert_stocklist.asp  method=post>
<input type=hidden name=question_id value=<%=request("question_id")%>>

<table border="2" cellpadding="2" cellspacing="1" width="100%"  height="40" style="border-collapse: collapse" bordercolorlight="#FF9999" bordercolordark="#FF9999">
  <tr>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999" >
    <b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
    กลุ่มนิติบุคคลไทย </span></font></b></td>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999" >
    <b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">กลุ่ม
    </span>Foreign Juristic Person</font></b></td>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999" >
    <b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
    กลุ่มนามสกุล ก - ป</span></font></b></td>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999">
    <b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
    กลุ่มนามสกุล ผ - ฮ</span></font></b></td>
  </tr>
  <tr valign="top">
	<%  
	   i = 1
		 s_date=date()
     s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
		 for n = 1 to 4 %>
  <td width="25%" height="20" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999" >
   <%	
sql = "SELECT Stockholder.stockholder_name, Stockholder.stockholder_id, Stockholder.stockholder_group,Vote.vote_id FROM (Stockholder INNER JOIN Vote ON Stockholder.stockholder_id = Vote.stockholder_id) INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE (((Vote.question_id)="&request("question_id")&") "
if request("sub_question_id") <> "0" then
sql = sql&" AND ((Vote.sub_question_id)="&request("sub_question_id")&") "
end if
sql = sql&" AND ((Stockholder.stockholder_group)='"&n&"')) and ((committee.committee_date = #"&s_date&"#)) order by  Stockholder.stockholder_name"
'response.write sql
  Set rs=Server.CreateObject("ADODB.recordset")
  rs.open sql,conn,1,3
   do until rs.eof or rs.bof 
    	response.write  "<li><a href=vote.asp?vote_id="&rs(3)&"&question_id="&request("question_id")&"&stockholderid="&rs(1)& ">"&rs(0)&"</a><br>"
 	i = i+1
   rs.movenext
   loop
   rs.close
	 response.write "</td>"
next 
	    i = i-1%>
	       <input type=hidden name=i value=<%=i%>>  
  </tr>
</table>
</form>
</body>