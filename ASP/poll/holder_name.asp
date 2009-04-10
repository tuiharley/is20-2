<!-- #include file="openform.inc"-->
  <%
  m = request("stockholder_name")
  Set rs=Server.CreateObject("ADODB.recordset")
sql="Select max(stockholder_id) from stockholder"
rs.open sql,conn,1,3
  for i = 1 to m
gstockholder_id = rs(0)+i
next
%>
<html>

<head>
	<meta charset="TIS-620">
<title>รายชื่อผู้ถือหุ้น</title>
</head>

<body>

<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">รายชื่อผู้ถือหุ้น</font></b></span></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form method="POST" action="holder_name.asp" >
 <input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" startspan --><strong>[FrontPage Save Results Component]</strong><!--webbot bot="SaveResults" endspan i-checksum="6561" --><table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2">
    <tr>
      <td width="100%">
      <p align="left"><span lang="en-us">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%   m = request("stockholder_name")
	for t = 1 to m
	%>
      <input type="checkbox" value="V1" checked name="R1">&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="stockholder_name" size="51" value="<%=rs("stockholder_name")%>"></span></td>
    <% next%>
    </tr>
  </table>
  <p align="center">  <br>
  <input type="submit" value="ตกลง" name="submit" onClick="return window.confirm('คุณต้องการบันทึกข้อมูล?')" style="font-family: MS Sans Serif; font-size: 10pt">&nbsp;  
  <input type="reset" value="ยกเลิก" name="cancel" onClick="return window.close('คุณต้องการยกเลิกการบันทึกข้อมูล?')" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>

</body>

</html>