<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF">
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
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5">Admin</font></b></td>
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
          <td><table width="45%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="100%" align="center" style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000';" onMouseOut="document.all.f2.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','user_nonuse.asp');"><font name="f2" id="f2" size="2" color="#4B0097">Account 
                  Name&nbsp;ที่ไม่มีการใช้งาน</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000';" onMouseOut="document.all.f3.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','user_management.asp');"><font name="f3" id="f3"size="2" color="#4B0097">User&nbsp; 
                  Management</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f4.color='#ff0000';" onMouseOut="document.all.f4.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','create_level.asp');"><font name="f4" id="f4" size="2" color="#4B0097">กำหนดสิทธิการใช้งานระบบ 
                  CRM</font></td>
              </tr>
			   <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f5.color='#ff0000';" onMouseOut="document.all.f5.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','change_area.asp');"><font name="f5" id="f5" size="2" color="#4B0097">เปลี่ยนเขตการทำการ</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f6.color='#ff0000';" onMouseOut="document.all.f6.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','admin_company.asp');"><font name="f6" id="f6" color="#4B0097" size="2">บริษัทผู้ให้บริการ</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f7.color='#ff0000';" onMouseOut="document.all.f7.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','kind_of_service.asp');"><font name="f7" id="f7" color="#4B0097" size="2">ประเภทบริการ</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f8.color='#ff0000';" onMouseOut="document.all.f8.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','add_speed.asp');"><font name="f8" id="f8" color="#4B0097" size="2">ความเร็ว</font></td>
              </tr>
               <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f9.color='#ff0000';" onMouseOut="document.all.f9.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','add_ratio.asp');"><font name="f9" id="f9" color="#4B0097" size="2">Ratio</font></td>
              </tr>
			  <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f10.color='#ff0000';" onMouseOut="document.all.f10.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','add_promotion.asp');"><font name="f10" id="f10" color="#4B0097" size="2">โปรโมชั่น</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f11.color='#ff0000';" onMouseOut="document.all.f11.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','problem.asp');"><font name="f11" id="f11" color="#4B0097" size="2">ปัญหา</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f12.color='#ff0000';" onMouseOut="document.all.f12.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','add_solve.asp');"><font name="f12" id="f12" color="#4B0097" size="2">การแก้ไข</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f13.color='#ff0000';" onMouseOut="document.all.f13.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','easy_connect.asp');"><font name="f13"size="2" id="f13" color="#4B0097">วิธีติดต่อที่สะดวก</font></td>
              </tr>
			  <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f14.color='#ff0000';" onMouseOut="document.all.f14.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','commu_ttt.asp');"><font name="f14" id="f14" color="#4B0097" size="2">สื่อโฆษณษของ TT&T</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f15.color='#ff0000';" onMouseOut="document.all.f15.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','job.asp');"><font name="f15" id="f15" color="#4B0097" size="2">อาชีพ</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f16.color='#ff0000';" onMouseOut="document.all.f16.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','commu.asp');"><font name="f16" id="f16" color="#4B0097" size="2">สื่อโฆษณา</font></td>
              </tr>
			  <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f17.color='#ff0000';" onMouseOut="document.all.f17.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','tv.asp');"><font name="f17" id="f17" color="#4B0097" size="2">โทรทัศน์</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f18.color='#ff0000';" onMouseOut="document.all.f18.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','radio.asp');"><font name="f18"size="2" id="f18" color="#4B0097">วิทยุ</font></td>
              </tr>
			  <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f19.color='#ff0000';" onMouseOut="document.all.f19.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','newspaper.asp');"><font name="f19" id="f19" color="#4B0097" size="2">หนังสือพิมพ์</font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f20.color='#ff0000';" onMouseOut="document.all.f20.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','datainput.asp');"><font name="f20" id="f20" color="#4B0097" size="2">แหล่งที่มาของข้อมูล </font></td>
              </tr>
              <tr> 
                <td align="center" style="cursor:hand" onMouseOver="document.all.f21.color='#ff0000';" onMouseOut="document.all.f21.color='#4B0097';" onClick="top.ShowRunWindow('Desktop2','pay.asp');"><font name="f21" id="f21" color="#4B0097" size="2">วิธีการจ่ายเงิน</font></td>
              </tr>
			
            </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
<div align="center">
  <center>
  </center>
</div>
<div align="center">
  <center>
  </center>
</div>

    </body>

</html>