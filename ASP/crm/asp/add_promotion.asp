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
<div align="center">
  <center>
    <form name="form1" method="post" action="">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td width="8%">&nbsp;</td>
                <td><b><font color="#4B0097" size="5">Promotion</font></b></td>
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
          <td><table width="94%" border="3" align="center" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" style="border-collapse: collapse">
            <tr>
              <td width="5%"><div align="center"><strong><font color="#4B0097" size="3">ลำดับ</font></strong></div></td>
              
              <td width="7%"><div align="center"><strong><font color="#4B0097" size="3">บริษัท</font></strong></div></td>
              <td width="8%"><div align="center"><strong><font color="#4B0097" size="3">ประเภท</font></strong></div></td>
              <td width="14%"><div align="center"><strong><font color="#4B0097" size="3">บริการ</font></strong></div></td>
              <td width="46%"><div align="center"><strong><font color="#4B0097" size="3">โปรโมชั่น</font></strong></div></td>
            </tr>
            <%
	Dim Sql, Rs , comp , promoname , service , kind , stype
	set Rs = Server.CreateObject("Adodb.RecordSet")
	comp = Request.QueryString("comp")
	promoname = Request.QueryString("promoname")
	kind = Request.QueryString("kind")
	service  = Request.QueryString("service")
	
	Sql = "SELECT   COMPANY.COMPNAME, POMOTION.TYPE, DERIVEDTBL.NAMESERVICE, POMOTION.POMONAME,"  & _ 
		" POMOTION.POMOID, POMOTION.COMPID, POMOTION.ID FROM   COMPANY INNER JOIN  POMOTION ON  "  & _
		"COMPANY.COMPID = POMOTION.COMPID INNER JOIN (SELECT     0 AS TYPE, VOICEID AS ID, VOICENAME AS"  & _
		" NAMESERVICE  FROM  VOICE_SERVICE  UNION  SELECT  1 AS TYPE, NONID AS ID, NONNAME AS NAMESERVICE" & _
        "  FROM  NONVOICE_SERVICE) DERIVEDTBL ON POMOTION.TYPE = DERIVEDTBL.TYPE AND " & _
          " POMOTION.ID = DERIVEDTBL.ID	"
	'------------------------------------------------------------first condition ------------------------------------------------------------------
	if (comp = "") and (promoname = "") and (kind= "") and (service= "") then
		Sql = Sql
	end if
	'------------------------------------------------------------second condition ------------------------------------------------------------------
	if (comp <> "") and (promoname = "") and (kind= "") and (service= "") then
	Sql =Sql & " WHERE POMOTION.COMPID = " & comp & "order by pomoid"
	end if
	if (comp = "") and (promoname <> "") and (kind= "") and (service= "") then
		Sql =Sql & " WHERE POMOTION.POMONAME LIKE '%" & promoname & "%' order by pomoid"
	end if
	if (comp = "") and (promoname = "") and (kind <> "") and (service= "") then
	           if kind = "False" then kind = 0 end if 
			   if kind = "True" then kind = 1  end if
			Sql =Sql & " WHERE  POMOTION.TYPE = " & kind & " order by pomoid"
	end if
	if (comp = "") and (promoname = "") and (kind <> "") and (service<> "") then
	   		   if kind = "False" then kind = 0 end if 
			   if kind = "True" then kind = 1  end if
	       Sql =Sql & " WHERE  (POMOTION.TYPE = " & kind & " ) AND (POMOTION.ID = " & service & " )order by pomoid"
	end if
	'------------------------------------------------------------third condition ------------------------------------------------------------------
	if (comp <> "") and (promoname = "") and (kind<> "") and (service= "") then
	 			 if kind = "False" then kind = 0 end if 
			     if kind = "True" then kind = 1  end if
		Sql =Sql & " WHERE  (POMOTION.COMPID = " & comp & " ) AND (POMOTION.TYPE = " & kind & " )order by pomoid"
	end if
	if (comp <> "") and (promoname = "") and (kind<> "") and (service<> "") then
				if kind = "False" then kind = 0 end if 
			     if kind = "True" then kind = 1  end if
	Sql =Sql & " WHERE (POMOTION.COMPID = " & comp & ") AND (POMOTION.TYPE =" & kind & " ) " &  _
		  " AND (POMOTION.ID = " & service & " ) order by pomoid"
		
	end if
	if (comp <> "") and (promoname <> "") and (kind<> "") and (service<> "") then
				if kind = "False" then kind = 0 end if 
			     if kind = "True" then kind = 1  end if
		Sql =Sql & " WHERE (POMOTION.COMPID = " & comp & ") AND (POMOTION.TYPE =" & kind & " ) " &  _
		  " AND (POMOTION.ID = " & service & " ) AND (POMOTION.POMONAME LIKE  '%"  & promoname & "%' ) order by pomoid"
	end if
	
		'------------------------------------------------------------fourth condition ------------------------------------------------------------------
	Rs.Open SQL, Session("Conn1"),1,3	
 if Rs.RecordCount <> 0  then
	Dim i
	i=1
	do while not Rs.EOF
	if Rs("TYPE") = "False" then stype = "Voice" end if
	if Rs("TYPE") = "True" then stype = "Nonvoice" end if
%>
            <tr>
              <td><div align="center"><font color="#4B0097" size="2"><%=i%></font></div></td>
              <td align="center" ><font color="#4B0097" size="2"><%=Rs("COMPNAME")%></font></td>
              <td align="center" ><font color="#4B0097" size="2"><%=stype%></font></td>
              <td align="center" ><font color="#4B0097" size="2"><%=Rs("NAMESERVICE")%></font></td>
              <td align="center" ><font name="f2" id="f2" size="2" color="#4B0097"><%=Rs("POMONAME")%> 
                </font></td>
				
              <td width="20%" align="center">
			  <input name="edit" type="button" id="edit" value="รายละเอียด" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunWindow('Desktop2','edit_promotion_detail.asp?promo_id=<%=Rs("POMOID")%>');">
			  <input name="edit" type="button" id="edit" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'edit_promo.asp?comp=<%=Rs("COMPID")%>&service=<%=Rs("id")%>&kind=<%=Rs("type")%>&promoname=<%=Rs("POMONAME")%>&promo_id=<%=Rs("POMOID")%>');">
              <input name="del" type="button" id="del" value="  ลบ  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick=" if(confirm('ยืนยันการลบ')==true){top.RunWindow('Temp1','delete_promo.asp?promo_id=<%=Rs("POMOID")%> ') } ">
              </td>
            </tr>
            <%         
		i=i+1
		Rs.Movenext
	loop
%>
<% end if  %>
            <tr>
              <td colspan="6"><div align="right">
			  <input name="add" type="button" id="add" value=" เพิ่ม " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'sub_promotion_add.asp'); "></div></td>
            </tr>
          </table> 
		  </td>
		   </tr><% if Rs.Recordcount = 0 then %><tr><td align = "center"><font color="#4B0097" size="2"> Record Not Found!! </font></td></tr><% end if %>
		
        <tr> 
          <td><div align="center">
            <input name="add2" type="button" id="add2" value=" ค้นหา " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'search_promo.asp'); ">
            <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow(self.name);">
        </div></td></tr>
      </table>
    </form>
    </center>
</div></body>
</html>