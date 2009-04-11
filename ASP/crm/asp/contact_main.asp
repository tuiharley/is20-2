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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim showdate1, opendate1, showdate2, opendate2, area, prov, show,  area2, prov2, namecus, emp_id, emp_name, emp_lname , x
	showdate1 = Request.Form("showdate1")
	opendate1= Request.Form("opendate1")
	showdate2 = Request.Form("showdate2")
	opendate2= Request.Form("opendate2")
	area = Request.Form("area")
	prov = Request.Form("prov")
	show = Request.Form("show")
	area2 = Request.Form("area2")
	prov2 = Request.Form("prov2")
	namecus = Request.Form("namecus")
	emp_id = Request.Form("emp_id")
	emp_name = Request.Form("emp_name")
	emp_lname = Request.Form("emp_lname")
	if area="" then
		area = Session("User_Area")
		prov = Session("User_Prov")
	end if
%>
    <form name="form1" method="post" action="">
      
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="8%">&nbsp;</td>
            <td><b><font color="#4B0097" size="5" face="JasmineUPC">การพบลูกค้า</font></b></td>
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
            <td width="12%" rowspan="2">&nbsp;</td>
            <td width="20%" valign="top"> <b><font size="2" color="#4B0097">เลือกเงื่อนไขการแสดงข้อมูล 
              </font></b></td>
            <td width="68" rowspan="2"><table border="3" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#FFFFFF" width="400" id="AutoNumber24" height="150">
                <tr> 
                  <td valign="bottom" width="120"><div align="right"><font size="2" color="#4B0097">ตั้งแต่วันที่ 
                      - วันที่</font></div></td>
                  <td width="9" valign="bottom" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                  <td width="450" valign="bottom"><input name="showdate1" type="text" class="text" id="showdate1" size="18" readonly value="<%=showdate1%>"> 
                    <input name="opendate1" type="hidden" id="opendate1" value="<%=opendate1%>"> 
                    <input name="popdate1" type="button" id="popdate13" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop1.document.form1.opendate1&input2=top.Desktop1.document.form1.showdate1');"> 
                    <input name="showdate2" type="text" class="text" id="showdate2" size="18" readonly value="<%=showdate2%>"> 
                    <input name="opendate2" type="hidden" id="opendate2" value="<%=opendate2%>"> 
                    <input name="popdate2" type="button" id="popdate2" value="....." class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunPositionSizeWindow('Dialog1','280','120','250px','260px','calendar-sdmy-ddmy.asp?input1=top.Desktop1.document.form1.opendate2&input2=top.Desktop1.document.form1.showdate2');"> 
                  </td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ภาคธุรกิจ</font></div></td>
                  <td valign="bottom"> <div align="left"> 
                      <select name="area" id="area" onChange="donewload();" onkeypress="if(window.event.keyCode==13){document.form1.prov.focus();}">
                        <option value="0" <%if Cint(area)=Cint(0) then%>selected<%end if%>>0</option>
                        <option value="1" <%if Cint(area)=Cint(1) then%>selected<%end if%>>1</option>
                        <option value="2" <%if Cint(area)=Cint(2) then%>selected<%end if%>>2</option>
                        <option value="3" <%if Cint(area)=Cint(3) then%>selected<%end if%>>3</option>
                        <option value="4" <%if Cint(area)=Cint(4) then%>selected<%end if%>>4</option>
                        <option value="5" <%if Cint(area)=Cint(5) then%>selected<%end if%>>5</option>
                        <option value="6" <%if Cint(area)=Cint(6) then%>selected<%end if%>>6</option>
                        <option value="7" <%if Cint(area)=Cint(7) then%>selected<%end if%>>7</option>
                        <option value="8" <%if Cint(area)=Cint(8) then%>selected<%end if%>>8</option>
                        <option value="9" <%if Cint(area)=Cint(9) then%>selected<%end if%>>9</option>
                      </select>
                    </div></td>
                </tr>
                <tr> 
                  <td height="25" valign="bottom"><div align="right"><font color="#4B0097"size="2">จังหวัด</font></div></td>
                  <td valign="bottom"> <select name="prov" id="prov" onkeypress="if(window.event.keyCode==13){document.form1.send.focus();}">
				     <option value=0>จังหวัดทั้งหมด</option>
                      <%
					  			Sql = "SELECT PROVINCE_ID, PROVINCE FROM PROVINCE WHERE (AREA = '" & area & "')"
								Rs.Open Sql,Session("Conn1"),1,3
								do while not Rs.EOF
						%>
                      <option value="<%=Rs("PROVINCE_ID")%>" <%if Cint(prov)=Cint(Rs("PROVINCE_ID")) then%>selected<%end if%>><%=Rs("PROVINCE")%></option>
                      <%
								Rs.MoveNext
								loop
								Rs.Close
						%>
                    </select></td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font color="#4B0097" size="2">ผู้นัดหมาย</font></div></td>
                  <td valign="bottom"> <div align="left"><font color="#4B0097" size="2"> 
                      รหัส: 
                      <input name="emp_id" type="text" class="text" id="emp_id" value="<%=emp_id%>" size="5" maxlength="4">
                      ชื่อ:
                      <input name="emp_name" type="text" class="text" id="emp_name" value="<%=emp_name%>" size="15" maxlength="30">
                      สกุล:</font>
                      <input name="emp_lname" type="text" class="text" id="emp_lname" value="<%=emp_lname%>" size="15" maxlength="30">
                    </div></td>
                </tr>
                <tr> 
                  <td valign="bottom"><div align="right"><font size="2" color="#4B0097">ชื่อลูกค้า</font></div></td>
                  <td valign="bottom"> <div align="left"> 
                      <input name="namecus" type="text" class="text" id="namecus" value="<%=namecus%>" size="25" maxlength="50">
                      &nbsp;&nbsp; 
                      <input name="send" type="button" id="send" value="แสดงข้อมูล" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1'); doloaddata();">
                    </div></td>
                </tr>
              </table></td>
          </tr>
          <tr> 
            <td valign="bottom"><div align="center"><b><font size="2" color="#4B0097"> 
                <input name="commit" type="button" id="commit" value="บันทึกการพบลูกค้า" valign="bottom" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop2','con_add.asp');">
                </font></b></div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <%
	if show<>"" then
