<!-- #include file="openform.inc"-->
<%
set rs1 =Server.CreateObject("ADODB.Recordset")
sql="Select max(stockholder_id)+1 from stockholder"
rs1.open sql,conn,1,3
stockholder_id = rs1(0)
sql1="insert into stockholder (stockholder_id,stockholder_name,stockholder_group,stock) values("&stockholder_id&",'"&request("stockholder_name")&"','"&request("stockholder_group")&"','"&request("stock")&"')"  
'response.write sql1
'response.end
conn.execute sql1
set rs =Server.CreateObject("ADODB.Recordset")
sql="Select max(committee_id)+1 from committee"
rs.open sql,conn,1,3
committee_id = rs(0)
if request("agent_type") = 1 then
	agent_type = "1"
	else
	agent_type = "2"
end if
sql="insert into committee (committee_id,stockholder_id,agent,agent_type,committee_date,committee_time) values("&committee_id&","&stockholder_id&",'"&request("agent")&"','"&agent_type&"',"&date()&"',#"&time()&"#)"  
'response.write sql
'response.end
conn.execute sql
%>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">บันทึก</font></b></span><b><font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">ชื่อผู้เข้าร่วมการประชุม</span></font></b></td>
  </tr>
</table>  
  <p>&nbsp;</p>
<p align="center"><br>
<br>
<br>
<font face="MS Sans Serif" color="#0000FF"><b><span lang="th">
ข้อมูลของท่านได้รับการบันทึกแล้ว<br>
&nbsp;</span></b></font></p>
   <form action= "searchedit.asp" method="post">
<p align="center">                                  
  <a href="addsearch.asp">
  <input type="submit" value="  ตกลง" name="submit" onClick="return window.confirm('คุณต้องการบันทึกข้อมูล?');" style="font-family: MS Sans Serif; font-size: 10pt"></p>
<p></p>
</form></a>