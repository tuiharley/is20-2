<!-- #include file="openform.inc"-->
<%dim conn,rs,sql
Set rs=Server.CreateObject("ADODB.Recordset") 
sql ="select stockholder_id, stockholder_name, stock, stockholder_group from stockholder where stockholder_id="&request("stockholder_id")
'response.write sql
'response.end
rs.open sql,conn,1,3
gstockholder_group = rs("stockholder_group")
%>
	<meta charset="TIS-620">
<table border="1" cellspacing="1" width="100%" id="AutoNumber1" bgcolor="#9900FF" height="26" bordercolor="#9900FF">
  <tr>
    <td width="100%" bgcolor="#FF99FF" bordercolor="#FFFFFF">
    <p align="center"><b><font color="#0000FF" face="MS Sans Serif">แก้ไข</font></b><span lang="th"><b><font face="MS Sans Serif" size="4" color="#0000FF">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3612;&#3641;&#3657;&#3606;&#3639;&#3629;&#3627;&#3640;&#3657;&#3609;</font></b></span></td>
  </tr>
</table>
<p>&nbsp;</p>
   <form action="update_save.asp" method="POST">
   <input type=hidden name=stockholder_id value=<%=request("stockholder_id")%>
<table border="0" cellpadding="0" cellspacing="0" width="100%" id="AutoNumber2">
    <tr>
      <td width="100%"><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">&nbsp; ชื่อผู้ถือหุ้น</span> :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="text" name="stockholder_name" size="54" value="<%=rs("stockholder_name")%>"></font></b></td>
    </tr>
    <tr>
      <td width="100%">
   <p><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">&nbsp;&nbsp;จำนวนหุ้น</span> :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="text" name="stock" size="22" value="<%=rs("stock")%>"></font></b></td>
    </tr>
    <tr>
      <td width="100%"><b><font face="MS Sans Serif" size="2" color="#0000FF">&nbsp; </font></b>
   </p>
   <p><b><font face="MS Sans Serif" size="2" color="#0000FF">
      <span lang="th">กลุ่มผู้ถือหุ้น </span>:<span lang="th">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </span><span lang="th">
	  <input type="radio" name="stockholder_group" <%if gstockholder_group = "1" then response.write "checked"%> value="1">&nbsp; กลุ่มนิติบุคคลไทย <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="stockholder_group" <%if gstockholder_group = "2" then response.write "checked" end if%> value="2">&nbsp; กลุ่ม</span><span lang="en-us">Foreign 
      Juristic Person</span><span lang="th"><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="stockholder_group" <%if gstockholder_group = "3" then response.write "checked" end if%> value="3"></span> <span lang="th">&nbsp;กลุ่มนามสกุล ก - ป<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="stockholder_group" <%if gstockholder_group = "4" then response.write "checked" end if%> value="4">&nbsp; กลุ่มนามสกุล ผ - ฮ</span></font></b></td>
    </tr>
    <tr>
      <td width="100%">

   </p>

  <p align="center">  
  <br>
  <a href="update_save.asp">
  <input type="submit" value="     แก้ไขข้อมูล     " name="submit" onClick="return window.confirm('&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;?');" style="font-family: MS Sans Serif; "></a><font face="MS Sans Serif">
 <input type="reset" value=" ยกเลิก" name="B1">
</form>      </td>
    </tr>
  </table>
</form>