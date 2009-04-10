<!-- #include file="openform.inc"-->
<html>
<head>
	<meta charset="TIS-620">
</head>
<form action="edit_question3.asp" method="POST" name="q">
<body bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    แก้ไขหัวข้อวาระการประชุม</font></font></b></td>
  </tr>
</table>
<br><br>
  <table border="0" cellspacing="0" width="90%" id="AutoNumber2" height="26" cellpadding="0" align="center">
    <tr>
      <td width="90" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      วันที่ประชุม : &nbsp;&nbsp;</font></b></td><td><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;
      <%
	   s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
	response.write Day(s_date) & "/" & Month(s_date) & "/" & Year(s_date)
	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="select question_id,question_name,question_type from question where question_id= "&request("question_id")&"  order by question_id"
	rs.open sql,conn,1,3
	  %></font></b></td>
    </tr>
	<input type="Hidden" name="question_id" value="<%= rs(0) %>">
    <tr>
      <td width="90" align="right" valign="top" ><b><font face="MS Sans Serif" size="2" color="#0000FF">
      หัวข้อ : &nbsp;&nbsp;</font></b></td><td>
     &nbsp; <textarea rows="4" name="question_name" cols="100"><%= rs(1) %></textarea>
&nbsp;</td>
    </tr>
	    <tr>
      <td width="90" align="right" valign="top" ><b><font face="MS Sans Serif" size="2" color="#0000FF">
      เงื่อนไข : &nbsp;&nbsp;</font></b></td><td>
     &nbsp; <select name="condition">
	  	<option value="1">ลงมติด้วยคะแนนเสียงข้างมาก (> 50%)</option>
		<option value="4">ลงมติด้วยคะแนนเสียงข้างมาก (> 50%) ซึ่งมาประชุมและออกเสียงลงคะแนน</option>
	  	<option value="2">ลงมติด้วยคะแนนเสียงไม่น้อยกว่าสามในสี่ (>= 75%)</option>
		<option value="3">ลงมติด้วยคะแนนเสียงไม่น้อยกว่าสองในสาม (>= 66.67%)</option>
		<option value="6">ลงมติด้วยคะแนนเสียงข้างมาก และไม่มีผู้ถือหุ้นตั้งแต่ 25 รายซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของบริษัทคัดค้าน</option>
	  	<option value="9">ลงมติด้วยคะแนนเสียงไม่น้อยกว่าสามในสี่ (>= 75%)  และไม่มีผู้ถือหุ้นซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนเสียงทั้งหมดซึ่งมาประชุมของบริษัทคัดค้าน</option>
	  	<option value="10">ลงมติด้วยคะแนนเสียงไม่น้อยกว่าสามในสี่ (>= 75% ) และไม่มีผู้ถือหุ้นซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 5 ของจำนวนเสียงทั้งหมดซึ่งมาประชุมของบริษัทคัดค้าน</option>
	  </select>
&nbsp;</td>
    </tr>
  </table>
<%  Set rs1=Server.CreateObject("ADODB.recordset")
		sql ="select sub_question_id,sub_question_name from sub_question where question_id= "&rs(0)&"  "
		rs1.open sql,conn,1,3  
		if rs1.bof or rs1.eof then
			response.write "<br>"
		else
		response.write "<p> วาระย่อย &nbsp;&nbsp;(<a href='add_sub_question.asp?question_id="&rs(0)&"'>เพิ่มวาระย่อย</a>)"
		response.write "<p><ul>"
			do until rs1.eof
				response.write "<li><a href='edit_sub_question.asp?sub_question_id="&rs1(0)&"'>"&rs1(1)&"</a>"
				rs1.movenext
			loop
		response.write "</ul></p></p>"
		end if
%><br>
  <p align="center">  
  <input type="submit" value="       บันทึก       " name="submit" style="font-family: MS Sans Serif; font-size: 10pt">
  <input value=" ย้อนกลับ "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt">
  </p>
</form>
</body>
</html>