<!-- #include file="openform.inc"-->
<%dim rs,sql
	sql = "update sub_question set sub_question_name='"& request("sub_question_name") &"' where sub_question_id="& request("sub_question_id") 
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
    <font face="MS Sans Serif" size="4" color="#0000FF">ปรับปรุงวาระการประชุม</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><b>
<%response.write "ปรับปรุงวาระการประชุมเรียบร้อย"%>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<form method="POST" action="updatesearch.asp" webbot-action="--WEBBOT-SELF--">
  <!--webbot bot="SaveResults" u-file="../_private/form_results.csv" s-format="TEXT/CSV" s-label-fields="TRUE" startspan --><input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" i-checksum="43374" endspan --><p align="center"><input type="Submit" value="  Back  "><!--- <input type=button value="  Back  " onclick="history.back(1);"> ---></p>
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