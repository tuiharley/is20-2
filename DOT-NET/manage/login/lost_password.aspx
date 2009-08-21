<%@ Page CodeBehind="lost_password.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.lost_password" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>auto-onclick</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<script language="JavaScript" type="text/JavaScript">
<!--

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
		</script>
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
			<style type="text/css">.style2 { FONT-SIZE: small; FONT-FAMILY: Arial, Helvetica, sans-serif }
	.Stil1 { FONT-WEIGHT: bold; COLOR: #ffffff }
	</style>
	</HEAD>
	<body onload="MM_preloadImages('../pics/template_pics/hori_navi_pics/gif/offer_button_01.gif','../pics/template_pics/hori_navi_pics/gif/search_button_01.gif','../pics/template_pics/hori_navi_pics/gif/special_offer_button_01.gif','../pics/template_pics/hori_navi_pics/gif/dealer_button_01.gif','../pics/template_pics/hori_navi_pics/gif/about_us_button_01.gif','../pics/template_pics/hori_navi_pics/gif/login_button_01.gif','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x40_01.gif')">
		<form id="form1" name="form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="79%"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
					<td width="21%"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
				</tr>
				<tr>
					<td>
						<table cellSpacing="0" cellPadding="0" width="780" border="0">
							<tr>
								<td colSpan="2" height="99"><IMG height="99" src="../pics/template_pics/table_headings+corners+bg/ao_heading.jpg"
										width="780"></td>
							</tr>
							<tr>
								<td colSpan="2">
									<table cellSpacing="0" cellPadding="0" width="780" border="0">
										<tr>
											<td width="165" height="21"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/dividing_left_165x21.gif"
													width="165"></td>
											<td width="89"><A onmouseover="MM_swapImage('Image177','','../pics/template_pics/hori_navi_pics/gif/offer_button_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/offer_button.gif" width="89"
														border="0" name="Image177"></A></td>
											<td width="60"><A onmouseover="MM_swapImage('Image178','','../pics/template_pics/hori_navi_pics/gif/search_button_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/search_button.gif" width="60"
														border="0" name="Image178"></A></td>
											<td width="122"><A onmouseover="MM_swapImage('Image179','','../pics/template_pics/hori_navi_pics/gif/special_offer_button_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/special_offer_button.gif"
														width="122" border="0" name="Image179"></A></td>
											<td width="96"><A onmouseover="MM_swapImage('Image180','','../pics/template_pics/hori_navi_pics/gif/dealer_button_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/dealer_button.gif" width="96"
														border="0" name="Image180"></A></td>
											<td width="100"><A onmouseover="MM_swapImage('Image181','','../pics/template_pics/hori_navi_pics/gif/about_us_button_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/about_us_button.gif" width="100"
														border="0" name="Image181"></A></td>
											<td width="61"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/dividing_right_61x21.gif"
													width="61"></td>
											<td width="87"><A onmouseover="MM_swapImage('Image182','','../pics/template_pics/hori_navi_pics/gif/login_button_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="21" src="../pics/template_pics/hori_navi_pics/gif/login_button_00.gif" width="87"
														border="0" name="Image182"></A></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="165" height="22"><IMG height="25" src="../pics/template_pics/verti_navi_pics/gif/head_verti_navi_140x25.gif"
										width="165"></td>
								<td width="615">&nbsp;</td>
							</tr>
							<tr>
								<td vAlign="top" background="../pics/template_pics/verti_navi_pics/gif/bg_verti_navi.gif"
									height="471">
									<table cellSpacing="0" cellPadding="0" width="140" border="0">
										<tr>
											<td><A onmouseover="MM_swapImage('Image166','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image166"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1661','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1661" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1661"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1662','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1662" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1662"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image169','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x40_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG height="40" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x40_00.gif"
														width="140" border="0" name="Image169"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1663','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1663" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1663"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1664','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1664" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1664"></A></td>
										</tr>
										<tr>
											<td><IMG height="22" src="../pics/template_pics/verti_navi_pics/gif/dividing_verti_navi_140x22.gif"
													width="140"></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1665','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1665" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1665"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1666','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1666" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1666"></A></td>
										</tr>
										<tr>
											<td background="../pic/template_pics/Best/gif/vert_navi_bg_v2.gif"><IMG height="22" src="../pics/template_pics/verti_navi_pics/gif/dividing_verti_navi_140x22.gif"
													width="140"></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1667','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1667" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1667"></A></td>
										</tr>
										<tr>
											<td><IMG height="22" src="../pics/template_pics/verti_navi_pics/gif/dividing_verti_navi_140x22.gif"
													width="140"></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1668','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1668" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1668"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image1669','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image1669" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image1669"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image16610','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image16610" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image16610"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image16611','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image16611" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image16611"></A></td>
										</tr>
										<tr>
											<td><A onmouseover="MM_swapImage('Image16612','','../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_01.gif',1)"
													onmouseout="MM_swapImgRestore()" href="#"><IMG id="Image16612" height="25" src="../pics/template_pics/verti_navi_pics/gif/button_verti_navi_140x25_00.gif"
														width="140" border="0" name="Image16612"></A></td>
										</tr>
										<tr>
											<td><IMG height="40" src="../pics/template_pics/verti_navi_pics/gif/bottom_verti_navi_140x40.gif"
													width="140"></td>
										</tr>
									</table>
								</td>
								<td vAlign="top">
									<table cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td>
												<table cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td width="2%"><IMG height="20" src="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_dividing_left_yellow_15x20.gif"
																width="15"></td>
														<td width="96%" background="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_bg_yellow_5x20.gif"><span class="headline_font"><IMG height="10" src="../pics/objects/arrows/arrow_blue_right_bg_yellow_13x10+5.gif"
																	width="18">&#3621;&#3655;&#3629;&#3585;&#3629;&#3636;&#3609;&#3648;&#3586;&#3657;&#3634;&#3626;&#3641;&#3656;&#3619;&#3632;&#3610;&#3610; 
(Login)</span></td>
														<td width="2%"><IMG height="20" src="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_dividing_right_yellow_15x20.gif"
																width="15"></td>
													</tr>
													<tr bgColor="#fafafa">
														<td bgColor="#fafafa"><IMG height="15" src="../pics/template_pics/table_headings+corners+bg/top_corners+bg/top_corner_left_fafafa_666666_15x15.gif"
																width="15"></td>
														<td background="../pics/template_pics/table_headings+corners+bg/top_corners+bg/top_bg_fafafa_666666_15x15.gif"
															bgColor="#fafafa"><IMG height="1" src="../pics/objects/no.gif" width="585"></td>
														<td bgColor="#fafafa"><IMG height="15" src="../pics/template_pics/table_headings+corners+bg/top_corners+bg/top_corner_right_fafafa_666666_15x15.gif"
																width="15"></td>
													</tr>
													<tr>
														<td background="../pics/template_pics/table_headings+corners+bg/dividing_bg/left_fafafa_15x20.gif"
															height="93">&nbsp;</td>
														<td height="93">
															<table cellSpacing="0" cellPadding="0" width="100%" bgColor="#fafafa" border="0">
																<tr>
																	<td class="font11Linebig"><strong>&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3610;&#3640;&#3588;&#3588;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3607;&#3637;&#3656;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;&#3649;&#3621;&#3657;&#3623;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3648;&#3586;&#3657;&#3634;&#3626;&#3641;&#3656;&#3619;&#3632;&#3610;&#3610;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3629;&#3629;&#3609;&#3652;&#3621;&#3609;&#3660;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3652;&#3604;&#3657;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;<br>
																			&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3607;&#3637;&#3656;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;&#3649;&#3621;&#3657;&#3623;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3648;&#3586;&#3657;&#3634;&#3626;&#3641;&#3656;&#3619;&#3632;&#3610;&#3610;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3629;&#3629;&#3609;&#3652;&#3621;&#3609;&#3660;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3652;&#3604;&#3657;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;</strong></td>
																</tr>
																<tr>
																	<td><IMG height="15" src="../pics/objects/no.gif" width="1"></td>
																</tr>
																<tr>
																	<td height="12"><IMG height="8" src="../pics/objects/arrows/arrow_yellow_right_bg_ffffff_10x8+5.gif"
																			width="15"><u class="standard_font"><a href="../registration/private_registration/private_registration.aspx">&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3610;&#3640;&#3588;&#3588;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;</a></u></td>
																</tr>
																<tr>
																	<td class="font11Linebig"><IMG height="5" src="../pics/objects/no.gif" width="1"></td>
																</tr>
																<tr>
																	<td><IMG height="8" src="../pics/objects/arrows/arrow_yellow_right_bg_ffffff_10x8+5.gif"
																			width="15"><u class="standard_font"><a href="../registration/bussiness_registration/page0.aspx">&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;</a>&#3637;&#3656;</u></td>
																</tr>
															</table>
															<IMG height="8" src="../pics/objects/arrows/arrow_yellow_right_bg_ffffff_10x8+5.gif"
																width="15"><U class="standard_font"><A href="login.aspx">Login 
																	&#3648;&#3586;&#3657;&#3634;&#3619;&#3632;&#3610;&#3610;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;</A>&#3637;&#3656;</U>
														</td>
														<td background="../pics/template_pics/table_headings+corners+bg/dividing_bg/right_fafafa_15x20.gif"
															height="93">&nbsp;</td>
													</tr>
													<tr>
														<td><IMG height="15" src="../pics/template_pics/table_headings+corners+bg/feet_corners+bg/corner_left_fafafa_15x15.gif"
																width="15"></td>
														<td background="../pics/template_pics/table_headings+corners+bg/feet_corners+bg/feet_bg_fafafa_15x15.gif"><IMG height="1" src="../pics/objects/no.gif" width="585"></td>
														<td><IMG height="15" src="../pics/template_pics/table_headings+corners+bg/feet_corners+bg/corner_right_fafafa_15x15.gif"
																width="15"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>
												<table class="standard_font" cellSpacing="0" cellPadding="0" width="297" border="0">
													<tr>
														<td><IMG height="20" src="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_dividing_left_blue_15x20.gif"
																width="15"></td>
														<td background="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_bg_blue_5x20.gif"
															height="20"><span class="Stil1">&#3621;&#3639;&#3617;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;(Password)!</span></td>
														<td><IMG height="20" src="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_dividing_right_blue_15x20.gif"
																width="15"></td>
													</tr>
													<tr>
														<td bgColor="#fafafa"><IMG height="10" src="../pics/template_pics/table_headings+corners+bg/top_corners+bg/top_corner_left_fafafa_000000_15x10.gif"
																width="15"></td>
														<td background="../pics/template_pics/table_headings+corners+bg/top_corners+bg/top_bg_fafafa_000000_15x15.gif"
															bgColor="#fafafa"><IMG height="1" src="../pics/objects/no.gif" width="267"></td>
														<td bgColor="#fafafa"><IMG height="10" src="../pics/template_pics/table_headings+corners+bg/top_corners+bg/top_corner_right_fafafa_000000_15x10.gif"
																width="15"></td>
													</tr>
													<tr>
														<td class="Lborder" bgColor="#fafafa">&nbsp;</td>
														<td class="font11Linebig" bgColor="#fafafa">&#3627;&#3634;&#3585;&#3621;&#3639;&#3617;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;(Password) 
															&#3585;&#3619;&#3640;&#3603;&#3634;&#3626;&#3656;&#3591;&#3629;&#3637;&#3648;&#3617;&#3621;&#3660;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;<br>
															&#3649;&#3621;&#3657;&#3623;&#3648;&#3619;&#3634;&#3592;&#3632;&#3592;&#3633;&#3604;&#3626;&#3656;&#3591;&#3652;&#3611;&#3651;&#3627;&#3657;</td>
														<td class="Rborder" bgColor="#fafafa">&nbsp;</td>
													</tr>
													<tr>
														<td class="Lborder" bgColor="#fafafa"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
														<td bgColor="#fafafa"><IMG height="1" src="../pics/objects/cccccc.gif" width="100%"></td>
														<td class="Rborder" bgColor="#fafafa"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
													</tr>
													<tr>
														<td class="Lborder" bgColor="#fafafa">&nbsp;</td>
														<td vAlign="top" bgColor="#fafafa">
															<table class="standard_font" cellSpacing="0" cellPadding="0" width="267" border="0">
																<tr>
																	<td noWrap width="58" height="30">Email</td>
																	<td width="10" height="30"><IMG height="1" src="../pics/objects/no.gif" width="10"></td>
																	<td width="213" height="30"><span class="app_fcap">&nbsp;
<asp:RequiredFieldValidator id="RequiredEmail" runat="server" EnableClientScript="False" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Email"
																				ControlToValidate="email">*</asp:RequiredFieldValidator>
                                                                  <asp:TextBox id="email" runat="server" Width="153px"></asp:TextBox>
                                                                  <asp:RegularExpressionValidator id="EmailValidate" runat="server" ControlToValidate="email" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; Email &#3651;&#3627;&#3657;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
																				EnableClientScript="False" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                                            </span></td>
																</tr>
																<tr>
																	<td><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
																	<td><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
																	<td width="213"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
																</tr>
																<tr>
																	<td>&nbsp;</td>
																	<td>&nbsp;</td>
																	<td width="213">
																		<asp:ImageButton id="submit_email" runat="server" ImageUrl="../pics/template_pics/function_buttons/submit_button_grey_60x20.gif"></asp:ImageButton></td>
																</tr>
															</table>
														</td>
														<td class="Rborder" bgColor="#fafafa">&nbsp;</td>
													</tr>
													<tr>
														<td><IMG height="10" src="../pics/template_pics/table_headings+corners+bg/feet_corners+bg/corner_left_fafafa_15x10.gif"
																width="15"></td>
														<td background="../pics/template_pics/table_headings+corners+bg/feet_corners+bg/feet_bg_fafafa_15x10.gif"><IMG height="1" src="../pics/objects/no.gif" width="267"></td>
														<td><IMG height="10" src="../pics/template_pics/table_headings+corners+bg/feet_corners+bg/corner_right_fafafa_15x10.gif"
																width="15"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><IMG height="25" src="../pics/objects/no.gif" width="1">&nbsp;
												<asp:Label id="Label1" runat="server" Width="360px" ForeColor="Red"></asp:Label>
												<asp:ValidationSummary id="ValidationSummary1" runat="server"></asp:ValidationSummary></td>
										</tr>
										<tr>
											<td><IMG height="1" src="../pics/objects/cccccc.gif" width="615"></td>
										</tr>
										<tr>
											<td><IMG height="5" src="../pics/objects/no.gif" width="1"></td>
										</tr>
										<tr>
											<td>&nbsp;</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td background="../pics/template_pics/verti_navi_pics/gif/bg_verti_navi.gif">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td background="../pics/template_pics/verti_navi_pics/gif/bg_verti_navi.gif">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td background="../pics/template_pics/verti_navi_pics/gif/bg_verti_navi.gif">&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
