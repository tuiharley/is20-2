<html>
<head>
	<meta charset="TIS-620">
</head>
<%
Dim i
Dim mm(11)
	mm(0)  = "มกราคม"
    mm(1) = "กุมภาพันธ์"
	mm(2) = "มีนาคม"
	mm(3) = "เมษายน"
	mm(4) = "พฤษภาคม"
	mm(5) = "มิถุนายน"
	mm(6) = "กรกฎาคม"
	mm(7) = "สิงหาคม"
	mm(8) = "กันยายน"
	mm(9) = "ตุลาคม"
	mm(10) = "พฤศจิกายน"
	mm(11) = "ธันวาคม"
%>
<body bgcolor="#FFFFFF">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">
    บันทึกหัวข้อวาระการประชุม</font></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p><form action="question.asp" method="POST" name="q">
  <table border="0" cellspacing="0" width="90%" id="AutoNumber2" height="26" cellpadding="0" align="center">
    <tr>
      <td width="90%" align="center"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      วันที่ประชุม : <select name="qday">
	  <%for i = 1 to 31 %>
	  <option value="<%=i%>" <%if i = day(date) then%> selected <%end if%>><%=i%></option>
	  <%next%>
	  </select>
      &nbsp;&nbsp; เดือน : <select name="qmonth">
	  <%for i = 1 to 12 %>
	  <option value="<%=i%>" <%if month(date) = i then%> selected<%end if%>><%=mm(i-1)%></option>
	  <%next%>
</select>&nbsp;&nbsp; ปี พ.ศ. <select name="qyear">
	<%for i = 2547 to 2553%>
	  <option value="<%=i%>" <%if year(date)+543 = i then%> selected <%end if%>><%=i%></option>
	<%next%>
	 
</select> &nbsp;&nbsp; <input  type="Submit" value="    ตกลง    "></font></b></td>
    </tr>
	</table>
	</form>
</body>
</html>
