<!-- #include file="openform.inc"-->
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
if request("question_id") = 99 then
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Committee.committee_time<=  #"&stime&"# group by agent_type order by agent_type desc"
elseif request("question_id") = 98 then
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  group by agent_type order by agent_type desc"
else
sql="SELECT sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (SELECT vote.stockholder_id  FROM Question INNER JOIN vote ON Question.question_id = vote.question_id WHERE (vote.question_id = " & request("question_id") - 1 & ") AND (Question.question_date = #" & d & "#) AND (vote.status=Yes) ) and Committee.committee_date =  #" & d & "#"

rs.open sql,conn,1,3

	if rs.bof or rs.eof then
		before_stock = 0
	else 
		before_stock = rs(0)
	end if
rs.close
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type ,sum(stock) as sumstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE Stockholder.stockholder_id in (select stockholder_id from vote where  (vote.status=Yes) AND (question_id = " & request("question_id") & ")) and Committee.committee_date=  #" &d& "# group by agent_type order by agent_type desc"
end if
'Response.Write sql

rs.open sql,conn,1,3
if rs.eof or rs.bof  then
response.write "<br><br><center>�ѧ����ռ��ŧ����¹���������Ъ��</center>"
else
%>
<html>
<head>
	<meta charset="TIS-620">
</head>
<body>
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <span lang="th">
    <font face="MS Sans Serif" size='4'size="4" color="#0000FF">
    ��ػ�ӹǹ������������û�Ъ��</font></span></b></td>
  </tr>
</table>
<br>
	<% 
	set rs1 =Server.CreateObject("ADODB.Recordset")
	if request("question_id") = 99 then
	sql="SELECT distinct Committee.agent FROM  Committee WHERE  Committee.committee_date=  #" &d& "# and Committee.committee_time<=  #"&stime&"# "
	elseif request("question_id") = 98 then
	sql="SELECT distinct Committee.agent FROM  Committee WHERE  Committee.committee_date=  #" &d& "# "
	else
	sql="SELECT distinct Committee.agent FROM  Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  Committee.committee_date=  #" &d& "#  and Stockholder.stockholder_id in (select stockholder_id from vote where question_id = "&request("question_id")&")"
	end if
rs1.open sql,conn,1,3
human = 0
'response.end
do until rs1.eof or rs1.bof
	human = human+1
	rs1.movenext
loop
'response.write "<b><p align=center><font face='MS Sans Serif' size='4' color=#0000FF><span lang=th>�ռ�����������Ъ�� "&human&" �� ���繼�������</span></font></p></b>"
rs1.close

	 %>
	 <b><p align=center><font face='MS Sans Serif' size='4' color=#0000FF><span lang=th>����Ѻ�ӹǹ�������鹷���һ�Ъ����ѹ��� ��Сͺ����</span></font></p></b>
