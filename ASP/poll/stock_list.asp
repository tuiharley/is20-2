<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    <span lang="th">เพิ่มรายชื่อผู้มีสิทธิร่วมการลงคะแนนเสียง</span></font></b></td>
  </tr>
</table>
<p align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<%  
Dim question_id, sub_question_id , question_name, sub_question_name
question_id = Request.QueryString("question_id")
sub_question_id = Request.QueryString("sub_question_id")

Set rs=Server.CreateObject("ADODB.recordset")

sql ="select question_name from question where question_id =" & question_id
rs.open sql,conn,1,3
question_name = rs(0)
rs.Close

if sub_question_id <> 0 then
sql ="select sub_question_name from sub_question where sub_question_id =" & sub_question_id
rs.open sql,conn,1,3
sub_question_name = rs(0)
rs.Close
end if 
%>
<font face="MS Sans Serif" color="#0000FF"><b><span lang="th"><font size="2">
<%=question_name%><%if sub_question_id <> "0" then%><%= " -- " & sub_question_name%><%end if%>
</font></span></b></font></p>
<form action="insert_stocklist.asp"  method="post">
<input type="hidden" name="question_id" value="<%=question_id%>">
<input type="hidden" name="sub_question_id" value="<%=sub_question_id%>">

<table border="1" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2" height="40">
  <tr>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999">
    <b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
    กลุ่มนิติบุคคลไทย </span></font></b></td>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999">
    <b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">กลุ่ม
    </span>Foreign Juristic Person</font></b></td>
    <td width="25%" align="center" height="16" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999">
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
  <td width="25%" height="20" bordercolor="#FF9999" bordercolorlight="#FF9999" bordercolordark="#FF9999">
   <%	
   sql = "SELECT Stockholder.stockholder_name, Stockholder.stockholder_id, Stockholder.stockholder_group "
   sql = sql&"FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id "
   sql = sql&"WHERE (((Committee.committee_date)=# "&s_date&"#) AND ((Stockholder.stockholder_group)='"&n&"')) order by Stockholder.stockholder_name"
'if sub_question_id <> "0" then
'	sql = "SELECT Stockholder.stockholder_name,Stockholder.stockholder_id, Stockholder.stockholder_group, Vote.status 	FROM Stockholder INNER JOIN Vote ON Stockholder.stockholder_id = Vote.stockholder_id 	WHERE (Vote.question_id = " & question_id & " ) AND (VOTE.sub_question_id = " & sub_question_id & ") AND (Stockholder.stockholder_group='" & n &"')"
'elseif sub_question_id = "0" then
'	sql = "SELECT Stockholder.stockholder_name,Stockholder.stockholder_id, Stockholder.stockholder_group, Vote.status 	FROM Stockholder INNER JOIN Vote ON Stockholder.stockholder_id = Vote.stockholder_id 	WHERE (Vote.question_id = " & question_id & " )  AND (Stockholder.stockholder_group='" & n &"')"
'end if
  rs.open sql,conn,1,3
   do until rs.eof or rs.bof 
   %>
    	<input type="checkbox" name="C<%=i%>" value="<%=rs(1)%>" checked ><%= rs(0)%><br>
   <%
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
<p align="center"><input type="submit" value="           บันทึก           " name="submit"> <input type="Reset" value=" ลบทั้งหมด "><br>
&nbsp;</p></form>
</body>