<!-- #include file="openform.inc"-->
<%
Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select vote_id,choice from result_vote where vote_id ="&request("vote_id")&" order by choice"
			'response.write sql&"<BR>"
			rs.open sql,conn,1,3
			if not rs.eof or not rs.bof then
				do until rs.eof
					sql = "delete from result_vote where vote_id ="&request("vote_id")&" and choice = '"&rs(1)&"'"
					'response.write sql&"<BR>"
					conn.execute sql
					rs.movenext
				loop
			end if
rs.close
'response.write "<br>"&sql
'response.end
if request("s1") <> "" then
	sql="insert into result_vote (vote_id,stock,choice) values("&request("vote_id")&","&request("s1")&",'Y')"  
	'response.write "<br>"&sql
	'response.end
conn.execute sql
end if
if request("s2") <> "" then
	sql="insert into result_vote (vote_id,stock,choice) values("&request("vote_id")&","&request("s2")&",'N')"  
'	response.write "<br>"&sql
conn.execute sql
end if
if request("s3") <> "" then
	sql="insert into result_vote (vote_id,stock,choice) values("&request("vote_id")&","&request("s3")&",'O')"  
'	response.write "<br>"&sql
conn.execute sql
end if
			Set rs=Server.CreateObject("ADODB.recordset")
			sql ="select question_id from vote where vote_id = "&request("vote_id") 
			rs.open sql,conn,1,3
							Set rs1=Server.CreateObject("ADODB.recordset")
							sql1 ="select count(sub_question_id) from vote where vote_id = "&request("vote_id") 
							rs1.open sql1,conn,1,3
							response.write rs1(0)
				if rs1(0) = 0 then
							response.redirect "committee_votetest.asp?question_id="&rs(0)&"&sub_question_id=0"
							rs1.close
							else
							Set rs1=Server.CreateObject("ADODB.recordset")
							sql1 ="select sub_question_id from vote where vote_id = "&request("vote_id") 
							rs1.open sql1,conn,1,3
							response.redirect "committee_votetest.asp?question_id="&rs(0)&"&sub_question_id="&rs1(0)
							rs1.close
			end if
			rs.close
%>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>บันทึกผลการลงคะแนนเสียง</title>
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="23" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF" height="18">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">บันทึกผลการลงคะแนนเสียง</font></b></span></td>
  </tr>
</table>
<p align="center">
<font face="MS Sans Serif" color="#0000FF"><b><span lang="th">
ระบบได้ทำการบันทึก&nbsp; ผลการลงคะแนนเสียงแล้ว<br>
&nbsp;</span></b></font></p>
   <form action= "question_vote.asp" method="post">
<p align="center">                                  
  <a href="committee_vote.asp">
  <input type="submit" value="  ตกลง  " name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></a></p>
</form>
</body>
</html>