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
	Dim Rs, Rs3, SQL, SQL1, SQL2, SQL3, cgcode, emp_id, app_obj, showdate1, showdate2
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
	set Rs = Server.CreateObject("Adodb.RecordSet")		
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
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="4" face="JasmineUPC">ข้อมูลการนัดหมาย</font></b></td>
              </tr>
            </table></td>
        </tr>
            <%
			Dim i, total, totalpage, pagesize, pageno, beginrow, endrow, selectdate
'			pageno=Request.Form("pageno")
			selectdate=Request.QueryString("selectdate")
			SQL ="SELECT APPOINT.APP_ID, APPOINT.APP_DATECT, APPOINT.AS_STATUS_ID, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, APPOINT.APP_CUST_NAME, APPOINT.APP_TEL_CONTACT, APPOINT.CG_CODE FROM APPOINT INNER JOIN EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID WHERE (APPOINT.APP_EMPAPP = '" & Session("User_Id") & "') AND (APPOINT.APP_DATECT >= CONVERT(DATETIME, '"& year(selectdate) &"-"& month(selectdate) &"-"& day(selectdate) &" 00:00:00', 102) AND APPOINT.APP_DATECT <= CONVERT(DATETIME, '"& year(selectdate) &"-"& month(selectdate) &"-"& day(selectdate) &" 23:59:59', 102)) OR (APPOINT.APP_EMPAPP1 = '" & Session("User_Id") & "') AND (APPOINT.APP_DATECT >= CONVERT(DATETIME, '"& year(selectdate) &"-"& month(selectdate) &"-"& day(selectdate) &" 00:00:00', 102) AND APPOINT.APP_DATECT <= CONVERT(DATETIME, '"& year(selectdate) &"-"& month(selectdate) &"-"& day(selectdate) &" 23:59:59', 102)) OR (APPOINT.APP_EMPAPP2 = '" & Session("User_Id") & "') AND (APPOINT.APP_DATECT >= CONVERT(DATETIME, '"& year(selectdate) &"-"& month(selectdate) &"-"& day(selectdate) &" 00:00:00', 102) AND APPOINT.APP_DATECT <= CONVERT(DATETIME, '"& year(selectdate) &"-"& month(selectdate) &"-"& day(selectdate) &" 23:59:59', 102)) ORDER BY APPOINT.APP_DATECT DESC " 
    		Rs.Open SQL,Session("Conn1"),1,3
			total = Rs.RecordCount
			pagesize=20
	%>
            <!--#include file = "finepage.asp"-->
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%"><font size="2">&nbsp;</font></td>
                <td width="25%">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%"><font color="#FF9933" size="2">Dis=แสดงข้อมูล,&nbsp;E=แก้ไข/ยกเลิกข้อมูล</font></td>
                <td width="25%">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="13" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="17%"><div align="center"><font color="#4B0097"><strong><font size="2">ว/ด/ป</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="8%"><div align="center"><font color="#4B0097"><strong><font size="2">เวลา</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="23%"><div align="center"><font color="#4B0097"><strong><font size="2">ผู้นัดหมาย</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="25%"><div align="center"><font color="#4B0097"><strong><font size="2">ชื่อลูกค้าที่ติดต่อ</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="14%"><div align="center"><font color="#4B0097"><strong><font size="2">เบอร์ติดต่อ</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="13%"><div align="center"><font color="#4B0097"><strong></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="13" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
	<% 
				if not Rs.EOF and not Rs.BOF then
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
 	%>
 				<tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("APP_DATECT"),1),len(FormatDateTime(Rs("APP_DATECT"),1))-4)&(right(FormatDateTime(Rs("APP_DATECT"),1),4)+543)%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("APP_DATECT"),3),len(FormatDateTime(Rs("APP_DATECT"),3))-3)%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4b0097" size="2"><% =Rs("NAME_THAI")& "   " &Rs("SURNAME_THAI") %></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4b0097" size="2"><% =Rs("APP_CUST_NAME") %></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4b0097" size="2"><% =Rs("APP_TEL_CONTACT") %></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"> 
                    <input name="dis" type="button" id="dis" value="แสดง" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop3','app_detail2.asp?cgcode=<%=Rs("cg_code")%>&app_id=<% =Rs("APP_ID") %>')">
                    <input name="E" type="button" id="E" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.ShowRunWindow('Desktop3','app_edit2.asp?cgcode=<%=Rs("cg_code")%>&app_id=<% =Rs("APP_ID") %>&selectdate=<%=selectdate%>')" <%if Rs("AS_STATUS_ID")>1 then%>disabled<%end if%>>
                  </div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="13" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
<% 
    Rs.MoveNext
	next
	Rs.MoveFirst
	end if
%>
</table> 
		  </td>
              </tr>
            </table></td>
        </tr>

        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
            <td width="12%">&nbsp;</td>
            <td><font color="#4B0097" size="2">ข้อมูลหน้าปัจจุบัน <%if not Rs.EOF and not Rs.BOF then%><%if Cint(pageno)=Cint(totalpage) then%><%=endrow%><%else%><%=pagesize%><%end if%><%else%>0<%end if%> รายการ จากข้อมูลทั้งหมด 
              <%=Rs.RecordCount%> รายการ ขณะนี้อยู่ที่หน้า <%if not Rs.EOF and not Rs.BOF then%><%=pageno%><%else%>0<%end if%> จำนวนทั้งหมดมี <%=totalpage%> หน้า</font></td>
          </tr>
            </table></td>
        </tr>
        <tr> 
          <td><div align="center"><span style="background-color: #FFFFFF"><font color="#4B0097"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Desktop2');">
              </font></span></div></td>
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