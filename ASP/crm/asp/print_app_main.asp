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

	Dim showdate1, opendate1, showdate2, opendate2, area, prov, show,  area2, prov2, namecus, emp_id, emp_name, emp_lname
	showdate1 = Request.QueryString("showdate1")
	opendate1= Request.QueryString("opendate1")
	showdate2 = Request.QueryString("showdate2")
	opendate2= Request.QueryString("opendate2")
	area = Request.QueryString("area")
	prov = Request.QueryString("prov")
	namecus = Request.QueryString("namecus")
	emp_id = Request.QueryString("emp_id")
	emp_name = Request.QueryString("emp_name")
	emp_lname = Request.QueryString("emp_lname")
	if area="" then
		area = Session("User_Area")
		prov = Session("User_Prov")
	end if
%>
    <form name="form1" method="post" action="">
      
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td> <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td><div align="center"> <font color="#4B0097" size="3" face="JasmineUPC">ข้อมูลภาค 
                <% Response.Write(area) %>
                ตั้งแตวันที่ 
                <% Response.Write(showdate1) %>
                ถึงวันที่ 
                <% Response.Write(showdate2) %>
                </font> </div></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <% 
				Dim i, j, total, totalpage, pagesize, pageno, beginrow, endrow
				pageno=Request.Form("pageno")
				pagesize=20
				SQL = "SELECT APPOINT.APP_EMPAPP, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CUST_GROUP.CG_CODE, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CG_ADDRESS.CGADDR_SNAME, APPOINT.APP_ID, APPOINT.APP_DATECT, APPOINT.AS_STATUS_ID FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN APPOINT ON CUST_GROUP.CG_CODE = APPOINT.CG_CODE INNER JOIN EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE WHERE (CUST_GROUP.PROVINCE_ID = '" & prov & "') AND (APPOINT.APP_CUST_NAME LIKE N'%" & namecus & "%') AND (EMPLOYEE.NAME_THAI LIKE N'%" & emp_name & "%') AND (EMPLOYEE.SURNAME_THAI LIKE N'%" & emp_lname & "%') AND (APPOINT.APP_DATEAP BETWEEN CONVERT(DATETIME, '"& right(opendate1,4) & "-" & mid(opendate1,4,2) & "-" & left(opendate1,2)& " 00:00:00', 102) AND CONVERT(DATETIME, '"& right(opendate2,4) & "-" & mid(opendate2,4,2) & "-" & left(opendate2,2)& " 23:59:59', 102)) "
				if emp_id <> "" then
					SQL = SQL & " AND (APPOINT.APP_EMPAPP = '" & emp_id & "') "
				end if
				SQL = SQL & " ORDER BY APPOINT.APP_DATECT DESC"
				Rs.Open SQL,Session("Conn1"),1,3
				total = Rs.RecordCount
				%>
      <!--#include file = "finepage.asp"-->
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr> 
            <td width="10%">&nbsp;</td>
            <td><font size="2" color="#FF8000">กลุ่มลูกค้า P=Platinum, G=Gold, 
              S=Silver, B=Bronze&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td>
          </tr>
        </table></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr> 
            <td height="1" colspan="11" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%" rowspan="3"><div align="center"><font color="#4B0097" size="2"><strong>ลำดับที่</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td colspan="3"><div align="center"><font color="#4B0097"><strong><font size="2">นัดหมาย</font></strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="25%" rowspan="3"><div align="center"><font color="#4B0097" size="2"><strong>ชื่อลูกค้า</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="40%" rowspan="3"><div align="center"><font color="#4B0097" size="2"><strong>ที่อยู่</strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td height="1" colspan="3" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1"bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font color="#4B0097"><strong><font size="2">ว 
                / ด / ป</font></strong></font><font color="#4B0097" size="2"></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%"><div align="center"><font color="#4B0097"><strong><font size="2">เวลา</font></strong></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td height="1" colspan="11" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
				j = 1
				if not Rs.EOF and not Rs.BOF then
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
				%>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="center"><font color="#4B0097" size="2"> 
                <% Response.Write(j)%>
                </font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("APP_DATECT"),1),len(FormatDateTime(Rs("APP_DATECT"),1))-4)&right(FormatDateTime(Rs("APP_DATECT"),1),4)+543%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><div align="center"><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("APP_DATECT"),3),len(FormatDateTime(Rs("APP_DATECT"),3))-3)%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2"><%=Rs("CM_NAME")&"  "&Rs("CG_NAME")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td><font color="#4B0097" size="2">&nbsp;&nbsp;<%=Rs("CGADDR_SNAME")&" "&Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td height="1" colspan="11" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
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
      <td>&nbsp;</td>
    </tr>
  </table>
</table> 
    </form>
</body>
</html>