<!-- #include file="openform.inc"-->
<%
stockholder_id = Request.QueryString("stockholder_id")


Set rs=Server.CreateObject("ADODB.Recordset") 
sql ="select stockholder_id, stockholder_name, stock, stockholder_group,set_group,[no] as num from stockholder where stockholder_id=" & stockholder_id
'response.write sql
'response.end
rs.open sql,conn,1,3
 	s_date=date()
	s_date=Month(s_date) & "/" & Day(s_date) & "/" & Year(s_date)+543
Set rs1=Server.CreateObject("ADODB.Recordset") 
sql1 ="select committee_id, agent, agent_type,committee_date from committee where stockholder_id="&request("stockholder_id")&" and committee_date = #"&s_date&"#"
rs1.open sql1,conn,1,3
if not rs1.eof or not rs1.bof then
	committee_id = rs1(0)
	agent = rs1(1)
	agent_type = rs1(2)
end if
rs1.close
%>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b>
    <font face="MS Sans Serif" size="4" color="#0000FF">
    <span lang="th">รายชื่อผู้เข้าร่วมการประชุม</span></font></b></td>
  </tr>
</table>
<p>&nbsp;</p>
   <form action="mismatchupdate_saveedit.asp" method="post"> 
   <input type=hidden name=stockholder_id value=<%= request("stockholder_id")%>>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2" height="188">
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">ชื่อผู้ถือหุ้น</span> :&nbsp;&nbsp;&nbsp; </font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th"><%=rs("stockholder_name")%></td>
    </tr>
    <tr>
      <td height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF"><span lang="th">ลำดับกลุ่ม</span> :&nbsp;&nbsp;&nbsp;</font></b></td>
      <td height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF"><%=rs("set_group") & "  " & rs("num")%></font></b></td>
    </tr>

    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th"> จำนวนหุ้น</span> :&nbsp;&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th"> <%=rs("stock")%></td>
    </tr>
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th"> กลุ่ม</span> :&nbsp;&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">
      <%if cint(rs(3)) = 1 then 
	  response.write "กลุ่มนิติบุคคลไทย" 
	  elseif cint(rs(3)) = 2 then 
	  response.write "กลุ่มForeign Juristic Person" 
	  elseif  cint(rs(3)) = 3 then 
	  response.write "กลุ่มนามสกุล ก - ป"
      elseif cint(rs(3)) = 4 then
      response.write "กลุ่มนามสกุล ผ - ฮ"
	  end if%>&nbsp;  </td>

    </tr>
    <tr>
      <td width="50%" height="22" align="right"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">ผู้เข้าร่วมประชุม</span> 
      :&nbsp;&nbsp;</font></b></td>
      <td width="50%" height="22"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <input type="text" name="agent" size="22"  value='<%=agent%>'>
	  <input type="hidden" name="committee_id" size="22"  value=<%=committee_id%>></font></b></td>
    </tr>
    <tr>
      <td width="50%" height="20" align="right">
        <input type="checkbox" value="1" name="agent_type" <%if agent_type = "1"  then response.write "checked" end if%> size="20"><font color="#0000FF"><b>
      <font face="MS Sans Serif" size="2">:</font></b>&nbsp;&nbsp;
      </font></td>
      <td width="50%" height="20"><b>
      <font face="MS Sans Serif" size="2" color="#0000FF"> <span lang="th">
      เป็นตัวแทน</span></font></b></td>
    </tr>
    <tr>
      <td width="100%" height="22" colspan="2">

  <p align="center">&nbsp;  
  </p>
  <p align="center">  

  <input type="submit" value="     แก้ไขข้อมูล     " name="submit" onClick="return window.confirm('คุณต้องการแก้ไขข้อมูล?');" style="font-family: MS Sans Serif; ">
 <input type="reset" value=" ยกเลิก " name="B1">
</p>
      </td>
    </tr>
  </table>
  <!-- ยังต้องเพิ่มเงื่อนไขวันที่ของคนที่เข้าประชุม -->