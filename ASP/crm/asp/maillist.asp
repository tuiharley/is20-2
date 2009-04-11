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
	end if
%>
<% 
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim cbus, cmcode, cgcode, show
	cbus = Request.Form("cbus")
	cmcode = Request.Form("cmcode")
	cgcode = Request.Form("cgcode")
	show = Request.Form("show")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">E-mail 
                  ลูกค้าที่ติดต่อ </font></b></td>
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
          <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="50">&nbsp;</td>
                <td width="150" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล</font></b></td>
                <td width="70"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="500">
                    <tr> 
                      <td valign="bottom" width="140"><div align="right"><font size="2" color="#4B0097">กลุ่มลูกค้าธุรกิจองค์กร</font></div></td>
                      <td width="9" valign="bottom" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                      <td width="360" valign="bottom"><select name="cbus" id="cbus" onkeypress="if(window.event.keyCode==13){document.form1.cmcode.focus();}" onChange="donewload('1',' <%=show%>');">
                          <option value="">กลุ่มลูกค้าธุรกิจองค์กร</option>
                          <%
	Sql = "SELECT CBUS, NBUS FROM BUSINESS_TYPE GROUP BY CBUS, NBUS "
	Rs2.Open Sql,Session("Conn1"),1,3
	
	do while not Rs2.EOF
%>
                          <option value="<%=Rs2("CBUS")%>" <%if Rs2("CBUS")=cbus then%>selected<%end if%>><%=Rs2("CBUS")&" - "&Rs2("NBUS")%></option>
                          <%
		Rs2.MoveNext
	loop
	Rs2.Close
%>
                        </select> </td
                    >
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ลูกค้า</font></div></td>
                      <td valign="bottom"> <div align="left"> 
                          <select name="cmcode" id="cmcode" onkeypress="if(window.event.keyCode==13){document.form1.cgcode.focus();}" onChange="donewload('2',' <%=show%>');">
                            <option value="">รหัสลูกค้า</option>
                            <%
	if cbus<>"" then
		Sql = "SELECT CM_CODE, CM_NAME	FROM COMP_MAIN	WHERE (CBUS = N'" & cbus & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	
		do while not Rs2.EOF
%>
                            <option value="<%=Rs2("cm_code")%>" <%if Rs2("CM_CODE")=cmcode then%>selected<%end if%>><%=Rs2("cm_code")&" - "&Rs2("cm_name")%></option>
                            <%
			Rs2.MoveNext
		loop
		Rs2.Close
	end if
%>
                          </select>
                      </div></td>
                    </tr>
                    <tr> 
                      <td valign="bottom"><div align="right"><font color="#4B0097" size="2">สาขา</font></div></td>
                      <td valign="bottom"> <div align="left"> 
                          <select name="cgcode" id="cgcode" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
                            <option value="">รหัสสาขา</option>
                            <%
	if cmcode<>"" then
		Sql = "SELECT CG_CODE, CG_NAME FROM CUST_GROUP WHERE (CM_CODE = N'" & cmcode & "') AND (PROVINCE_ID = '" & Session("User_Prov") & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
	
		do while not Rs2.EOF
%>
                            <option value="<%=Rs2("cg_code")%>" <%if Rs2("cg_code")=cgcode then%>selected<%end if%>><%=Rs2("cg_code")&" - "&Rs2("cg_name")%></option>
                            <%
			Rs2.MoveNext
		loop
		Rs2.Close
	end if
%>
                          </select>
                          &nbsp;&nbsp; 
                          <input name="send" type="button" class="button"  id="send" value="ตกลง" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="doloaddata(1);" style="cursor:hand">
                        </div></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <%
	if show<> "" then
