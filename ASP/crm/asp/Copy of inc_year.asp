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
	Dim tmpyear, cmcode, cgcode 
	tmpyear = Request.QueryString("year")
	cmcode = Request.QueryString("cmcode")
	cgcode = Request.QueryString("cgcode")
	
	Dim Sql, Rs, Rs2, Rs3
	set Rs = Server.CreateObject("Adodb.RecordSet")
	set Rs2 = Server.CreateObject("Adodb.RecordSet")
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
%>
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5" face="JasmineUPC">ข้อมูลรายได้</font></b></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
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
          <td>
<%if cgcode="" then%>
<%
	Sql = "SELECT CM_NAME FROM COMP_MAIN GROUP BY CM_NAME, CM_CODE HAVING (CM_CODE = N'" & cmcode & "') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
		  <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="29%"><p align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></td>
                <td width="2%"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="74%"><b><font color="#4B0097" size="2"><%=Rs("CM_NAME")%></font></b></td>
              </tr>
            </table>
            <%else%>
<%
	Sql = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
	Rs.Open Sql,Session("Conn1"),1,3
%>
            <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#111111" style="border-collapse: collapse">
              <tr> 
                <td width="29%"><p align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></td>
                <td width="2%" rowspan="5"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="74%"><strong><font  color="#4b0097" size="2"><%=Rs("CM_NAME")&"  "&Rs("CG_NAME")%></font></strong></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097">ที่อยู่ลูกค้า</font></td>
                <td><font  color="#4b0097" size="2"><%=Rs("CGADDR_SNAME")&" "&Rs("CGADDR_BAND")&" "&Rs("CGADDR_SOI")&" "&Rs("CGADDR_STREET")&" "&Rs("CGADDR_TUMBOL")&" "&Rs("CGADDR_DISTRICT")&" "&Rs("CGADDR_PROVINCE")&" "&Rs("CGADDR_POSTCODE")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font color="#4b0097" size="2">ภาคธุรกิจ</font></td>
                <td><font  size="2" color="#4B0097"> 
                  <% =Rs("Area")%>
                  </font></td>
              </tr>
              <tr> 
                <td><p align="right"><font color="#4b0097" size="2">จังหวัด</font></td>
                <td><font  size="2" color="#4B0097"><%=Rs("PROVINCE")%></font></td>
              </tr>
              <tr> 
                <td><p align="right"><font size="2" color="#4B0097">กลุ่มลูกค้า</font></td>
                <td><font  color="#4B0097" size="2"> 
                  <%
							Response.Write(Rs("SMT"))
						%>
                  </font></td>
              </tr>
            </table>
<%end if%>
<%Rs.Close%>
			</td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
