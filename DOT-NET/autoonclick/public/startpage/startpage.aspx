<%@Register TagPrefix="footer" TagName="footer_bar" Src="../footer_bar/footer_bar.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login3.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../left_menu/left_menubar.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@ Page CodeBehind="startpage.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.startpage" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</style>
		<STYLE type="text/css">#topbar { BORDER-RIGHT: white 0px solid; PADDING-RIGHT: 0px; BORDER-TOP: white 0px solid; PADDING-LEFT: 0px; Z-INDEX: 100; VISIBILITY: hidden; PADDING-BOTTOM: 0px; WIDTH: 200px; PADDING-TOP: 0px; POSITION: absolute; HEIGHT: 350px }
	</STYLE>
		<script language="JavaScript" type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
		</script>
		<LINK href="../../css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onload="MM_preloadImages('../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<!--<table cellSpacing="0" cellPadding="0" width="983" border="0">-->
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td class="Font_blue_bold">
									<div align="center">- 
										&#3607;&#3633;&#3657;&#3591;&#3610;&#3640;&#3588;&#3588;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3649;&#3621;&#3632;&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3619;&#3606;&#3649;&#3621;&#3632;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;&#3652;&#3604;&#3657;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656; 
										-</div>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3600;&#3634;&#3609;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3586;&#3609;&#3634;&#3604;&#3651;&#3627;&#3597;&#3656;&#3586;&#3629;&#3591;&#3619;&#3606; 
												&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660; 
												&#3649;&#3621;&#3632;&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;&#3604;&#3657;&#3634;&#3609;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660; 
												&#3610;&#3609; AUTO-ONCLICK</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td width="693">
									<div id="carShow"></div>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td width="693"><IMG height="5" src="../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td width="693" height="15"></td>
							</tr>
							<tr>
								<td width="693">
									<table cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td width="339">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/m_h_b_339.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="309">&#3588;&#3657;&#3609;&#3627;&#3634;&#3619;&#3606;&#3629;&#3618;&#3656;&#3634;&#3591;&#3648;&#3619;&#3655;&#3623;&#3585;&#3633;&#3610; 
															AUTO-ONCLICK
														</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
											<td width="15" rowSpan="7"></td>
											<td width="339">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/m_h_o_339.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="309">&#3588;&#3640;&#3603;&#3619;&#3641;&#3657;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;&#3623;&#3656;&#3634;...?</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
										</tr>
										<tr>
											<td vAlign="top" width="339" background="../../images/table/g_339.gif">
												<table class="Font_black" cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td colSpan="7" height="10"></td>
													</tr>
													<tr>
														<td width="10" rowSpan="19"></td>
														<td width="50" height="21">
															<div align="right"><strong>&#3627;&#3617;&#3623;&#3604;&#3627;&#3617;&#3641;&#3656;</strong></div>
														</td>
														<td width="10"></td>
														<td colSpan="3"><select class="Font_black" id="cat" style="WIDTH: 100%" name="cat" onchange="showBrands(this.value);">
																<option selected value="0">&#3650;&#3611;&#3619;&#3604;&#3648;&#3621;&#3639;&#3629;&#3585;</option>
																<option value="1">&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</option>
																<option value="2">&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</option>
																<option value="3">&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</option>
															</select></td>
														<td width="10" rowSpan="19"></td>
													</tr>
													<tr>
														<td colSpan="5" height="10">
															<asp:Label id="err" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right"><strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;</strong></div>
														</td>
														<td width="10"></td>
														<td colSpan="3">
															<select class="Font_black" id="brands" style="WIDTH: 100%" name="brands" onchange="showModels(this.value,document.form1.cat.value);">
																<option selected value="0">&#3607;&#3640;&#3585;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right"><strong>&#3619;&#3640;&#3656;&#3609;</strong></div>
														</td>
														<td width="10"></td>
														<td colSpan="3"><select class="Font_black" id="model" style="WIDTH: 100%" name="model">
																<option selected value="0">&#3607;&#3640;&#3585;&#3619;&#3640;&#3656;&#3609;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
														</td>
														<td width="10"></td>
														<td colSpan="3"><select class="Font_black" id="carType" style="WIDTH: 100%" name="carType">
																<option selected value="0">&#3607;&#3640;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right">&#3611;&#3637;</div>
														</td>
														<td width="10"></td>
														<td width="124"><select class="Font_black" id="yearst" style="WIDTH: 100%" name="yearst">
																<option selected value="0">&#3592;&#3634;&#3585;&#3607;&#3640;&#3585;&#3611;&#3637;</option>
															</select></td>
														<td width="10"></td>
														<td width="125"><select class="Font_black" id="yearend" style="WIDTH: 100%" name="yearend">
																<option selected value="0">&#3606;&#3638;&#3591;&#3607;&#3640;&#3585;&#3611;&#3637;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right">&#3595;&#3637;&#3595;&#3637;/cc</div>
														</td>
														<td width="10"></td>
														<td width="124"><select class="Font_black" id="ccst" style="WIDTH: 100%" name="ccst">
																<option selected value="0">&#3592;&#3634;&#3585;&#3607;&#3640;&#3585;&#3586;&#3609;&#3634;&#3604;</option>
															</select></td>
														<td width="10"></td>
														<td width="125"><select class="Font_black" id="ccend" style="WIDTH: 100%" name="ccend">
																<option selected value="0">&#3606;&#3638;&#3591;&#3607;&#3640;&#3585;&#3586;&#3609;&#3634;&#3604;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right">&#3619;&#3634;&#3588;&#3634;</div>
														</td>
														<td width="10"></td>
														<td width="124"><select class="Font_black" id="pricest" style="WIDTH: 100%" name="pricest">
																<option selected value="0">&#3592;&#3634;&#3585;&#3607;&#3640;&#3585;&#3619;&#3634;&#3588;&#3634;</option>
															</select></td>
														<td width="10"></td>
														<td width="125"><select class="Font_black" id="priceend" style="WIDTH: 100%" name="priceend">
																<option selected value="0">&#3606;&#3638;&#3591;&#3607;&#3640;&#3585;&#3619;&#3634;&#3588;&#3634;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
														<td width="10"></td>
														<td colSpan="3"><select class="Font_black" id="province" style="WIDTH: 75%" name="province" onchange="showDistrict(this.value);">
																<option selected value="0">&#3607;&#3640;&#3585;&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50" height="21">
															<div align="right">&#3648;&#3586;&#3605;</div>
														</td>
														<td width="10"></td>
														<td colSpan="3"><select class="Font_black" id="district" style="WIDTH: 75%" name="district">
																<option selected value="0">&#3607;&#3640;&#3585;&#3648;&#3586;&#3605;/&#3629;&#3635;&#3648;&#3616;&#3629;</option>
															</select></td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="50"></td>
														<td width="10"></td>
														<td colSpan="3">
															<asp:button class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
																style="CURSOR: hand" onmouseout="document.all.doSearch.className='button'" runat="server"
																name="doSearch" Text="&#3588;&#3657;&#3609;&#3627;&#3634;"></asp:button></td>
													</tr>
												</table>
											</td>
											<td vAlign="top" width="339" background="../../images/table/g_339.gif" rowSpan="3">
												<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td colSpan="3" height="5"></td>
													</tr>
													<tr>
														<td width="5"></td>
														<td vAlign="top">
															<div align="center"><strong>&#3585;&#3634;&#3619;&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3619;&#3606;&#3586;&#3629;&#3591; 
																	AUTO-ONCLICK</strong>
																<p><strong>&#3588;&#3657;&#3609;&#3627;&#3634;, 
																		&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621; 
																		&#3649;&#3621;&#3657;&#3623; 
																		&#3605;&#3633;&#3604;&#3626;&#3636;&#3609;&#3651;&#3592;</strong> - 
																	&#3585;&#3634;&#3619;&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3586;&#3629;&#3591; 
																	AUTO-ONCLICK 
																	&#3592;&#3632;&#3594;&#3656;&#3623;&#3618;&#3651;&#3627;&#3657;&#3588;&#3640;&#3603; 
																	&#3614;&#3610;&#3619;&#3606;&#3627;&#3619;&#3639;&#3629;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3651;&#3592;&#3652;&#3604;&#3657;&#3650;&#3604;&#3618;&#3619;&#3623;&#3604;&#3648;&#3619;&#3655;&#3623;!</p>
																<IMG height="66" src="../../images/objects/compare_cars.jpg" width="321">
																<p>&#3588;&#3640;&#3603;&#3614;&#3610;&#3619;&#3606;&#3627;&#3619;&#3639;&#3629;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3651;&#3592;&#3649;&#3621;&#3657;&#3623;&#3651;&#3594;&#3656;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656; 
																	?<BR>
																	&#3649;&#3621;&#3632;&#3617;&#3637;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3629;&#3639;&#3656;&#3609;&#3654; 
																	&#3629;&#3637;&#3585;&#3604;&#3657;&#3623;&#3618; ?<BR>
																	&#3648;&#3585;&#3655;&#3610;&#3619;&#3606;&#3588;&#3633;&#3609;&#3650;&#3611;&#3619;&#3604;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3651;&#3609; 
																	&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;!</p>
																&#3619;&#3623;&#3610;&#3619;&#3623;&#3617;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3609;&#3656;&#3634;&#3626;&#3609;&#3651;&#3592;&#3648;&#3611;&#3655;&#3609;&#3614;&#3636;&#3648;&#3624;&#3625; 
																&#3649;&#3621;&#3657;&#3623;&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;&#3604;&#3641; 
																&#3585;&#3634;&#3619;&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591; 
																AUTO-ONCLICK 
																&#3607;&#3635;&#3651;&#3627;&#3657;&#3588;&#3640;&#3603;&#3652;&#3604;&#3657; 
																&#3648;&#3627;&#3655;&#3609;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;&#3609;&#3633;&#3657;&#3609;&#3651;&#3609;&#3627;&#3609;&#3657;&#3634;&#3648;&#3604;&#3637;&#3618;&#3623; 
																&#3648;&#3614;&#3639;&#3656;&#3629;&#3594;&#3656;&#3623;&#3618;&#3651;&#3609;&#3585;&#3634;&#3619;&#3605;&#3633;&#3604;&#3626;&#3636;&#3609;&#3651;&#3592; 
																&#3607;&#3637;&#3656;&#3619;&#3623;&#3604;&#3648;&#3619;&#3655;&#3623;&#3618;&#3636;&#3656;&#3591;&#3586;&#3638;&#3657;&#3609;!</div>
														</td>
														<td width="5"></td>
													</tr>
													<tr>
														<td colSpan="3" height="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td vAlign="bottom" background="../../images/table/g_339.gif"><IMG height="21" src="../../images/dividers/g_b_339x21.gif" width="339"></td>
										</tr>
										<tr>
											<td background="../../images/table/b_339.gif">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td height="60">
															<div align="center"><asp:Label id="halfBanner" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="8"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
										</tr>
										<tr>
											<td width="339"><IMG height="5" src="../../images/lines/l_b_339.gif" width="339"></td>
											<td width="339"><IMG height="5" src="../../images/lines/l_o_339.gif" width="339"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"><FONT face="Tahoma"></FONT></td>
							</tr>
							<tr>
								<td>
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3652;&#3604;&#3648;&#3619;&#3655;&#3585;&#3607;&#3629;&#3619;&#3637;&#3656;&#3586;&#3609;&#3634;&#3604;&#3651;&#3627;&#3597;&#3656;&#3586;&#3629;&#3591;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3604;&#3657;&#3634;&#3609;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660; 
												&#3610;&#3609; AUTO-ONCLICK</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" background="../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="11" height="5"></td>
										</tr>
										<tr>
											<td width="7"></td>
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><strong>"&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;"</strong></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td width='120' height='90'>
															<div id="s1" align="center">
																<A href="../search/business_homepage/dealer_business_web_start.htm" target="_blank">
																	<IMG height="90" src="../../images/objects/company_logo_120x90.gif" width="120" border="0">
																</A>
															</div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>
															<div id="s11" align="center">&#3648;&#3586;&#3605;</div>
														</td>
													</tr>
													<tr>
														<td>
															<div id="s12" align="center">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><strong>"&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3618;&#3609;&#3605;&#3660;"
																</strong>
															</div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td width='120' height='90'>
															<div id="s2" align="center"><A href="../search/business_homepage/dealer_business_web_start.htm" target="_blank"><IMG height="90" src="../../images/objects/company_logo_120x90.gif" width="120" border="0"></A></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>
															<div id="s21" align="center">&#3648;&#3586;&#3605;</div>
														</td>
													</tr>
													<tr>
														<td>
															<div id="s22" align="center">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><strong>"&#3624;&#3641;&#3609;&#3618;&#3660;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3629;&#3641;&#3656;&#3619;&#3606;"</strong></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td width='120' height='90'>
															<div id="s3" align="center"><A href="../search/business_homepage/dealer_business_web_start.htm" target="_blank"><IMG height="90" src="../../images/objects/company_logo_120x90.gif" width="120" border="0"></A></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>
															<div id="s31" align="center">&#3648;&#3586;&#3605;</div>
														</td>
													</tr>
													<tr>
														<td>
															<div id="s32" align="center">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><strong>"&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3607;&#3635;&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3629;&#3634;&#3604;"</strong></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td width='120' height='90'>
															<div id="s4" align="center"><A href="../search/business_homepage/dealer_business_web_start.htm" target="_blank"><IMG height="90" src="../../images/objects/company_logo_120x90.gif" width="120" border="0"></A></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>
															<div id="s41" align="center">&#3648;&#3586;&#3605;</div>
														</td>
													</tr>
													<tr>
														<td>
															<div id="s42" align="center">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td vAlign="top" width="131">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><strong>"&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3619;&#3606;&#3648;&#3594;&#3656;&#3634;"</strong></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td width='120' height='90'>
															<div id="s5" align="center"><A href="../search/business_homepage/dealer_business_web_start.htm" target="_blank"><IMG height="90" src="../../images/objects/company_logo_120x90.gif" width="120" border="0"></A></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>
															<div id="s51" align="center">&#3648;&#3586;&#3605;</div>
														</td>
													</tr>
													<tr>
														<td>
															<div id="s52" align="center">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
													</tr>
												</table>
											</td>
											<td width="7"></td>
										</tr>
										<tr>
											<td colSpan="11" height="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td width="693" height="20"></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"><FONT face="Tahoma"></FONT></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
		startList();
		startList2();
		function startList(){
			autoonclick.startpage.showCust(txtBack);
		}
		function startList2(){
			autoonclick.startpage.showCar(txtBack2);
		}
		function txtBack2(response){
			//alert(response.value);
			var show1 = document.getElementById("carShow");
			show1.innerHTML = response.value;
		}
		function txtBack(response){
		
		var show1 = document.getElementById("s1");
		var show11 = document.getElementById("s11");
		var show12 = document.getElementById("s12");
		var show2 = document.getElementById("s2");
		var show21 = document.getElementById("s21");
		var show22 = document.getElementById("s22");
		var show3 = document.getElementById("s3");
		var show31 = document.getElementById("s31");
		var show32 = document.getElementById("s32");
		var show4 = document.getElementById("s4");
		var show41 = document.getElementById("s41");
		var show42 = document.getElementById("s42");
		var show5 = document.getElementById("s5");
		var show51 = document.getElementById("s51");
		var show52 = document.getElementById("s52");
		
		var x = response.value;
		//alert(x);
		var tmpdb;
		var tmpdb2;
		var tmpdb3;
		var txt = x.split('!1!');
		var pic1="";
		
				for (var i = 0; i < txt.length-1; i++) {
				//alert(txt[i+1]);
				//alert(i);
						tmpdb = txt[i+1].split("!2!");
						//alert(tmpdb[0] + "<-->" + tmpdb[1]);
						switch(tmpdb[0]){
							case "car" :
								for(var n=0;n<tmpdb.length;n++){
									tmpdb2 = tmpdb[1].split("!3!");
									show1.innerHTML=tmpdb2[0];
									for(var y=0;y<tmpdb2.length;y++){
										tmpdb3=tmpdb2[1].split("!4!");
										show11.innerHTML=tmpdb3[0];
										show12.innerHTML=tmpdb3[1];
									}
								}
								break;
							case "part" :
								for(var n=0;n<tmpdb.length;n++){
									tmpdb2 = tmpdb[1].split("!3!");
									show2.innerHTML=tmpdb2[0];
									for(var y=0;y<tmpdb2.length;y++){
										tmpdb3=tmpdb2[1].split("!4!");
										show21.innerHTML=tmpdb3[0];
										show22.innerHTML=tmpdb3[1];
									}
								}
								break;
							case "sv" :
								for(var n=0;n<tmpdb.length;n++){
									tmpdb2 = tmpdb[1].split("!3!");
									show3.innerHTML=tmpdb2[0];
									for(var y=0;y<tmpdb2.length;y++){
										tmpdb3=tmpdb2[1].split("!4!");
										show31.innerHTML=tmpdb3[0];
										show32.innerHTML=tmpdb3[1];
									}
								}
								break;
							case "cl" :
								for(var n=0;n<tmpdb.length;n++){
									tmpdb2 = tmpdb[1].split("!3!");
									show4.innerHTML=tmpdb2[0];
									for(var y=0;y<tmpdb2.length;y++){
										tmpdb3=tmpdb2[1].split("!4!");
										show41.innerHTML=tmpdb3[0];
										show42.innerHTML=tmpdb3[1];
									}
								}
								break;
							case "rent" :
								for(var n=0;n<tmpdb.length;n++){
									tmpdb2 = tmpdb[1].split("!3!");
									show5.innerHTML=tmpdb2[0];
									for(var y=0;y<tmpdb2.length;y++){
										tmpdb3=tmpdb2[1].split("!4!");
										show51.innerHTML=tmpdb3[0];
										show52.innerHTML=tmpdb3[1];
									}
								}
								break;
						}
						
					}
		
		
		//	show1.innerHTML = txt[1];
		}
		
		function showBrands(cat){
				autoonclick.showBrands.showBrands(cat,listBrands);
				
				var modelChooser = document.getElementById("model");
				modelChooser.options.length = 1;
				
				autoonclick.showBrands.showType(cat,showType);
				autoonclick.showBrands.showYear(showYear);
				autoonclick.showBrands.showPrice1(cat,showPrice1);
				autoonclick.showBrands.showPrice2(cat,showPrice2);
				autoonclick.showBrands.showCC1(cat,showCC1);
				autoonclick.showBrands.showCC2(cat,showCC2);
				autoonclick.showBrands.showProvinces(listProvince);
				
		}
		function listBrands(res){
			var brandChooser = document.getElementById("brands");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		function showModels(brand,cat){
				autoonclick.showBrands.showModels(brand,cat,listModels);
		}
		
		function listModels(res){
			var modelChooser = document.getElementById("model");
			modelChooser.options.length = 1;
			var x = res.value;
			modeldb = x.split("!");
			var db="";
			for (var i = 0; i < modeldb.length; i++) {
				db = modeldb[i].split(":");
				modelChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		function showType(res){
			var typeChooser = document.getElementById("carType");
			typeChooser.options.length = 1;
			var x = res.value;
			typedb = x.split("!");
						
			var db="";
			for (var i = 0; i < typedb.length; i++) {
				db = typedb[i].split(":");
				typeChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
					function showYear(res){
						var typeYearSt = document.getElementById("yearst");
						var typeYearEnd = document.getElementById("yearend");
						typeYearSt.options.length = 1;
						typeYearEnd.options.length = 1;
						var x = res.value;
						//alert(x);
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typeYearSt.options[i + 1] = new Option(db[1], db[0]);
							typeYearEnd.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showPrice1(res){
						var typePriceSt = document.getElementById("pricest");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showPrice2(res){
						var typePriceSt = document.getElementById("priceend");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showCC1(res){
						var typePriceSt = document.getElementById("ccst");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showCC2(res){
						var typePriceSt = document.getElementById("ccend");
						typePriceSt.options.length = 1;
						var x = res.value;
						typedb = x.split("!");
						
						var db="";
						for (var i = 0; i < typedb.length; i++) {
							db = typedb[i].split(":");
							typePriceSt.options[i + 1] = new Option(db[1], db[0]);
						}
					}
		
		function listProvince(res){
			var brandChooser = document.getElementById("province");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		function showDistrict(prov){
				autoonclick.showBrands.showDistricts(prov,listDistricts);
		}
		function listDistricts(res){
			var brandChooser = document.getElementById("district");
			brandChooser.options.length = 1;
			var x = res.value;
			branddb = x.split("!");
						
			var db="";
			for (var i = 0; i < branddb.length; i++) {
					db = branddb[i].split(":");
					brandChooser.options[i + 1] = new Option(db[1], db[0]);
			}
		}
		
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
