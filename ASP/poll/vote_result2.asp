<!-- #include file="openform.inc"-->
<% 
  vote_total = 0
	Set rs=Server.CreateObject("ADODB.recordset")
			sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id") & " AND Vote.status=Yes "
			if request("sub_question_id") <> 0 then
						sql = sql & " and vote.sub_question_id =" & request("sub_question_id")
			end if
	rs.open sql,conn,1,3

			if rs(1) = 0 then
					response.write "<br><br><b></b><center><b>ยังไม่มีการลงคะแนน</b></center>"
			else
					total_stock = rs(0)
			rs.close
 %>
 <body>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    ผลการลงคะแนน</font></b></span></td>
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

sql="SELECT sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (SELECT vote.stockholder_id  FROM Question INNER JOIN vote ON Question.question_id = vote.question_id WHERE (((vote.question_id)="  & request("question_id")-1 & ") AND ((Question.question_date)=#"&d&"#))) and Committee.committee_date =  #" &d& "#"
'Response.Write sql & "<br>"	'
rs.open sql,conn,1,3
	if rs.bof or rs.eof then
		before_stock = 0
	else 
		before_stock = rs(0)
	end if
rs.close
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (select stockholder_id from vote where status=yes and question_id = " & request("question_id") & ") and Committee.committee_date=  #" &d& "# group by agent_type order by agent_type desc"
'Response.Write sql & "<br>"	'
end if
rs.open sql,conn,1,3

if rs.eof or rs.bof  then
response.write "<br><br><center>ยังไม่มีผู้ลงทะเบียนเข้าร่วมประชุม</center>"
else
	set rs1 =Server.CreateObject("ADODB.Recordset")
		sql="SELECT distinct Committee.agent FROM  Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Stockholder.stockholder_id in (select stockholder_id from vote where question_id = " & request("question_id") & ")"
'response.Write(sql)
rs1.open sql,conn,1,3
human = 0
'response.end
do until rs1.eof or rs1.bof
	human = human+1
	rs1.movenext
loop
'response.write "<b><p align=center><font face='MS Sans Serif' size='6' color=#0000FF><span lang=th>มีผู้เข้าร่วมประชุม "&human&" คน แบ่งเป็นผู้ถือหุ้น</span></font></p></b>"
rs1.close
Dim  agent, sumstock
agent = 0 
sumstock = 0 
x =rs("CountOfagent_type") 
y=rs("sumstock")
   l = y * 100 / 3225546129
   		' response.Write(rs("CountOfagent_type"))
		 'response.End()
   		  rs.movenext
		  if not rs.eof then
		  	agent = rs("CountOfagent_type")
			sumstock = rs("sumstock")
		  end if
		  
		  	x = x+ agent
	y1 = sumstock
	y = y + sumstock
	
	   l = y1 * 100 / 3225546129
	   
		rs.Close
		
		sql="SELECT count(Committee.stockholder_id) as new_holder FROM Committee WHERE  Committee.committee_date = #" &d& "# AND Committee.committee_time > (SELECT Question.question_time FROM Question WHERE Question.question_id = " &   request("question_id")-1 &  ")"
		rs.open sql,conn,1,3
		if  not rs.Eof or Isnull(rs(0)) then
			new_holder = rs(0)
		else
			new_holder = 0 
		end if
		rs.Close
	     if before_stock < y then 'Check ว่าจำนวนหุ้นก่อนหน้านี้มีมากกว่าวาระนี้หรือเปล่า
		 %>
<font face='MS Sans Serif' size='5' color='#0000FF'>&nbsp;&nbsp;มีผู้ถือหุ้นเข้าร่วมประชุมเพิ่ม <%=new_holder%> ราย  คิดเป็นจำนวนหุ้น <%=formatnumber(y-before_stock,0)%> หุ้น รวมมีผู้เข้าร่วมประชุม <%=human%> คน รวมจำนวนหุ้นที่เข้าประชุมในวาระนี้ <%=formatnumber(y,0)%> หุ้น </font><br>
<%
end if