%>
    <tr> 
      <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><div align="center"><font color="#4B0097" size="3" face="JasmineUPC">ข้อมูลภาค 
                <% Response.Write(area) %>
                ตั้งแต่วันที่<%=showdate1%> ถึงวันที่<%=showdate2%> </font></div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <%  Dim i, j, total, totalpage, pagesize, pageno, beginrow, endrow
				pageno=Request.Form("pageno")
				pagesize=20
				if prov <> 0 then
					 x = "(CUST_GROUP.PROVINCE_ID = '"& prov &"') AND" 
				else
				 	x = "(PROVINCE.AREA = " & area & ") AND "
				end if 
					  SQL = "SELECT CONTACT.CT_ID, CONTACT.CT_EMPMET, CUST_GROUP.CG_CODE, CONTACT.CT_DATEMET, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE FROM CG_ADDRESS INNER JOIN CUST_GROUP ON CG_ADDRESS.CGADDR_ID = CUST_GROUP.CGADDR_ID INNER JOIN CONTACT ON CUST_GROUP.CG_CODE = CONTACT.CG_CODE INNER JOIN EMPLOYEE ON CONTACT.CT_EMPMET = EMPLOYEE.EMP_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE " & x & " (CONTACT.CT_CUST_NAME LIKE '%" & namecus & "%') AND (CONTACT.CT_DATEMET BETWEEN CONVERT(DATETIME, '"& right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2)& " 00:00:00', 102) AND CONVERT(DATETIME, '"& right(opendate2,4) & "-" & mid(opendate2,4,2) & "-" & left(opendate2,2)& " 23:59:59', 102)) "
		       
			         if emp_id <> "" then
						  SQL = SQL & " AND (CONTACT.CT_EMPMET = '"& emp_id &"') "
					 end if
					  SQL = SQL & " AND (EMPLOYEE.NAME_THAI LIKE '%" & emp_name & "%') AND (EMPLOYEE.SURNAME_THAI LIKE '%" & emp_lname & "%') OR  " & x & " (CONTACT.CT_CUST_NAME1 LIKE '%" & namecus & "%') AND (CONTACT.CT_DATEMET BETWEEN CONVERT(DATETIME, '"& right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2)& " 00:00:00', 102) AND CONVERT(DATETIME, '"& right(opendate2,4) & "-" & mid(opendate2,4,2) & "-" & left(opendate2,2)& " 23:59:59', 102)) "
		
		            if emp_id <> "" then
						  SQL = SQL & " AND (CONTACT.CT_EMPMET = '"& emp_id &"') "
					 end if
					  SQL = SQL & " AND (EMPLOYEE.NAME_THAI LIKE '%" & emp_name & "%') AND (EMPLOYEE.SURNAME_THAI LIKE '%" & emp_lname & "%') OR  " & x & " (CONTACT.CT_CUST_NAME2 LIKE '%" & namecus & "%') AND (CONTACT.CT_DATEMET BETWEEN CONVERT(DATETIME, '"& right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2)& " 00:00:00', 102) AND CONVERT(DATETIME, '"& right(opendate2,4) & "-" & mid(opendate2,4,2) & "-" & left(opendate2,2)& " 23:59:59', 102)) "
		
		             if emp_id <> "" then
						  SQL = SQL & " AND (CONTACT.CT_EMPMET = '"& emp_id &"') "
					 end if
					 SQL = SQL & " AND (EMPLOYEE.NAME_THAI LIKE '%" & emp_name & "%') AND (EMPLOYEE.SURNAME_THAI LIKE '%" & emp_lname & "%') ORDER BY CONTACT.CT_DATEMET DESC "
				
				 Rs.Open SQL,Session("Conn1"),1,3
				'response.Write(SQL)
				' response.End()
					total = Rs.RecordCount
				%>
          <!--#include file = "finepage.asp"-->
          <tr> 
            <td width="10%">&nbsp;</td>
            <td width="65%"><font size="2"><img src="../images/PRINT3.ICO" style="cursor:hand" onClick="window.open('print_contact_main.asp?showdate1=<%=showdate1%>&opendate1=<%=opendate1%>&showdate2=<%=showdate2%>&opendate2=<%=opendate2%>&area=<%=area%>&prov=<%=prov%>&namecus=<%=namecus%>&emp_id=<%=emp_id%>&emp_name=<%=emp_name%>&emp_lname=<%=emp_lname%>&pageno=<%=pageno%>','','');"></font></td>
            <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
                <%
	for i=1 to totalpage
