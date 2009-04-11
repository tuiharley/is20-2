<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>

<html onLoad="opt = document.form1.opt.value;">
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" >
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	
	dim  Rs , Sql ,  iid , nname , i , opt
				
	set Rs = Server.CreateObject("Adodb.RecordSet")
	opt = Request.QueryString("opt")
%>
<div align="center">
  <center>
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">Service</font></b></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="55%"><font size="2" color="#4B0097">ผู้ใช้ระบบ : <%=Session("User_Name")&"  ( "&Session("User_Id")&" )"%></font></td>
                <td><font size="2" color="#4B0097">วันที่ใช้ระบบ : <%=formatDateTime(Session("Date_Now"),1)%></font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="56">&nbsp;</td>
                <td width="256" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล
				  <form name="form1" method="post" action="">
                  <select name="opt" size="1" id="opt"  onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
             	<option value= "">--Service--</option>
                    <option value="voice" <%if opt= "voice"  then%>selected<%end if%> >Voice</option>
                    <option value="nonvoice" <%if opt="nonvoice" then%>selected<%end if%>>NonVoice</option>
                    
                  </select>
                  <input name="send" type="button" id="send" value="แสดงข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop2','kind_of_service.asp?opt='+ document.form1.opt.value + '');">
                  </form>
                </font></b></td>
				<td width="472">&nbsp;				</td>
             </tr>
            </table></td>
        </tr>
        <tr> 
          <td></td>
        </tr><td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td></tr>  
		<tr> <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td></tr>
    </table>  
	  <table width="418"   border="3"  align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse" >
	    <tr>  <td width="15%"><div align="center"><strong><font color="#4B0097" size="3">ลำดับ</font></strong></div></td>
                <td width="60%"><div align="center"><strong><font color="#4B0097" size="3">ประเภทของบริการ</font></strong></div></td>
	  </tr>
<% 
			  
				
			if opt <> "" then
				if  opt  = "voice"  then
				 Sql = "SELECT     VOICEID AS id, VOICENAME AS name FROM VOICE_SERVICE ORDER BY VOICEID "
				elseif opt = "nonvoice"  then
				  Sql = "SELECT     NONID AS id, NONNAME AS name  FROM NONVOICE_SERVICE ORDER BY NONID"
				end if
				
				Rs.Open Sql,Session("Conn1"),1,3
				 if Rs.RecordCount <> 0  then
				i=1
					do while not Rs.EOF
					iid = Rs("id")
					nname = Rs("name")
%>

                  <tr>
                    <td width="50"><%=i%> </td>
                    <td width="190"><%=nname%></td>
					<td>
                    <input name="edit" type="button" id="edit" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'edit_service.asp?SERVICENAME=<%=nname%>&SERVICEID=<%=iid%>&SERVICETYPE=<%=opt%>');">
					</td><td>
                    <input name="del" type="button" id="del" value="  ลบ  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick=" if(confirm('ยืนยันการลบ')==true){top.RunWindow('Temp1','delete_service.asp?SERVICEID=<%=iid%>&SERVICETYPE=<%=opt%> ') } "></td>
                  </td>
				  </tr>
				     <%         
		i=i+1
		Rs.Movenext
	loop

end if 
%>
<tr><td></td><td> </td><td></td>
	  <td>
	  <input name="add" type="button" id="add2" value=" เพิ่ม " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'sub_admin_service_add.asp?opt=<%=opt%>'); ">
      </td>
</tr>
<% end if %>
    </table>
	  <table><%if opt <> ""  then %><% if (Rs.Recordcount = 0)  then %><tr><td align = "center"><font color="#4B0097" size="2"> Record Not Found!! </font></td></tr><% end if %><%end if %></table>
<hr align="center" color="#0099FF"  >
             <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
 </center>
</div>
</body>







<script language="JavaScript">
function doloaddata() {
		document.form2.opt.value=document.form1.opt.value;
		document.body.style.cursor='wait';
		document.form1.submit();
} 
function doloaddata2() {
		document.form2.opt.value=document.form1.opt.value;
		document.body.style.cursor='wait';
		document.form2.submit();
} 
</script>
</html>