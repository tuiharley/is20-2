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
 	Dim cgcode
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
		Dim SQL, Rs
		set Rs = Server.CreateObject("Adodb.RecordSet")
		SQL = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.AREA, PROVINCE.PROVINCE, CUST_GROUP.CG_CODE FROM         CUST_GROUP INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID WHERE     (CUST_GROUP.CG_CODE = N'" & cgcode &"')"
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
                      <td width="84%" bgColor="#fff0df"><font color="#4b0097" size="2"><%=Rs("CM_NAME") &"  "&Rs("CG_NAME")%></font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><font color="#ffffff" size="1"><b>ที่อยู่</b></font></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font face="MS Sans Serif" size="1" color="#FFFFFF">ภาคธุรกิจ</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><% =Rs("AREA")%></font></td>
                    </tr>
                    <tr> 
                      <td bgColor="#306790"><div align="right"><b><font face="MS Sans Serif" size="1" color="#FFFFFF">จังหวัด</font></b></div></td>
                      <td bgColor="#fff0df"><font size="2" color="#4b0097"><%=Rs("PROVINCE")%></font></td>
                    </tr>
                  </table></td>
              </tr>
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
                <td valign="top"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="100%">
                    <tr> 
                      <td colspan="8" valign="top"><div align="center"><font color="#4B0097" size="3"><strong>เจ้าหน้าที่ที่ติดต่อ</strong></font></div></td>
                    </tr>
                    <tr> 
                      <td width="5%" height="36"><div align="center"><strong><font color="#4B0097" size="2">ลำดับ</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">ชื่อ</font></strong></div></td>
                      <td width="7%"><div align="center"><strong><font color="#4B0097" size="2">อำนาจ<br>
                          ตัดสินใจ</font></strong></div></td>
                      <td width="15%"><div align="center"><strong><font color="#4B0097" size="2">โทรศัพท์</font></strong></div></td>
                      <td width="12%"><div align="center"><strong><font color="#4B0097" size="2">fax</font></strong></div></td>
                      <td width="20%"><div align="center"><strong><font color="#4B0097" size="2">e-mail</font></strong></div></td>
                      <td width="7%"><div align="center"><strong><font color="#4B0097" size="2">ข้อมูล<br>
                          ส่วนตัว</font></strong></div></td>
                      <td width="14%">&nbsp;</td>
                      <% 
						Dim SQLS, RsS
						set RsS = Server.CreateObject("Adodb.RecordSet")
						SQLS = "SELECT EMPID, CG_CODE, ID, EMP_NAME, EMP_SUR, EMP_SIDE, EMP_POS, EMP_DECIDE, EMP_TEL, EMP_FAX, EMP_MAIL FROM EMP WHERE (CG_CODE = '" & cgcode & "') "
					    RsS.Open SQLS,Session("Conn1"),1,3
						Dim i
							i = 1
						While Not RsS.EOF
					%>
                    <tr> 
                      <td><font color="#4B0097" size="2"> 
                        <input name="mail" type="checkbox" id="mail" value="<%=RsS("EMP_MAIL")%>">
                        <%=i%></font></td>
                      <td><font color="#4B0097" size="2"><%=RsS("EMP_NAME")%></font></td>
                      <td><div align="center"><font color="#4B0097" size="2"> 
                          <%if RsS("EMP_DECIDE") = true then%>
                          <img src="../images/true.gif" width="20" height="20"> 
                          <%else%>
                          <img src="../images/false.gif" width="20" height="20"> 
                          <%end if%>
                          </font></div></td>
                      <td><font color="#4B0097" size="2"><%=RsS("EMP_TEL")%></font></td>
                      <td><font color="#4B0097" size="2"><%=RsS("EMP_FAX")%></font></td>
                      <td><font color="#4B0097" size="2"><%=RsS("EMP_MAIL")%></font></td>
                      <td><div align="center"><font color="#4B0097" size="2"> 
                          <input name="data" type="button" id="data" value="ข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop4','person_add.asp?empid=<%=RsS("EMPID")%>');">
                          </font></div></td>
                      <td> <div align="center"> 
                          <input name="D" type="button" id="D" value="แสดง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','sub_custmain_detail4.asp?cgcode=<%=RsS("CG_CODE")%>&empid=<%=RsS("ID")%>');">
                          <input name="Edit" type="button" id="Edit" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','sub_custmain_edit4.asp?cgcode=<%=RsS("CG_CODE")%>&empid=<%=RsS("ID")%>');">
                          <input name="Delete2" type="button" id="Delete" value="ลบ" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','sub_custmain_delete4.asp?cgcode=<%=RsS("CG_CODE")%>&empid=<%=RsS("ID")%>');" <%if Cint(Session("User_Level"))<>Cint(4) and Cint(Session("User_Area"))<>Cint(Session("Temp")) then%>disabled<%end if%>>
                        </div></td>
                    </tr>
                    <%
						RsS.MoveNext
						i = i+1
						Wend
						RsS.Close
					%>
                    <tr> 
                      <td><div align="center"> 
                          <input name="Button2" type="button" id="Button2" value="ส่งเมล์" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="sendmail();">
                        </div></td>
                      <td colspan="7"><div align="right"> 
                          <input name="add" type="button" id="add2" value="  เพิ่ม  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'"onClick="top.ShowRunCenterSizeWindow('Dialog1','240px','350px','sub_custmain_add4.asp?cgcode=<%=Rs("CG_CODE")%>');">
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
          <td><div align="center"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop3');">
            </div></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
<script language="JavaScript">
function mailto(to,cc,bcc,subject,body){
	//var to = "noppadolpo@ttt.co.th";  
	//var cc = "another_person@company.com";  
	//var bcc = "yet_another_person@company.com";  
	//var subject = "A Preformatted Email Message";  
	//var body =       "Chandler,\n\n\tI'm sorry, I can't make it tonight. " +      "I have to rearrange my sock drawer. " +      "\n\nSincerely,\n\nMonica"  
	var doc = "mailto:" + to +       "?cc=" + cc +       "&bcc=" + bcc +       "&subject=" + escape(subject) +       "&body=" + escape(body);   
	window.location = doc;
}

function sendmail(){
	var to;
	var check=false;
//alert(document.form1.mail.;);
  if (document.form1.mail.length == null ) {
  		if(document.form1.mail.checked){
		to = document.form1.mail.value;
		check = true;
		 }
	}else{
	for(i=0; i<document.form1.mail.length; i++)
	{
		if(document.form1.mail[i].checked){
			if(check==true){
				to = to+"; "+document.form1.mail[i].value;
			}else{
						to = document.form1.mail[i].value;
						check=true;
					}
		}
	}
}
	if(check){
	
		mailto(to,'','','','');
	}
}
</script>
</body>
</html>