%>
                <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%>selected<%end if%>>หน้าที่ 
                <%=i%></option>
                <%
	next
%>
              </select></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td width="65%"><font size="2" color="#FF8000">กลุ่มลูกค้า P=Platinum, 
              G=Gold, S=Silver, B=Bronze</font></td>
            <td width="25%">&nbsp;</td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr> 
            <td height="1" colspan="13" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="7%" rowspan="3"><div align="center"><font color="#4B0097" size="2"><strong>ลำดับที่</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td colspan="3"><div align="center"><font color="#4B0097" size="2"></font></div>
              <div align="center"><img src="../images/blank.gif" width="1" height="1"><font color="#4B0097" size="2"><strong>เข้าพบ</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="25%" rowspan="3"><div align="center"><font color="#4B0097" size="2"><strong>ชื่อลูกค้า</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="35%" rowspan="3"><div align="center"><font color="#4B0097" size="2"><strong>ที่อยู่</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="13%" rowspan="3">&nbsp;</td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="14%"><div align="center"><font color="#4B0097" size="2"><strong>ว 
                / ด / ป</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="6%"><div align="center"><font color="#4B0097" size="2"><strong>เวลา</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td height="1" colspan="13" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <% 	
				j = 1
				if not Rs.EOF and not Rs.BOF then
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
				%>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td> <font color="#4B0097" size="2"> 
              <% Response.Write(j)%>
              </font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("CT_DATEMET"),1),len(FormatDateTime(Rs("CT_DATEMET"),1))-4)&right(FormatDateTime(Rs("CT_DATEMET"),1),4)+543%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="center"><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("CT_DATEMET"),3),len(FormatDateTime(Rs("CT_DATEMET"),3))-3)%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2"><%=Rs("CM_NAME")&"  "&Rs("CG_NAME")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2"><%= Rs("CGADDR_BAND")& " " &Rs("CGADDR_SOI")&  " " &Rs("CGADDR_STREET")&  " " &Rs("CGADDR_TUMBOL")&  " " &Rs("CGADDR_PROVINCE")&  " " &Rs("CGADDR_POSTCODE")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="center"><font color="#4B0097" size="2"> 
                <input name="dis" type="button" id="dis" value="แสดง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop2','con_detail.asp?cgcode=<%=Rs("cg_code")%>&con_id=<%=Rs("CT_ID") %>')">
                <input name="e" type="button" id="e" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop2','con_edit.asp?cgcode=<%=Rs("cg_code")%>&con_id=<%=Rs("CT_ID") %>')" <%if Cint(Session("User_Level"))=Cint(3) and Session("User_Id")<>Rs("CT_EMPMET") then%>disabled<%end if%>>
                </font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td height="1" colspan="13" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
			  	j = j+1
				Rs.MoveNext
				next
				Rs.MoveFirst
				end if
              %>
        </table></td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="12%">&nbsp;</td>
            <td width="88%"><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน 
              <%if not Rs.EOF and not Rs.BOF then%>
              <%if Cint(pageno)=Cint(totalpage) then%>
              <%=endrow%> 
              <%else%>
              <%=pagesize%> 
              <%end if%>
              <%else%>
              <%end if%>
              รายการ จากข้อมูลทั้งหมด <%=Rs.RecordCount%> รายการ ขณะนี้อยู่ที่หน้า 
              <%if not Rs.EOF and not Rs.BOF then%>
              <%=pageno%> 
              <%else%>
              <%end if%>
              จำนวนทั้งหมดมี <%=totalpage%> หน้า</font></td>
          </tr>
        </table></td>
    </tr>
    <% end if %>
    <tr> 
      <td><div align="center"><span style="background-color: #FFFFFF"><font color="#4B0097"> 
          </font></span></div></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
    </tr>
  </table>
    </form>
  <form name="form2" method="post" action="">
  <input name="showdate1" type="hidden" id="showdate1">
   <input name="opendate1" type="hidden" id="opendate1">
  <input name="showdate2" type="hidden" id="showdate2">
   <input name="opendate2" type="hidden" id="opendate2">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="namecus" type="hidden" id="namecus">
  <input name="emp_id" type="hidden" id="emp_id">
  <input name="emp_name" type="hidden" id="emp_name">  
  <input name="emp_lname" type="hidden" id="emp_lname">
