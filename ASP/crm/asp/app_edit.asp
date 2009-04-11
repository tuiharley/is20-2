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
	Dim app_id, cgcode
	app_id = Request.QueryString("app_id")
	cgcode = Request.QueryString("cgcode")
%>
<% 
	Dim i, showdate1, opendate1, showdate2, opendate2, emp1, emp2, emp1_name, emp2_name
	
		
		showdate1 = Request.Form("showdate1")
		opendate1= Request.Form("opendate1")
		showdate2 = Request.Form("showdate2")
		opendate2= Request.Form("opendate2")
	Dim Rs, Rs2, Rs3, SQL, SQLE, SQLE1, RsE, RsE1
		set Rs = Server.CreateObject("Adodb.RecordSet")
		set Rs2 = Server.CreateObject("Adodb.RecordSet")
    	set Rs3 = Server.CreateObject("Adodb.RecordSet")
		set RsE = Server.CreateObject("Adodb.RecordSet")
		set RsE1 = Server.CreateObject("Adodb.RecordSet")
		
	SQLE = "SELECT APPOINT_STATUS.AS_STATUS_ID, APPOINT_STATUS.AS_STATUS_NAME, APPOINT.APP_DATEAP, APPOINT.APP_DATECT, APPOINT_STATUS.AS_STATUS_NAME, APPOINT.APP_REMARK, APPOINT.APP_CUST_NAME, APPOINT.APP_TEL_CONTACT, APPOINT.APP_FAX_NO, APP_EMAIL, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, APPOINT.APP_EMPAPP1, APPOINT.APP_EMPAPP2 FROM APPOINT INNER JOIN APPOINT_STATUS ON APPOINT.AS_STATUS_ID = APPOINT_STATUS.AS_STATUS_ID INNER JOIN EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID WHERE (APPOINT.APP_ID = " & app_id & ")"
	RsE.Open SQLE,Session("Conn1"),1,3
	if RsE("APP_EMPAPP1") <> "" then
		SQLE1 = "SELECT EMP_ID, NAME_THAI, SURNAME_THAI FROM EMPLOYEE WHERE (EMP_ID = '" & RsE("APP_EMPAPP1")  & "')"
		RsE1.Open SQLE1,Session("Conn1"),1,3
		emp1 = RsE1("EMP_ID")
		emp1_name = RsE1("NAME_THAI") & "  " & RsE1("SURNAME_THAI")
		RsE1.Close
	end if
	if RsE("APP_EMPAPP2") <> "" then
		SQLE1 = "SELECT EMP_ID, NAME_THAI, SURNAME_THAI FROM EMPLOYEE WHERE (EMP_ID = '" & RsE("APP_EMPAPP2")  & "')"
		RsE1.Open SQLE1,Session("Conn1"),1,3
		emp2 = RsE1("EMP_ID")
		emp2_name = RsE1("NAME_THAI") & "  " & RsE1("SURNAME_THAI")
		RsE1.Close
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
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">การนัดหมาย</font></b></td>
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
                <td width="10%">&nbsp;</td>
                <td><b><font color="#4B0097" size="4" face="JasmineUPC">แก้ไขข้อมูลการนัดหมาย</font></b></td>
              </tr>
            </table></td>
        </tr>
        <% 
			Dim SQLT, RsT
				set RsT = Server.CreateObject("Adodb.RecordSet") 
				SQLT = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
				RsT.Open SQLT, Session("Conn1"),1,3
		%>
        <tr> 
          <td><table width="81%" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="30%" valign="bottom"> <p align="right"><font  color="#4B0097" size="2"> 
                    <span lang="th">ชื่อลูกค้า</span></font></td>
                <td width="2%" valign="bottom" rowspan="6">&nbsp; </td>
                <td width="68%" valign="bottom"> <font  color="#4b0097" size="2"> 
                  <span lang="th"><%=RsT("CM_NAME")&"  "&RsT("CG_NAME")%></span></font></td>
              </tr>
              <tr> 
                <td valign="bottom"> <p align="right"> <font size="2" color="#4B0097" >ที่อยู่</font></td>
                <td valign="bottom"> <font  size="1" color="#4B0097"> <font  size="1" color="#4B0097"> 
                  <font  color="#4b0097" size="2"><%=RsT("CGADDR_SNAME")&" "&RsT("CGADDR_BAND")&" "&RsT("CGADDR_SOI")&" "&RsT("CGADDR_STREET")&" "&RsT("CGADDR_TUMBOL")&" "&RsT("CGADDR_DISTRICT")&" "&RsT("CGADDR_PROVINCE")&" "&RsT("CGADDR_POSTCODE")%></font></font></font></td>
              </tr>
              <tr> 
                <td valign="bottom"> <p align="right"> <font  size="2" color="#4B0097"> 
                    ภาคธุรกิจ</font></td>
                <td valign="bottom"> <font  size="2" color="#4B0097"> <span lang="en-us">
                  <% =(RsT("AREA")) %>
                  </span></font></td>
              </tr>
              <tr> 
                <td valign="bottom"> <p align="right"> <font  size="2" color="#4B0097"> 
                    จังหวัด</font></td>
                <td valign="bottom"> <font  size="2" color="#4B0097"> 
                  <%
					 Response.Write(RsT("PROVINCE"))
				%>
                  </font></td>
              </tr>
              <tr> 
                <td valign="bottom"> <p align="right"><font  color="#4B0097" size="2"> 
                    <span lang="th">กลุ่มลูกค้า</span></font></td>
                <td valign="bottom"> <font  color="#4B0097" size="2"> 
                  <%
							Response.Write(RsT("SMT"))
						%>
                  </font></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="580" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
              <tr> 
                <td width="161"><div align="right"><font size="2" color="#4B0097">ว/ด/ป 
                    (ติดต่อ)</font></div></td>
                <td width="14" rowspan="17"><img src="../images/blank.gif" width="1" height="1"></td>
                <%
				Dim day1, month1, year1
				Function format_date(chdate)
					if Day(chdate) < 10 then day1= 0&Day(chdate) else day1 = Day(chdate) end if	
					if Month(chdate) < 10 then month1= 0&Month(chdate)  else month1 = Month(chdate) end if
					year1 = Year(chdate)	
					format_date = day1&"/"&month1&"/"&year1
				End Function
				
					opendate1 = format_date(FormatDateTime(RsE("APP_DATEAP"),0))
					opendate2 = format_date(FormatDateTime(RsE("APP_DATECT"),0))
				%>
                <td width="398" colspan="2"><input name="showdate1" type="text" class="text" id="showdate1" size="18" readonly value="<%=left(FormatDateTime(RsE("APP_DATEAP"),1),len(FormatDateTime(RsE("APP_DATEAP"),1))-4)&right(FormatDateTime(RsE("APP_DATEAP"),1),4)+543%>"> 
                  <input name="opendate1" type="hidden" id="opendate1" value="<%=opendate1%>"> 
                  <input name="popdate1" type="button" id="popdate1" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop2.document.form1.opendate1&input2=top.Desktop2.document.form1.showdate1');"> 
                  <font size="2" color="#4B0097">&nbsp;&nbsp;เวลา</font> <select name="h1" id="h1" onkeypress="if(window.event.keyCode==13){document.form1.m1.focus();}">
                    <option value="<%=left((FormatDateTime(RsE("APP_DATEAP"),4)),2)%>"><%=left((FormatDateTime(RsE("APP_DATEAP"),4)),2)%></option>
                    <%
	for i=0 to 23
