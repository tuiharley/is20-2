<!-- #include file="openform.inc"-->
<%
Set rs=Server.CreateObject("ADODB.Recordset") 
sql ="select stockholder_id, stockholder_name, stock, stockholder_group,set_group,[no] as num from stockholder where stockholder_id="&request("stockholder_id")
rs.open sql,conn,1,3
%>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    <span lang="th">บันทึกรายชื่อผู้เข้าร่วมการประชุม</span></font></b></td>
  </tr>
</table>
<p>&nbsp;</p>
   <form action="insert_match.asp" method="post"> 
   <input type=hidden name=stockholder_id value=<%= request("stockholder_id")%>>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2" height="188">
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">ชื่อผู้ถือหุ้น</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <!--- <input type="text" name="stockholder_name" size="50" value=" ---><%=rs("stockholder_name")%><!--- "> ---></font></b></td>
    </tr>
    <tr>
      <td height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">ลำดับกลุ่ม</span> :&nbsp;&nbsp;&nbsp;</font></b></td>
      <td height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF"><%=rs("set_group") & "  " & rs("num")%></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">&nbsp; จำนวนหุ้น</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <!--- <input type="text" name="stock" size="22" value=" ---><%=formatnumber(rs("stock"),0)%><!--- "> ---></font></b></td>
    </tr>
     <tr>
      <td width="50%" height="20" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;
      <span lang="th">กลุ่มผู้ถือหุ้น</span> :&nbsp;&nbsp;&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="20"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">
 <% If rs(3) = "1" then 
 response.write " กลุ่มนิติบุคคลไทย"
 elseif rs(3) = "2" then 
 response.write "Foreign Juristic Person"
 elseif rs(3) = "3"  then 
 response.write "กลุ่มนามสกุล ก - ป"
 elseif rs(3) = "4"  then 
 response.write "กลุ่มนามสกุล ผ - ฮ"
 end if %></span></font></b></td>
    </tr> 
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">ผู้เข้าร่วมประชุม</span> 
      :&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="text" name="agent" size="60" <% if rs(3) = "3" or rs(3) = "4" then response.write "value='"&rs("stockholder_name")&"'" %>></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="20" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="checkbox" value="1" name="agent_type" <%if rs(3) = "1" or rs(3) = "2" then response.write "checked" end if%> size="20">&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="20"><b>
      <font face="MS Sans Serif" size="2" color="#0000FF">&nbsp;: <span lang="th">
      เป็นตัวแทน</span></font></b></td>
    </tr>
    <tr>
      <td width="100%" height="22" colspan="2"><br>
  <p align="center">  
  <input type="submit" value="         ตกลง         " name="submit" onClick="return window.confirm('คุณต้องการบันทึกข้อมูล?');" style="font-family: MS Sans Serif; font-size: 10pt"> 
  <input type="reset" value="ยกเลิก" name="cancel" onClick="return window.confirm('คุณต้องการยกเลิกการบันทึกข้อมูล?')" style="font-family: MS Sans Serif; font-size: 10pt"></p>
      </td>
    </tr>
  </table>
