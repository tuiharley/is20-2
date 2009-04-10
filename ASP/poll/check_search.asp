<!-- #include file="openform.inc"-->
<meta charset="TIS-620">
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">ค้นหารายชื่อผู้ถือหุ้น</span></font></b></td>
  </tr>
</table>
<br><br><form method="POST" action="check_search.asp">
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
sql="Select stockholder_name,stock,stockholder_group,stockholder_id from stockholder where ucase(stockholder_name) like '%"&ucase(request("search"))&"%' and stockholder_id not in (select stockholder_id from committee where committee_date = # "&s_date&" #) order by stockholder_name"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
'  response.redirect "mismatch.asp?stockholder="&request("search")
	response.write "<br><br><center>ไม่มีข้อมูลผู้ถือหุ้นรายชื่อนี้ในระบบ หรือได้บันทึกผู้ถือหุ้นรายนี้แล้ว</center>"
	response.end
else
Set rs1=Server.CreateObject("ADODB.recordset")
sql="Select count(stockholder_name) from stockholder where ucase(stockholder_name) like '%"&ucase(request("search"))&"%'"
rs1.open sql,conn,1,3
if rs1(0) > 1 then
	do until rs.eof or rs.bof 
	if rs(3) <> 1 then
response.write "</font></b></p><ul><li>"
response.write "<a href=match.asp?stockholder_id="&rs(3)&">"&rs(0)&"</a><br></ul></body>"
	end if
	rs.movenext
	loop
else
	response.redirect "match.asp?stockholder_id="&rs(3)
end if
end if
rs.close
rs1.close
%>