</form>

<form name="form3" method="post" action="">
  <input name="showdate1" type="hidden" id="showdate1">
  <input name="opendate1" type="hidden" id="opendate1">
  <input name="showdate2" type="hidden" id="showdate2">
  <input name="opendate2" type="hidden" id="opendate2">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="show" type="hidden" id="show" value="1">
  <input name="area2" type="hidden" id="area2">
  <input name="prov2" type="hidden" id="prov2">
  <input name="namecus" type="hidden" id="namecus">
  <input name="emp_id" type="hidden" id="emp_id">
  <input name="emp_name" type="hidden" id="emp_name">  
  <input name="emp_lname" type="hidden" id="emp_lname">
</form>
<form name="form4" method="post" action="">
  <input name="showdate1" type="hidden" id="showdate1">
  <input name="opendate1" type="hidden" id="opendate1">
  <input name="showdate2" type="hidden" id="showdate2">
  <input name="opendate2" type="hidden" id="opendate2">
  <input name="area" type="hidden" id="area">
  <input name="prov" type="hidden" id="prov">
  <input name="show" type="hidden" id="show" value="1">
  <input name="area2" type="hidden" id="area2">
  <input name="prov2" type="hidden" id="prov2">
  <input name="namecus" type="hidden" id="namecus">
  <input name="emp_id" type="hidden" id="emp_id">
  <input name="emp_name" type="hidden" id="emp_name">  
  <input name="emp_lname" type="hidden" id="emp_lname">
  <input name="pageno" type="hidden" id="pageno">
