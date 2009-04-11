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

	Dim show, gtype2, ccat2, cbus2, cmcode2, phone2, cusid2, area2, prov2
	ccat2 = Request.QueryString("ccat2")
	gtype2 = Request.QueryString("gtype2")
	cbus2 = Request.QueryString("cbus2")
	cmcode2 = Request.QueryString("cmcode2")
	phone2 = Request.QueryString("phone2")
	cusid2 = Request.QueryString("cusid2")
	area2 = Request.QueryString("area2")
	prov2 = Request.QueryString("prov2")
%>
    <form name="form1" method="post" action="">
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><div align="center"><b><font face="JasmineUPC" color="#4B0097" size="4">ข้อมูลลูกค้าที่กำหนด 
          Customer Grouping</font></b></div></td>
    </tr>
    <%
	dim i, total, totalpage, pagesize, pageno, beginrow, endrow
	pageno=Request.QueryString("pageno")
	pagesize=20

	Sql = "SELECT DISTINCT CUST_GROUP.CG_DATA, CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, CUST_GROUP.SMT FROM CG_ADDRESS INNER JOIN CUST_GROUP ON CG_ADDRESS.CGADDR_ID = CUST_GROUP.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE AND CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN MKT_CUSTOMER ON CUST_GROUP.CG_CODE = MKT_CUSTOMER.CG_CODE INNER JOIN TELNUMBER ON MKT_CUSTOMER.MC_CUSTOMER_ID = TELNUMBER.CUSTOMER_ID WHERE (CUST_GROUP.PROVINCE_ID = '" & prov2 & "')"
	if phone2<>"" then
		Sql = Sql & " AND (TELNUMBER.TELNO like '" & phone2 & "%') "
	end if
	if cusid2<>"" then
		Sql = Sql & " AND (TELNUMBER.CUSTOMER_ID = '" & cusid2 & "') "
	end if
	if cmcode2<>"" then
		Sql = Sql & " AND (left(CUST_GROUP.CG_CODE,5) = '" & cmcode2 & "') "
	end if
	if cbus2<>"" then
		Sql = Sql & " AND (left(CUST_GROUP.CG_CODE,2) = '" & cbus2 & "') "
	end if
	if ccat2<>"" then
		Sql = Sql & " AND (MKT_CUSTOMER.MC_CCAT = N'" & ccat2 & "') "
	end if
	if gtype2<>"" then
		Sql = Sql & " AND (CUST_GROUP.SMT = N'" & gtype2 & "') "
	end if
	Sql = Sql & " ORDER BY (CUST_GROUP.CG_CODE) "
	Rs.Open Sql,Session("Conn1"),1,3
	total = Rs.RecordCount
%>
    <!--#include file = "finepage.asp"-->
    <tr> 
      <td>&nbsp;</td>
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
    <tr bordercolor="#111111"> 
      <td><font size="2" color="#4B0097"> 
        <p align="center">ภาคธุรกิจ<%=area2%>&nbsp;&nbsp;จังหวัด<%=p%>&nbsp; 
          <%if ccat2<>"" then%>
          ประเภทผู้เช่า<%=c%> 
          <%end if%>
        </font></td>
    </tr>
    <tr bordercolor="#111111"> 
      <td><p align="center"><font color="#FF8000" size="2">P=Platinum, G=Gold, 
          S=Silver, B=Bronze&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NA=ใช้บริการ,CA=ยกเลิก&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          Icon-AD=บันทึกประวัติลูกค้า, Icon-D=ดู/แก้ไขประวัติลูกค้า</font></td>
    </tr>
    <tr> 
      <td>&nbsp;</td>
    </tr>
    <tr> 
      <td><table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr> 
            <td bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="12%"><div align="center"><font size="2" color="#4B0097"><b>รหัสสาขา</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="28%"><div align="center"><font size="2" color="#4B0097"><b>ชื่อลูกค้า</b></font><b><font color="#FF7DBE" size="2">(ชื่อสาขา)</font></b></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="40%"><div align="center"><font size="2" color="#4B0097"><b>ที่อยู่ 
                (สถานที่ติดตั้ง)</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="10%"><div align="center"><font size="2" color="#4B0097"><b>สถานะ</b></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td width="15%"><div align="center"><font size="2" color="#4B0097"><b>ดำเนินการ</b></font></div></td>
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
            <td valign="top"><div align="center"><font color="#4B0097" size="2"><%=Rs("cg_code")%></font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font name="ff" id="ff" color="#4B0097" size="2"><%=Left(Rs("smt"),1)&"  "&Rs("cm_name")&"  "&Rs("cg_name")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><font color="#4B0097" size="2"><%=Rs("cgaddr_sname")&" "&Rs("cgaddr_band")&" "&Rs("cgaddr_soi")&" "&Rs("cgaddr_street")&" "&Rs("cgaddr_tumbol")&" "&Rs("cgaddr_district")&" "&Rs("cgaddr_province")&" "&Rs("cgaddr_postcode")%></font></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top"><div align="center"><font color="#4B0097" size="2">-</font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
            <td valign="top" style="cursor:hand" onclick="top.ShowRunWindow('Desktop3','custmain_add<%if Cint(Session("User_Level"))=Cint(3) and Cint(Session("User_Area"))<>Cint(area2) then%>_readonly<%end if%>.asp?cgcode=<%=Rs("CG_CODE")%>');" onMouseOver="document.all.f<%=beginrow%>.color='#ff0000'" onMouseOut="document.all.f<%=beginrow%>.color='#4B0097'"><div align="center"><font name=f<%=beginrow%> id=f<%=beginrow%> color="#4B0097" size="2"> 
                <%if Rs("CG_DATA")=true then%>
                D 
                <%else%>
                AD 
                <%end if%>
                </font></div></td>
            <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <tr bgcolor="#3399FF"> 
            <td height="1" colspan="11"><img src="../images/blank.gif" width="1" height="1"></td>
          </tr>
          <%
		Rs.MoveNext
	next
	Rs.MoveFirst
	end if
%>
        </table></td>
    </tr>
    <tr> 
      <td height="10"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
</form>

</body>
</html>