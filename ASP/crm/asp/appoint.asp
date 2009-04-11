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
	Dim Rs, Rs3, SQL, SQL1, SQL2, SQL3, cgcode, emp_id, app_obj, showdate1, showdate2
	set Rs3 = Server.CreateObject("Adodb.RecordSet")
	set Rs = Server.CreateObject("Adodb.RecordSet")		
	cgcode = Request.QueryString("cgcode")
	showdate1 = Request.QueryString("showdate1")
	showdate2 = Request.QueryString("showdate2")
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
        <tr> 
          <td><table width="78%" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#111111">
              <tr> 
			  <% 
			Dim SQLT, RsT
				set RsT = Server.CreateObject("Adodb.RecordSet")
				SQLT = "SELECT CUST_GROUP.CG_CODE, COMP_MAIN.CM_NAME, CUST_GROUP.CG_NAME, CG_ADDRESS.CGADDR_SNAME, CG_ADDRESS.CGADDR_BAND, CG_ADDRESS.CGADDR_SOI, CG_ADDRESS.CGADDR_STREET, CG_ADDRESS.CGADDR_TUMBOL, CG_ADDRESS.CGADDR_DISTRICT, CG_ADDRESS.CGADDR_PROVINCE, CG_ADDRESS.CGADDR_POSTCODE, PROVINCE.PROVINCE, PROVINCE.AREA, CUST_GROUP.SMT FROM CUST_GROUP INNER JOIN CG_ADDRESS ON CUST_GROUP.CGADDR_ID = CG_ADDRESS.CGADDR_ID INNER JOIN COMP_MAIN ON CUST_GROUP.CM_CODE = COMP_MAIN.CM_CODE INNER JOIN PROVINCE ON CUST_GROUP.PROVINCE_ID = PROVINCE.PROVINCE_ID WHERE (CUST_GROUP.CG_CODE = N'"& cgcode &"') "
				RsT.Open SQLT, Session("Conn1"),1,3
		%>
                <td width="30%"><div align="right"><b><font size="2" color="#4B0097">ชื่อลูกค้า</font></b></div></td>
                <td width="2%"rowspan="5"><img src="../images/blank.gif" width="1" height="1"> 
                </td>
                <td width="68%"><b><font color="#4b0097" size="2"> 
                  <%=RsT("CM_NAME")&"  "&RsT("CG_NAME")%>
                  </font></b></td>
              </tr>
              <tr> 
                <td>
<div align="right"><font size="2" color="#4B0097">ที่อยู่</font></div></td>
	
                <td><font color="#4b0097" size="2">
		   
				     <%=RsT("CGADDR_SNAME")&" "&RsT("CGADDR_BAND")&" "&RsT("CGADDR_SOI")&" "&RsT("CGADDR_STREET")&" "&RsT("CGADDR_TUMBOL")&" "&RsT("CGADDR_DISTRICT")&" "&RsT("CGADDR_PROVINCE")&" "&RsT("CGADDR_POSTCODE")%>
			 
                  </font></td>
              </tr>
              <tr> 
                <td height="19"><div align="right"><font size="2" color="#4B0097">ภาคธุรกิจ</font></div></td>
		
                <td><font color="#4b0097" size="2"> <% =(RsT("AREA")) %></font></td>
              </tr>
              <tr> 
                <td><div align="right"><font size="2" color="#4B0097">จังหวัด</font></div></td>
	
                <td><font size="2" color="#4B0097">
				<%
					 Response.Write(RsT("PROVINCE"))
				%>
			 </font></td>
             </tr>
              <tr> 
                <td><div align="right"><font  color="#4b0097" size="2">กลุ่มลูกค้า</font></div></td>
                <td><font  color="#4b0097" size="2">
				<%
							Response.Write(RsT("SMT"))
						%></font></td>
              </tr>
              <tr> 
                <td height="16"><div align="right"><font size="2" color="#4B0097">ข้อมูลวันที่</font></div></td>
				<td></td>
                <td><font color="#4b0097" size="2"><%=showdate1%> ถึงวันที่ <%=showdate2%></font></td>
              </tr>
            </table>
			<%
			Dim i, total, totalpage, pagesize, pageno, beginrow, endrow
			pageno=Request.Form("pageno")
			SQL ="SELECT APPOINT.APP_ID, APPOINT.APP_DATECT, APPOINT.AS_STATUS_ID, EMPLOYEE.NAME_THAI, EMPLOYEE.SURNAME_THAI, APPOINT.APP_CUST_NAME, APPOINT.APP_TEL_CONTACT FROM APPOINT INNER JOIN EMPLOYEE ON APPOINT.APP_EMPAPP = EMPLOYEE.EMP_ID WHERE APPOINT.CG_CODE = '" & cgcode &"'"
    		Rs.Open SQL,Session("Conn1"),1,3
			total = Rs.RecordCount
			pagesize=20
	%>
	<!--#include file = "finepage.asp"-->
			</td>
        </tr>
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="10%">&nbsp;</td>
                <td width="65%"><font size="2">&nbsp;</font></td>
                <td width="25%"><select name="pageno" id="pageno" onChange="doloaddata2();">
