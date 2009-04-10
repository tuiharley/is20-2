<!-- #include file="openform.inc"-->
<% 
  vote_total = 0
	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" group by sub_question_id"
	rs.open sql,conn,1,3
'	if rs.eof or rs.bof then
	if rs(1) = 0 then
	response.write "<br><br><b></b><center><b>ยังไม่มีการลงคะแนน</b></center>"
	else
	total_stock = rs(0)
	rs.close
 %> <body>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    แสดงผลการลงคะแนน</font></b></span></td>
  </tr>
</table><br>
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

sql="SELECT sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (SELECT vote.stockholder_id  FROM Question INNER JOIN vote ON Question.question_id = vote.question_id WHERE (((vote.question_id)="&request("question_id")-1&") AND ((Question.question_date)=#"&d&"#))) and Committee.committee_date =  #" &d& "#"
rs.open sql,conn,1,3
	if rs.bof or rs.eof then
		before_stock = 0
	else 
		before_stock = rs(0)
	end if
rs.close
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (select stockholder_id from vote where question_id = "&request("question_id")&") and Committee.committee_date=  #" &d& "# group by agent_type order by agent_type desc"
end if
rs.open sql,conn,1,3
if rs.eof or rs.bof  then
response.write "<br><br><center>ยังไม่มีผู้ลงทะเบียนเข้าร่วมประชุม</center>"
else
	set rs1 =Server.CreateObject("ADODB.Recordset")
		sql="SELECT distinct Committee.agent FROM  Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Stockholder.stockholder_id in (select stockholder_id from vote where question_id = "&request("question_id")&")"
rs1.open sql,conn,1,3
human = 0
'response.end
do until rs1.eof or rs1.bof
	human = human+1
	rs1.movenext
loop
'response.write "<b><p align=center><font face='MS Sans Serif' size='4' color=#0000FF><span lang=th>มีผู้เข้าร่วมประชุม "&human&" คน แบ่งเป็นผู้ถือหุ้น</span></font></p></b>"
rs1.close
x =rs("CountOfagent_type") 
y=rs("sumstock")
   l = y * 100 / 3225546129
   		  rs.movenext
		  	x = x+ rs("CountOfagent_type")
	y1 = rs("sumstock")
	y = y+rs("sumstock")
	   l = y1 * 100 / 3225546129
	     if before_stock < y then 'Check ว่าจำนวนหุ้นก่อนหน้านี้มีมากกว่าวาระนี้หรือเปล่า
response.write "<font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;ในระหว่างการประชุมวาระนี้ มีผู้ถือหุ้นเข้าร่วมประชุมเพิ่ม ทำให้มีจำนวนหุ้นที่เข้าร่วมประชุมและมีสิทธิออกเสียง เพิ่มขึ้นจาก วาระที่แล้ว อีกจำนวน "&formatnumber(y-before_stock,0)&" หุ้น โดยมีจำนวนบุคคลซึ่งเป็นผู้ถือหุ้นและผู้รับมอบฉันทะ เข้าร่วมประชุมทั้งสิ้น "&human&" คน รวมจำนวนหุ้นที่มีสิทธิออกเสียงทั้งสิ้น "&formatnumber(y)&" หุ้น </font><br>"
end if
rs.close

' Show Result vote ---------------------------------------------------------------------------------------------------------------------------------------------

	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="SELECT Sum(Result_vote.stock) AS SumOfstock, Count(Result_vote.stock) AS CountOfstock, Vote.sub_question_id, Sub_question.sub_question_name FROM Sub_question INNER JOIN (Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id) ON Sub_question.sub_question_id = Vote.sub_question_id WHERE (((Vote.question_id)="&request("question_id")&")) and result_vote.choice = 'Y' GROUP BY Vote.sub_question_id, Sub_question.sub_question_name ORDER BY Sum(Result_vote.stock) DESC"
	rs.open sql,conn,1,3
'	if rs.eof or rs.bof then
	if rs(1) = 0 then
	response.write "<br><br><b></b><center><b>ยังไม่มีการลงคะแนน</b></center>"
	else
		response.write "<br><br><table width='70%' align='center'>"
		i = 1
		do until rs.eof
		response.write "<tr><td align='left'><b><font face='MS Sans Serif' size='4'>&nbsp;"&i&" "&rs(3)&"</font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>ได้คะแนน&nbsp;</font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>"&formatnumber(rs(0),0)&"&nbsp;เสียง</font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>&nbsp;คิดเป็น&nbsp;</font></b></td><td align='right'><b><font face='MS Sans Serif' size='4'>"&formatnumber(rs(0)/total_stock*100,2)&"&nbsp;%</font></b></td></tr>"
i = i + 1
		rs.movenext
		loop
		response.write "</table>"
	end if

 %>
<br><br>
<center><input value="        ย้อนกลับ        "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></center>
<div align="center"><% 	response.end
select case rs1(1)
case "1","6" : condition = 50
case "2" : condition = 74.9999
case "3" : condition = 66.6667
end select  
'response.write "__"&summ&"__"
'response.end
if cint(summ) > condition then
	if cint(rs1(1)) > 5 then
	Set rs2=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" and result_vote.choice = 'N'"
	rs2.open sql,conn,1,3
		if rs2(1) >= 25 and rs2(0)/3225546129*100 >= 10 then
			response.write "<font size=+2 color=#C63333><b>ดังนั้น มีผู้ถือหุ้น 25 รายซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของบริษัท คัดค้าน</b></font>"
		else 
			response.write "<font size=+2 color=#1A6858 ><b>ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนเกินกึ่งหนึ่งของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง และไม่มีผู้ถือหุ้น 25 รายซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของบริษัท คัดค้าน</b></font>"
		end if
		rs2.close
	else
	response.write "<font size=+2 color=#1A6858 ><b>ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ "
		select case rs1(1)
		case "1" : response.write " มีจำนวนเกินกึ่งหนึ่ง ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง </b></font>"
		case "2" : response.write " มีจำนวนเกิน 3 ใน 4 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		case "3" : response.write " มีจำนวนเกิน 2 ใน 3 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		end select 
	end if
else
	response.write "<font size=+2 color=#C63333><b>"
		select case rs1(1)
		case "1","6" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงไม่เห็นชอบ มีจำนวนเกินกึ่งหนึ่ง ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง </b></font>"
		case "2" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนไม่เกิน 3 ใน 4 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		case "3" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนไม่เกิน 2 ใน 3 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		end select 
	end if
	rs1.close
End If 
%></div><br>
<br>
<center><input value="        ย้อนกลับ        "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></center>
</body>