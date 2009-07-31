<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
<script language="javascript">
/*function SetBanner(t){
	alert(t);
	var pic = "";
	switch (t){
		case "T1" : pic = "banner1.jpg"; break;
		case else pic = "banner.jpg"; break;
	}
	alert(pic);
	document.banner.location.href="../images/menu/" + pic;
	//document.banner.location.href="../images/menu/b1.html";
	document.banner.style.display='';
}*/
</script>
<!-- <body onLoad="javascript:SetBanner('');"> -->
<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td background="../images/menu/bgmenu.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="../images/menu/m1.jpg" width="7" height="23"></td>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
		<% if Session("CURRENT_HEADER_MENU") & "" = "PROFILE" then %>
		<td align="center"><img src="../images/menu/m_profile2.jpg" name="m1" width="71" height="23" border="0"></td>
		<% else %>
        <td align="center"><a href="../Profile/Profile.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m1','','../images/menu/m_profile2.jpg',1)"><img src="../images/menu/m_profile1.jpg" name="m1" width="71" height="23" border="0"></a></td>
		<% end if %>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
		<% if Session("CURRENT_HEADER_MENU") & "" = "INFORMATION" then %>
		<td align="center"><img src="../images/menu/m_info2.jpg" name="m2" width="87" height="23" border="0"></td>
		<% else %>
        <td align="center"><a href="../Information/Information.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m2','','../images/menu/m_info2.jpg',1)"><img src="../images/menu/m_info1.jpg" name="m2" width="87" height="23" border="0"></a></td>
		<% end if%>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
		<% if Session("CURRENT_HEADER_MENU") & "" = "CUSTOMER" then %>
		<td align="center"><img src="../images/menu/m_cust2.jpg" name="m3" width="75" height="23" border="0"></td>
		<% else %>
			<% if Session("USER_NAME") & "" = "" then %>
				<td align="center"><a href="../Customer/LogOn.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m3','','../images/menu/m_cust2.jpg',1)"><img src="../images/menu/m_cust1.jpg" name="m3" width="75" height="23" border="0"></a></td>
			<% else %>
				<td align="center"><a href="../Customer/Letter.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m3','','../images/menu/m_cust2.jpg',1)"><img src="../images/menu/m_cust1.jpg" name="m3" width="75" height="23" border="0"></a></td>
			<% end if %>
		<% end if %>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
		<% if Session("CURRENT_HEADER_MENU") & "" = "ONLINE_GAS" then%>
		<td align="center"><img src="../images/menu/m_gas_quality2.jpg" name="m4" width="130" height="23" border="0"></td>
		<% else %>
        <td align="center"><a href="../onlinegas/Online_Gas_Quality.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m4','','../images/menu/m_gas_quality2.jpg',1)"><img src="../images/menu/m_gas_quality1.jpg" name="m4" width="130" height="23" border="0"></a></td>
		<% end if %>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
		<% if Session("CURRENT_HEADER_MENU") & "" = "B_NEWS" then%>
		<td align="center"><img src="../images/menu/m_news2.jpg" name="m5" width="90" height="23" border="0"></td>
		<% else %>
        <td align="center"><a href="../News/Journal.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m5','','../images/menu/m_news2.jpg',1)"><img src="../images/menu/m_news1.jpg" name="m5" width="90" height="23" border="0"></a></td>
		<% end if %>
		<td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
        <% if Session("CURRENT_HEADER_MENU") & "" = "AMR" then%>
		<td align="center"><img src="../images/menu/m_AMR2.jpg" name="m5" width="93" height="23" border="0"></td>
		<% else %>
		<td align="center"><a href="../Main/AMR.aspx"  target=_blank onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('AMR','','../images/menu/m_AMR2.jpg',1)"><img src="../images/menu/m_AMR1.jpg" name="AMR" width="93" height="23" border="0"></a></td>
        <% end if %>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
		<% if Session("CURRENT_HEADER_MENU") & "" = "LINK" then%>
		<td align="center"><img src="../images/menu/m_links2.jpg" name="m8" width="72" height="23" border="0"></td>
		<% else %>
        <td align="center"><a href="../Main/links.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('m8','','../images/menu/m_links2.jpg',1)"><img src="../images/menu/m_links1.jpg" name="m8" width="72" height="23" border="0"></a></td>
		<% end if %>
        <td><img src="../images/menu/split_m.jpg" width="5" height="23"></td>
        <td align="right"><img src="../images/menu/m2.jpg" width="8" height="23"></td>
      </tr>
    </table></td>
  </tr>
</table>