<%
	for i=1 to totalpage
%>
                <option value="<%=i%>" <%if Cint(pageno)=Cint(i) then%>selected<%end if%>>หน้าที่ <%=i%></option>
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
                <td width="65%"><font color="#FF9933" size="2">Dis=แสดงข้อมูล,&nbsp;E=แก้ไข/ยกเลิกข้อมูล</font></td>
                <td width="25%">&nbsp;</td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td>
<table width="700" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr> 
                <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097"><strong><font size="2">ว/ด/ป</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097"><strong><font size="2">เวลานัดหมาย</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097"><strong><font size="2">ผู้นัดหมาย</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097"><strong><font size="2">วัตถุประสงค์การนัดหมาย</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097"><strong><font size="2">ชื่อลูกค้าที่ติดต่อ</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4B0097"><strong><font size="2">เบอร์ติดต่อ</font></strong></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
	<% 
				if not Rs.EOF and not Rs.BOF then
				Rs.Move pagesize*(pageno-1)
				for beginrow=(pagesize*(pageno-1))+1 to (pagesize*(pageno-1))+endrow
 	%>
 				<tr> 
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("APP_DATECT"),1),len(FormatDateTime(Rs("APP_DATECT"),1))-4)&right(FormatDateTime(Rs("APP_DATECT"),1),4)+543%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4b0097" size="2"><%=left(FormatDateTime(Rs("APP_DATECT"),3),len(FormatDateTime(Rs("APP_DATECT"),3))-3)%></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4b0097" size="2"><% =Rs("NAME_THAI")& "   " &Rs("SURNAME_THAI") %></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td>&nbsp;</td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><font color="#4b0097" size="2"><% =Rs("APP_CUST_NAME") %></font></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"><font color="#4b0097" size="2"><% =Rs("APP_TEL_CONTACT") %></font></div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
                <td><div align="center"> 
                    <input name="dis" type="button" id="dis" value=" ดู " onClick="top.ShowRunWindow('Desktop3','app_detail.asp?cgcode=<%=cgcode%>&app_id=<% =Rs("APP_ID") %>')">&nbsp;&nbsp;
                    <input name="e" type="button" id="e" value="แก้ไข" onClick="top.ShowRunWindow('Desktop3','app_edit.asp?cgcode=<%=cgcode%>&app_id=<% =Rs("APP_ID") %>')" <%if Rs("AS_STATUS_ID")>1 then%>disabled<%end if%>>
                  </div></td>
                <td width="1" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
              </tr>
              <tr> 
                <td height="1" colspan="15" bgcolor="#3399FF"><img src="../images/blank.gif" width="1" height="1"></td>
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
              <input id="back" type="button" value=" กลับหน้าเดิม " name="back" style="cursor:hand" onClick="top.HideWindow('Desktop2');">
              </font></span></div></td>
        </tr>
        <tr> 
          <td>&nbsp;</td>
        </tr>
      </table>
    </form>
    </center>
</div>
<form name="form2" method="post" action="">
<input name="pageno" type="hidden" id="pageno">
</form>
<script language="JavaScript">
function doloaddata2() {
		document.form2.pageno.value=document.form1.pageno.value;
		alert(document.form1.pageno.value);
		document.body.style.cursor='wait';
		document.form2.submit();
} 
</script>
</body>
</html>