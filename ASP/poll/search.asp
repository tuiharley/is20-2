<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">บันทึกข้อมูลผู้เข้าร่วมการประชุม</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form method="POST" action="check_search.asp">
  <input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><p align="center">
<b> ชื่อผู้ถือหุ้น :  </b><input type="text" name="search" size="56" value="<%=stockholder_name%>"><span lang="th">&nbsp;&nbsp;
  </span>
  <input type="submit" value="     ค้นหา     " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>

</body>

</html>