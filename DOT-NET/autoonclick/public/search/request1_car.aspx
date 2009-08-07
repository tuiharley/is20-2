<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="model" TagName="model_list" Src="list/model_list_request_search.ascx"%>
<%@Register TagPrefix="province" TagName="province_list" Src="list/province_list_search.ascx"%>
<%@ Page CodeBehind="request1_car.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.request1_car" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } </style>
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
	</HEAD>
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<input id="brandIndex" type="hidden" name="brandIndex"> <input id="modelIndex" type="hidden" name="modelIndex">
			<input id="proinceIndex" type="hidden" name="proinceIndex"> <input id="districtIndex" type="hidden" name="districtIndex">
			<table width="693" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607; 
												:</td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif" class="Font_brown">&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqBike" runat="server" CssClass="A_black_NOunderline">&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqTruck" runat="server" CssClass="A_black_NOunderline">&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqPart" runat="server" CssClass="A_black_NOunderline">&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
											<td width="79"></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td width="162" background="../../images/objects/sub_navi_blue_c.gif"><div align="right">
													||
													<asp:hyperlink id="reqDel" runat="server" CssClass="A_black_NOunderline">&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;</asp:hyperlink>
													||</div>
											</td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td valign="top"><FONT face="Tahoma"></FONT></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634; 
												: &#3619;&#3606;&#3618;&#3609;&#3605;&#3660;
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black_LH_17px">
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683">&#3627;&#3634;&#3585;&#3588;&#3640;&#3603;&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3614;&#3610;&#3619;&#3606;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619; 
												&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;&#3594;&#3656;&#3623;&#3618;&#3651;&#3627;&#3657;&#3588;&#3640;&#3603;&#3614;&#3610;&#3619;&#3606;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3651;&#3592;&#3652;&#3604;&#3657; 
												&#3648;&#3614;&#3637;&#3618;&#3591;&#3649;&#3588;&#3656;&#3651;&#3627;&#3657;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3619;&#3606;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619; 
												&#3619;&#3632;&#3610;&#3640;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609; 
												(Password) 
												&#3648;&#3614;&#3639;&#3656;&#3629;&#3651;&#3594;&#3657;&#3651;&#3609;&#3586;&#3633;&#3657;&#3609;&#3605;&#3629;&#3609;&#3585;&#3634;&#3619;&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3651;&#3609;&#3585;&#3619;&#3603;&#3637;&#3607;&#3637;&#3656;&#3614;&#3610;&#3619;&#3606;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3649;&#3621;&#3657;&#3623;&#3649;&#3621;&#3632;&#3652;&#3617;&#3656;&#3611;&#3619;&#3632;&#3626;&#3591;&#3588;&#3660;&#3607;&#3637;&#3656;&#3592;&#3632;&#3619;&#3633;&#3610;&#3629;&#3637;&#3648;&#3617;&#3621;&#3660;&#3592;&#3634;&#3585;&#3607;&#3634;&#3591;&#3648;&#3619;&#3634;&#3629;&#3637;&#3585; 
												&#3619;&#3632;&#3610;&#3640;&#3629;&#3637;&#3648;&#3617;&#3621;&#3660;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3614;&#3639;&#3656;&#3629;&#3607;&#3637;&#3656;&#3648;&#3619;&#3634;&#3592;&#3632;&#3652;&#3604;&#3657;&#3592;&#3633;&#3604;&#3626;&#3656;&#3591;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3652;&#3604;&#3657; 
												&#3649;&#3621;&#3632;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3651;&#3594;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3609;&#3637;&#3657;&#3652;&#3604;&#3657;&#3652;&#3617;&#3656;&#3592;&#3635;&#3585;&#3633;&#3604;&#3592;&#3635;&#3609;&#3623;&#3609; 
												&#3607;&#3633;&#3657;&#3591;&#3609;&#3637;&#3657;&#3627;&#3609;&#3638;&#3656;&#3591;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3651;&#3594;&#3657;&#3652;&#3604;&#3657;&#3605;&#3656;&#3629;&#3585;&#3634;&#3619;&#3651;&#3594;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3627;&#3609;&#3638;&#3656;&#3591;&#3588;&#3619;&#3633;&#3657;&#3591; 
												&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3609;&#3637;&#3657;&#3617;&#3637;&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634; 
												28 &#3623;&#3633;&#3609; &#3650;&#3604;&#3618; AUTO-ONCLICK 
												&#3592;&#3632;&#3607;&#3635;&#3585;&#3634;&#3619;&#3588;&#3657;&#3609;&#3627;&#3634;&#3649;&#3621;&#3632;&#3592;&#3633;&#3604;&#3626;&#3656;&#3591;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3652;&#3611;&#3651;&#3609;&#3607;&#3640;&#3585;&#3623;&#3633;&#3609;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3609;&#3637;&#3657;&#3648;&#3611;&#3655;&#3609;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3615;&#3619;&#3637; 
												&#3652;&#3617;&#3656;&#3648;&#3626;&#3637;&#3618;&#3588;&#3656;&#3634;&#3651;&#3594;&#3657;&#3592;&#3656;&#3634;&#3618;&#3651;&#3604;&#3654; 
												&#3607;&#3633;&#3657;&#3591;&#3626;&#3636;&#3657;&#3609;
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_693.gif"
										class="H1_white">
										<tr>
											<td width="5"></td>
											<td width="683"><div align="center">- 
													&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3637;&#3656;&#3592;&#3635;&#3648;&#3611;&#3655;&#3609;&#3648;&#3609;&#3657;&#3609;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3604;&#3657;&#3623;&#3618;<span class="Font_orange_bold">&#3626;&#3637;&#3626;&#3657;&#3617;</span>
													-</div>
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="17" colspan="3" background="../../images/header/dtl_s_v.gif"><div align="center"><strong class="Font_black_bold">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3619;&#3606;</strong></div>
											</td>
											<td colspan="7" bgcolor="#e2e9f1"></td>
											<td><img src="../../images/separator/g2_R5.gif" width="5" height="17"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right" class="Font_orange"><strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;</strong></div>
											</td>
											<td width="10"></td>
											<td width="200"><FONT face="Tahoma"><SELECT class="Font_black" id="Brands" onchange="setBrandIndex('brandIndex',this.selectedIndex);setBrandIndex('modelIndex',0);model_list('Model',this.selectedIndex,'');"
														name="Brands" runat="server">
														<OPTION selected></OPTION>
													</SELECT></FONT></td>
											<td width="10">
												<asp:customvalidator id="BrandValidator" runat="server" ControlToValidate="Brands" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;"
													Font-Bold="True" ClientValidationFunction="checkBrands">*</asp:customvalidator></td>
											<td width="86"><div align="right"><strong>&#3619;&#3634;&#3588;&#3634;</strong></div>
											</td>
											<td width="10"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="Price1" runat="server" Width="100%" DataValueField="Price1_Value" DataTextField="Price1"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="Price2" runat="server" Width="100%" DataValueField="Price2_Value" DataTextField="Price2"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right" class="Font_orange"><strong>&#3619;&#3640;&#3656;&#3609;</strong></div>
											</td>
											<td width="10"></td>
											<td width="200"><FONT face="Tahoma"><SELECT class="Font_black" id="Model" onchange="setBrandIndex('modelIndex',this.selectedIndex);"
														name="Model" runat="server">
														<OPTION selected></OPTION>
													</SELECT></FONT></td>
											<td width="10">
												<asp:customvalidator id="ModelValidator" tabIndex="1" runat="server" ControlToValidate="Model" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3640;&#3656;&#3609;&#3586;&#3629;&#3591;&#3619;&#3606;"
													Font-Bold="True" ClientValidationFunction="checkModel">*</asp:customvalidator></td>
											<td width="86"><div align="right"><strong>&#3611;&#3637;</strong></div>
											</td>
											<td width="10"></td>
											<td width="137">
												<asp:DropDownList id="Year1" runat="server" Width="100%" DataValueField="Lyear_value" DataTextField="LYEAR"
													CssClass="Font_black"></asp:DropDownList></td>
											<td width="5"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="Year2" runat="server" Width="100%" DataValueField="RYear_Value" DataTextField="RYEAR"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right"><strong>&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</strong></div>
											</td>
											<td width="10"></td>
											<td width="200"><FONT face="Tahoma">
													<asp:DropDownList id="status" runat="server" Width="95%" DataValueField="status" DataTextField="status_name"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="10"></td>
											<td width="86"><div align="right"><strong>&#3595;&#3637;&#3595;&#3637;/cc</strong></div>
											</td>
											<td width="10"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="CC1" runat="server" Width="100%" DataValueField="LCC_Value" DataTextField="LCC"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="CC2" runat="server" Width="100%" DataValueField="RCC_Value" DataTextField="RCC"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
											</td>
											<td width="10"></td>
											<td width="200">
												<asp:DropDownList id="cartype" runat="server" Width="95%" DataValueField="cartype" DataTextField="cartype_name"
													CssClass="Font_black"></asp:DropDownList></td>
											<td width="10"></td>
											<td width="86"><div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="power1" runat="server" Width="100%" DataValueField="LPower_Value" DataTextField="LPower"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="power2" runat="server" Width="100%" DataValueField="RPower_Value" DataTextField="RPower"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="200"><FONT face="Tahoma">
													<asp:DropDownList id="enginetype" runat="server" Width="95%" DataValueField="enginetype" DataTextField="enginetype_name"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="10"></td>
											<td width="86"><div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="mile1" runat="server" Width="100%" DataValueField="LMile_Value" DataTextField="LMile"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="mile2" runat="server" Width="100%" DataValueField="RMile_Value" DataTextField="RMile"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="200"><FONT face="Tahoma">
													<asp:DropDownList id="gear" runat="server" Width="95%" DataValueField="gear" DataTextField="gear_name"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="10"></td>
											<td width="86"><div align="right">&#3626;&#3637;</div>
											</td>
											<td width="10"></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="color" runat="server" Width="100%" DataValueField="color" DataTextField="color_name"
														CssClass="Font_black"></asp:DropDownList></FONT></td>
											<td width="5"></td>
											<td width="137">&nbsp;
												<asp:CheckBox id="metalic" runat="server" Text="&#3648;&#3617;&#3607;&#3634;&#3621;&#3636;&#3588;"></asp:CheckBox></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="17" colspan="3" background="../../images/header/dtl_s_v.gif"><div align="center" class="Font_black_bold">&#3607;&#3637;&#3656;&#3605;&#3633;&#3657;&#3591;</div>
											</td>
											<td colspan="7" bgcolor="#e2e9f1"></td>
											<td><img src="../../images/separator/g2_R5.gif" width="5" height="17"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="88"><div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
											</td>
											<td width="10"></td>
											<td width="200"><FONT face="Tahoma"><SELECT class="Font_black" id="Province" onchange="setBrandIndex('proinceIndex',this.selectedIndex);setBrandIndex('districtIndex',0);district_list('district',this.selectedIndex,0);"
														name="Province" runat="server">
														<OPTION selected></OPTION>
													</SELECT></FONT></td>
											<td width="10"></td>
											<td width="86"><div align="right">&#3648;&#3586;&#3605;</div>
											</td>
											<td width="10"></td>
											<td width="137"><SELECT class="Font_black" id="District" onchange="setBrandIndex('districtIndex',this.selectedIndex);"
													name="District" runat="server">
													<OPTION selected></OPTION>
												</SELECT></td>
											<td width="5"></td>
											<td width="137"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="17" colspan="3" background="../../images/header/dtl_s_v.gif"><div align="center" class="Font_black_bold">&#3585;&#3634;&#3619;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</div>
											</td>
											<td colspan="7" bgcolor="#e2e9f1"></td>
											<td><img src="../../images/separator/g2_R5.gif" width="5" height="17"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="8" colspan="11"></td>
										</tr>
										<tr>
											<td></td>
											<td><div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
											</td>
											<td></td>
											<td width="200">
												<asp:DropDownList id="Insurrance" runat="server" Width="159px" CssClass="Font_black">
													<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
													<asp:ListItem Value="1">&#3652;&#3617;&#3656;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</asp:ListItem>
												</asp:DropDownList></td>
											<td></td>
											<td width="86"><div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;<br>
													(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)*</div>
											</td>
											<td></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="accident" runat="server" Width="137px" CssClass="Font_black">
														<asp:ListItem Value="0">&#3652;&#3617;&#3656;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:ListItem>
														<asp:ListItem Value="1">&#3649;&#3626;&#3604;&#3591;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
														<asp:ListItem Value="2">&#3649;&#3626;&#3604;&#3591;&#3648;&#3593;&#3614;&#3634;&#3632;&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;</asp:ListItem>
													</asp:DropDownList></FONT></td>
											<td></td>
											<td width="137"></td>
											<td></td>
										</tr>
										<tr>
											<td height="7" colspan="11"></td>
										</tr>
										<tr>
											<td></td>
											<td><div align="right">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;</div>
											</td>
											<td></td>
											<td width="200"><FONT face="Tahoma">
													<asp:DropDownList id="showPic" runat="server" Width="159px" CssClass="Font_black">
														<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
														<asp:ListItem Value="1">&#3649;&#3626;&#3604;&#3591;&#3648;&#3593;&#3614;&#3634;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;</asp:ListItem>
													</asp:DropDownList></FONT></td>
											<td></td>
											<td width="86"><div align="right">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3619;&#3632;&#3610;&#3640;&#3619;&#3634;&#3588;&#3634;</div>
											</td>
											<td></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="showPrice" runat="server" Width="137px" CssClass="Font_black">
														<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
														<asp:ListItem Value="1">&#3649;&#3626;&#3604;&#3591;&#3648;&#3593;&#3614;&#3634;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3619;&#3632;&#3610;&#3640;&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
													</asp:DropDownList></FONT></td>
											<td></td>
											<td width="137"></td>
											<td></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td></td>
											<td><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>
											</td>
											<td></td>
											<td width="200"><FONT face="Tahoma">
													<asp:DropDownList id="SaleType" runat="server" Width="160px" CssClass="Font_black">
														<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
														<asp:ListItem Value="1">&#3610;&#3640;&#3588;&#3588;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611; / &#3648;&#3592;&#3657;&#3634;&#3586;&#3629;&#3591;&#3586;&#3634;&#3618;&#3648;&#3629;&#3591;</asp:ListItem>
														<asp:ListItem Value="2">&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619; / &#3612;&#3641;&#3657;&#3649;&#3607;&#3609;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</asp:ListItem>
													</asp:DropDownList></FONT></td>
											<td></td>
											<td width="86"><div align="right">&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;</div>
											</td>
											<td></td>
											<td width="137"><FONT face="Tahoma">
													<asp:DropDownList id="order_by" runat="server" Width="137px" CssClass="Font_black">
														<asp:ListItem Value="0">&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
														<asp:ListItem Value="1">&#3611;&#3637;</asp:ListItem>
														<asp:ListItem Value="2">&#3595;&#3637;&#3595;&#3637; / CC</asp:ListItem>
														<asp:ListItem Value="3">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</asp:ListItem>
														<asp:ListItem Value="4">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</asp:ListItem>
														<asp:ListItem Value="5">&#3629;&#3634;&#3618;&#3640;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:ListItem>
													</asp:DropDownList></FONT></td>
											<td></td>
											<td width="137"></td>
											<td></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="17" colspan="3" background="../../images/header/dtl_s_v.gif"><div align="center" class="Font_black_bold">&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;</div>
											</td>
											<td colspan="7" bgcolor="#e2e9f1"></td>
											<td width="5"><img src="../../images/separator/g2_R5.gif" width="5" height="17"></td>
										</tr>
										<tr>
											<td colspan="11"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td></td>
											<td><FONT face="Tahoma"></FONT></td>
											<td></td>
											<td colspan="7"><table width="585" border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td height="17" colspan="5"><table width="585" height="17" border="0" cellpadding="0" cellspacing="0" background="../../images/header/eq_s.gif">
																<tr>
																	<td width="195"><div align="center">&#3588;&#3623;&#3634;&#3617;&#3626;&#3632;&#3604;&#3623;&#3585;</div>
																	</td>
																	<td width="196"><div align="center">&#3588;&#3623;&#3634;&#3617;&#3611;&#3621;&#3629;&#3604;&#3616;&#3633;&#3618;</div>
																	</td>
																	<td width="194"><div align="center">&#3614;&#3636;&#3648;&#3624;&#3625;&#3629;&#3639;&#3656;&#3609;&#3654;</div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<TR>
														<TD width="188" height="58">
															<asp:CheckBoxList id="accessory1" runat="server" DataValueField="accessory" DataTextField="accessory_name"
																CssClass="Font_black"></asp:CheckBoxList></TD>
														<TD width="5" height="58"></TD>
														<TD width="188" height="58">
															<asp:CheckBoxList id="accessory2" runat="server" DataValueField="accessory" DataTextField="accessory_name"
																CssClass="Font_black"></asp:CheckBoxList></TD>
														<TD width="5" height="58"><FONT face="Tahoma"></FONT></TD>
														<TD width="188" height="58">
															<asp:CheckBoxList id="accessory3" runat="server" DataValueField="accessory" DataTextField="accessory_name"
																CssClass="Font_black"></asp:CheckBoxList></TD>
													</TR>
												</table>
											</td>
											<td></td>
										</tr>
										<tr>
											<td height="10" colspan="11"></td>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td width="200"></td>
											<td></td>
											<td width="86"></td>
											<td></td>
											<td width="137"></td>
											<td></td>
											<td width="137"></td>
											<td></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_693+ar.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">Password 
												&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3649;&#3621;&#3632; 
												Email 
												&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3614;&#3639;&#3656;&#3629;&#3619;&#3633;&#3610;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td height="20"><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="7" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Password</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24"><FONT face="Tahoma">
													<asp:textbox id="password" runat="server" CssClass="standard_font" Width="95%" TextMode="Password"
														MaxLength="12"></asp:textbox></FONT></td>
											<td width="10" height="24">
												<asp:RequiredFieldValidator id="PasswordRequiredFieldValidator" runat="server" Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Password"
													ControlToValidate="password">*</asp:RequiredFieldValidator>
												<asp:RegularExpressionValidator id="PasswordRegularExpressionValidator" runat="server" Font-Bold="True" ErrorMessage="&#3619;&#3632;&#3610;&#3640; Password &#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="password" ValidationExpression="\w{5,12}">*</asp:RegularExpressionValidator>
												<asp:CustomValidator id="duplicateCheck" runat="server" ClientValidationFunction="dupCheck" Font-Bold="True"
													ErrorMessage="password &#3649;&#3621;&#3632; email &#3609;&#3637;&#3657;&#3617;&#3637;&#3585;&#3634;&#3619;&#3651;&#3594;&#3657;&#3591;&#3634;&#3609;&#3649;&#3621;&#3657;&#3623;&#3588;&#3656;&#3632;">*</asp:CustomValidator></td>
											<td width="231" height="24" class="Font_sm_black">(&#3629;&#3633;&#3585;&#3625;&#3619; 
												A-Z, a-z &#3649;&#3621;&#3632;&#3605;&#3633;&#3623;&#3648;&#3621;&#3586; 0-9 
												&#3588;&#3623;&#3634;&#3617;&#3618;&#3634;&#3623;
												<br>
												5-12 &#3605;&#3633;&#3623;&#3629;&#3633;&#3585;&#3625;&#3619;)</td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="4" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Re Password</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24"><FONT face="Tahoma">
													<asp:textbox id="confirm" runat="server" CssClass="standard_font" Width="95%" TextMode="Password"
														MaxLength="12"></asp:textbox></FONT></td>
											<td width="10" height="24">
												<asp:CompareValidator id="CompareValidator1" runat="server" Font-Bold="True" ErrorMessage="&#3618;&#3639;&#3609;&#3618;&#3633;&#3609; Password &#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="confirm" ControlToCompare="password">*</asp:CompareValidator>
												<asp:RequiredFieldValidator id="ConfirmRequiredFieldValidator" runat="server" Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Confirm Password"
													ControlToValidate="confirm">*</asp:RequiredFieldValidator></td>
											<td width="231" height="24"></td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="4" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Email</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24">
												<asp:textbox id="email" tabIndex="3" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></td>
											<td width="10" height="24">
												<asp:requiredfieldvalidator id="EmailRequiredFieldValidator" runat="server" Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Email"
													ControlToValidate="email">*</asp:requiredfieldvalidator>
												<asp:regularexpressionvalidator id="EmailRegularExpressionValidator" runat="server" Font-Bold="True" ErrorMessage="&#3619;&#3632;&#3610;&#3640; Email &#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:regularexpressionvalidator></td>
											<td width="231" height="24"></td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="7" colspan="7"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><div align="center"><table border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td>
													<asp:button class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.doSearch.className='button'" runat="server"
														Text="&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;" name="doSearch"></asp:button></td>
												<td width="4"></td>
												<td></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="20"><FONT face="Tahoma"></FONT></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ShowSummary="False" icon="warning" modal="True" customtitle="Error on Form"
							customheader="Attention!" customheight="300" customwidth="225" customurl="../../Class/Msgbox.aspx"
							showcustompopup="True" ForeColor="DarkRed"></asp:validationsummary>
					</td>
					<td width="15" valign="top"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
		<script language="javascript">
			function setBrandIndex(frm,indexValue){
				var c = document.getElementById(frm);
				c.value = indexValue;
			}
			function checkBrands(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function checkModel(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function dupCheck(source, clientside_arguments){
			
				var res = autoonclick.request1_car.emailDuplication(document.getElementById("email").value,document.getElementById("password").value);
				if(res.value==true){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
		
		
			<%if session("brandIndex") <> "" then%>
				document.getElementById("brandIndex").value = '<%=session("brandIndex")%>';
			<%end if%>
			<%if session("modelIndex") <> "" then%>
				document.getElementById("modelIndex").value = '<%=session("modelIndex")%>';
			<%end if%>
			<%if session("proinceIndex") <> "" then%>
				document.getElementById("proinceIndex").value = '<%=session("proinceIndex")%>';
			<%end if%>
			<%if session("districtIndex") <> "" then%>
				document.getElementById("districtIndex").value = '<%=session("districtIndex")%>';
			<%end if%>
		</script>
		<model:model_list id="model_list" runat="server"></model:model_list>
		<province:province_list id="province_list" runat="server"></province:province_list>
					<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
