<!-- #include file="openform.inc"-->
<%dim conn,rs,sql
if request("agent_type") = "1" then
agent_type = "1"
else
agent_type = "2"
end if
	sql = "update Committee set agent ='"& request("agent") &"',agent_type='"&agent_type &"'  where committee_id="& request("committee_id")
'	response.write sql 
'	response.end
	conn.execute sql
%>
	<meta charset="TIS-620">
 <body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">ปรับปรุง</font></b></span><b><font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">รายชื่อผู้เข้าร่วมประชุม</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><b>
<%response.write "ปรับปรุงข้อมูลเรียบร้อย"%>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<form method="POST" action="mismatchupdate_saveedit.asp" webbot-action="--WEBBOT-SELF--">
  <!--webbot bot="SaveResults" u-file="../_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" endspan i-checksum="43374" --><p align="center"><input type=button value="  Back  " onclick="history.back(1);"></p>
</form>
<p align="center">&nbsp;</p>
<p align="center"><b>
<font color="#0000FF" face="MS Sans Serif" style="font-size: 16pt">
 </font></b></b>
 </body>
</html> 
<%
conn.close
set conn = nothing
%>