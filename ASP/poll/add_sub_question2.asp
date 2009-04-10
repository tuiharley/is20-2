<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<%
Set rs=Server.CreateObject("ADODB.recordset")
sql="Select max(sub_question_id)+1 from sub_question"
rs.open sql,conn,1,3
gquestion_id = rs(0)
gquestion_name = request("sub_question_name")
sql = "insert into sub_question values("&gquestion_id&",'"&gquestion_name&"',"&request("question_id")&")"
'response.write sql
'response.end
conn.execute sql

response.write "<br><br><center>บันทึกข้อมูลเรียบร้อย</center>"

%>
