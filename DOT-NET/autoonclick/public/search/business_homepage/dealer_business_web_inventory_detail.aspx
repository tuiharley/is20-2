<%@ Page CodeBehind="dealer_business_web_inventory_detail.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.dealer_business_web_inventory_detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY { MARGIN: 20px 10px 15px }
	</style>
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">
			A:active { TEXT-DECORATION: none }
			A:link { TEXT-DECORATION: none }
			A:visited { TEXT-DECORATION: none }
			A:hover { TEXT-DECORATION: none }
			</style>
	</HEAD>
	<body>
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="693" align="center" border="0">
				<tr>
					<td>
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="119"><a href="../../startpage/startpage.aspx"><IMG  border="0" height=38 src="../../../images/main_table/ao_logo_business.jpg" width=119 ></a></td>
								<td width="50"></td>
								<td class="Font_sm_blue_LH_14px" vAlign="bottom" width="524">
									<div align="right"><asp:label id="emaill" runat="server"></asp:label><asp:hyperlink id="www" runat="server" Font-Underline="True" ForeColor="#0000C0"></asp:hyperlink></div>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="5"><FONT face="Tahoma"></FONT></td>
				</tr>
				<tr>
					<td class="H2_white" background="../../../images/header/m_h_dh.gif" height="30"><asp:label id="compName" runat="server" CssClass="H2_white" Font-Underline="True"></asp:label></td>
				</tr>
				<tr>
					<td><IMG height="1" src="../../../images/lines/w_dh_h.gif" width="693"></td>
				</tr>
				<tr>
					<td>
						<table cellSpacing="0" cellPadding="0" width="693" align="center" background="../../../images/table/dh_h.gif"
							border="0">
							<tr>
								<td colSpan="2" height="4"></td>
							</tr>
							<tr>
								<td vAlign="top" width="521">
									<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="521" border="0">
										<tr>
											<td vAlign="top" width="5"></td>
											<td vAlign="top" width="66">
												<div align="right"><strong>&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3627;&#3621;&#3633;&#3585;:</strong></div>
											</td>
											<td width="11"></td>
											<td class="Font_blue" width="433"><asp:label id="introMainBuz" runat="server"></asp:label></td>
											<td width="6"></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="11" src="../../../images/dividers/dh_h.gif" width="521"></td>
										</tr>
										<tr>
											<td vAlign="top" width="5"></td>
											<td vAlign="top" width="66">
												<div align="right"><strong>&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong></div>
											</td>
											<td width="11"></td>
											<td width="433"><asp:label id="moreBuz" runat="server"></asp:label></td>
											<td width="6"></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="11" src="../../../images/dividers/dh_h.gif" width="521"></td>
										</tr>
										<tr>
											<td vAlign="top" width="5"></td>
											<td vAlign="top" width="66">
												<div align="right"><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;:</strong></div>
											</td>
											<td width="11"></td>
											<td width="433"><asp:label id="contact" runat="server"></asp:label></td>
											<td width="6"></td>
										</tr>
									</table>
								</td>
								<td width="172">
									<div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
								</td>
							</tr>
							<tr>
								<td colSpan="2" height="4"></td>
							</tr>
						</table>
					</td>
				</tr>
				<!--End head-->
				<tr>
					<td height="1"><img src="../../../images/lines/w_dh_h.gif" width="693" height="1"></td>
				</tr>
				<tr>
					<td><table width="693" border="0" align="center" cellpadding="0" cellspacing="0" class="H1_white">
							<tr>
								<td width="5" height="21"><img src="../../../images/header/h_b_L5.gif" width="5" height="21"></td>
								<td height="21" background="../../../images/header/h_b_1.gif"><div align="center"><asp:Label id="stpage" runat="server"></asp:Label>&#3627;&#3609;&#3657;&#3634;&#3649;&#3619;&#3585;</A></div>
								</td>
								<td width="11" height="21"><img src="../../../images/header/h_b_SP11.gif" width="11" height="21"></td>
								<td height="21" background="../../../images/header/h_b_1.gif"><div align="center"><a href="dealer_business_web_inventory.aspx" class="A_BU_bold_orange">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</a></div>
								</td>
								<td width="11" height="21"><img src="../../../images/header/h_b_SP11.gif" width="11" height="21"></td>
								<td height="21" background="../../../images/header/h_b_1.gif"><div align="center"><a href="#" class="A_BU_bold_white">&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;</a></div>
								</td>
								<td width="11" height="21"><img src="../../../images/header/h_b_SP11.gif" width="11" height="21"></td>
								<td height="21" background="../../../images/header/h_b_1.gif"><div align="center"><a href="#" class="A_BU_bold_white">&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</a></div>
								</td>
								<td width="11" height="21"><img src="../../../images/header/h_b_SP11.gif" width="11" height="21"></td>
								<td height="21" background="../../../images/header/h_b_1.gif"><div align="center"><a href="dealer_business_web_contact.aspx" class="A_BU_bold_white">&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;&#3648;&#3619;&#3634;</a></div>
								</td>
								<td width="11" height="21"><img src="../../../images/header/h_b_SP11.gif" width="11" height="21"></td>
								<td height="21" background="../../../images/header/h_b_1.gif"><div align="center"><asp:HyperLink class="A_BU_bold_white" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;</asp:HyperLink></div>
								</td>
								<td width="5" height="21"><img src="../../../images/header/h_b_R5.gif" width="5" height="21"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="25"></td>
				</tr>
				<tr>
					<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
							<tr>
								<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
								<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="dealer_business_web_inventory.aspx" class="A_black_NOunderline">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;</a></td>
								<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
								<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="../blank_menu.aspx" target="_blank" class="A_black_NOunderline">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a></td>
								<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><asp:label id="upPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_o_693+ar.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="526">
												<asp:label id="carBrand" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label></td>
											<td width="10"></td>
											<td width="127">
												<div align="right">&#3647;&nbsp;
													<asp:label id="head_price" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label>
												</div>
												<DIV></DIV>
											</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="30" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="5" colspan="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="82"><img src="../../../images/objects/park.gif" width="15" height="10"><asp:label id="savePak" runat="server"></asp:label></td>
											<td width="21" background="../../../images/separator/g_21.gif"></td>
											<td width="66"><img src="../../../images/objects/mailto.gif" width="15" height="10"><a href="#" class="A_black_underline">&#3626;&#3656;&#3591;&#3651;&#3627;&#3657;&#3648;&#3614;&#3639;&#3656;&#3629;&#3609;</a></td>
											<td width="21" background="../../../images/separator/g_21.gif"></td>
											<td width="66"><img src="../../../images/objects/print.gif" width="15" height="10"><asp:HyperLink id="printThis" runat="server" class="A_black_underline"></asp:HyperLink></td>
											<td width="21" background="../../../images/separator/g_21.gif"></td>
											<td width="85"><img src="../../../images/objects/complaint.gif" width="15" height="10"><a href="#" class="A_black_underline">&#3649;&#3592;&#3657;&#3591;&#3621;&#3610;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a></td>
											<td width="321" height="20"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/dtl_693.gif" width="693" height="2"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td width="693"><table width="693" border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td width="339" valign="top"><table width="339" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td width="339"><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/dtl_vehicle.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3619;&#3634;&#3588;&#3634;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3611;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="enginetype" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="power" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3626;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="gear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="numgear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="numpump" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="cc" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3611;&#3619;&#3632;&#3605;&#3641;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="numdoor" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3609;&#3633;&#3656;&#3591;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="numseat" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3629;&#3633;&#3605;&#3619;&#3634;&#3626;&#3636;&#3657;&#3609;&#3648;&#3611;&#3621;&#3639;&#3629;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="fuelconsume" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3588;&#3623;&#3634;&#3617;&#3592;&#3640;&#3606;&#3633;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="fueltank" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="lastcheck" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="carid" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_339.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329">
																		<asp:label id="accessory" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_339.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329">
																		<asp:label id="description" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
												</table>
											</td>
											<td width="15"></td>
											<td width="339" valign="top"><table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td class="dtl_pic" width="339" height="327">
															<div align="center"><asp:label id="image11" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table height="45" cellSpacing="0" cellPadding="0" border="0">
																<tr>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image2" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image3" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image4" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image5" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/dtl_con.gif"
																border="0">
																<tr>
																	<td width="339" height="3"></td>
																</tr>
																<tr>
																	<td>
																		<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/dtl_con.gif"
																			border="0">
																			<tr>
																				<td colSpan="5" height="3"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td vAlign="top" width="77">
																					<div align="right">&#3594;&#3639;&#3656;&#3629;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;/&#3585;&#3636;&#3592;&#3585;&#3634;&#3619;</div>
																				</td>
																				<td width="11"></td>
																				<td width="241"><FONT face="Tahoma"><asp:label id="custName" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td vAlign="top" width="77">
																					<div align="right">&#3607;&#3637;&#3656;&#3629;&#3618;&#3641;&#3656;</div>
																				</td>
																				<td width="11"></td>
																				<td width="241"><asp:label id="Addr" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td vAlign="top" width="77">
																					<div align="right">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</div>
																				</td>
																				<td width="11"></td>
																				<td width="241"><asp:label id="Tel" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td vAlign="top" width="77">
																					<div align="right">Fax</div>
																				</td>
																				<td width="11"></td>
																				<td width="241"><asp:label id="fax" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td vAlign="top" width="77">
																					<div align="right">&#3623;&#3633;&#3609;-&#3648;&#3623;&#3621;&#3634;&#3607;&#3635;&#3585;&#3634;&#3619;</div>
																				</td>
																				<td width="11"></td>
																				<td width="241"><asp:label id="operateTime" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																			</tr>
																			<tr>
																				<td colSpan="5" height="3"></td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG src="../../../images/lines/dtl.gif"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="23"><img src="../../../images/lines/l_g_693.gif" width="693" height="3"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_o_693+ar.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;&#3626;&#3629;&#3610;&#3606;&#3634;&#3617;</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="10" colspan="9"></td>
										</tr>
										<tr>
											<td width="5" rowspan="5"></td>
											<td width="41"><div align="right">&#3594;&#3639;&#3656;&#3629;</div>
											</td>
											<td width="10"></td>
											<td width="256">
												<asp:textbox id="name" tabIndex="1" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></td>
											<td width="15"></td>
											<td width="94">&#3588;&#3635;&#3606;&#3634;&#3617;/&#3586;&#3657;&#3629;&#3648;&#3626;&#3609;&#3629;&#3649;&#3609;&#3632;</td>
											<td width="10"></td>
											<td width="256" rowspan="3">
												<asp:textbox id="question" tabIndex="7" runat="server" CssClass="Font_black" Width="95%" MaxLength="1000"
													TextMode="MultiLine" Rows="5"></asp:textbox></td>
											<td width="5" rowspan="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="6"></td>
										</tr>
										<tr>
											<td><div align="right">Email</div>
											</td>
											<td></td>
											<td width="256">
												<asp:textbox id="email" tabIndex="3" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></td>
											<td>
												<asp:requiredfieldvalidator id="EmailRequiredFieldValidator" runat="server" ControlToValidate="email" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Email"
													Font-Bold="True">*</asp:requiredfieldvalidator>
												<asp:regularexpressionvalidator id="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="&#3619;&#3632;&#3610;&#3640; Email &#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													Font-Bold="True" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:regularexpressionvalidator></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td><div align="right">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</div>
											</td>
											<td></td>
											<td width="256">
												<asp:textbox id="phone1" tabIndex="4" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></td>
											<td></td>
											<td></td>
											<td></td>
											<td width="256"><div align="center"><INPUT class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
														style="CURSOR: hand" onclick="check_form(document.form1.name.value,document.form1.email.value,document.form1.phone1.value,document.form1.question.value);"
														onmouseout="document.all.doSearch.className='button'" type="button" value="&#3626;&#3656;&#3591; Email" name="doSearch">
												</div>
											</td>
										</tr>
										<tr>
											<td height="10" colspan="9"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><asp:label id="downPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
							<tr>
								<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
								<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="dealer_business_web_inventory.aspx" class="A_black_NOunderline">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;</a></td>
								<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
								<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="../blank_menu.aspx" class="A_black_NOunderline">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</a></td>
								<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
				<tr>
					<td><table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td><img src="../../../images/lines/l_g_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"><FONT face="Tahoma"></FONT></td>
							</tr>
							<tr>
								<td class="Font_sm_blue"><div align="center">| <a href="../../startpage/startpage.aspx" target="_blank" class="A_blue_underline">
											Powered by AUTO-ONCLICK</a> |</div>
								</td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ForeColor="DarkRed" showcustompopup="True" customurl="../../../Class/Msgbox.aspx"
							customwidth="225" customheight="250" customheader="Attention!" customtitle="Error on Form" modal="True"
							icon="warning" ShowSummary="False"></asp:validationsummary>
					</td>
				</tr>
			</table>
		</form>
		<script src="../../../j_script/cookie.js" type="text/javascript"></script>
		<script language="javascript" src='../../../j_script/checkEmail.js'></script>
		<script language="javascript">
		function changeMainPic(picNo,picUrl){
			autoonclick.dealer_business_web_inventory_detail.showMainPic(picNo,picUrl,UrlBack);
		}
		function UrlBack(res){
			var img1 = document.getElementById("image11");
			//alert(res.value);
			img1.innerHTML = res.value;
		}
		function check_form(name,eml,phone1,question){ // f is the form (passed using the <I>this</I> keyword)
				// check the first email address ( the exclamation means "not" )
				
				if(!check_email(eml)){
					alert("Email äÁè¶Ù¡µéÍ§");
					document.form1.email.focus(); 
					// if the browser is Netscape 6 or IE
					if(document.all || document.getElementByID){
						// change the color of text field
						document.all.email.style.background = "#ffff99";
						//alert(document.all.email.style.background);
					}
					// make sure the form is not submitted
					return false;
				}else{
					//document.form1.doSearch.enable=false;
					sendMail(name,eml,phone1,question);
					//document.form1.doSearch.enable=true;
				}
	
			}
		function sendMail(name,email,phone1,question){
			autoonclick.dealer_business_web_inventory_detail.sendQuestion(name,email,phone1,question,mailBack);
		}
		function mailBack(res){
			var x 
			alert(res.value);
			
		}
		
		
		function addCar(carid) {
			var x = getCookie('saveCar');
			setCookie('saveCar', x+'car:'+carid+':,', getExpDate(60, 0, 0),'/');
		}
		function incSaveNum() {
			var x = getCookie('saveCarNum');
			if(x==''){
				setCookie('saveCarNum', 1, getExpDate(60, 0, 0),'/');
			}else{
				if(x==20){
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡»ÃÐ¡ÒÈà¡Ô¹ 20 »ÃÐ¡ÒÈä´é¤èÐ');
				}else{
					setCookie('saveCarNum', ++x, getExpDate(60, 0, 0),'/');
				}
			}
		}
		function noDup(carid) {
			var oStringObject = new String(getCookie('saveCar'));
			if(oStringObject.indexOf('car:'+carid+':')!=-1){
				alert('¤Ø³ä´é·Ó¡ÒÃºÑ¹·Ö¡»ÃÐ¡ÒÈäÇéáÅéÇ');
				return false;
			}else{
				return true;
			}
					
		}
		function getCarNum(){
			var x = getCookie('saveCarNum');
			var ans;
				if(x==''){
					ans = 0;
				}else{
					ans = x;
				}
			return ans;
		}
		function saveAdv(carid){
			if(noDup(carid)){
				if(getCarNum()<20){
					addCar(carid);
					incSaveNum();
					alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
				}else{
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡ä´éà¡Ô¹ 20 »ÃÐ¡ÒÈ');
				}
			}
		}
		</script>
	</body>
</HTML>