%>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="13" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><img src="../images/blank.gif" width="1" height="1"> 
                    <input type="button" name="Button" value="ส่งเมล์" onClick="sendmail();" style="cursor:hand">
                  </div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="5%"><div align="center"><font color="#4B0097" size="2">ลำดับ</font></div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="20%"><div align="center"><font color="#4B0097" size="2">ชื่อ</font></div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="30%"><div align="center"><font color="#4B0097" size="2">บริษัท/สาขา</font></div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="15%"><div align="center"><font color="#4B0097" size="2">อำนาจการตัดสินใจ</font></div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="20%"><div align="center"><font color="#4B0097" size="2">e-mail</font></div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="13" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%
	Dim i
	Sql = "SELECT TOP 100 PERCENT COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, EMP.EMPID, EMP.EMP_NAME, EMP.EMP_SUR, EMP.EMP_SIDE, EMP.EMP_POS, EMP.EMP_DECIDE, EMP.EMP_MAIL FROM EMP INNER JOIN CUST_GROUP ON EMP.CG_CODE = CUST_GROUP.CG_CODE INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE WHERE ((EMP.CG_CODE IN (SELECT CG_CODE FROM APPOINT WHERE (APP_EMPAPP = '" & Session("User_Id") & "') GROUP BY CG_CODE)) OR (EMP.CG_CODE IN (SELECT CG_CODE FROM CONTACT WHERE (CT_EMPMET = '" & Session("User_Id") & "')))) "
if cgcode<>"" then
	Sql = Sql & " AND EMP.CG_CODE='" & cgcode & "' "
else
	if cmcode<>"" then
		Sql = Sql & " AND LEFT(EMP.CG_CODE, 5)='" & cmcode & "' "
	else
		if cbus<>"" then
			Sql = Sql & " AND LEFT(EMP.CG_CODE, 2)='" & cbus & "' "
		end if
	end if
end if
	Sql = Sql & " ORDER BY EMP.CG_CODE, EMP.EMPID "
	
	Rs2.Open Sql,Session("Conn1"),1,3
	
	i=1
	do while not Rs2.EOF
%>
              <tr> 
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"> 
                    <input name="mail" type="checkbox" id="mail" value="<%=Rs2("EMP_MAIL")%>">
                  </div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4B0097" size="2"><%=i%></font></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4B0097" size="2"><%=Rs2("EMP_NAME")&Rs2("EMP_SUR")%></font></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4B0097" size="2"> <%=Rs2("CM_NAME")&"  "&Rs2("CG_NAME")%> 
                  </font></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097" size="2"> 
                    <%if Rs2("EMP_DECIDE") = true then%>
                    <img src="../images/true.gif" width="20" height="20"> 
                    <%else%>
                    <img src="../images/false.gif" width="20" height="20"> 
                    <%end if%>
                    </font></div></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td style="cursor:hand" onClick="mailto('<%=Rs2("EMP_MAIL")%>','','','','');"><font color="#4B0097" size="2"><%=Rs2("EMP_MAIL")%></font></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="13" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%
		i=i+1
		Rs2.MoveNext
	loop
	Rs2.Close
%>
              <tr> 
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"> 
                    <input name="Button2" type="button" id="Button2" value="ส่งเมล์" onClick="sendmail();" style="cursor:hand">
                  </div></td>
                <td colspan="10"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="1" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="13" bgcolor="#009CE8"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <% end if %>
      </table>
    </form>
<form name="form2" method="post" action="">
  <input name="cbus" type="hidden" id="cbus">
   <input name="cmcode" type="hidden" id="cmcode">
   <input name="cgcode" type="hidden" id="cgcode">
  <input name="show" type="hidden" id="show">
</form>
<script language="JavaScript">
function donewload(send, show){
		if(send==1 || send==2){document.form2.cbus.value=document.form1.cbus.value;}
		if(send==2){document.form2.cmcode.value=document.form1.cmcode.value;}
		document.form2.cgcode.value=document.form1.cgcode.value;
		document.form2.show.value=show;
		document.body.style.cursor='wait';
		document.form2.submit();
}
function doloaddata(show){
		document.form2.cbus.value=document.form1.cbus.value;
		document.form2.cmcode.value=document.form1.cmcode.value;
		document.form2.cgcode.value=document.form1.cgcode.value;
		document.form2.show.value=show;
		document.body.style.cursor='wait';
		document.form2.submit();
	}

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
    </center>
</div>
</body>
</html>