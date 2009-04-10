<% option explicit %>
<script language="JavaScript">
function back()
{
	history.back(1);
}
</script>
<html>
<head>
	<title>กราฟแสดงผลการประเมินผลนิสิต</title>
<META content="text/html; charset=windows-874" http-equiv=Content-Type>
<link rel="stylesheet" href="stylesheet.css" type="text/css" >
</head>
<body>
<%
dim conn,rs,rs1,rs2,rs3,rs4,sql,sql1,sql2,sql3,sql4,i,ch,q_no,q_name,course_id,j
dim g_eva,y_eva,c_id,bgbar,h,t_eva,q_type,sqlloop,rsloop,ch_id
set conn = server.CreateObject("ADODB.connection")
'conn.Open "Provider=MSDAORA;Data Source=mercury;User Id=itweb;Password=itweb;"
conn.Open "provider=msdaora;User Id=itweb;Password=itweb;"


course_id = request("course_id")

q_type = request("q_type")
set rs1 = server.CreateObject("ADODB.recordset")
'sql1 = "SELECT q_no,question from questionnaire where q_type = '2' "
sql1 = "SELECT q_no,question from questionnaire where q_type = '"& request("q_type") &"' "
'response.write sql1
'response.end
rs1.Open sql1,conn,1,3

j = 0
do until rs1.eof %> <!---จะทำจำนวนรอบเท่ากับจำนวนคำถาม ---> 
<% 
q_no = rs1("q_no")
j = j+1
 %>
<br>
<center><h1>กราฟแสดงผลการประเมินของคำถามที่ <%=j %> : <%= rs1("question") %></h1></center> 
<br>
<% 
set rs = server.CreateObject("ADODB.recordset")
'sql = "SELECT COUNT(C_ID) CH FROM CHOICE WHERE C_TYPE = '2'  "
sql = "SELECT COUNT(C_ID) CH FROM CHOICE WHERE C_TYPE = '"& request("q_type") &"'  "
rs.Open sql,conn,1,3
ch = rs("CH") 
rs.close
'response.write ch

set rs2 = server.CreateObject("ADODB.recordset")
sql2 = "SELECT COUNT(DISTINCT(STD_ID)) g_eva "
sql2 = sql2 & " FROM  ANSWER_CLOSE AC "
sql2 = sql2 & " WHERE Q_NO = '"&q_no&"' "
sql2 = sql2 & " AND COURSE_ID = '"&course_id&"' "
rs2.Open sql2,conn,1,3
g_eva = cint(rs2("g_eva"))
rs2.close

set rs3 = server.CreateObject("ADODB.recordset")
sql3 = "SELECT C_ID, COUNT(DISTINCT(STD_ID)) t_eva "
sql3 = sql3 & " FROM  ANSWER_CLOSE AC "
sql3 = sql3 & " WHERE Q_NO = '"&q_no&"' "
sql3 = sql3 & " AND COURSE_ID = '"&course_id&"' "
sql3 = sql3 & " GROUP BY C_ID "
'response.write sql3
'response.end
rs3.Open sql3,conn,1,3
't_eva = จำนวนที่มีคนตอบในแต่ละข้อ
'g_eva = จำนวนที่มีคนตอบในแต่ละตัวเลือก
''ch = จำนวนตัวเลือกคำตอบ
''n = จำนวนผู้ตอบ
''c1= จำนวนผู้ตอบข้อ ๑
''c2 = จำนวนผู้ตอบข้อ ๒
'h = c1/n*100
'h2 = c2/n*100 
i =0
%>
<table width="100%"  border="1">
	<tr valign="bottom">
<% '	for i = 1 to CINT(ch) %>
<!--- วนลูปตามจำนวนคำตอบ (สร้าง column) --->
<% 'ดึงมานับว่ามีจำนวนคำตอบกี่คำตอบ
              sqlloop = "SELECT CHOICE, C_TYPE,C_ID  FROM CHOICE WHERE C_TYPE = '"& request("q_type")& "' ORDER BY C_ID"
'response.write sqlloop
'response.end
set rsloop = server.CreateObject("ADODB.recordset")
              rsloop.Open sqlloop,conn,1,3
			  q_type = rsloop("c_type")
 %>
<% do until rsloop.eof %>
<% 
if not rs3.eof and not rs3.bof then
t_eva = rs3("t_eva")
else 
t_eva = 1
end if
i = i+1
'response.write "t_eva = "& t_eva
select case i
case "1" 
bgbar = "#435BAD"
case "2" 
bgbar = "#C83C8C"
case "3" 
bgbar = "#3FA086"
case "4" 
bgbar = "#CFBD41"
case "5" 
bgbar = "#9E14F1"
case "6" 
bgbar = "#657474"
case "7" 
bgbar = "#C73434"
case "8" 
bgbar = "#4BCD8F"
case "9" 
bgbar = "#FB6F99"
case "10" 
bgbar = "#5E5E55"
end select
ch_id = rsloop("c_id")
 %>
 <%if not rs3.eof and not rs3.bof then
if rs3("c_id") = ch_id then  
 h = formatnumber((cint(t_eva)/g_eva)*100,2) 
 rs3.movenext
 else h = 0
 end if
 else h = 0
 end if%>
<% 'h = 50 %>
<% 'response.write "h  = "&h 
'response.write "bgbar = "&bgbar %>
    <td align="center">
	<% 
'	if  q_type = "1" then
'	response.write (h/100)*5 
'	else response.write h
'	end if
response.write h%>
	<table height="<%= h %>" width="35" border="0">
				<tr valign="bottom" align="center" bgcolor="<%= bgbar %>">
				<td > 
				</td>
				</tr>
	</table>
     </td>
	 <% 
	 rsloop.movenext %>
	<%' next %>
	<% loop %>
	</tr>
<% set rs4 = server.CreateObject("ADODB.recordset")
'sql4 = "SELECT choice from choice where c_type= '2' "
sql4 = "SELECT choice from choice where c_type= '"& request("q_type") &"' "
rs4.Open sql4,conn,1,3 %>
	<tr align="center">
<% do until rs4.eof 	 %>
 <td><%= rs4("choice") %></td> 
<!--- <td>ใช่</td><td>ไม่ใช่</td> --->
<% rs4.movenext
 loop %>
	</tr>
<% rs4.close %>	
</table>
	<% rs3.close
	rsloop.close %>
	<% rs1.movenext %>

<% loop  %>
<% rs1.close %>
<div align="center"><form>
<input type="button" onclick="back()" name="ok" value="   ย้อนกลับ   ">
</form></div>
</body>
</html>
