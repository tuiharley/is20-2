<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.social_id.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
%>
<%
	Dim cgcode, memid, social_id
	cgcode = Request.QueryString("cgcode")
	memid = Request.QueryString("memid")
	social_id = Request.QueryString("social_id")
%>
<form name="form1" method="post" action="">
  <table width="300" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
	<%
	  		Dim SQL, Rs
			set Rs = Server.CreateObject("Adodb.RecordSet")
			SQL = "SELECT MEMBER.MEMID, MEMBER.SOCIAL_ID, MEMBER.POSTION, SOCIAL.SOCIAL_NAME FROM MEMBER INNER JOIN SOCIAL ON MEMBER.SOCIAL_ID = SOCIAL.SOCIAL_ID WHERE MEMBER.CG_CODE = '" & cgcode &"' AND MEMBER.MEMID = "& memid &" "
			Rs.open SQL,Session("Conn1"),1,3
	if social_id="" then
			social_id = Rs("SOCIAL_ID")
	end if
	%>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>สมาคม</strong></font></div></td>
      <td width="80%">&nbsp; 
	  <select name="social_id" id="social_id">
	  <option value=""> กรุณาระบุสมาคม </option>
	  <%
	  		Dim SQLS, RsS
			set RsS = Server.CreateObject("Adodb.RecordSet")
			SQLS = "SELECT SOCIAL_ID, SOCIAL_NAME FROM SOCIAL"
			RsS.open SQLS,Session("Conn1"),1,3
			While not RsS.EOF 
	  %>
	  <option value="<% =RsS("SOCIAL_ID")%>" <%if Cint(RsS("SOCIAL_ID"))=Cint(social_id) then%>selected<%end if%>><% =RsS("SOCIAL_NAME")%></option>
	  <% 
	  		RsS.MoveNext
	  		Wend
			RsS.Close
	  %>
        </select>
        <input name="add" type="button" id="add" value="เพิ่ม" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog2','100px','300px','sub_sub_edit3.asp?cgcode=<%=cgcode%>&memid=<%=memid%>');">
	  <input name="cgcode" type="hidden" value="<%=cgcode%>">
        <input name="memid" type="hidden" id="memid" value="<%=memid%>"></td>
    </tr>
    <tr> 
      <td width="20%"><div align="right"><font color="#4B0097" size="2"><strong>ตำแหน่ง</strong></font></div></td>
      <td width="80%">&nbsp;&nbsp;<input name="post" type="text" class="text" id="post" size="30" maxlength="50" value="<%if memid<>"" then%><%=Rs("POSTION")%><%end if%>"></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
	</tr>
    <tr> 
      <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="บันทึกข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>
<script language="JavaScript">
	function dosend () {
		if(document.form1.social_id.value==""){
			alert('กรุณาระบุสมาคม');
			document.form1.social_id.focus();
			return;
		}
		if(document.form1.post.value==""){
			alert('กรุณาระบุตำแหน่ง');
			document.form1.post.focus();
			return;
		}
		if(confirm('ยืนยันการบันทึกข้อมูล')){
		top.RunWindow('Temp1','temp_save_sub_custmain_edit3.asp');
		top.HideWindow('Dialog1');
		}
	}	
</script>
</body>
</html>