</form>
<script language="JavaScript">
	function donewload(){
		document.form2.showdate1.value=document.form1.showdate1.value;
		document.form2.opendate1.value=document.form1.opendate1.value;
	    document.form2.showdate2.value=document.form1.showdate2.value;
		document.form2.opendate2.value=document.form1.opendate2.value;
		document.form2.area.value=document.form1.area.value;
		document.form2.prov.value=document.form1.prov.value;
		document.form2.namecus.value=document.form1.namecus.value;
		document.form2.emp_id.value=document.form1.emp_id.value;
		document.form2.emp_name.value=document.form1.emp_name.value;
		document.form2.emp_lname.value=document.form1.emp_lname.value;
		document.body.style.cursor='wait';
		document.form2.submit();
	}
	function checkdate(date1, date2){
//	alert(parseInt(date1.substr(0,2))>parseInt(date2.substr(0,2)) && parseInt(date1.substr(3,2))==parseInt(date2.substr(3,2)) && parseInt(date1.substr(6,4))==parseInt(date2.substr(6,4)));
//	alert(parseInt(date1.substr(3,2))>parseInt(date2.substr(3,2)) && parseInt(date1.substr(6,4))==parseInt(date2.substr(6,4)));
//	alert(parseInt(date1.substr(6,4))>parseInt(date2.substr(6,4)));
	    if((parseInt(date1.substr(0,2),10)>parseInt(date2.substr(0,2),10) && parseInt(date1.substr(3,2),10)==parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(3,2),10)>parseInt(date2.substr(3,2),10) && parseInt(date1.substr(6,4),10)==parseInt(date2.substr(6,4),10)) || (parseInt(date1.substr(6,4),10)>parseInt(date2.substr(6,4),10))){
			return true;
	    }
	    return false;
	}

	function doloaddata(){
		if(document.form1.showdate1.value==""){
			alert('กรุณาระบุช่วงวันที่');
			return;
		}
		if(document.form1.showdate2.value==""){
			alert('กรุณาระบุช่วงวันที่');
			return;
		}
		if(checkdate(document.form1.opendate1.value,document.form1.opendate2.value)){
			alert('กรุณาระบุช่วงวันที่ให้ถูกต้อง');
			return;
		}
		document.form3.showdate1.value=document.form1.showdate1.value;
		document.form3.opendate1.value=document.form1.opendate1.value;
		document.form3.showdate2.value=document.form1.showdate2.value;
		document.form3.opendate2.value=document.form1.opendate2.value;
		document.form3.area.value=document.form1.area.value;
		document.form3.prov.value=document.form1.prov.value;
		document.form3.area2.value=document.form1.area.value;
		document.form3.prov2.value=document.form1.prov.value;
		document.form3.namecus.value=document.form1.namecus.value;
		document.form3.emp_id.value=document.form1.emp_id.value;
		document.form3.emp_name.value=document.form1.emp_name.value;
		document.form3.emp_lname.value=document.form1.emp_lname.value;
		document.body.style.cursor='wait';
		document.form3.submit();
	}
	function doloaddata2() {
		document.form4.showdate1.value=document.form1.showdate1.value;
		document.form4.opendate1.value=document.form1.opendate1.value;
		document.form4.showdate2.value=document.form1.showdate2.value;
		document.form4.opendate2.value=document.form1.opendate2.value;
		document.form4.area.value=document.form1.area.value;
		document.form4.prov.value=document.form1.prov.value;
		document.form4.area2.value=document.form1.area.value;
		document.form4.prov2.value=document.form1.prov.value;
		document.form4.namecus.value=document.form1.namecus.value;
		document.form4.emp_id.value=document.form1.emp_id.value;
		document.form4.emp_name.value=document.form1.emp_name.value;
		document.form4.emp_lname.value=document.form1.emp_lname.value;
		document.form4.pageno.value=document.form1.pageno.value;
		document.body.style.cursor='wait';
		document.form4.submit();
} 
</script>
</body>
</html>