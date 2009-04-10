<!-- #include file="openform.inc"-->
  <%
  n = request("sub_no")
  Set rs=Server.CreateObject("ADODB.recordset")
sql="Select max(sub_question_id) from sub_question"
rs.open sql,conn,1,3
  for i = 1 to n 
gsub_question_id = rs(0)+i
'response.write gsub_question_id&request("sub_question_name"&i)&"<br>"
 sql = "insert into sub_question values("&gsub_question_id&",'"&request("sub_question_name"&i)&"','"&request("question_id")&"')" 
 conn.execute sql
next
response.redirect "question.asp?qday="&request("qday")&"&qmonth="&request("qmonth")&"&qyear="&request("qyear")
  %>