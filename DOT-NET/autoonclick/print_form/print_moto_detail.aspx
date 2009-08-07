<%@ Page CodeBehind="print_moto_detail.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.print_moto_detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">
BODY { MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px }
</style>
		<link href="../../../css/css.css" rel="stylesheet" type="text/css">
			<style type="text/css">
.style3 { FONT-WEIGHT: bold; FONT-SIZE: xx-large }
.style4 { FONT-WEIGHT: bold; FONT-SIZE: x-large }
.style5 { FONT-SIZE: 12px }
.style6 { FONT-SIZE: 11px; FONT-FAMILY: Arial, Helvetica, sans-serif }
.style7 { FONT-WEIGHT: bold; FONT-SIZE: x-large; FONT-FAMILY: Arial, Helvetica, sans-serif }
</style>
	</HEAD>
	<body>
		<table width="650" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="30">&nbsp;</td>
			</tr>
			<tr>
				<td><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td colspan="2"><div align="right"><img src="../images/main_table/ao_logo_business.jpg" width="119" height="38"></div>
							</td>
						</tr>
						<tr>
							<td class="style3" colSpan="2">
								<table width="100%">
									<tr>
										<td width="50%"><asp:label id="carBrand" runat="server"></asp:label></td>
										<td width="50%"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><img src="../images/objects/no.gif" width="1" height="1"></td>
							<td><img src="../images/objects/no.gif" width="1" height="1"></td>
						</tr>
						<tr>
							<td width="350"><table width="284" border="0" cellpadding="0" cellspacing="0" class="standard_font">
									<tr>
										<td width="48%"><img src="../images/objects/no.gif" width="1" height="1"></td>
										<td width="4%"><img src="../images/objects/no.gif" width="1" height="1"></td>
										<td width="48%" bgcolor="#ffffff"><img src="../images/objects/no.gif" width="1" height="1"></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="cate" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td height="20" class="style6">&#3619;&#3634;&#3588;&#3634;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="price" runat="server"></asp:label>
										</td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="carStatus" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3611;&#3637;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="carYear" runat="server"></asp:label>
										</td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="mi" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="engType" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="engPower" runat="server"></asp:label>
										</td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3626;&#3637;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="color" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td height="20" class="style6">&#3586;&#3633;&#3610;&#3648;&#3588;&#3621;&#3639;&#3656;&#3629;&#3609;</td>
										<td height="20">&nbsp;</td>
										<td height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="driveSys" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="gearsSys" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="gearsNum" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="pisNum" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="CC" runat="server"></asp:label>
										</td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="lastCheck" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="accident" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20"><span class="style6">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</span></td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="insur" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20" class="style6">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td width="48%" height="20" bgcolor="#ffffff" class="style6"><img src="../images/objects/no.gif" width="5" height="10">
											<asp:label id="carNo" runat="server"></asp:label></td>
									</tr>
								</table>
							</td>
							<td width="350" align="right" valign="top"><table width="285" height="217" border="1" align="left" cellpadding="0" cellspacing="0">
									<tr>
										<td bgcolor="#ffffff"><div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr class="standard_font">
							<td height="20" colspan="2" class="style6"><strong>&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong>
								<asp:label id="Accessory" runat="server"></asp:label></td>
						</tr>
						<tr class="standard_font">
							<td height="20" colspan="2" class="style6"><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;:
								</strong>
								<asp:label id="moreInfo" runat="server"></asp:label></td>
						</tr>
						<tr class="standard_font">
							<td height="60" colspan="2" class="style7">
								<asp:label id="price2" runat="server"></asp:label>
							</td>
						</tr>
						<tr class="standard_font">
							<td height="20" colspan="2">&nbsp;</td>
						</tr>
					</table>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
				</td>
			</tr>
			<tr>
				<td><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr class="standard_font">
							<td width="700" height="20"><img src="../images/objects/000000.gif" width="100%" height="1"></td>
						</tr>
						<tr class="standard_font">
							<td height="20"><p class="style6">
									<asp:label id="compName" runat="server"></asp:label>
									<br>
									<asp:label id="addr" runat="server"></asp:label>
									<br>
									<asp:label id="telNo" runat="server"></asp:label>
									<br>
									<asp:label id="em" runat="server"></asp:label><FONT face="Tahoma">&nbsp;</FONT>
									<asp:hyperlink id="homep" runat="server"></asp:hyperlink></p>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
	</body>
</HTML>
