<!-- #include file="openform.inc"-->

<%
 s_date=date()
s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
set rs =Server.CreateObject("ADODB.Recordset")
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &s_date& "#  group by agent_type"
rs.open sql,conn,1,3
%>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title>สรุปผลการออกเสียงของผู้เข้าร่วมประชุม</title>
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <span lang="th">
    <font face="MS Sans Serif" size="4" color="#0000FF">
    สรุปผลการออกเสียงของผู้เข้าร่วมประชุม</font></span></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
  <tr>
    <td width="50%">
    <p align="right"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">มาประชุมด้วยตนเอง 
	<%x =rs("CountOfagent_type") 
	response.write x%>
	คน</span></font></b></td>
    <td width="50%"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&nbsp;&nbsp;&nbsp;&nbsp; จำนวนหุ้นที่ได้ <% y=rs("sumstock")
	response.write y%> 
    หุ้น</span></font></b></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;
	</td>
    <td width="50%"><b><font face="MS Sans Serif" color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp;
    <span lang="th">คิดเป็น
    <%
   l = y * 100 / 3225546129
          response.write formatnumber (l,4)
    %>%<span lang="th">&nbsp;&nbsp; </span></font></b></td>
  </tr>
  <tr>
    <td width="50%">
	<%rs.movenext%>
    <p align="right"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">มาประชุมแทน
	<%
	response.write rs("CountOfagent_type")
	x = x+ rs("CountOfagent_type")
%>
	คน</span></font></b></td>
    <td width="50%"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&nbsp;&nbsp;&nbsp;&nbsp; จำนวนหุ้นที่ได้  
	<%
	response.write rs("sumstock")
	y1 = rs("sumstock")
	y = y+rs("sumstock")
 %>
    หุ้น</span></font></b></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;
	</td>
    <td width="50%"><b><font face="MS Sans Serif" color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp;
    <span lang="th">คิดเป็น
    <%
   l = y1 * 100 / 3225546129
  response.write formatnumber (l,4)
    %>%<span lang="th">&nbsp;&nbsp; </span></font></b></td>
  </tr>
  <tr>
    <td width="50%">
    <p align="right"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">รวมทั้งหมด
	<% 
	response.write x
	%> คน</span></font></b></td>
    <td width="50%"><b><font face="MS Sans Serif" color="#0000FF"><span lang="th">&nbsp;&nbsp;&nbsp;&nbsp; จำนวนหุ้นที่ได้ 
	<% 
	response.write y 
	%>
	หุ้น </span></font></b></td>
  </tr>
  <tr>
    <td width="50%">&nbsp;
	</td>
    <td width="50%"><b><font face="MS Sans Serif" color="#0000FF">&nbsp;&nbsp;&nbsp;&nbsp;
    <span lang="th">คิดเป็น
    <%
   l = y * 100 / 3225546129
  response.write formatnumber (l,4)
    %>%<span lang="th">&nbsp;&nbsp; </span></font></b></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<form method="POST" action="vote_show_old.asp" webbot-action="--WEBBOT-SELF--">
<input TYPE="hidden" NAME="VTI-GROUP" VALUE="0"><!--webbot bot="SaveResults" startspan --><strong>[FrontPage Save Results Component]</strong><!--webbot bot="SaveResults" endspan i-checksum="6561" --><p align="center">  <input type="submit" value="ตกลง" name="submit" style="font-family: MS Sans Serif; font-size: 10pt"></p>
</form>
</body>
</html>