<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<body>

<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">ค้นหารายชื่อผู้ถือหุ้น</span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form method="POST" action="check_searchedit.asp">
  <input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><p align="center">
  <input type="text" name="search" size="56" value="<%=request("search")%>"><span lang="th">&nbsp;&nbsp;
  </span>
  <input type="submit" value="    ค้นหา    " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<hr>
&nbsp;<p>

<%
s_date = date()
s_date = month(s_date)&"/"&day(s_date)&"/"&year(s_date)+543
Set rs=Server.CreateObject("ADODB.recordset")
sql = "SELECT stockholder.stockholder_name, stockholder.stock,stockholder.stockholder_group,stockholder.stockholder_id FROM stockholder INNER JOIN Committee ON stockholder.stockholder_id = Committee.stockholder_id WHERE (((stockholder.stockholder_name) Like '%"&request("search")&"%')) and committee_date = #"&s_date&"#"
'response.write sql
rs.open sql,conn,1,3
if rs.eof or rs.bof then
'response.redirect "mismatchedit.asp"
response.write "<br><br><b><center>ไม่มีข้อมูลผู้เข้าร่วมประชุม</center></b>"
else
response.write "<b> <font face=MS Sans Serif size=4 color=#0000FF>&nbsp;&nbsp;&nbsp; <span lang=th>รายชื่อผู้ถือหุ้น</span></font></b>"
Set rs1=Server.CreateObject("ADODB.recordset")
sql = "SELECT count(stockholder.stockholder_id) FROM stockholder INNER JOIN Committee ON stockholder.stockholder_id = Committee.stockholder_id WHERE (((stockholder.stockholder_name) Like '%"&request("search")&"%'))"
rs1.open sql,conn,1,3
if rs1(0) > 1 then
	do until rs.eof or rs.bof 
'		response.write rs(0)&" "&rs("stockholder_name")&" "&rs(1)&"<br>"
%> </p>
<ul>
<li><a href=matchedit.asp?stockholder_id=<%=rs(3) %>><%=rs(0) %></a><br>
</ul>
<p><!--[if gte vml 1]><v:line id="_x0000_s1026"
 alt="" style='position:absolute;left:0;text-align:left;top:0;flip:y;z-index:1'
 from="21pt,125.25pt" to="519.75pt,126pt" strokecolor="#6cf pure"
 strokeweight="2.25pt">
 <v:stroke dashstyle="longDashDotDot" startarrow="classic" startarrowlength="long"
  endarrow="classic" endarrowlength="long"/>
</v:line><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:1;left:25px;top:159px;width:671px;height:17px'><img width=671
height=17 src="check_search_files/image001.gif" v:shapes="_x0000_s1026"></span><![endif]></p>

</body>
<%
	rs.movenext
	loop
else
	response.redirect "matchedit.asp?stockholder_id="&rs(3)
end if
end if
rs.close

%>