<%@ Page CodeBehind="dealer_business_web_start.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.dealer_business_web_start" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY { MARGIN: 20px 10px 15px }
	</style>
		<LINK href="../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">A:link { COLOR: #ffffff; TEXT-DECORATION: none }
	A:visited { COLOR: #ffffff; TEXT-DECORATION: none }
	A:hover { COLOR: #ff9900; TEXT-DECORATION: none }
	A:active { COLOR: #ffffff; TEXT-DECORATION: none }
	</style>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="693" align="center" border="0">
			<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" width="693" border="0">
						<tr>
							<td width="119"><IMG height="38" src="../images/main_table/ao_logo_business.jpg" width="119"></td>
							<td width="50"></td>
							<td class="Font_sm_blue_LH_14px" vAlign="bottom" width="524">
								<div align="right"><asp:label id="email" runat="server"></asp:label><asp:hyperlink id="www" runat="server" ForeColor="#0000C0" Font-Underline="True"></asp:hyperlink></div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="5"><FONT face="Tahoma"></FONT></td>
			</tr>
			<tr>
				<td class="H2_white" background="../images/header/m_h_dh.gif" height="30"><asp:label id="compName" runat="server" Font-Underline="True" CssClass="H2_white"></asp:label></td>
			</tr>
			<tr>
				<td><IMG height="1" src="../images/lines/w_dh_h.gif" width="693"></td>
			</tr>
			<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" width="693" align="center" background="../images/table/dh_h.gif"
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
										<td colSpan="5"><IMG height="11" src="../images/dividers/dh_h.gif" width="521"></td>
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
										<td colSpan="5"><IMG height="11" src="../images/dividers/dh_h.gif" width="521"></td>
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
				<td height="1"><IMG height="1" src="../images/lines/w_dh_h.gif" width="693"></td>
			</tr>
			<tr>
				<td>
					<table class="H1_white" cellSpacing="0" cellPadding="0" width="693" align="center" border="0">
						<tr>
							<td width="5" height="21"><IMG height="21" src="../images/header/h_b_L5.gif" width="5"></td>
							<td background="../images/header/h_b_1.gif" height="21">
								<div align="center"><A class="A_BU_bold_orange" href="dealer_business_web_start.aspx">&#3627;&#3609;&#3657;&#3634;&#3649;&#3619;&#3585;</A></div>
							</td>
							<td width="11" height="21"><IMG height="21" src="../images/header/h_b_SP11.gif" width="11"></td>
							<td background="../images/header/h_b_1.gif" height="21">
								<div align="center"><A class="A_BU_bold_white" href="dealer_business_web_inventory.aspx">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</A></div>
							</td>
							<td width="11" height="21"><IMG height="21" src="../images/header/h_b_SP11.gif" width="11"></td>
							<td background="../images/header/h_b_1.gif" height="21">
								<div align="center"><A class="A_BU_bold_white" href="#">&#3650;&#3590;&#3625;&#3603;&#3634;&#3614;&#3636;&#3648;&#3624;&#3625;</A></div>
							</td>
							<td width="11" height="21"><IMG height="21" src="../images/header/h_b_SP11.gif" width="11"></td>
							<td background="../images/header/h_b_1.gif" height="21">
								<div align="center"><A class="A_BU_bold_white" href="#">&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</A></div>
							</td>
							<td width="11" height="21"><IMG height="21" src="../images/header/h_b_SP11.gif" width="11"></td>
							<td background="../images/header/h_b_1.gif" height="21">
								<div align="center"><A class="A_BU_bold_white" href="dealer_business_web_contact.aspx">&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;&#3648;&#3619;&#3634;</A></div>
							</td>
							<td width="11" height="21"><IMG height="21" src="../images/header/h_b_SP11.gif" width="11"></td>
							<td background="../images/header/h_b_1.gif" height="21">
								<div align="center"><asp:hyperlink class="A_BU_bold_white" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;</asp:hyperlink></div>
							</td>
							<td width="5" height="21"><IMG height="21" src="../images/header/h_b_R5.gif" width="5"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="25"></td>
			</tr>
			<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" width="693" border="0">
						<tr>
							<td class="H1_white" width="235" background="../images/header/h_o_1.gif" height="21">
								<div align="center"><span class="Padding_RL_5px">"&#3648;&#3619;&#3634;&#3588;&#3639;&#3629;&#3651;&#3588;&#3619;&#3649;&#3621;&#3632;&#3648;&#3619;&#3634;&#3607;&#3635;&#3629;&#3632;&#3652;&#3619;"</span></div>
							</td>
							<td width="458" height="21"></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="1"><IMG height="1" src="../images/lines/w.gif" width="693"></td>
			</tr>
			<asp:label id="MainBuzDetail" runat="server"></asp:label><asp:label id="SubBuzDetail" runat="server"></asp:label>
			<tr>
				<td><IMG height="5" src="../images/lines/l_b_693.gif" width="693"></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
			<!--<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr>
							<td><IMG height="5" src="../images/lines/l_g_693.gif" width="693"></td>
						</tr>
						<tr>
							<td height="5"></td>
						</tr>
						<tr>
							<td class="Font_sm_blue">
								<div align="center">| <A class="A_blue_underline" href="../../startpage/startpage.htm" target="_blank">
										Powered by AUTO-ONCLICK</A> |</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>--></table>
	</body>
</HTML>