<%
	Dim i, j, total, totalpage, pagesize, pageno, beginrow, endrow , k , l, n, totalno
	Dim amount()  
	Dim telno()
	pageno=Request.QueryString("pageno")
	pagesize=20
	if cgcode = "" then
				Sql = "SELECT     TOP 100 PERCENT TELNO FROM   VIEW_TELNO WHERE  (CM_CODE = '" & cmcode & "') ORDER BY TELNO"
	else
		Sql = "SELECT     TOP 100 PERCENT TELNO FROM   VIEW_TELNO WHERE  (CG_CODE = '" & cgcode & "') ORDER BY TELNO"
	end if
	
	Rs.Open Sql,Session("Conn1"),1,3
	totalno= Rs.RecordCount
	Rs.MoveFirst
				Redim telno(totalno)
				for i = 1 to totalno
					telno(i) = Rs("TELNO")
					Rs.MoveNext
				next
	Rs.Close
			Redim amount(totalno,12)
				for l = 1 to totalno
						for i = 1 to 12 
													amount(l,i) = 0 
						next
					next
	if cgcode="" then
		'Sql = "SELECT DISTINCT TELNO, MC_CUSTOMER_ID AS CUSTOMER_D, NDOS FROM  VIEW_TELNO WHERE (CM_CODE = N'" & cmcode & "')"
			'Sql = "SELECT TOP 100 PERCENT TELNO FROM VIEWDETAILBILL WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') GROUP BY TELNO ORDER BY TELNO "
			'-------------------------------------------------------------------------------------MONTH 01----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL01 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,1) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
						'-------------------------------------------------------------------------------------MONTH 02----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL02 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,2) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 03----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL03 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,3) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 04----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL04 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,4) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 05----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL05 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,5) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 06----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL06 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,6) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 07----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL07 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,7) = Rs("MNT_HT_FACT")
						Rs.Movenext
						
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 08----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL08 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,8) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 09----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL09 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,9) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			'Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL01 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 10----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL10 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,10) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 11----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL11 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,11) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'-------------------------------------------------------------------------------------MONTH 12----------------------------------------------------------------------------------------------------------------------------
			Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL12 WHERE (CM_CODE = N'" & cmcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
			Rs.Open SQL,Session("Conn1"),1,3
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,12) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
	else
	'------------------------------------------------------------------------------------------MONTH 01-----------CG_CODE---------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL01 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		'Sql = "SELECT DISTINCT TELNO,  MC_CUSTOMER_ID AS CUSTOMER_D, NDOS FROM  VIEW_TELNO WHERE (CG_CODE = N'" & cgcode & "')"
		Rs.Open SQL,Session("Conn1"),1,3
		k =  Rs.RecordCount
			
					for  l = 1 to k 
						amount(l,1) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 02-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL02 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,2) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
						'---------------------------------------------------------------------------MONTH 03-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL03 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,3) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 04-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL04 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,4) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 05-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL05 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,5) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 06-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL06 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,6) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 07-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL07 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,7) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 08-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL08 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,8) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 09-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL09 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,9) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 10-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL10 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,10) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 11-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL11 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,11) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
			'---------------------------------------------------------------------------MONTH 12-----------CG_CODE-------------------------------------------------------------------------------------------------
		Sql = "SELECT     MNT_HT_FACT, TELNO FROM  VIEW_TELDETAIL12 WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') ORDER BY TELNO"
		Rs.Open SQL,Session("Conn1"),1,3
			
			k =  Rs.RecordCount
					for  l = 1 to k 
						amount(l,12) = Rs("MNT_HT_FACT")
						Rs.Movenext
					next
			Rs.Close
	'Sql = "SELECT TOP 100 PERCENT TELNO FROM VIEWDETAILBILL WHERE (CG_CODE = N'" & cgcode & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') GROUP BY TELNO ORDER BY TELNO "
	end if
%>		
<!--#include file = "finepage.asp"-->
              <tr> 
                  <td width="10%">&nbsp;</td>
                <td width="65%"><font size="2"><!--<img src="../images/PRINT3.ICO" style="cursor:hand" onclick="">--> </font></td>
                 <td width="25%"><!-- <select name="pageno" id="pageno" onChange="top.RunWindow('Desktop2','inc_year.asp?year=<%'=tmpyear%>&cmcode=<%'=cmcode%>&cgcode=<%'=cgcode%>&pageno=<%'=pageno%>&dataload=<%'=dataload%>'); //doloaddata2();">
                    <%
	'for i=1 to totalpage
	
%>
                 <option value="<%'=i%>" <%'if Cint(pageno)=Cint(i) then%>selected<%'end if%>>หน้าที่    
                    <%'=i%></option>
                    <%
	'next
%>
                  </select>--> </td>
              </tr>
            </table> </td>
        </tr>
        <tr> 
          <td><table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="1">
              <tr> 
                <td width="100%"><div align="center"><font color="#4B0097"><strong>ข้อมูลแสดงรายได้รายเลขหมาย&nbsp;ปี <%=tmpyear%>
                    </strong></font></div></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td width="10%"><div align="center"><font color="#4B0097" size="1"><strong>เลขหมาย</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ม.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ก.พ.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>มี.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>เม.ย.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>พ.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>มิ.ย.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ก.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ส.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ก.ย.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ต.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>พ.ย.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="6%"><div align="center"><font color="#4B0097" size="1"><strong>ธ.ค.</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="10%"><div align="center"><font color="#4B0097" size="1"><strong>รายได้</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097"><strong><font size="2"><img src="../images/blank.gif" width="1" height="1"></font></strong></font></div></td>
                <td width="8%"><div align="center"><font color="#4B0097" size="1"><strong>รายได้เฉลี่ย</strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%
		
	Dim totala, total1, total2, total3, total4, total5, total6, total7, total8, total9, total10, total11, total12, totalt
	total=0
	total1=0
	total2=0
	total3=0
	total4=0
	total5=0
	total6=0
	total7=0
	total8=0
	total9=0
	total10=0
	total11=0
	total12=0
	totalt=0
	
	'if not Rs.EOF and not Rs.BOF then
	'Rs.Move pagesize*(pageno-1)
	'for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow

	for i = 1 to totalno
		totala=0
