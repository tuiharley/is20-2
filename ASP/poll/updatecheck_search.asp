<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">
    รายชื่อผู้ถือหุ้น</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form method="POST" action="updatecheck_search.asp">
  <input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><p align="center">
  <input type="text" name="search" size="56" value="<%=request("search")%>"><span lang="th">&nbsp;&nbsp;&nbsp;&nbsp;
  </span>
  <input type="submit" value="   ค้นหา   " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<hr>
&nbsp;<p>
<b> <font face="MS Sans Serif" size="4" color="#0000FF">&nbsp;&nbsp;&nbsp; <span lang="th">รายชื่อผู้ถือหุ้น</span></font></b>
<%
Set rs=Server.CreateObject("ADODB.recordset")
sql="Select stockholder_name,stock,stockholder_group,stockholder_id from stockholder where Ucase(stockholder_name) like '%"&ucase(request("search"))&"%' order by stockholder_name"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
  response.redirect "addstockholder.asp"
else
Set rs1=Server.CreateObject("ADODB.recordset")
sql="Select count(stockholder_name) from stockholder where stockholder_name like '%"&request("search")&"%'"
rs1.open sql,conn,1,3
if rs1(0) > 1 then
	do until rs.eof or rs.bof 
'response.write rs(0)&" "&rs("stockholder_name")&" "&rs(1)&"<br>"
%> </p>
<ul>
<li><a href=update.asp?stockholder_id=<%=rs(3) %>><%=rs(0) %></a><br>
</ul>
<p><!--[if gte vml 1]><v:line id="_x0000_s1026"
 alt="" style='position:absolute;left:0;text-align:left;top:0;flip:y;z-index:1'
 from="21pt,125.25pt" to="519.75pt,126pt" strokecolor="#6cf pure"
 strokeweight="2.25pt">
 <v:stroke dashstyle="longDashDotDot" startarrow="classic" startarrowlength="long"
  endarrow="classic" endarrowlength="long"/>
</v:line><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:1;left:25px;top:159px;width:671px;height:17px'><img width=671
height=17 src="updatecheck_search_files/image001.gif" v:shapes="_x0000_s1026"></span><![endif]></p>

</body>
<%
	rs.movenext
	loop
else
	response.redirect "update.asp?stockholder_id="&rs(3)
end if
end if
rs.close
rs1.close
%>