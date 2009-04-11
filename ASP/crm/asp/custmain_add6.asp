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
<%
 	Dim cgcode, i
	cgcode = Request.QueryString("cgcode")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" face="JasmineUPC" size="5">บันทึกข้อมูลลูกค้า</font></b></td>
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
        <% 
		Dim SQL, Rs, Rs2
		set Rs = Server.CreateObject("Adodb.RecordSet")
		set Rs2 = Server.CreateObject("Adodb.RecordSet")
		SQL = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.AREA, PROVINCE.PROVINCE, CUST_GROUP.CG_CODE FROM         CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID WHERE     (CUST_GROUP.CG_CODE = N'" & cgcode & "')"
		Rs.Open SQL, Session("Conn1"),1,3	
		
		%>
        <tr> 
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="13%">&nbsp;</td>
                <td width="2%" rowspan="2"><img src="../images/blank.gif"></td>
                <td width="85%"><table width="100%" border="3" cellSpacing="0" borderColor="#ada2eb" bgColor="#ffffff">
                    <tr> 
                      <td width="16%" bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>ชื่อ-สกุล</b></font></div></td>
                      <td width="84%" bgColor="#fff0df"><font color="#4b0097" size="2"><%=Rs("CM_NAME") &"  "&Rs("CG_NAME")%> 
                        <input name="gccode" type="hidden" value="<%=Rs("CM_CODE") %>">
                        <input name="cgcode" type="hidden" value="<%=Rs("CG_CODE") %>">
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>ที่อยู่</b></font></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font size="1" color="#FFFFFF">ภาคธุรกิจ</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"> 
                        <% =Rs("AREA")%>
                        </font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font size="1" color="#FFFFFF">จังหวัด</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("PROVINCE")%></font></td>
                    </tr>
                  </table></td>
              </tr>
              <%Rs.Close%>
              <tr> 
                <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f1.color='#ff0000'" onMouseOut="document.all.f1.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f1" id="f1" size="2">ข้อมูลทั่วไป</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f12.color='#ff0000'" onMouseOut="document.all.f12.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add12.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f12" id="f12" size="2">ที่อยู่ลูกค้า</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f11.color='#ff0000'" onMouseOut="document.all.f11.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add11.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f11" id="f11" size="2">เลขที่ผู้เช่า</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f2.color='#ff0000'" onMouseOut="document.all.f2.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add2.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f2" id="f2" size="2">บริษัทฯในเครือ</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f3.color='#ff0000'" onMouseOut="document.all.f3.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add3.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f3" id="f3" size="2">สมาชิกสมาคม</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f4.color='#ff0000'" onMouseOut="document.all.f4.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add4.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f4" id="f4" size="2">เจ้าหน้าที่ที่ติดต่อ</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f6.color='#ff0000'" onMouseOut="document.all.f6.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add6.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f6" id="f6" size="2">สินค้าและบริการที่ใช้อยู่</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f7.color='#ff0000'" onMouseOut="document.all.f7.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add7.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f7" id="f7" size="2">การใช้บริการพิเศษ (SPC)</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f8.color='#ff0000'" onMouseOut="document.all.f8.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add8.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f8" id="f8" size="2">วิธีการชำระค่าบริการ</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f9.color='#ff0000'" onMouseOut="document.all.f9.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add9.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f9" id="f9" size="2">สินค้าและบริการในอนาคต</font></div></td>
                  </tr>
                  <tr>
                    <td style="cursor:hand" onMouseOver="document.all.f10.color='#ff0000'" onMouseOut="document.all.f10.color='#000000'" onClick="top.HideWindow('Dialog1'); top.HideWindow('DialogS1'); top.RunWindow('Desktop3','custmain_add10.asp?cgcode=<%=cgcode%>')"><div align="right"><font name="f10" id="f10" size="2">ปํญหาและการแก้ไข</font></div></td>
                  </tr>
                </table></td>
                <td><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="8" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>สินค้าและบริการที่ใช้อยู่ 
                          VOICE</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">ลำดับ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">ผู้ให้บริการ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></div></td>
                      <td width="25%"><div align="center"><strong><font color="#4B0097" size="2">โปรโมชั่น</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">จำนวน</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">รายได้รวม</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">รายได้เฉลี่ย</font></strong></div></td>
                      <td width="10%">&nbsp;</td>
                    </tr>
                    <%
	i=1
	Sql = "SELECT VOICE_CUST_USE.VCID, VOICE_CUST_USE.COMPID, COMPANY.COMPNAME, VOICE_CUST_USE.VOICEID, VOICE_SERVICE.VOICENAME, VOICE_CUST_USE.PROMOID, VOICE_CUST_USE.NUM, VOICE_CUST_USE.TOTAL FROM VOICE_CUST_USE INNER JOIN COMPANY ON VOICE_CUST_USE.COMPID = COMPANY.COMPID INNER JOIN VOICE_SERVICE ON VOICE_CUST_USE.VOICEID = VOICE_SERVICE.VOICEID WHERE (VOICE_CUST_USE.CG_CODE = '" & cgcode & "') "
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                      <td><font color="#4B0097" size="2"><%=Rs("COMPNAME")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("VOICENAME")%></font></td>
                      <%
	if Rs("PROMOID")<> "" then
	SQL = "SELECT POMONAME FROM POMOTION WHERE (POMOID = " & Rs("PROMOID") & ") "
	Rs2.Open SQL, Session("Conn1"),1,3	
