<!-- #include file="openform.inc"-->
<%
 	d=date()
	d=Month(d) & "/" & Day(d) & "/" & Year(d)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql = "select start_time from meeting where committee_date = #"&d&"#"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
stime = time()
else
stime = rs(0)
end if
rs.close
if request("question_id") = 99 then
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Committee.committee_time<=  #"&stime&"# group by agent_type"
elseif request("question_id") = 98 then
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  group by agent_type"
else
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (select stockholder_id from vote where question_id = "&request("question_id")&") group by agent_type"
end if
'response.write sql
'response.end
rs.open sql,conn,1,3
if rs.eof or rs.bof  then
response.write "<br><br><center>ยังไม่มีผู้ลงทะเบียนเข้าร่วมประชุม</center>"
else
%>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <span lang="th">
    <font face="MS Sans Serif" size="4" color="#0000FF">
    สรุปจำนวนผู้เข้าร่วมการประชุม</font></span></b></td>
  </tr>
</table>
<br>
	<% 
	set rs1 =Server.CreateObject("ADODB.Recordset")
	if request("question_id") = 99 then
	sql="SELECT distinct Committee.agent FROM  Committee WHERE  Committee.committee_date=  #" &d& "# and Committee.committee_time<=  #"&stime&"# "
	else
	sql="SELECT distinct Committee.agent FROM  Committee WHERE  Committee.committee_date=  #" &d& "# "
	end if
rs1.open sql,conn,1,3
human = 0
do until rs1.eof or rs1.bof
	human = human+1
	rs1.movenext
loop
response.write "<b><p align=center><font face='MS Sans Serif' color=#0000FF><span lang=th>มีผู้เข้าร่วมประชุม "&human&" คน แบ่งเป็นผู้ถือหุ้น</span></font></p></b>"
rs1.close
	 %>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="96%" id="AutoNumber2" height="1">
  <tr>
    <td width="34%" height="1">
    <p align="right">
    <b><font face="MS Sans Serif" color="#0000FF"><span lang="th">มาประชุมแทน</span></font></b></td>
    <td width="10%" height="1" align="right">
    <b><font face="MS Sans Serif" color="#0000FF">
	<%x =rs("CountOfagent_type") 
	response.write x%></font></b></td>
    <td width="12%" height="1" align="left">
    <p><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&nbsp;ผู้ถือหุ้น</span></font></b></td>
    <td width="15%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">
    จำนวนหุ้นที่ได้ </span></font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" color="#0000FF"><% y=rs("sumstock")
	 response.write formatnumber (y,0)
	%>&nbsp;</font></b></td>
    <td width="6%" height="1" align="center">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th"> หุ้น</span></font></b></td>
  </tr>
  <tr>
    <td width="34%" height="1">
	<p align="center">
	</td>
    <td width="10%" height="1" align="center">
	<p align="center">
	</td>
    <td width="12%" height="1" align="center">
	</td>
    <td width="15%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" color="#0000FF">คิดเป็น</font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" color="#0000FF"><%
   l = y * 100 / 3225546129
          response.write formatnumber (l,4)
		  rs.movenext
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <tr>
    <td width="34%" height="1">
	<p align="right">
	<b><font face="MS Sans Serif" color="#0000FF"><span lang="th">มาประชุมด้วยตนเอง</span></font></b></td>
    <td width="10%" height="1" align="right">
	<b><font face="MS Sans Serif" color="#0000FF"><%
	response.write rs("CountOfagent_type")
	x = x+ rs("CountOfagent_type")
