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
	Dim Rs, Rs2, Sql
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")

	Dim show, ccat2, area2, prov2, phone2, cusid2
	show = Request.QueryString("show")
	phone2 = Request.QueryString("phone2")
	cusid2 = Request.QueryString("cusid2")
	ccat2 = Request.QueryString("ccat2")
	area2 = Request.QueryString("area2")
	prov2 = Request.QueryString("prov2")
%>
  <form name="form1" method="post" action="">
    <%
	dim i, total, totalpage, pagesize, pageno, beginrow, endrow
	pageno=Request.QueryString("pageno")
	pagesize=20

	Sql = "SELECT TOP 100 PERCENT CSS_CUSTOMER.CUSTOMER_ID, CSS_CUSTOMER.INITITLE, CSS_CUSTOMER.FIRST_NAME, CSS_CUSTOMER.LAST_NAME, ADDRESS.ADDR_SNAME, ADDRESS.ADDR_BAND, ADDRESS.ADDR_SOI, ADDRESS.ADDR_STREET, ADDRESS.ADDR_TUMBOL, ADDRESS.ADDR_DISTRICT, ADDRESS.ADDR_PROVINCE, ADDRESS.ADDR_POSTCODE FROM CSS_CUSTOMER INNER JOIN ADDRESS ON CSS_CUSTOMER.NADR_CLI = ADDRESS.ADDR_ID WHERE (CSS_CUSTOMER.STATUS <> '*' OR CSS_CUSTOMER.STATUS IS NULL) AND (CSS_CUSTOMER.CUSTOMER_ID IN (SELECT TOP 100 PERCENT CUSTOMER_ID FROM TELNUMBER WHERE (PROVINCE_ID = '" & prov2 & "') "
	if phone2<>"" then
		Sql = Sql & " AND (TELNUMBER.TELNO like '"& phone2 & "%') "
	end if
	if cusid2<>"" then
		Sql = Sql & " AND (TELNUMBER.CUSTOMER_ID = '"& cusid2 & "') "
	end if
	Sql = Sql + "GROUP BY CUSTOMER_ID)) "
	if ccat2<>"" then
		Sql = Sql & " AND (CSS_CUSTOMER.CCAT = '" & ccat2 & "') "
	end if
	Rs.Open Sql,Session("Conn1"),1,3
	total = Rs.RecordCount
%>
    <!--#include file = "finepage.asp"-->
      <table width="650" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr> 
            <td height="10" colspan="11"></td>
          </tr>
          <tr> 
            <td height="20" colspan="11"><div align="center"><font color="#4B0097" size="4" face="JasmineUPC"><b>ข้อมูลลูกค้าที่ยังไม่กำหนด 
                Customer Grouping</b></font></div></td>
          </tr>
          <tr> 
            <td height="20" colspan="11"></td>
          </tr>
          <%
	Dim p, c
	Sql = "SELECT PROVINCE FROM PROVINCE WHERE (PROVINCE_ID = '" & prov2 & "') "
	Rs2.Open Sql,Session("Conn1"),1,3
		p = Rs2("province")
	Rs2.Close

	if ccat2<>"" then
		Sql = "SELECT LCAT FROM P_CATEGORIES WHERE (CCAT = '" & ccat2 & "') "
		Rs2.Open Sql,Session("Conn1"),1,3
			c = Rs2("lcat")
		Rs2.Close
	end if
%>
          <tr> 
            <td colspan="11"><div align="center"><font size="2" color="#4B0097">ข้อมูลลูกค้าที่เปิดใช้บริการ&nbsp;&nbsp;ภาคธุรกิจ<%=area2%>&nbsp;&nbsp;จังหวัด<%=p%>&nbsp;&nbsp;
                <%if ccat2<>"" then%>
                ประเภทผู้เช่า<%=c%>
                <%end if%>
                </font></div></td>
          </tr>
          <tr> 
            <td height="20" colspan="11"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%"><div align="center"><b><font size="2" color="#4B0097">ลำดับ</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font color="#4B0097" size="2"><b>เลขที่ผู้เช่า</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="30%"><div align="center"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="45%" colspan="3"><div align="center"><b><font size="2" color="#4B0097">ที่อยู่ลูกค้า</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
	if not Rs.EOF and not Rs.BOF then
	Rs.Move pagesize*(pageno-1)
	for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
%>
          <tr> 
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"><font size="2" color="#4B0097"><%=beginrow%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"><font color="#4B0097" size="2"><%=Rs("customer_id")%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font color="#4B0097" size="2"><%=Rs("inititle")%><%=Rs("first_name")%>&nbsp;&nbsp;<%=Rs("last_name")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td colspan="3" valign="top"><font color="#4B0097" size="2"><%=Rs("ADDR_SNAME")&"  "&Rs("ADDR_SOI")&"  "&Rs("ADDR_STREET")&"  "&Rs("ADDR_TUMBOL")&"  "&Rs("ADDR_DISTRICT")&"  "&Rs("ADDR_PROVINCE")&"  "&Rs("ADDR_POSTCODE")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
		Rs.MoveNext
	next
	end if
%>
          <tr> 
            <td height="10" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
        </table>
</form>
</body>
</html>