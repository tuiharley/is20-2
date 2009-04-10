<!-- #include file="openform.inc"-->
<%
Dim total , vote_id, n, question_id, sub_question_id
total = request("i")
question_id = request.Form("question_id")
sub_question_id = request.Form("sub_question_id")
Dim rs, rs0,rs1,check1
set rs =Server.CreateObject("ADODB.Recordset")
set rs0 =Server.CreateObject("ADODB.Recordset")
set rs1 =Server.CreateObject("ADODB.Recordset")
set check1 =Server.CreateObject("ADODB.Recordset")


' ดึง vote_id มาจาก table
sql="Select max(vote_id) from vote"
rs1.open sql,conn,1,3
vote_id = rs1(0)
rs1.close

n = 1

for i = 1 to total 'วน loop ทำการเพิ่มข้อมูลตามจำนวนรอบที่รับมาจากหน้าที่แล้ว
if request("C" & i) <> "" then


if sub_question_id <> "0" then
			sql="Select vote_id from vote where question_id = " & question_id & " and sub_question_id = " & sub_question_id & " and stockholder_id = " & request("C" & i)
elseif sub_question_id = "0" then
			sql="Select vote_id from vote where question_id = " & question_id & " and stockholder_id = " & request("C" & i)
end if

			check1.open sql,conn,1,3
			if check1.eof or check1.bof then 'Check ว่าข้อมูลผู้ถือหุ้นนี้ได้บันทึกแล้วหรือยัง
					if sub_question_id = "0" then ' Check ว่ามีวาระย่อยหรือเปล่า
							sql1="insert into vote (vote_id,stockholder_id,question_id,status)  values(" & vote_id+n & "," & request("C" & i) & "," & request("question_id") & ",YES)"  
	 						conn.execute sql1 'เพิ่มข้อมูลใน Table Vote
														
								sql = "select stock from stockholder where stockholder_id ="&request("C"&i)  'ดึงจำนวนหุ้นของผู้ถือหุ้น
								rs.open sql,conn,1,3
							sql="insert into result_vote(vote_id,stock,choice) values("&vote_id+n&","&rs(0)&",'Y')"  
							rs.close
							conn.execute sql
							n = n+1
					elseif sub_question_id <> "0" then
	 						sql1="insert into vote (vote_id,stockholder_id,question_id,sub_question_id,status) values(" & vote_id+n & "," & request("C" & i ) & "," & question_id & "," & sub_question_id & ",YES)"  
							conn.execute sql1 'เพิ่มข้อมูลใน Table Vote
							sql = "select stock from stockholder where stockholder_id ="&request("C"& i )           'ดึงจำนวนหุ้นของผู้ถือหุ้น
							rs.open sql,conn,1,3
							
							sql="insert into result_vote (vote_id,stock,choice) values("&vote_id+n&"," & rs(0) & ",'Y')"  
							rs.close
							conn.execute sql
							n = n+1
				end if
	end if
	check1.close
		' ส่วนที่ทำไว้เผื่อจะให้ลบได้
			if ddd = "DDD" then
			else
					set check1 =Server.CreateObject("ADODB.Recordset")
					sql="Select vote_id from vote where question_id = " & request("question_id") & " and stockholder_id = "&request("C"&i)
					check1.open sql,conn,1,3
					if check1.eof or check1.bof then 'Check ว่าข้อมูลผู้ถือหุ้นนี้ได้บันทึกแล้วหรือยัง
							if rs0.eof or rs0.bof then ' Check ว่ามีวาระย่อยหรือเปล่า
									sql1="delete from vote where vote_id ="&check1(0)  
	 								conn.execute sql1 'ลบข้อมูลใน Table Vote
									sql="delete from result_vote where vote_id = "&check1(0)
									conn.execute sql
							else
								do until rs0.eof 
	 							sql1="delete from  vote where vote_id="&check1(0)
								conn.execute sql1 'ลบข้อมูลใน Table Vote
								rs0.movenext
								sql="delete from result_vote where vote_id ="&check1(0)  
								conn.execute sql
								n = n+1
								loop
						rs0.movefirst
						end if
			end if
			check1.close
		' จบส่วนลบ
		end if
end if
next
%>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">บันทึก</font></b></span><b><font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">ชื่อผู้มีสิทธิออกเสียง</span></font></b></td>
  </tr>
</table>  
  <p>&nbsp;</p>
<p align="center"><br>
<br>
<font face="MS Sans Serif" color="#0000FF"><b><span lang="th">
ข้อมูลของท่านได้รับการบันทึกแล้ว<br>
&nbsp;</span></b></font></p>
 <!--  <form action= "question_index.asp" method="post"> -->
 <form action= "blank.asp" method="post">
<p align="center">                                  
 <!-- <a href="question_index.asp"> -->
 <input type="hidden" name="question_id" value="<%=request("question_id")%>" >
 <input type="hidden" name="sub_question_id" value="<%=request("sub_question_id")%>" >
 <input type="submit" value="     ตกลง     " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<!--
</a>
-->