%></font></b></td>
    <td width="12%" height="1" align="left">
    <p><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&nbsp;ผู้ถือหุ้น</span></font></b></td>
    <td width="15%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">
    จำนวนหุ้นที่ได้</span></font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" color="#0000FF"><%
	'response.write rs("sumstock")
	y1 = rs("sumstock")
	y = y+rs("sumstock")
	response.write formatnumber (y1,0)
 %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">หุ้น</span></font></b></td>
  </tr>
  <tr>
    <td width="34%" height="1">
	<p align="left">
	</td>
    <td width="10%" height="1" align="center">
	<p align="left">
	</td>
    <td width="12%" height="1" align="center">
	</td>
    <td width="15%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" color="#0000FF">คิดเป็น</font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" color="#0000FF"><%
   l = y1 * 100 / 3225546129
  response.write formatnumber (l,4)
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <tr>
    <td width="34%" height="1">
    <p align="right">
    <b><font face="MS Sans Serif" color="#0000FF"><span lang="th">รวมผู้ถือหุ้นทั้งหมด</span></font></b></td>
    <td width="10%" height="1" align="right">
    <b><font face="MS Sans Serif" color="#0000FF">
	<% 
	response.write x
	%></font></b></td>
    <td width="12%" height="1" align="left">
    <p><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&nbsp;ผู้ถือหุ้น</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">
    จำนวนหุ้นที่ได้ </span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" color="#0000FF"><% 
	response.write formatnumber (y,0)
	%>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">หุ้น </span></font></b></td>
  </tr>
  <tr>
    <td width="34%" height="1">
    <p align="right">
    <b><font face="MS Sans Serif" color="#0000FF"><span lang="th"></span></font></b>
	</td>
    <td width="10%" height="1" align="right"><p align="right">
	</td>
    <td width="12%" height="1" align="left"><b><font face='MS Sans Serif' color=#0000FF><span lang=th>&nbsp;</span></font></b>
	</td>
    <td width="15%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" color="#0000FF">คิดเป็น</font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" color="#0000FF"><%
   l = y * 100 / 3225546129
  response.write formatnumber (l,4)
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <%
set rs =Server.CreateObject("ADODB.Recordset")
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id GROUP BY Committee.committee_date, Stockholder.stockholder_group, Committee.agent_type HAVING (((Committee.committee_date)=#"&d&"#))"
rs.open sql,conn,1,3
%>
<tr><td colspan="5" align="right"><b><font face="MS Sans Serif" color="#0000FF">จากจำนวนหุ้นที่ออกจำหน่ายแล้วทั้งหมด 3,169,632,356&nbsp;</font></b></td><td><b><font face="MS Sans Serif" color="#0000FF">หุ้น</font></b></td></tr>
</table>

<br>
<table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#6600CC" width="98%" id="AutoNumber3" height="143" align="center">
  <tr>
    <td width="42%" colspan="2" height="38" rowspan="2">&nbsp;</td>
    <td width="28%" colspan="2" height="18">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th">มาประชุมด้วยตนเอง</span></font></b></td>
    <td width="30%" colspan="2" height="18">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th">มาประชุมแทน</span></font></b></td>
  </tr>
  <tr>
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th">ผู้ถือหุ้น</span></font></b></td>
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th">หุ้น</span></font></b></td>
    <td width="15%" height="20">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th">ผู้ถือหุ้น</span></font></b></td>
    <td width="15%" height="20">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th">หุ้น</span></font></b></td>
  </tr>

  <%
  rs.close

dim group(4) 
group(1) = " นิติบุคคลไทย"
group(2) = " Foreign Juristic Person"
group(3) = " นามสกุล ก-ป"
group(4) = " นามสกุล ผ-ฮ"
total1= 0
total2= 0
total3 = 0
total4 = 0


 for t = 1 to 4
sql1 =" SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Sum(Stockholder.stock) AS SumOfstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id GROUP BY Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Stockholder.stockholder_group HAVING (((Committee.committee_date)=#"&d&"#) AND ((Stockholder.stockholder_group)='"& t&"'))ORDER BY Stockholder.stockholder_group"
'response.write sql1

  set rs1 =Server.CreateObject("ADODB.Recordset")
   rs1.open sql1,conn,1,3
  %>
 

  <tr>  
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" color="#0000FF">Group <%=t%> :</font></b></td>
    <td width="28%" height="20"><b><font face="MS Sans Serif" color="#0000FF">
    <span lang="th"><%=group(t)%></span></font></b></td>
	
	
    <%
		if rs1.eof and rs1.bof then%>
		<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" color="#0000FF">-</td>
    <td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" color="#0000FF">-</td>
	<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" color="#0000FF">-</td>
    <td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" color="#0000FF">-</td>
		<%
		else
			do while not rs1.eof 
			temp = rs1("agent_type")
			if trim(temp) = "1"  then
				total1 = total1+rs1("CountOfagent_type")
				total2 = total2 +rs1("SumOfstock")
	else
         total3 = total3+rs1("CountOfagent_type")
				total4 = total4 +rs1("SumOfstock")
	end if
	temp1 = rs1.recordcount
	'response.write temp1
	%>

<%if temp1 = 1 then 
				  if trim(temp) = "2"  then %>
				<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> 			 <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
			<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" color="#0000FF">-
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF">-
			<%elseif temp ="1" then%>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> -</td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> -</td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>

<% end if
%>
<% 
else
%>
	<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
    <td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
	<%end if%>

	<%
	rs1.movenext 
	loop
	%>
	<%end if%>
  </tr>
  <%
  rs1.close
  next%>
  <tr>
  <td>
  </td>
  <td><b><font face="MS Sans Serif" color="#0000FF"> รวม</font>
  </td>
 <td> <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
    <%response.write formatnumber(total3,0)%>
  </td>
  <td> <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
     <%response.write formatnumber(total4,0)%>
  </td>
	   <td> <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
   <%response.write formatnumber(total1,0)%>
  </td>
  <td> <p align="center"><b><font face="MS Sans Serif" color="#0000FF">
     <%response.write formatnumber(total2,0)%>
  </td>
  </tr>
</table>
<% End If %>
</body>
</html>