<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="96%" id="AutoNumber2" height="1">
  <tr>
    <td width="30%" height="1">
    <p align="left">
    <b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">�������鹷���һ�Ъ�����µ��ͧ �ӹǹ</span></font></b></td>
    <td width="5%" height="1" align="right">
    <b><font face="MS Sans Serif" size='4'color="#0000FF">
	<%x =rs("CountOfagent_type") 
	response.write x%></font></b></td>
    <td width="5%" height="1" align="left">
    <p><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">&nbsp;���</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">
    �Ѻ�ӹǹ����� </span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><% y=rs("sumstock")
	 response.write formatnumber (y,0)
	%>&nbsp;</font></b></td>
    <td width="6%" height="1" align="center">
    <p align="left"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">���</span></font></b></td>
      <td width="20%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">�Դ��</font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF">&nbsp;<%
   l = y * 100 / 3225546129
          response.write formatnumber (l,2)
		  rs.movenext
		  
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <tr>
    <td width="30%" height="1">
	<p align="left">
	<b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">����Ѻ�ͺ�ѹ�Шҡ�������� �ӹǹ </span></font></b></td>
    <td width="5%" height="1" align="right">
	<b><font face="MS Sans Serif" size='4'color="#0000FF"><%
	Dim agent , sumstock
	agent = 0
	sumstock = 0
	if not rs.eof then
		agent = rs("CountOfagent_type")
		sumstock = rs("sumstock")
	end if
	  response.write(agent)
		x = x+ agent
	
	
	%></font></b></td>
    <td width="5%" height="1" align="left">
    <p><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">&nbsp;���</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">
    �Ѻ�ӹǹ�����</span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><%
	
	y1 = sumstock
	y = y+sumstock
	response.write y1
 %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">���</span></font></b></td>
      <td width="20%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">�Դ��</font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF">&nbsp;<%
   l = y1 * 100 / 3225546129
  response.write formatnumber (l,2)
    %>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr>
  <tr>
    <td width="30%" height="1">
    <p align="left">
    <b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">����ըӹǹ������������Ъ��������</span></font></b></td>
    <td width="5%" height="1" align="right">
    <b><font face="MS Sans Serif" size='4'color="#0000FF">
	<% 
	'response.write x
	response.write human
	
	%></font></b></td>
    <td width="5%" height="1" align="left">
    <p><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">&nbsp;��</span></font></b></td>
    <td width="20%" height="1" align="center">
    <p align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">
    �Ѻ�ӹǹ����� </span></font></b></td>
    <td width="18%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><% 
	response.write formatnumber (y,0)
	%>&nbsp;</font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left"><b><font face="MS Sans Serif" size='4'color="#0000FF"><span lang="th">��� </span></font></b></td>
  <td width="20%" height="1" align="center">
    <p align="right">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">�Դ��</font></b></td>
    <td width="23%" height="1" align="right"><b><font face="MS Sans Serif" size='4'color="#0000FF"><%
	  l = y * 100 / 3225546129%>
 <%=formatnumber (l,2) %>&nbsp;
  </font></b></td>
    <td width="6%" height="1" align="left">
    <p align="left">
    <span lang="th"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    %&nbsp;&nbsp; </font></b></td>
  </tr> 
  </table><br>
  <%
 if request("question_id") <> 99 and request("question_id")<> 98 then ' ����繴٨ӹǹ����ͧ�ʴ���͹˹�ҹ��
  if before_stock < y then 'Check ��Ҩӹǹ��鹡�͹˹�ҹ�����ҡ�������й����������
response.write "<b><font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;������ҧ��û�Ъ�����й�� �ռ����������������Ъ������ ������ըӹǹ��鹷�����������Ъ��������Է���͡���§ ������鹨ҡ ���з������ �ա�ӹǹ "&formatnumber(y-before_stock,0)&" ��� ���ըӹǹ�ؤ�ū���繼���������м���Ѻ�ͺ�ѹ�� ���������Ъ�������� "&human&" �� ����ӹǹ��鹷�����Է���͡���§������ "&formatnumber(y)&" ��� </font></b>"
	end if
end if
set rs =Server.CreateObject("ADODB.Recordset")
sql="SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id GROUP BY Committee.committee_date, Stockholder.stockholder_group, Committee.agent_type HAVING (((Committee.committee_date)=#"&d&"#))"
rs.open sql,conn,1,3
'response.write "<b><font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;�Դ�������� "
response.write "<b><font face='MS Sans Serif' size='4' color='#0000FF'>&nbsp;&nbsp;"
   l = y / 3225546129*100 
 ' response.write formatnumber (l,2)
  if l < 1/3*100 or human < 25 then
 ' response.write " �ͧ��� ����͡��˹��������Ƿ������ͧ����ѷ <font color='Red'> ��觹��¡��� 1 � 3 �ͧ�ӹǹ��鹷���˹��������Ƿ�����  ���� �ռ������� ��м���Ѻ�ͺ�ѹ�� �ҡ���������һ�Ъ�����¡��� 25 �� �֧�ѧ���úͧ���Ъ��</font>"
  response.write " <font color='Red'> ��觹��¡��� 1 � 3 �ͧ�ӹǹ��鹷���˹��������Ƿ�����  ���� �ռ������� ��м���Ѻ�ͺ�ѹ�� �ҡ���������һ�Ъ�����¡��� 25 �� �֧�ѧ���úͧ���Ъ��</font>"
  else response.write " �ͧ��� ����͡��˹��������Ƿ������ͧ����ѷ  ��觤ú��ͧ���Ъ�� �����ͺѧ�Ѻ�ͧ����ѷ��� 35 ����к������� 㹡�û�Ъ����������  ��ͧ�ռ������� ��м���Ѻ�ͺ�ѹ�� �ҡ���������һ�Ъ�������¡��� 25 �� ���������¡��ҡ��˹�� �ͧ�ӹǹ�������鹷����� ��е�ͧ����鹹Ѻ����ѹ�����¡��� 1 � 3 �ͧ�ӹǹ��鹷���˹��������Ƿ����� �֧����ͧ���Ъ��<!--- �ӹǹ��鹷���͡��˹������Ƿ����� 3,169,632,356--->&nbsp;</font></b>"
