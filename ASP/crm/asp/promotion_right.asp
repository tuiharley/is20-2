<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
<title>Promotion_right</title>
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
	
	
		dim promo_id, promoname
		dim Sql  , promo_detail 
       
	    set  promo_detail = Server.CreateObject("Adodb.RecordSet")
		
		promo_id = Request.QueryString("promo_id")
		promoname = Request.QueryString("promoname")
		if promoname = "" then
	    Sql = "SELECT  *  FROM   POMOTION_PROPERTIES WHERE PPID NOT IN ( SELECT PPID FROM POMOTION_DETAIL WHERE POMOID =" &  promo_id & ")"
		else
		Sql = "SELECT  *  FROM   POMOTION_PROPERTIES WHERE PPID NOT IN ( SELECT PPID FROM POMOTION_DETAIL WHERE (POMOID =" &  promo_id & ") ) " & _
		" AND  PPNAME LIKE   '%" & promoname &  "%'  "
		end if
 
		promo_detail.Open Sql, Session("Conn1"),1,3	
%>
 	<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
                <td width="1%">&nbsp;</td>
                <td width="87%">&nbsp;</td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td><b><font color="#4B0097" size="3"><u>โปรโมชั่นที่เลือกได้</u></font></b></td>
              </tr>
              <tr> 
                <td width="4%">&nbsp;</td>
                <td align = "right">&nbsp;</td>
                <td align = "right"><b>
                  <input name="add2" type="button" id="add2" value=" ค้นหา " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,300,'search_promo_properties.asp?promo_id=<%=promo_id%>'); ">
                </b></td>
                <td width="8%" align = "right"><p><b>
                </b></p>                </td>
              </tr>
</table>
<table width="503" border="0">
  <tr>
  <%
  Dim i
	i=1
	do while not promo_detail.EOF
%>
    <td width="34"><div align="right">-</div> </td>
		<td width="360" style="cursor:hand"  onClick="top.RunWindow('Temp1','edit_promotion_properties_detail.asp?ppid=<%=promo_detail("ppid")%>&promo_id=<%=promo_id%>')"><font color="#4B0097"  onMouseOver="this.color='#ff0000';" onMouseOut="this.color='#4B0097';"  size="2"  id="f2" name="f2"><%=promo_detail("PPNAME")%></font></td>
  
	
    <td width="95">
	<input name="edit" type="button" id="edit" value="แก้ไข" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,500,'edit_promo_properties.asp?ppid=<%=promo_detail("ppid")%>&promo_id=<%=promo_id%>&ppname=<%=promo_detail("PPNAME")%>')  ">
    <input name="del" type="button" id="del" value="  ลบ  " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick=" if(confirm('ยืนยันการลบ')==true){top.RunWindow('Temp1','delete_promo_properties.asp?promo_id=<%=promo_id%>&ppid=<%=promo_detail("PPID")%>') } "></td>
  </tr>
<%         
		i=i+1
		promo_detail.Movenext
	loop
%>
<tr><td></td><td></td><td align="right"><input name="add" type="button" id="add" value=" เพิ่ม " class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onclick="top.ShowRunCenterSizeWindow('Dialog1',130,500,'sub_promotion_properties_add.asp?promo_id=<%=promo_id%>'); "></td></tr>
</table>


<table width="507" border="0">
  <tr>
    <td width="497" align = "right"><input name="close" type="button" class="button" id="close2" onClick="top.ShowRunWindow('Desktop2','add_promotion.asp');" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" value="กลับหน้าเดิม"></td>
  </tr>
</table>
<p>&nbsp;</p>
<p align="right">&nbsp;</p>
</body>
</html>
