<!-- #include file="openform.inc"-->
<!-- #include file="css.css"-->
	<STYLE type=text/css> 
A:link {COLOR: black; TEXT-DECORATION: none} 
A:visited {COLOR: black; TEXT-DECORATION: none} 
A:hover {COLOR: #FF0000; TEXT-DECORATION: underline} 
</STYLE>
<meta http-equiv="refresh" content="12;vote_result1..asp" charset=TIS-620">
	<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    แสดงจำนวนผู้เข้าร่วมประชุม</font></b></span></td>
  </tr>
</table>
<ul><li><a href="vote_show.asp?question_id=99" target="_parent"><font class="f1">จำนวนผู้เข้าร่วมประชุม ณ. เวลาเริ่มประชุม</font></a></li>
<%

 If session("user") = "staff"  or session("user") = "admin"    or session("user")  = "chairman" then %> 
<li><a href="vote_show.asp?question_id=98" target="_parent"><font class="f1">จำนวนผู้เข้าร่วมประชุมปัจจุบัน</font></a></li>
<%
	end if
  	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
	subject = 0
	Set rs=Server.CreateObject("ADODB.recordset")
	sql ="select question_id,question_name,question_time from question where question_date= # "&s_date&" # order by question_id"
	rs.open sql,conn,1,3
		if rs.eof or rs.bof then
	response.write "<br>" 
	else
	 If session("user") = "staff"  or session("user") = "admin"   then 
	do until rs.eof	
	 If rs(2) > time()  then
	 	if subject <> left(rs(1),10) then 
			response.write "<li><a href='vote_show.asp?question_id="&rs(0)&"' target='_parent''><font class='f1'>"&left(rs(1),10)&"</font></a></li>"
		end if
		subject = left(rs(1),10)
	else
		if subject <> left(rs(1),10) then 
			response.write "<li><a href='vote_show.asp?question_id="&rs(0)&"' target='_parent''><font class='f1'  >"&left(rs(1),10)&"</font></a>&nbsp;<font size='-1' color='#E31A1A'>Complete!</font></li>"
		end if
		subject = left(rs(1),10)
	end if
	rs.movenext
	loop
	end if
	rs.movefirst
	end if

	 %>
</ul>

<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    แสดงผลการลงคะแนน</font></b></span></p></td>
  </tr>
</table>
<font size="-1"><br></font>
<font face="MS Sans Serif" size="4" color="#0000FF">เลือกวาระที่ต้องการให้แสดงผลการลงคะแนน<br><BR></font>
	<% 

	if rs.eof or rs.bof then
	response.write "ไม่มีวาระของวันนี้" 
	else
	response.write "<ul>"
	subject = 0
	do until rs.eof or rs.bof
		Set rs1=Server.CreateObject("ADODB.recordset")
		sql ="select sub_question_id,sub_question_name from sub_question where question_id= "&rs(0)&"  "
		rs1.open sql,conn,1,3 
 	if rs1.eof or rs1.bof then 
			 If rs(2) > time()  then
		 		if subject <> left(rs(1),10) then 
					response.write "<li> <font  onclick='dosend(" & rs(0) &" ,0)'  style=cursor:hand  class=f1>"&rs(1)&"</font></li>"
				else
				response.write "<ul><li><font class=f1 onclick='dosend(" & rs(0) &" ,0)'  style=cursor:hand >"&mid(rs(1),11)&"</font></li></ul>"
				end if
			else
				if subject <> left(rs(1),10) then 
					response.write "<li><font onclick='dosend(" & rs(0) &" ,0)'  style=cursor:hand class=f1 >"&rs(1)&"</font>&nbsp;<font size='-1' color='#E31A1A'>Complete!</font></li>"
				else
				response.write "<ul><li><font onclick='dosend(" & rs(0) &" ,0)' style=cursor:hand  class=f1 >"&mid(rs(1),11)&"</font></li></ul>"
				end if
			end if
 Else 
 			If rs(2) > time()  then%>
			<li><font class="f1"><%=rs(1) %></font></li>
			<% else %>
			<li><font class="f1"><%=rs(1) %></font>&nbsp;<font size='-1' color='#E31A1A'>Complete!</font></li>
			<% End If 
response.write "<ul>"
do until rs1.eof
'if Session("user")<>"chairman" and Session("user")<>"management" then
response.write "<li><font class=f1><font onclick='dosend(" & rs(0) &" ," & rs1(0) & ")' style=cursor:hand   class=f1>"&rs1(1)&"</font></li>"
'end if
rs1.movenext
loop
response.write "<li><font class=f1><a target='_parent' href=vote_result3.asp?question_id="&rs(0)&"><font class=f1>ลำดับผลการลงคะแนน</font></a></li>"
response.write "</ul>"
End If 
	subject = left(rs(1),10) 
	rs.movenext
	loop
	response.write "</ul>"
	end if
			 %> 
			 </p></body>
</html>
<script language="JavaScript">

 function dosend( question_id, sub_question_id)
   {
	 cWindow = window.open("vote_result2.asp?question_id=" + question_id + "&sub_question_id=" + sub_question_id ,"MESSAGING","menubar=0,toolbar=0,scrollbars=0,top=0,left=0,status=0,width=1015,height=735");
   }

</script>
  