%>
                      <td style="cursor:hand" onMouseOver="document.all.nv<%=i%>.color='red'" onMouseOut="document.all.nv<%=i%>.color='#4B0097'" onClick="top.ShowRunCenterSizeWindow('Dialog1','200px','450px','pomotionshow.asp?pomoid=<%=Rs("PROMOID")%>');"><font name="nv<%=i%>" id="nv<%=i%>" color="#4B0097" size="2"><%=Rs2("POMONAME")%></font></td>
                      <%
	Rs2.Close
	else
%>
                      <td><font size="2">&nbsp;</font></td>
                      <%
	end if
%>
                      <td><font color="#4B0097" size="2"><%=Rs("NUM")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("TOTAL")%></font></td>
                      <td><font color="#4B0097" size="2">
                        <%if Rs("NUM")<>0 then%>
                        <%=Rs("TOTAL")/Rs("NUM")%>
                        <%end if%>
                        </font></td>
                      <td> <div align="center"> 
                          <input name="Edit" type="button" id="Edit" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','230px','500px','sub_custmain_voice_edit.asp?cgcode=<%=cgcode%>&vcid=<%=Rs("VCID")%>');">
                          &nbsp; 
                          <input name="Delete" type="button" id="Delete" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','230px','450px','sub_custmain_voice_delete.asp?cgcode=<%=cgcode%>&vcid=<%=Rs("VCID")%>');" <%if Cint(Session("User_Level"))<>Cint(4) and Cint(Session("User_Area"))<>Cint(Session("Temp")) then%>disabled<%end if%>>
                        </div></td>
                    </tr>
                    <%
		i=i+1
		Rs.MoveNext
	loop
	Rs.Close
%>
                    <tr> 
                      <td colspan="8" valign="top"><div align="right"> 
                          <input name="add" type="button" id="add" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','230px','500px','sub_custmain_voice_add.asp?cgcode=<%=cgcode%>');">
                        </div></td>
                    </tr>
                  </table>
                  <table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="9" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>สินค้าและบริการที่ใช้อยู่ 
                          NON-VOICE</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">ลำดับ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">ผู้ให้บริการ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">ประเภทบริการ</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">ความเร็ว</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">โปรโมชั่น</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">จำนวน</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">ค่าบริการรวม</font></strong></div></td>
                      <td width="10%"><div align="center"><strong><font color="#4B0097" size="2">ค่าบริการ<br>
                          ต่อวงจร</font></strong></div></td>
                      <td width="10%">&nbsp;</td>
                    </tr>
                    <%
	i=1
	Sql = "SELECT NONVOICE_CUST_USE.NVID, COMPANY.COMPNAME, NONVOICE_SERVICE.NONNAME, SPEED.SPEEDNAME, NONVOICE_CUST_USE.PROMOID, NONVOICE_CUST_USE.NUM, NONVOICE_CUST_USE.TOTAL, NONVOICE_CUST_USE.SERVICE FROM NONVOICE_CUST_USE INNER JOIN COMPANY ON NONVOICE_CUST_USE.COMPID = COMPANY.COMPID INNER JOIN NONVOICE_SERVICE ON NONVOICE_CUST_USE.NONID = NONVOICE_SERVICE.NONID INNER JOIN SPEED ON NONVOICE_CUST_USE.SPEEDID = SPEED.SPEEDID WHERE (NONVOICE_CUST_USE.CG_CODE = '" & cgcode & "')"
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                      <td><font color="#4B0097" size="2"><%=Rs("COMPNAME")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("NONNAME")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("SPEEDNAME")%></font></td>
                      <%
	if Rs("PROMOID")<> "" then
	SQL = "SELECT POMONAME FROM POMOTION WHERE (POMOID = " & Rs("PROMOID") & ") "
	Rs2.Open SQL, Session("Conn1"),1,3	