' Show Result vote ----------------------------------------------------------------------------------------------------------------------
		Dim sub_question
		Set rs1=Server.CreateObject("ADODB.recordset")
		sql ="select question_name,question_type from question where question_id=" & request("question_id")
		rs1.open sql,conn,1,3 '~~~~~~~~~~~~~~~~~~~~~~วาระหลัก~~~~~~~~~~~~~~~~~~~
		%>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face='MS Sans Serif' size='6'><b><%=rs1(0)%></b></font><br>
		<%
		
		if request("sub_question_id") <> 0 then
		
		sub_question = request("sub_question_id")
				Set rs=Server.CreateObject("ADODB.recordset")
				sql ="select sub_question_name from sub_question where sub_question_id=" & sub_question
					rs.open sql,conn,1,3 '~~~~~~~~~~~~~~~~~~วาระย่อย~~~~~~~~~~~~~~~~~~~~~~
							%>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face='MS Sans Serif' size='6'><%=rs(0)%></font><br>
							<%
					rs.close
					
		end if
		
		   if  rs1(1) = 4 then
					Set rs10=Server.CreateObject("ADODB.recordset")
					if sub_question = 0 then
							sql = "SELECT Sum(Result_vote.stock) AS SumOfstock FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id WHERE (((Vote.question_id)=" & request("question_id") & ") AND ((Result_vote.choice)<>'o'))"
					else
							sql ="SELECT Sum(Result_vote.stock) AS SumOfstock FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id WHERE (((Vote.question_id)=" & request("question_id") & ")  AND  (Vote.sub_question_id = " & sub_question & ")  AND ((Result_vote.choice)  <> 'o')) "
					end if
					
					rs10.open sql,conn,1,3 
						total_stock =  rs10("SumOfstock")
					rs10.close

		   end if
		
 %>
<br>
<table width="97%" align="center" border="0">
<tr>
<td   width="18%" valign=top><font face="MS Sans Serif" size='6'>เห็นชอบ</font></td><td align=right><font face="MS Sans Serif" size='6'>		<% 
	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" and result_vote.choice = 'Y' AND VOTE.STATUS=YES"
if request("sub_question_id") <> 0 then
	sql = sql&" and vote.sub_question_id ="&request("sub_question_id")
end if
	rs.open sql,conn,1,3
	if rs(1) = 0 then%>
	   0 เสียง</font></td><td align=right><font face='MS Sans Serif' size='6'> คิดเป็น</font></td>
	   <td align=right   valign=top><font face='MS Sans Serif' size='6'>0%</font>"
	<%
	else
		vote_total = vote_total + rs(0)%>
		<%=formatnumber(rs(0),0)%> เสียง</td>
		<td align=right  valign=top><font face='MS Sans Serif' size='6'> คิดเป็น</font></td>
		
		<td align=right   valign=top><font face='MS Sans Serif' size='6'><%=formatnumber(rs(0)/total_stock*100,2)%>%</font>
	<%
	ans_y = formatnumber(rs(0)/total_stock*100,2)
	summ = formatnumber(rs(0)/total_stock*100,4)
	
	end if
	rs.close
	 %></td><!--- <td colspan=5 valign="top"><font face='MS Sans Serif' size='6'>ของจำนวนเสียงทั้งหมดของผู้ถือหุ้น<br>ที่มาประชุมและมีสิทธิออกเสียง</font> </td> ---><tr><td><br></td></tr>
<tr>
<td><font face='MS Sans Serif' size='6'>ไม่เห็นชอบ </font></td><td align="right"><font face='MS Sans Serif' size='6'>	<% 
	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" and result_vote.choice = 'N' AND VOTE.STATUS = YES"
if request("sub_question_id") <> 0 then
	sql = sql&" and vote.sub_question_id ="&request("sub_question_id")
