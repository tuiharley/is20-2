<!-- #include file="openform.inc"-->
<%

Dim total , vote_id, n, question_id, sub_question_id , i 
total = request("i")
question_id = request.Form("question_id")
sub_question_id = request.Form("sub_question_id")

Dim rs,rs0,rs1
set rs =Server.CreateObject("ADODB.Recordset")
set rs0 =Server.CreateObject("ADODB.Recordset")
set rs1 =Server.CreateObject("ADODB.Recordset")



if sub_question_id <> "0" then
	sql = "UPDATE  VOTE SET STATUS= NO WHERE (Vote.question_id= " & question_id & ") AND (VOTE.sub_question_id= " & sub_question_id & ")"
else
	sql = "UPDATE  VOTE SET STATUS= NO WHERE (Vote.question_id= " & question_id & ") "
end if
rs0.open sql,conn,1,3

for i = 1 to total 'วน loop ทำการเพิ่มข้อมูลตามจำนวนรอบที่รับมาจากหน้าที่แล้ว
if request("C" & i) <> "" then
		if sub_question_id <> "0" then
			sql = "UPDATE  VOTE SET STATUS= yes WHERE (Vote.question_id= " & request("question_id")	 & ") AND (VOTE.sub_question_id= " & sub_question_id & ") AND (Vote.stockholder_id= " & request("C" & i) & ")"
			rs0.open sql,conn,1,3
			sql = "SELECT Stockholder.stock, Vote.vote_id FROM Stockholder INNER JOIN Vote ON Stockholder.stockholder_id = Vote.stockholder_id WHERE (Vote.question_id=" & request("question_id") & ") AND (VOTE.sub_question_id= " & sub_question_id & ") AND (Stockholder.stockholder_id=" & request("C" & i) & ")"
			rs1.open sql,conn,1,3
			sql = "SELECT * FROM RESULT_VOTE  WHERE VOTE_ID = " &  rs1("vote_id") 
			rs.open sql,conn,1,3
			if rs.RecordCount = 0  then
			sql="insert into result_vote(vote_id,stock,choice) values(" & rs1("vote_id") & "," & rs1("stock") & ",'Y')"  
			rs0.open sql,conn,1,3
			end if
			rs.Close
			rs1.close
		elseif sub_question_id = "0" then
			sql = "UPDATE  VOTE SET STATUS= yes WHERE (Vote.question_id= " & request("question_id")	 & ") AND (Vote.stockholder_id= " & request("C" & i) & ")"
			rs0.open sql,conn,1,3
			sql = "SELECT Stockholder.stock, Vote.vote_id FROM Stockholder INNER JOIN Vote ON Stockholder.stockholder_id = Vote.stockholder_id WHERE (Vote.question_id=" & request("question_id") & ") AND (Stockholder.stockholder_id=" & request("C" & i) & ")"
			rs1.open sql,conn,1,3
			sql = "SELECT * FROM RESULT_VOTE  WHERE VOTE_ID = " &  rs1("vote_id") 
			rs.open sql,conn,1,3
			if rs.RecordCount = 0  then
			sql="insert into result_vote(vote_id,stock,choice) values(" & rs1("vote_id") & "," & rs1("stock") & ",'Y')"  
			rs0.open sql,conn,1,3
			end if
			rs.Close
			rs1.close
		end if
			
end if
next
if sub_question_id <> "0" then
	'sql = "DELETE FROM RESULT_VOTE WHERE VOTE_ID in (SELECT VOTE_ID FROM VOTE WHERE Vote.question_id=" & request("question_id")	 & " AND VOTE.sub_question_id= " & sub_question_id & ")"
	sql = "DELETE FROM RESULT_VOTE WHERE VOTE_ID in ( SELECT Vote.vote_id FROM Vote WHERE (Vote.question_id=" & request("question_id") & ") AND (Vote.sub_question_id=" & sub_question_id & ") AND (Vote.status=No))"

else
	'sql = "DELETE FROM RESULT_VOTE WHERE VOTE_ID in (SELECT VOTE_ID FROM VOTE WHERE Vote.question_id=" & request("question_id")	 & ")"
	sql = "DELETE FROM RESULT_VOTE WHERE VOTE_ID in ( SELECT Vote.vote_id FROM Vote WHERE (Vote.question_id=" & request("question_id") & ") AND (Vote.status=No))"
end if
rs0.open sql,conn,1,3


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
 <form action= "stock_edit_list.asp?question_id=<%=request("question_id")%>&sub_question_id=<%=request("sub_question_id")%>" method="post">
<p align="center">                                  
 <!-- <a href="question_index.asp"> -->

 <input type="submit" value="     ตกลง     " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
<!--
</a>
-->