%>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font size="1"><font color="#4B0097"><%=telno(i) %></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
                    <%
	'if cgcode="" then
				
		'Sql = "SELECT MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL WHERE (TELNO = '" & Rs("TELNO") & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') AND (CM_CODE = N'" & cmcode & "') GROUP BY MNT_HT_FACT, BILLING_MONTH ORDER BY BILLING_MONTH "
	'else
		'Sql = "SELECT MNT_HT_FACT, BILLING_MONTH FROM VIEWDETAILBILL WHERE (TELNO = '" & Rs("TELNO") & "') AND (BILLING_YEAR = '" & tmpyear-543 & "') AND (CG_CODE = N'" & cgcode & "') ORDER BY BILLING_MONTH "
	'end if
	
	'Rs3.Open Sql,Session("Conn1"),1,3
				Response.Write(formatNumber(amount(i,1),2))
				totala = totala + CDbl(amount(i,1))
				total1 = total1 + CDbl(amount(i,1))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	
				Response.Write(formatNumber(amount(i,2),2))
				totala = totala + CDbl(amount(i,2))
				total2 = total2 + CDbl(amount(i,2))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,3),2))
				totala = totala + CDbl(amount(i,3))
				total3 = total3 + CDbl(amount(i,3))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,4),2))
				totala = totala + CDbl(amount(i,4))
				total4 = total4 + CDbl(amount(i,4))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,5),2))
				totala = totala + CDbl(amount(i,5))
				total5 = total5 + CDbl(amount(i,5))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,6),2))
				totala = totala + CDbl(amount(i,6))
				total6 = total6 + CDbl(amount(i,6))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,7),2))
				totala = totala + CDbl(amount(i,7))
				total7 = total7 + CDbl(amount(i,7))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,8),2))
				totala = totala + CDbl(amount(i,8))
				total8 = total8+ CDbl(amount(i,8))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,9),2))
				totala = totala + CDbl(amount(i,9))
				total9 = total9 + CDbl(amount(i,9))
				
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	
				Response.Write(formatNumber(amount(i,10),2))
				totala = totala + CDbl(amount(i,10))
				total10 = total10 + CDbl(amount(i,10))
				
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,11),2))
				totala = totala + CDbl(amount(i,11))
				total11 = total11 + CDbl(amount(i,11))
%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font color="#4B0097" size="1"> 
<%
	Response.Write(formatNumber(amount(i,12),2))
				totala = totala + CDbl(amount(i,12))
				total12 = total12 + CDbl(amount(i,12))

%>
                    </font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala/12,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <%
			
		'Rs.MoveNext
	next
'	Rs.MoveFirst
	'end if
%>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font size="1"><strong><font color="#4B0097">รวม</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total1,2)%><%totala = total1%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total2,2)%><%totala = totala + total2%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total3,2)%><%totala = totala + total3%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total4,2)%><%totala = totala + total4%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total5,2)%><%totala = totala + total5%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total6,2)%><%totala = totala + total6%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total7,2)%><%totala = totala + total7%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total8,2)%><%totala = totala + total8%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total9,2)%><%totala = totala + total9%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total10,2)%><%totala = totala + total10%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total11,2)%><%totala = totala + total11%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(total12,2)%><%totala = totala + total12%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><div align="center"><font color="#4B0097" size="2"><img src="../images/blank.gif" width="1" height="1"></font></div></td>
                <td><div align="right"><font size="1"><font color="#4B0097"><%=formatnumber(totala/12,2)%></font></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="31" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
            </table>
            
          </td>
        </tr>
        <tr> <center>
          <td align="center">
		  
		  <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="12%">&nbsp;</td>
                <td>
				 <font color="#4B0097" size="2"><!--   ข้อมูลหน้าปัจจุบัน 
                  <%'if not Rs.EOF and not Rs.BOF then%>
                  <%'if Cint(pageno)=Cint(totalpage) then%>
                  <%'=endrow%>
                  <%'else%>
                  <%'=pagesize%>
                  <%'end if%>
                  <%'else%>
                 0  
                  <%'end if%>
                รายการ --> จากข้อมูลทั้งหมด <%=totalno%> รายการ <!--  ขณะนี้อยู่ที่หน้า 
                  <%'if not Rs.EOF and not Rs.BOF then%>
                  <%'=pageno%>
                  <%'else%>
                  0 
                  <%'end if%>
                  จำนวนทั้งหมดมี <%'=totalpage%> หน้า --> </font></td>  
              </tr>
            </table></td>
        </center>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
        <tr> 
          <td><div align="center"><span style="background-color: #FFFFFF"><font color="#4B0097"> 
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" onClick="top.HideWindow('Desktop2');" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'">
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