%>
                    <option value="<%=right("0"&i,2)%>"><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select>
                  : 
                  <select name="m1" id="m1">
                    <option value="<%=right((FormatDateTime(RsE("APP_DATEAP"),4)),2)%>"><%=right((FormatDateTime(RsE("APP_DATEAP"),4)),2)%></option>
                    <%
	for i=0 to 59
%>
                    <option value="<%=right("0"&i,2)%>"><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select> <font size="2" color="#FF93C9">(hh.mm)</font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2"  color="#4B0097"> ว/ด/ป(นัดหมาย)</font></div></td>
                <td colspan="2"><input name="showdate2" type="text" class="text" id="showdate2" size="18" readonly value="<%=left(FormatDateTime(RsE("APP_DATECT"),1),len(FormatDateTime(RsE("APP_DATECT"),1))-4)&right(FormatDateTime(RsE("APP_DATECT"),1),4)+543%>"> 
                  <input name="opendate2" type="hidden" id="opendate2" value="<%=opendate2%>"> 
                  <input name="popdate2" type="button" id="popdate2" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop2.document.form1.opendate2&input2=top.Desktop2.document.form1.showdate2');"> 
                  <font  size="2" color="#4B0097">&nbsp;&nbsp;เวลา</font> <select name="h2" id="h2" onkeypress="if(window.event.keyCode==13){document.form1.m2.focus();}">
                    <option value="<%=left((FormatDateTime(RsE("APP_DATECT"),4)),2)%>"><%=left((FormatDateTime(RsE("APP_DATECT"),4)),2)%></option>
                    <%
	for i=0 to 23
