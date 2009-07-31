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
		<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
			<tr>
				<td width="142"><img src="../images/menu/logo.jpg" width="142" height="54"></td>
				<td align="right"><table border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><img src="../images/menu/bg_icon.jpg" width="122" height="54"></td>
							<% if Session("CURRENT_HEADER_MENU") & "" = "HOME" then %>
							<td><img src="../images/menu/icon_home2.jpg" name="home" width="40" height="54" border="0"></td>
							<% else %>
							<td><a href="../Main/default.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('home','','../images/menu/icon_home2.jpg',1)"><img src="../images/menu/icon_home1.jpg" name="home" width="40" height="54" border="0"></a></td>
							<% end if %>
							<td align="center"><img src="../images/menu/splite_icon.jpg" width="10" height="54"></td>
							<% if Session("CURRENT_HEADER_MENU") & "" = "CONTACT" then %>
							<td align="center"><img src="../images/menu/icon_contact2.jpg" name="contact" width="49" height="54" border="0"></td>
							<% else %>
							<td align="center"><a href="../Main/Contact_Us.aspx" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('contact','','../images/menu/icon_contact2.jpg',1)"><img src="../images/menu/icon_contact1.jpg" name="contact" width="49" height="54" border="0"></a></td>
							<% end if %>
							<td align="center"><img src="../images/menu/splite_icon.jpg" width="10" height="54"></td>
							<% if Session("CURRENT_HEADER_MENU") & "" = "SITEMAP" then %>
							<td align="center"><img src="../images/menu/icon_sitemap2.jpg" name="sitemap" width="51" height="54" border="0"></td>
							<% else %>
							<td align="center"><a href="../Main/Site_Map.aspx?banner=7" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('sitemap','','../images/menu/icon_sitemap2.jpg',1)"><img src="../images/menu/icon_sitemap1.jpg" name="sitemap" width="51" height="54" border="0"></a></td>
							<% end if %>
							<td align="right"><img src="../images/menu/bg_icon2.jpg" width="24" height="54"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
