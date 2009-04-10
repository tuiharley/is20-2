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
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Committee.committee_time<=  #"&stime&"# group by agent_type order by agent_type desc"
elseif request("question_id") = 98 then
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  group by agent_type order by agent_type desc"
else
sql="SELECT sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (SELECT vote.stockholder_id  FROM Question INNER JOIN vote ON Question.question_id = vote.question_id WHERE (vote.question_id = " & request("question_id") - 1 & ") AND (Question.question_date = #" & d & "#) AND (vote.status=Yes) ) and Committee.committee_date =  #" & d & "#"

rs.open sql,conn,1,3

	if rs.bof or rs.eof then
		before_stock = 0
	else 
		before_stock = rs(0)
	end if
rs.close
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (select stockholder_id from vote where  (vote.status=Yes) AND (question_id = " & request("question_id") & ")) and Committee.committee_date=  #" &d& "# group by agent_type order by agent_type desc"
end if
'Response.Write sql

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
    <font face="MS Sans Serif" size='4'size="4" color="#0000FF">
    สรุปจำนวนผู้เข้าร่วมการประชุม</font></span></b></td>
  </tr>
</table>
<br>
	<% 
	set rs1 =Server.CreateObject("ADODB.Recordset")
	if request("question_id") = 99 then
	sql="SELECT distinct Committee.agent FROM  Committee WHERE  Committee.committee_date=  #" &d& "# and Committee.committee_time<=  #"&stime&"# "
	elseif request("question_id") = 98 then
	sql="SELECT distinct Committee.agent FROM  Committee WHERE  Committee.committee_date=  #" &d& "# "
	else
	sql="SELECT distinct Committee.agent FROM  Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Stockholder.stockholder_id in (select stockholder_id from vote where question_id = "&request("question_id")&")"
	end if
rs1.open sql,conn,1,3
human = 0
'response.end
do until rs1.eof or rs1.bof
	human = human+1
	rs1.movenext
loop
'response.write "<b><p align=center><font face='MS Sans Serif' size='4' color=#0000FF><span lang=th>มีผู้เข้าร่วมประชุม "&human&" คน แบ่งเป็นผู้ถือหุ้น</span></font></p></b>"
rs1.close

	 %>
	 <b><p align=center><font face='MS Sans Serif' size='4' color=#0000FF><span lang=th>สำหรับจำนวนผู้ถือหุ้นที่มาประชุมในวันนี้ ประกอบด้วย</span></font></p></b>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="96%" id="AutoNumber2" height="1">
  <tr>
    <td width="30%" height="1">
    <p align="left">
    <b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">ผู้ถือหุ้นที่มาประชุมด้วยตนเอง จำนวน</span></font></b></td>
    <td width="5%" height="1" align="right">
    <b><font face="MS Sans Serif" size='4'color="#0000FF">
	<%x =rs("CountOfagent_type") 
	response.write x%></font></b></td>
    <td width="5%" height="1" align="left">
    <p><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">&nbsp;ราย</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">
    นับจำนวนหุ้นได้ </span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><% y=rs("sumstock")
	 response.write formatnumber (y,0)
	%>&nbsp;</font></b></td>
    <td width="6%" height="1" align="center">
    <p align="left"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">หุ้น</span></font></b></td>
      <td width="20%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">คิดเป็น</font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF">&nbsp;<%
   l = y * 100 / 3225546129
          response.write formatnumber (l,2)
		  rs.movenext
		  
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <tr>
    <td width="30%" height="1">
	<p align="left">
	<b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">ผู้รับมอบฉันทะจากผู้ถือหุ้น จำนวน </span></font></b></td>
    <td width="5%" height="1" align="right">
	<b><font face="MS Sans Serif" size='4'color="#0000FF"><%
	Dim agent , sumstock
	agent = 0
	sumstock = 0
	if not rs.eof then
		agent = rs("CountOfagent_type")
		sumstock = rs("sumstock")
	end if
	  response.write(agent)
		x = x+ agent
	
	
	%></font></b></td>
    <td width="5%" height="1" align="left">
    <p><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">&nbsp;ราย</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">
    นับจำนวนหุ้นได้</span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><%
	
	y1 = sumstock
	y = y+sumstock
	response.write y1
 %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">หุ้น</span></font></b></td>
      <td width="20%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">คิดเป็น</font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF">&nbsp;<%
   l = y1 * 100 / 3225546129
  response.write formatnumber (l,2)
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <tr>
    <td width="30%" height="1">
    <p align="left">
    <b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">รวมมีจำนวนผู้เข้าร่วมประชุมทั้งสิ้น</span></font></b></td>
    <td width="5%" height="1" align="right">
    <b><font face="MS Sans Serif" size='4'color="#0000FF">
	<% 
	'response.write x
	response.write human
	
	%></font></b></td>
    <td width="5%" height="1" align="left">
    <p><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">&nbsp;คน</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">
    นับจำนวนหุ้นได้ </span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><% 
	response.write formatnumber (y,0)
	%>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">หุ้น </span></font></b></td>
  <td width="20%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">คิดเป็น</font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><%
	  l = y * 100 / 3225546129%>
 <%=formatnumber (l,2) %>&nbsp;
  </font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr> 
  </table><br>
  <%
 if request("question_id") <> 99 and request("question_id")<> 98 then ' ถ้าเป็นดูจำนวนไม่ต้องแสดงก่อนหน้านี้
  if before_stock < y then 'Check ว่าจำนวนหุ้นก่อนหน้านี้มีมากกว่าวาระนี้หรือเปล่า
