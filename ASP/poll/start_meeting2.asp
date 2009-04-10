<!-- #include file="openform.inc"-->
<%
 	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql="Select start_time from meeting where committee_date = #"&s_date&"#"
rs.open sql,conn,1,3
if rs.eof or rs.bof then
	set rs1 =Server.CreateObject("ADODB.Recordset")
	sql="Select max(meeting_id)+1 from meeting"
	rs1.open sql,conn,1,3
	meeting_id = rs1(0)
	sql1="insert into meeting values("&meeting_id&",#"&s_date&"#,#"&time()&"#)"  
	conn.execute sql1
	response.write "<br><br><b><center>ระบบได้ทำการบันทึกเริ่มการประชุม ณ. เวลา "&time()&"</center></b>"
else
	response.write "<br><br><center>ได้ทำการบันทึกเวลาเริ่มต้นการประชุมแล้วเมื่อเวลา "&rs(0)&"</center>"
end if
%>
