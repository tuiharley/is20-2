<%@LANGUAGE="VBSCRIPT"%>
<%
	Option Explicit
	Response.Expires = 0
%>
<html>
<head>
	<meta http-equiv="Content-Language" content="th">
	<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
	<link href="../INCLUDE/StyleSheet2.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#E8F8FF" onLoad="document.form1.promotionname.focus();">
<%
	if Session("User_Name")="" then
%>
<script language=javascript>
	top.Logout();
</script>
<%
	Response.End
	end if
	dim promo_id
		promo_id = Request.QueryString("promo_id")
%>
	
<form name="form1" method="post" action="edit_promotion_detail.asp ">
  <table width="309" height="100" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
	 <tr>  
	  <td width="24%"><div align="right"><font color="#4B0097" size="2"><strong>ชื่อโปรโมชั่น</strong></font></div></td>
	  <td width="76%">&nbsp;&nbsp;<input name="promotionname" type="text" class="text" id="promotionname" size="30" maxlength="90"  onkeypress="if(window.event.keyCode==13){dosend();}"></td>
     </tr> 
	 <tr>
	 	  <td colspan="2"><div align="center"> 
          <input name="send" type="button" id="send" value="เริ่มค้นหา" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="dosend();">
          &nbsp;&nbsp; 
          <input id="back" type="button" value="  ปิดหน้าต่าง  " name="back" class="button" onMouseOver="this.className='buttonover'" onMouseOut="this.className='button'" onClick="top.HideWindow('Dialog1');">
        </div></td>
    </tr>
    <tr> 
      <td colspan="2" height="15"><img src="../images/blank.gif" width="1" height="1"></td>
    </tr>
  </table>
<script languange=JavaScript>

	function dosend () 
	{
		/*
		if( document.form1.promotionname.value==""){
			alert('กรุณาใส่ชื่อโปรโมชั่น');
			document.form1.promotionname.focus();
			return;
		}*/
		
		
		top.ShowRunWindow('Desktop2','edit_promotion_detail.asp?promoname=' + document.form1.promotionname.value +'&promo_id=<%=promo_id%>' );
		top.HideWindow('Dialog1');
		
	}	
	</script>

</body>
</html>