end if
 
 If request("question_id") = 99 or request("question_id") = 98 then  ' ������͹���Ҩ�����ͧ�ʴ����ҧ����繤Ӷ��%>
<br><br>
<table border="2" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#6600CC" width="85%" id="AutoNumber3" height="143" align="center">
  <tr>
    <td width="42%" colspan="2" height="38" rowspan="2">&nbsp;</td>
    <td width="28%" colspan="2" height="18">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">�һ�Ъ�����µ��ͧ</span></font></b></td>
    <td width="30%" colspan="2" height="18">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">�һ�Ъ��᷹</span></font></b></td>
  </tr>
  <tr>
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">��������</span></font></b></td>
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">���</span></font></b></td>
    <td width="15%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">��������</span></font></b></td>
    <td width="15%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th">���</span></font></b></td>
  </tr>
  <%
  rs.close
dim group(4) 
group(1) = " �ԵԺؤ����"
group(2) = " Foreign Juristic Person"
group(3) = " ���ʡ�� �-�"
group(4) = " ���ʡ�� �-�"
total1= 0
total2= 0
total3 = 0
total4 = 0
 for t = 1 to 4
 if request("question_id") = 99 then
sql1 ="SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Sum(Stockholder.stock) AS SumOfstock  FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id WHERE  ((Committee.committee_time)<=#"&stime&"#) GROUP BY Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Stockholder.stockholder_group HAVING (((Committee.committee_date)=#"&d&"#) AND ((Stockholder.stockholder_group)='"& t&"')) ORDER BY Committee.agent_type DESC"
else
sql1 =" SELECT Count(Committee.agent_type) AS CountOfagent_type, Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Sum(Stockholder.stock) AS SumOfstock FROM Stockholder INNER JOIN Committee ON Stockholder.stockholder_id = Committee.stockholder_id GROUP BY Committee.committee_date, Committee.agent_type, Stockholder.stockholder_group, Stockholder.stockholder_group HAVING (((Committee.committee_date)=#"&d&"#) AND ((Stockholder.stockholder_group)='"& t&"')) ORDER BY Committee.agent_type DESC"
end if
  set rs1 =Server.CreateObject("ADODB.Recordset")
   rs1.open sql1,conn,1,3
  %>
  <tr>  
    <td width="14%" height="20">
    <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">Group <%=t%> :</font></b></td>
    <td width="28%" height="20"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <span lang="th"><%=group(t)%></span></font></b></td>
	    <%
		if rs1.eof and rs1.bof then%>
		<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
    <td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
	<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
    <td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-</td>
		<%
		else
			do while not rs1.eof 
			temp = rs1("agent_type")
	if trim(temp) = "1"  then
				total1 = total1+rs1("CountOfagent_type")
				total2 = total2 +rs1("SumOfstock")
	else
         total3 = total3+rs1("CountOfagent_type")
				total4 = total4 +rs1("SumOfstock")
	end if
	temp1 = rs1.recordcount
	'response.write temp1
if temp1 = 1 then 
			if trim(temp) = "2"  then %>
				<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
			<td width="14%" height="20"><p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">-
			<%elseif temp ="1" then%>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> -</td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> -</td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
			<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
			<% end if
else
%>
	<td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("CountOfagent_type"),0)%></td>
    <td width="14%" height="20"> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF"> <%=formatnumber(rs1("SumOfstock"),0)%></td>
	<%end if
	rs1.movenext 
	loop
	end if%>
  </tr>
  <%
  rs1.close
  next%>
  <tr>
  <td>
  </td>
  <td><b><font face="MS Sans Serif" size='4'color="#0000FF"> ���</font>
  </td>
 <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
    <%response.write formatnumber(total3,0)%>
  </td>
  <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
     <%response.write formatnumber(total4,0)%>
  </td>
	   <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
   <%response.write formatnumber(total1,0)%>
  </td>
  <td> <p align="center"><b><font face="MS Sans Serif" size='4'color="#0000FF">
     <%response.write formatnumber(total2,0)%>
  </td>
  </tr>
</table>
 	<% End If '�����͹���Ҩ�����ͧ�ʴ����ҧ%>
<% End If %><br><br>
<center><input value="        ��͹��Ѻ        "  type= button onclick=javascript:history.back()  name="cancel" style="font-family: MS Sans Serif; font-size: 10pt"></center>
</body></html>