response.write "<b><font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;ในระหว่างการประชุมวาระนี้ มีผู้ถือหุ้นเข้าร่วมประชุมเพิ่ม ทำให้มีจำนวนหุ้นที่เข้าร่วมประชุมและมีสิทธิออกเสียง เพิ่มขึ้นจาก วาระที่แล้ว อีกจำนวน "&formatnumber(y-before_stock,0)&" หุ้น โดยมีจำนวนบุคคลซึ่งเป็นผู้ถือหุ้นและผู้รับมอบฉันทะ เข้าร่วมประชุมทั้งสิ้น "&human&" คน รวมจำนวนหุ้นที่มีสิทธิออกเสียงทั้งสิ้น "&formatnumber(y)&" หุ้น </font></b>"
	end if
end if
set rs =Server.CreateObject("ADODB.Recordset")
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id GROUP BY Committee.committee_date, Stockholder.stockholder_group, Committee.agent_type HAVING (((Committee.committee_date)=#"&d&"#))"
rs.open sql,conn,1,3
'response.write "<b><font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;คิดเป็นร้อยละ "
response.write "<b><font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;"
   l = y / 3225546129*100 
 ' response.write formatnumber (l,2)
  if l < 1/3*100 or human < 25 then
 ' response.write " ของหุ้น ที่ออกจำหน่ายได้แล้วทั้งหมดของบริษัท <font color='Red'> ซึ่งน้อยกว่า 1 ใน 3 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมด  หรือ มีผู้ถือหุ้น และผู้รับมอบฉันทะ จากผู้ถือหุ้นมาประชุมน้อยกว่า 25 คน จึงยังไม่ครบองค์ประชุม</font>"
  response.write " <font color='Red'> ซึ่งน้อยกว่า 1 ใน 3 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมด  หรือ มีผู้ถือหุ้น และผู้รับมอบฉันทะ จากผู้ถือหุ้นมาประชุมน้อยกว่า 25 คน จึงยังไม่ครบองค์ประชุม</font>"
  else response.write " ของหุ้น ที่ออกจำหน่ายได้แล้วทั้งหมดของบริษัท  ซึ่งครบเป็นองค์ประชุม ตามข้อบังคับของบริษัทข้อ 35 ซึ่งระบุไว้ว่า ในการประชุมผู้ถือหุ้น  ต้องมีผู้ถือหุ้น และผู้รับมอบฉันทะ จากผู้ถือหุ้นมาประชุมไม่น้อยกว่า 25 คน หรือไม่น้อยกว่ากึ่งหนึ่ง ของจำนวนผู้ถือหุ้นทั้งหมด และต้องมีหุ้นนับรวมกันไม่น้อยกว่า 1 ใน 3 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมด จึงจะเป็นองค์ประชุม<!--- จำนวนหุ้นที่ออกจำหน่ายแล้วทั้งหมด 3,169,632,356--->&nbsp;</font></b>"
end if
 
 If request("question_id") = 99 or request("question_id") = 98 then  ' ใส่เงื่อนไขว่าจะไม่ต้องแสดงตารางถ้าเป็นคำถาม%>
<br><br>
<table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#6600CC" width="85%" id="AutoNumber3" height="143" align="center">
  <tr>
    <td width="42%" colspan="2" height="38" rowspan="2">&nbsp;</td>
    <td width="28%" colspan="2" height="18">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">มาประชุมด้วยตนเอง</span></font></b></td>
    <td width="30%" colspan="2" height="18">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">มาประชุมแทน</span></font></b></td>
  </tr>
  <tr>
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">ผู้ถือหุ้น</span></font></b></td>
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">หุ้น</span></font></b></td>
    <td width="15%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">ผู้ถือหุ้น</span></font></b></td>
    <td width="15%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
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
 if request("question_id") = 99 then
sql1 ="SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Sum(Stockholder.stock) AS SumOfstock  FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  ((Committee.committee_time)<=#"&stime&"#) GROUP BY Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Stockholder.stockholder_group HAVING (((Committee.committee_date)=#"&d&"#) AND ((Stockholder.stockholder_group)='"& t&"')) ORDER BY Committee.agent_type DESC"
else
sql1 =" SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Sum(Stockholder.stock) AS SumOfstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id GROUP BY Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Stockholder.stockholder_group HAVING (((Committee.committee_date)=#"&d&"#) AND ((Stockholder.stockholder_group)='"& t&"')) ORDER BY Committee.agent_type DESC"
end if
  set rs1 =Server.CreateObject("ADODB.Recordset")
   rs1.open sql1,conn,1,3
  %>
  <tr>  
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">Group <%=t%> :</font></b></td>
    <td width="28%" height="20"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th"><%=group(t)%></span></font></b></td>
	    <%
		if rs1.eof and rs1.bof then%>
		<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
    <td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
	<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
    <td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
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
if temp1 = 1 then 
			if trim(temp) = "2"  then %>
				<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
			<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-
			<%elseif temp ="1" then%>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> -</td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> -</td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
			<% end if
else
%>
	<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
    <td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
	<%end if
	rs1.movenext 
	loop
	end if%>
  </tr>
  <%
  rs1.close
  next%>
  <tr>
  <td>
  </td>
  <td><b><font face="MS Sans Serif" size='4'color="#0000FF"> รวม</font>
  </td>
 <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <%response.write formatnumber(total3,0)%>
  </td>
  <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
     <%response.write formatnumber(total4,0)%>
  </td>
	   <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
   <%response.write formatnumber(total1,0)%>
  </td>
  <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
     <%response.write formatnumber(total2,0)%>
  </td>
  </tr>
</table>
 	<% End If 'จบเงื่อนไขว่าจะไม่ต้องแสดงตาราง%>
<% End If %><br><br>
<center><input value="        ย้อนกลับ        "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></center>
</body></html>
