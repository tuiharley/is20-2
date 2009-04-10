<html>
<head>
	<meta charset="TIS-620">
</head>
<form action="sub_question.asp" method="POST" name="q">
<body bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    บันทึกหัวข้อวาระการประชุม</font></font></b></td>
  </tr>
</table>
<br><br>
  <table border="0" cellspacing="0" width="90%" id="AutoNumber2" height="26" cellpadding="0" align="center">
    <tr>
      <td width="90" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      วันที่ประชุม : &nbsp;&nbsp;</font></b></td><td><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;
      <%
	  qdate = request("qmonth")&"/"&request("qday")&"/"&request("qyear")
	  response.write request("qday")&"/"&request("qmonth")&"/"&request("qyear")
	  response.write "<input type=Hidden name=question_date value="&qdate&">"
  	  response.write "<input type=Hidden name=qday value="&request("qday")&">"
  	  response.write "<input type=Hidden name=qmonth value="&request("qmonth")&">"
   	  response.write "<input type=Hidden name=qyear value="&request("qyear")&">"
	  %></font></b></td>
    </tr>
    <tr>
      <td width="90" align="right" valign="top" ><b><font face="MS Sans Serif" size="2" color="#0000FF">
      หัวข้อ : &nbsp;&nbsp;</font></b></td><td>
     &nbsp; <textarea rows="4" name="question_name" cols="100">วาระที่ </textarea>
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
 <center><font face="MS Sans Serif"><b><font color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="comment" value="1" checked></font><font size="2" color="#0000FF">&nbsp; 
  ไม่มีวาระย่อย&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </font><font color="#0000FF">
  <input type="radio" name="comment" value="2"></font><font size="2" color="#0000FF">&nbsp; 
  มีวาระย่อย<span lang="en-us">&nbsp;&nbsp; </span></font></b></font><b>
  <font face="MS Sans Serif" size="2" color="#0000FF">
  <input type="text" name="sub_no" size="8"><span lang="en-us">&nbsp; </span>ข้อ</font></b></center>
  <p align="center">  
  <input type="submit" value="       บันทึก       " name="submit" style="font-family: MS Sans Serif; font-size: 10pt">
  <input type="reset" value="ยกเลิก" name="cancel" style="font-family: MS Sans Serif; font-size: 10pt">
  </p>
</form>
</body>
</html>