end if
	rs.open sql,conn,1,3
if rs(1) = 0 then %>
		   0 เสียง</font></td>
		   <td align=right><font face='MS Sans Serif' size='6'> คิดเป็น</font></td>
		   <td align=right><font face='MS Sans Serif' size='6'> 0%</font>
	<%
	else
	vote_total = vote_total + rs(0)%>
		<%= formatnumber(rs(0),0)%> เสียง </font></td>
		<td align=right><font face='MS Sans Serif' size='6'> คิดเป็น </font></td>
		<td align=right><font face='MS Sans Serif' size='6'><%=formatnumber(rs(0)/total_stock*100,2)%>%</font>
	<%
	ans_n = formatnumber(rs(0)/total_stock*100,2)
	end if
	rs.close
	 %></td> <tr><td><br></td></tr>
<tr>
<td><font face='MS Sans Serif' size='6'>งดออกเสียง</font></td><td align=right><font face='MS Sans Serif' size='6'>
<% 
	Set rs4=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" and result_vote.choice = 'O'  AND VOTE.STATUS = YES"
if request("sub_question_id") <> 0 then
	sql = sql & " and vote.sub_question_id =" & request("sub_question_id")
end if
	rs4.open sql,conn,1,3
if rs4(1) = 0 then%>
		   0 เสียง</font></td>
		   <%if  rs1(1) <> 4 then%>
		   <td align=right><font face='MS Sans Serif' size='6'> คิดเป็น </font></td>
		   <td align=right><font face='MS Sans Serif' size='6'>0%</font>
		   <%else%>
			<td align="right" colspan="2">&nbsp;</td>
			<%end if%>
	<%
	else
	%>
		<%=formatnumber(rs4(0),0)%> เสียง</font></td>
		<%if  rs1(1) <> 4 then%>
		<td align=right><font face='MS Sans Serif' size='6'> คิดเป็น</font></td>
		<td align=right><font face='MS Sans Serif' size='6'><%=formatnumber(rs4(0)/total_stock*100,2)%>%</font>
		<%else%>
		<td align="right" colspan="2">&nbsp;</td>
		<%end if%>
	<%
	ans_o = formatnumber(rs4(0)/total_stock*100,2)
end if
	 %></td>
</table><br>
<!--- ------------------------------------------ Graph ------------------------------------------ --->	
	<table width="60%"  border="1" align="center">
	<tr valign="bottom">
	
<% 	
Dim n 
n = 3
if  rs1(1) = 4 then
	n = 2
end if

			for i = 1 to n  
					select case i
						case "1" 
							bgbar = "#3FA086"
							h = ans_y
						case "2" 
							bgbar = "#C83C8C"
							h = ans_n
						case "3" 
							bgbar = "#435BAD"
							h = ans_o
					end select
					
					if h = "" then
							h = 0
					end if
 %>
    <td align="center">
<% response.write h&" %"%>
	<table height="<%= h %>" width="65" border="0">
				<tr valign="bottom" align="center" bgcolor="<%= bgbar %>">
				<td > 
				</td>
				</tr>
	</table>
     </td>
	<% next %>
	</tr>
	<tr align="center">
 <td width="25%"><font size="5">เห็นชอบ</font></td>
 <td  width="25%"><font size="5">ไม่เห็นชอบ</font></td>
 <%if  rs1(1) <> 4 then%>
 <td  width="25%"><font size="5">งดออกเสียง</font></td>
 <%end if%>
	</tr>
</table>
<!--- ------------------------------------------ Graph ------------------------------------------ --->
<br>
<div align="center"><% 
select case rs1(1)
case "1","6" : condition = 50
case "2","9","10" : condition = 74.9999
case "3" : condition = 66.6667


