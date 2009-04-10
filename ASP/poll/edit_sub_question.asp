<!-- #include file="openform.inc"-->
<html>
<head>
	<meta charset="TIS-620">
</head>
<form action="edit_sub_question2.asp" method="POST">
<body bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    แก้ไขหัวข้อวาระการประชุมย่อย</font></font></b></td>
  </tr>
</table>
<br><br>
  <table border="0" cellspacing="0" width="90%" id="AutoNumber2" height="26" cellpadding="0" align="center">
    <tr>
      <td width="90" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
       &nbsp;&nbsp;</font></b></td><td><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;
      <%

	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="select sub_question_id,sub_question_name from sub_question where sub_question_id= "&request("sub_question_id")
	rs.open sql,conn,1,3
	  %></font></b></td>
    </tr>
	<input type="Hidden" name="sub_question_id" value="<%= rs(0) %>">
    <tr>
      <td width="90" align="right" valign="top" ><b><font face="MS Sans Serif" size="2" color="#0000FF">
      หัวข้อ : &nbsp;&nbsp;</font></b></td><td>
     &nbsp; <textarea rows="1" name="sub_question_name" cols="100"><%= rs(1) %></textarea>
&nbsp;</td>
    </tr>
  </table><br>
  <p align="center">  
  <input type="submit" value="       บันทึก       " name="submit" style="font-family: MS Sans Serif; font-size: 10pt">
  <input value=" ย้อนกลับ "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt">
  </p>
</form>
</body>
</html>