%>
                    <option value="<%=right("0"&i,2)%>"><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select>
                  : 
                  <select name="m2" id="m2">
                    <option value="<%=right((FormatDateTime(RsE("APP_DATECT"),4)),2)%>"><%=right((FormatDateTime(RsE("APP_DATECT"),4)),2)%></option></option> 
                    <%
	for i=0 to 59
%>
                    <option value="<%=right("0"&i,2)%>"><%=right("0"&i,2)%></option>
                    <%
	next
%>
                  </select> <font  size="2" color="#FF93C9">(hh.mm)</font></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">สถานะการนัดหมาย</font></div></td>
                <td><font  color="#4B0097" size="2"> 
                  <select size="1" name="app_status" onkeypress="if(window.event.keyCode==13){document.form1.APP_REMARK.focus();}">
                    <%
			  				Dim RsS, SQLS
							set RsS = Server.CreateObject("Adodb.RecordSet")
							SQLS = "SELECT AS_STATUS_NAME, AS_STATUS_ID FROM APPOINT_STATUS WHERE (AS_STATUS_ID = '1') OR (AS_STATUS_ID = '3') "
							RsS.Open SQLS, Session("Conn1"),1,3                
							do while Not RsS.EOF
					%>
                    <option value="<%=RsS("AS_STATUS_ID")%>"><%=RsS("AS_STATUS_NAME")%></option>
                    <%
				RsS.MoveNext
			    loop
                RsS.Close
			  %>
                  </select>
                  </font></td>
              </tr>
              <tr> 
                <td valign="top"><div align="right"><font color="#4B0097" size="2">วัตถุประสงค์การนัดหมาย</font></div></td>
                <td> <table width="100%">
                    <% 
			 	Dim re, check
				check = false
	SQL = "SELECT APP_OBJECT.OID, OBJECT.ONAME, APP_OBJECT.REMARK FROM APP_OBJECT INNER JOIN OBJECT ON APP_OBJECT.OID = OBJECT.OID WHERE (APP_OBJECT.APP_ID = " & app_id & ") ORDER BY APP_OBJECT.OID "
	Rs.Open SQL,Session("Conn1"),1,3

	     		  SQL = "SELECT OID, ONAME FROM OBJECT ORDER BY OID"
				  Rs2.Open SQL,Session("Conn1"),1,3
						i = 0
						do While Not Rs2.EOF %>
                    <tr>
                      <td><input name="radio_obj" type="checkbox" value="<%=Rs2("OID") %>"<%if Cint(Rs2("OID"))=Cint(255) then%>onClick="if(document.form1.radio_obj[<%=i%>].checked){document.form1.remark.disabled=false; document.form1.remark.focus();}else{document.form1.remark.value=''; document.form1.remark.disabled=true;}"<%end if%> <%if not Rs.EOF and not Rs.BOF then%><%if Cint(Rs2("OID"))=Cint(Rs("OID")) then%><%if Cint(Rs("OID"))=255 then%><%check=true%><%re=Rs("remark")%><%end if%><%Rs.MoveNext%>checked<%end if%><%end if%>> 
                        <font size="2" color="#4B0097"><%=Rs2("ONAME")%></font> 
                        <%if Cint(Rs2("OID"))=Cint(255) then%>
                        <textarea name="remark" cols="50" rows="2" id="remark" onKeyPress="if(document.form1.remark.value.length>=100){event.returnValue=false;}" <%if check=false then%>disabled<%end if%>><%=re%></textarea> 
                        <%end if%>
                      </td>
                    </tr>
                    <%  Rs2.MoveNext
							i = i+1
			     		loop
                 		Rs2.Close
						Rs.Close
				 		%>
                  </table>
                  <input type="hidden" name="app_obj"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">ชื่อ-สกุลลูกค้าที่ติดต่อ</font></div></td>
                <td colspan="2"><input name="app_cust_name" type="text" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.APP_TEL_CONTACT.focus();}" value="<% =RsE("APP_CUST_NAME") %>" size="30" maxlength="50"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">เบอร์ติดต่อ</font></div></td>
                <td colspan="2"><input name="app_tel_contact" type="text" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.APP_FAX_NO.focus();}" value="<% =RsE("APP_TEL_CONTACT") %>" size="20" maxlength="50"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">Fax.</font></div></td>
                <td colspan="2"><input name="app_fax_no" type="text" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.APP_EMPAPP1.focus();}" value="<% =RsE("APP_FAX_NO") %>" size="20" maxlength="50"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  size="2" color="#4B0097">E-mail.</font></div></td>
                <td colspan="2"><input name="app_mail" type="text" class="text" onKeyPress="if(window.event.keyCode==13){document.form1.APP_EMPAPP1.focus();}" value="<% =RsE("APP_EMAIL") %>" size="35" maxlength="50"></td>
              </tr>
              <tr> 
                <td><div align="right"><font  color="#4B0097" size="2">ผู้นัดหมาย</font></div></td>
                <td colspan="2"><p dir="ltr" align="left"><font  size="2" color="#4B0097"> 
                    <%=RsE("NAME_THAI") & "  " & RsE("SURNAME_THAI")%> 
                    <input name="APP_EMPAPP" type="hidden" id="APP_EMPAPP" value="<%=Session("User_Id")%>">
                    </font></td>
              </tr>
              <tr> 
                <% SQL = "SELECT EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.PROVINCE_ID WHERE (PROVINCE.AREA = '" & Session("User_Prov") & "')"
			    Rs.Open SQL,Session("Conn1"),1,3
				While Not Rs.EOF
				Rs.MoveNext
			    Wend
                Rs.Close
			  %>
                <td valign="top"><div align="right"><font  color="#4b0097" size="2">ผู้เชี่ยวชาญเฉพาะด้าน<br>
                    หรือผู้บริหารที่ออกพบด้วย</font><font size="2"  color="#4B0097"></div></td>
                <td colspan="2"><input name="APP_EMP_TMP" type="button" class="button" id="APP_EMP_TMP" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="เพิ่มรายชื่อ" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','650px','add_specialist1.asp?app_id=<%=app_id%>&cgcode=<%=cgcode%>')">
				<!--
				<select size="1" name="APP_EMPAPP1" onKeyPress="if(window.event.keyCode==13){document.form1.APP_EMPAPP2.focus();}">
                    <option value="">กรุณาระบุ</option>
                    <% 
				'SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '"& Session("USER_Area") &"') AND (EMPLOYEE.USEROW = 1) ORDER BY EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI "
			    'Rs.Open SQL,Session("Conn1"),1,3
				'do while Not Rs.EOF