end select  
if cint(summ) > condition then
	if cint(rs1(1)) > 5 then
	Set rs2=Server.CreateObject("ADODB.recordset")
	sql ="SELECT sum(Result_vote.stock),count(Result_vote.stock) FROM Vote INNER JOIN Result_vote ON Vote.vote_id = Result_vote.vote_id where vote.question_id = "&request("question_id")&" and result_vote.choice = 'N' AND VOTE.STATUS = YES"
	rs2.open sql,conn,1,3
	select case rs1(1)
		case "6"
				if rs2(1) >= 25 and rs2(0)/3225546129*100 >= 10 then
						response.write "<font face='MS Sans Serif' size=6 color=#C63333><b>ดังนั้น มีผู้ถือหุ้น 25 รายซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของบริษัท คัดค้าน</b></font>"
				else 
						response.write "<font face='MS Sans Serif' size=6 color=#1A6858 ><b>ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนเกินกึ่งหนึ่งของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง และไม่มีผู้ถือหุ้น 25 รายซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนหุ้นที่จำหน่ายได้แล้วทั้งหมดของบริษัท คัดค้าน</b></font>"
				end if
				rs2.close
		case "9"
			
				if rs2(0)/total_stock*100 >= 10 then
						response.write "<font face='MS Sans Serif' size=6 color=#C63333><b>ดังนั้น มีผู้ถือหุ้นซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนเสียงทั้งหมดซึ่งมาประชุมของบริษัทคัดค้าน</b></font>"
				else 
						response.write "<font face='MS Sans Serif' size=6 color=#1A6858 ><b>ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนเกิน 3 ใน 4 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง และไม่มีผู้ถือหุ้นซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 10 ของจำนวนเสียงทั้งหมดซึ่งมาประชุมของบริษัทคัดค้าน</b></font>"
				end if
				rs2.close
		case "10"
				if rs2(0)/total_stock*100 >= 5 then
						response.write "<font face='MS Sans Serif' size=6 color=#C63333><b>ดังนั้น มีผู้ถือหุ้นซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 5 ของจำนวนเสียงทั้งหมดซึ่งมาประชุมของบริษัทคัดค้าน</b></font>"
				else 
						response.write "<font face='MS Sans Serif' size=6 color=#1A6858 ><b>ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนเกิน 3 ใน 4 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง และไม่มีผู้ถือหุ้นซึ่งถือหุ้นรวมกันตั้งแต่ร้อยละ 5 ของจำนวนเสียงทั้งหมดซึ่งมาประชุมของบริษัทคัดค้าน</b></font>"
				end if
				rs2.close
		end select
	else
	response.write "<font face='MS Sans Serif' size=6 color=#1A6858 ><b>ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ "
		select case rs1(1)
		case "1" : response.write " มีจำนวนเกินกึ่งหนึ่ง ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง </b></font>"
		case "2" : response.write " มีจำนวนเกิน 3 ใน 4 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		case "3" : response.write " มีจำนวนเกิน 2 ใน 3 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		case "4" : response.write " มีจำนวนเกินกึ่งหนึ่ง ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและออกเสียงลงคะแนน </b></font>"
		end select 
	end if
else
	response.write "<font face='MS Sans Serif' size=6 color=#C63333><b>"
		select case rs1(1)
		case "1","6" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงไม่เห็นชอบ มีจำนวนเกินกึ่งหนึ่ง ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง </b></font>"
		case "2","9","10" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนไม่เกิน 3 ใน 4 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		case "3" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงเห็นชอบ มีจำนวนไม่เกิน 2 ใน 3 ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและมีสิทธิออกเสียง  </b></font>"
		case "4" : response.write "ดังนั้น ผู้ถือหุ้นที่ลงคะแนนเสียงไม่เห็นชอบ มีจำนวนเกินกึ่งหนึ่ง ของจำนวนเสียงทั้งหมดของผู้ถือหุ้นที่มาประชุมและิออกเสียงลงคะแนน </b></font>"
		end select 
	end if
	
	rs1.close
End If 

%></div><br>
</body>