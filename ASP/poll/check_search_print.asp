<!-- #include file="openform.inc"-->
<meta charset="TIS-620">
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF">พิมพ์บัตรติดผู้เข้าประชุม</font></b></td>
  </tr>
</table>
<br><br><form method="POST" action="check_search_print.asp">
  <input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><p align="center">
  ผู้ถือหุ้น : <input type="text" name="search" size="56" value="<%=request("search")%>"><span lang="th">&nbsp;
  </span>
  <input type="submit" value="  ค้นหา  " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<hr>
&nbsp;<br>
<b> <font face="MS Sans Serif" size="4" color="#0000FF">&nbsp;&nbsp;&nbsp; </font> 
<font face="MS Sans Serif" color="#0000FF"> <span lang="th">รายชื่อผู้ถือหุ้น</span></font><font face="MS Sans Serif">
<%  	
	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
Set rs=Server.CreateObject("ADODB.recordset")
'sql="Select stockholder_name,stock,stockholder_group,stockholder_id from stockholder where ucase(stockholder_name) like '%"&ucase(request("search"))&"%' order by stockholder_name"
sql="SELECT stockholder.stockholder_name, stockholder.stock, stockholder.stockholder_group, stockholder.stockholder_id FROM stockholder INNER JOIN Committee ON stockholder.stockholder_id = Committee.stockholder_id WHERE (((UCase([stockholder_name])) Like  '%" & ucase(request("search")) & "%' ) AND ((Committee.committee_date)=#" & s_date & "#)) ORDER BY stockholder.stockholder_name"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
	response.write "<br><br><center>ไม่มีข้อมูลผู้ถือหุ้นรายชื่อนี้ในระบบ หรือได้บันทึกผู้ถือหุ้นรายนี้แล้ว</center>"
	response.end
else
Set rs1=Server.CreateObject("ADODB.recordset")
sql="Select count(stockholder_name) from stockholder where ucase(stockholder_name) like '%"&ucase(request("search"))&"%'"
rs1.open sql,conn,1,3
if rs1(0) > 1 then
i = 1
	do until rs.eof or rs.bof 
	if rs(3) <> 1 then
response.write "</font></b></p><ul><li>"
%>
<font name="f<%=i%>" style='cursor:hand' onMouseOut='this.color="#000000"' onMouseOver='this.color="#CC9900"' onclick="doaction(<%=rs(3)%>);"  size="4" ><%=rs(0)%></font><br></ul>
<%
	end if
	rs.movenext
	i = i + 1
	loop
else
	'response.redirect "match.asp?stockholder_id="&rs(3)
end if
end if
rs.close
rs1.close
%>
</body>
<script language="javascript">
function doaction(stockholder_id)
{
window.open('report/SimpleSelectionFormula.asp?stockholder_id=' + stockholder_id);
}
</script>