%>
                    <option value="<%'=Rs("EMP_ID")%>" <%'if Rs("EMP_ID")=emp1 then%>selected<%'end if%>><%'=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></option>
                    <%
'					Rs.MoveNext
			'    loop
             '   Rs.Close
			  %>
                  </select>
                  <input name="search2" type="button" class="button" id="search2" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_emp.asp?iframe='+self.name+'&selectname=APP_EMPAPP1')">
                  <br> <select size="1" name="APP_EMPAPP2" onkeypress="if(window.event.keyCode==13){document.form1.APP_REMARK.focus();}">
                    <option value="">กรุณาระบุ</option>
                    <% 
				'SQL = "SELECT TOP 100 PERCENT EMPLOYEE.EMP_ID, EMPLOYEE.TITLE_THAI, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI FROM EMPLOYEE INNER JOIN PROVINCE ON EMPLOYEE.WORKING_PROVINCE = PROVINCE.P_LOC WHERE (PROVINCE.AREA = '"& Session("USER_Area") &"') AND (EMPLOYEE.USEROW = 1) ORDER BY EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI "
			    'Rs.Open SQL,Session("Conn1"),1,3
				'do while Not Rs.EOF
%>
                    <option value="<%'=Rs("EMP_ID")%>" <%'if Rs("EMP_ID")=emp2 then%>selected<%'end if%>><%'=Rs("NAME_THAI")&"  "&Rs("SURNAME_THAI")%></option>
                    <%
				'Rs.MoveNext
			    'loop
               ' Rs.Close
			  %>
                  </select>
                  <input name="search3" type="button" class="button" id="search3" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="ค้นหา" onClick="top.ShowRunCenterSizeWindow('DialogS1','300px','450px','app_add_search_emp.asp?iframe='+self.name+'&selectname=APP_EMPAPP2')">   -->
                </td>
              </tr>
              <tr> 
                <td valign="top"><p align="right"><font  size="2" color="#4B0097">หมายเหตุ</font></td>
                <td colspan="2"><textarea rows="3" name="APP_REMARK" cols="50"><%=RsE("APP_REMARK")%></textarea> 
                  <br> <input name="app_id" type="hidden" value="<% =app_id %>"> 
                </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><div align="center"> 
              <input name="send" type="button" id="send" value="บันทึกข้อมูล" onClick="dosend();" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'">
              &nbsp;&nbsp; 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.RunWindow('Temp1','close_search_specialist.asp');top.HideWindow('Desktop2');">
            </div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
	  <input name="cgcode" type="hidden" value="<% =cgcode %>">
    </form>
    </center>
