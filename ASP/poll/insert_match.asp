<!-- #include file="openform.inc"-->
	<meta charset="TIS-620">
<%
Dim from_page
from_page = request.QueryString("from_page")

if request("agent") = "" then
	response.write "<br><br><center><font size='+2' color='Red' >กรุณากรอกชื่อผู้เข้าร่วมประชุม</font><br><br>"
	response.write "<input type='Button' value=' Back ' onclick=javascript:history.back()></center>"
else
 	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
	
set rs =Server.CreateObject("ADODB.Recordset")
set rs0 =Server.CreateObject("ADODB.Recordset")
set rs1 =Server.CreateObject("ADODB.Recordset")
set rs2 =Server.CreateObject("ADODB.Recordset")

sql = "select count(committee_id) from committee where stockholder_id = "&request("stockholder_id")&" and committee_date = #"&s_date&"#"
'response.write sql
'response.end
rs1.open sql,conn,1,3
if  rs1(0) = 0 then
sql="Select max(committee_id)+1 from committee"
rs.open sql,conn,1,3
if rs.Eof or isnull(rs(0)) then
committee_id = 1
else
committee_id = rs(0)
end if 
rs.Close
if request("agent_type") = 1 then
	agent_type = "1"
	else
	agent_type = "2"
end if

sql="insert into committee (committee_id,stockholder_id,agent,agent_type,committee_date,committee_time) values("&committee_id&"," & request("stockholder_id") & ",'"&request("agent")&"','"&agent_type&"',#"&s_date&"#,#"&time()&"#)"  
conn.execute sql
Dim i , total  , stock
sql ="select question_id  from question where question_date= #" & s_date & "#  AND QUESTION_TIME >  #" & time() & "# order by question_id"
rs.open sql,conn,1,3
total = rs.RecordCount
for i = 1 to total
		sql = "SELECT Stockholder.stock FROM Stockholder  WHERE  (Stockholder.stockholder_id=" & request("stockholder_id") & ")"
		rs0.open sql,conn,1,3
		stock = rs0("stock")
		rs0.close
		sql="Select sub_question_id from sub_question where question_id = " & rs("question_id")
		rs0.open sql,conn,1,3

			if rs0.eof or rs0.bof then  '     NO Sub Question!!
				sql="Select max(vote_id)+1 as maxid from vote"
				rs2.open sql,conn,1,3
				if rs2.Eof or Isnull(rs2(0)) then
					maxid = 1
				else
					maxid = rs2(0)
				end if
				sql="insert into VOTE (Vote_id,question_id,stockholder_id,status) values("&  maxid &"," &  rs("question_id") &"," & request("stockholder_id") &",yes)"  
				conn.execute sql
				sql="insert into result_vote(vote_id,stock,choice) values(" & maxid & "," & stock & ",'Y')"  
				conn.execute sql
				rs2.Close
			else								'   	Have Sub Question!!
			do while not rs0.EOF
				sql="Select max(vote_id)+1 as maxid from vote"
				rs2.open sql,conn,1,3
				if rs2.Eof or Isnull(rs2(0)) then
					maxid = 1
				else
					maxid = rs2(0)
				end if
			 	sql="insert into VOTE (Vote_id,question_id,stockholder_id,sub_question_id,status) values("&  maxid &"," &  rs("question_id") &"," & request("stockholder_id") & "," & rs0("sub_question_id") & ",yes)"  
				conn.execute sql
				sql="insert into result_vote(vote_id,stock,choice) values(" & maxid & "," & stock & ",'Y')"  
				conn.execute sql
				rs2.Close

				rs0.MoveNext
			loop
			end if
		rs0.Close
		rs.MoveNext
	next
%>
<script language="javascript">
window.open('report/SimpleSelectionFormula.asp?stockholder_id=<%=request("stockholder_id")%>')
</script>
<%
'response.redirect "search.asp"
%>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><span lang="th"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">บันทึก</font></b></span><b><font face="MS Sans Serif" size="4" color="#0000FF"><span lang="th">ชื่อผู้เข้าร่วมการประชุม</span></font></b></td>
  </tr>
</table>  
  <p align="center">&nbsp;</p>
<p align="center"><br>
<br>
<br>
<font face="MS Sans Serif" color="#0000FF"><b><span lang="th">
ข้อมูลของท่านได้รับการบันทึกแล้ว<br>
&nbsp;</span></b></font></p>
   <form action= "<%if from_page = "audience3" then%>audience1.asp<%else%>search.asp<%end if%>" method="post">
<p align="center">                                  
  <a href="search.asp">
  <input type="submit" value="  ตกลง" name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></a></p>
</form>
<%else
response.write "<br><br><br><center><b>ผู้ถือหุ้นรายนี้ได้รับการลงทะเบียนเข้าร่วมการประชุมเรียบร้อยแล้ว</b></center>"
end if
rs1.close
end if
%>