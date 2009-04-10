<!-- #include file="openform.inc"-->
<%

		Set rs=Server.CreateObject("ADODB.recordset")
		sql="Select max(question_id)+1 from Question"
		rs.open sql,conn,1,3
				gquestion_id = rs(0)
				gquestion_name = request.form("question_name")
				gquestion_date = request.form("question_date")
		rs.Close
		
		
		sql = "insert into question(question_id,question_name,question_date,question_type,question_time)  values("&gquestion_id&",'"&gquestion_name&"',#"&gquestion_date&"#,"&request("condition")&",#23:59:59#)"
		rs.open sql,conn,1,3

		
if request("comment") = 1 then
%>
<script language="vbscript">
msgbox  "บันทึกข้อมูลเรียบร้อย"
</script>
<%
response.redirect "question.asp?qday="&request("qday")&"&qmonth="&request("qmonth")&"&qyear="&request("qyear")
else
%>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    บันทึก<span lang="th">วาระย่อย</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form method="POST" action="sub_question2.asp">
<input type="hidden" name='question_id' value=<%=gquestion_id%>>
<input type='hidden' name='sub_no' value=<%= request("sub_no")%>><table border="0" cellspacing="0" width="100%" id="AutoNumber2" height="26" cellpadding="0">
    <tr>
      <td width="100%" height="21"><b>
      <font face="MS Sans Serif" size="2" color="#0000FF">วันที่ใช้วาระ :&nbsp;&nbsp;&nbsp;&nbsp;
      <span lang="en-us"><%response.write request("qday")&"/"&request("qmonth")&"/"&request("qyear")%>
      <input type="hidden" name="question_date" size="35" value="<%=gquestion_date%>"></span></font></b></td>
    </tr>
    <tr>
      <td width="100%" height="21"><b><font face="MS Sans Serif">
      <font size="2" color="#0000FF">&nbsp;  </font><font size="2">
      <span lang="th"><font color="#0000FF">วาระที่<%=question_id %></font></span> </font>&nbsp;<span lang="en-us">:</span>&nbsp; </font></b>&nbsp;
      <br>
      <span lang="th">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
      <textarea rows="3" name="question_name" cols="93"><%=gquestion_name%></textarea><br>
&nbsp;</td>
    </tr>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber3">
<%   
  	  response.write "<input type=Hidden name=qday value="&request("qday")&">"
  	  response.write "<input type=Hidden name=qmonth value="&request("qmonth")&">"
   	  response.write "<input type=Hidden name=qyear value="&request("qyear")&">"
n = request("sub_no")
for i = 1 to n
%>
    <tr>
      <td width="100%"><b><font face="MS Sans Serif">
      <font size="2" color="#0000FF"><span lang="th">&nbsp;วาระย่อยที่ <%=i %></span></font><font size="2">
      </font>&nbsp;<span lang="en-us">:</span>&nbsp; </font></b>&nbsp;&nbsp;<input type="text" name=sub_question_name<%=i%> size="95"><span lang="th">
      </span></td>
    </tr>
<% next%>
  </table>
  <p align="center">  
  <input type="submit" value="     บันทึก     " name="submit" onClick="return window.confirm('คุณต้องการบันทึกข้อมูล?')" style="font-family: MS Sans Serif; font-size: 10pt">
  <input type="reset" value="ยกเลิก" name="cancel" onClick="return window.confirm('คุณต้องการยกเลิกการบันทึกข้อมูล?')" style="font-family: MS Sans Serif; font-size: 10pt">
</p>
</form>
</a>
</body>
</html>
<%
end if
%>