%>
                      <td style="cursor:hand" onMouseOver="document.all.v<%=i%>.color='red'" onMouseOut="document.all.v<%=i%>.color='#4B0097'" onClick="top.ShowRunCenterSizeWindow('Dialog1','200px','450px','pomotionshow.asp?pomoid=<%=Rs("PROMOID")%>');"><font name="v<%=i%>" id="v<%=i%>" color="#4B0097" size="2"><%=Rs2("POMONAME")%></font></td>
                      <%
	Rs2.Close
	else
%>
                      <td><font size="2">&nbsp;</font></td>
                      <%
	end if
%>
                      <td><font color="#4B0097" size="2"><%=Rs("NUM")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("TOTAL")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("SERVICE")%></font></td>
                      <td> <div align="center"> 
                          <input name="Edit2" type="button" id="Edit2" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','275px','500px','sub_custmain_nonvoice_edit.asp?cgcode=<%=cgcode%>&nvid=<%=Rs("NVID")%>');">
                          &nbsp;
                          <input name="Delete2" type="button" id="Delete2" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','275px','490px','sub_custmain_nonvoice_delete.asp?cgcode=<%=cgcode%>&nvid=<%=Rs("NVID")%>');" <%if Cint(Session("User_Level"))<>Cint(4) and Cint(Session("User_Area"))<>Cint(Session("Temp")) then%>disabled<%end if%>>
                        </div></td>
                    </tr>
                    <%
		i=i+1
		Rs.MoveNext
	loop
	Rs.Close
%>
                    <tr> 
                      <td colspan="9" valign="top"><div align="right"> 
                          <input name="add2" type="button" id="add2" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','500px','sub_custmain_nonvoice_add.asp?cgcode=<%=cgcode%>');">
                        </div></td>
                    </tr>
                  </table>
                  <table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="6" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>สินค้าและบริการที่ใช้อยู่ 
                          PABX </strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%"><div align="center"><strong><font color="#4B0097" size="2">ลำดับ</font></strong></div></td>
                      <td width="25%"><div align="center"><strong><font color="#4B0097" size="2">ยี่ห้อ</font></strong></div></td>
                      <td width="30%"><div align="center"><strong><font color="#4B0097" size="2">รุ่น</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">จำนวนสายใน</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">จำนวนสายนอก</font></strong></div></td>
                      <td width="10%">&nbsp;</td>
                    </tr>
                    <%
	i=1
	Sql = "SELECT PABXID, PABXNAME, SPEC, LINEIN, LINEOUT FROM PABX WHERE (CG_CODE = '" & cgcode & "') "
	Rs.Open SQL, Session("Conn1"),1,3	
	
	do while not Rs.EOF
%>
                    <tr> 
                      <td><div align="right"><font color="#4B0097" size="2"><%=i%></font></div></td>
                      <td><font color="#4B0097" size="2"><%=Rs("PABXNAME")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("SPEC")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("LINEIN")%></font></td>
                      <td><font color="#4B0097" size="2"><%=Rs("LINEOUT")%></font></td>
                      <td> <div align="center"> 
                          <input name="Edit3" type="button" id="Edit3" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','340px','sub_custmain_pabx_edit.asp?cgcode=<%=cgcode%>&pabxid=<%=Rs("PABXID")%>');">
                          <input name="Delete3" type="button" id="Delete3" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','340px','sub_custmain_pabx_delete.asp?cgcode=<%=cgcode%>&pabxid=<%=Rs("PABXID")%>');" <%if Cint(Session("User_Level"))<>Cint(4) and Cint(Session("User_Area"))<>Cint(Session("Temp")) then%>disabled<%end if%>>
                        </div></td>
                    </tr>
                    <%
		i=i+1
		Rs.MoveNext
	loop
	Rs.Close
%>
                    <tr> 
                      <td colspan="6" valign="top"><div align="right"> 
                          <input name="add3" type="button" id="add3" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','160px','340px','sub_custmain_pabx_add.asp?cgcode=<%=cgcode%>');">
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td> <div align="center"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
            </div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
</body>
</html>