</div>
</body>
<Script language="JavaScript">
	function checkdate(date1, date2){
	    if((parseInt(date1.substr(0,2),10)>parseInt(date2.substr(0,2),10) && parseInt(date1.substr(3,2),10)==parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(3,2),10)>parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(6,4),10)>parseInt(date2.substr(6,4),10))){
			return true;
	    }
	    return false;
    }
	
	function radio_button_checker(rad){
		// set var radio_choice to false
		var radio_choice = false;
        var theone;
		// Loop from zero to the one minus the number of radio button selections
		for (counter = 0; counter < rad.length; counter++){
		// If a radio button has been selected it will return true
		// (If not it will return false)
			if (rad[counter].checked) {
			    theone = counter;
			    document.form1.app_obj.value=rad[counter].value;
				radio_choice = true;
			}
		}
		if (!radio_choice){
			// If there were no selections made display an alert box 
			return (false);
		}
		return (true);
	}
	
	function dosend(){
		if(document.form1.showdate1.value==""){
			alert('กรุณาระบุชันที่ติดต่อ');
			return;
		}
		if(document.form1.showdate2.value==""){
			alert('กรุณาระบุวันที่นัดหมาย');
			return;
		}
		if(checkdate(document.form1.opendate1.value,document.form1.opendate2.value)){
			alert('กรุณาระบุวันที่นัดหมายให้ถูกต้อง');
			return;
		}
		if(document.form1.h1.value==""){
			document.form1.h1.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(document.form1.m1.value==""){
			document.form1.m1.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(document.form1.h2.value==""){
			document.form1.h2.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(document.form1.m2.value==""){
			document.form1.m2.focus();
			alert('กรุณาระบุเวลา');
			return;
		}
		if(radio_button_checker(document.form1.radio_obj)==false){
			alert("กรุณาเลือกวัตถุประสงค์การนัดหมาย")
			return;
		}
		if(document.form1.app_cust_name.value==""){
			alert("กรณาเลือกชื่อ-สกุลลูกค้าที่ติดต่อ");
			document.form1.app_cust_name.focus();
			return;
		}

		if(confirm('ยืนยันการบันทึกข้อมูล')){
			document.form1.send.disabled=true;
			top.RunWindow('Temp1','temp_save_app_edit.asp');
		}
	}
</Script>
</html>
