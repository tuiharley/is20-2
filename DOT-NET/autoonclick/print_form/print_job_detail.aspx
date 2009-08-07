<%@ Page CodeBehind="print_job_detail.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.print_job_detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY { MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px }
	</style>
		<LINK href="../../../css/css.css" type="text/css" rel="stylesheet">
			<style type="text/css">.style3 { FONT-WEIGHT: bold; FONT-SIZE: xx-large }
	.style4 { FONT-WEIGHT: bold; FONT-SIZE: x-large; FONT-FAMILY: Arial, Helvetica, sans-serif }
	.style5 { FONT-SIZE: 12px }
	.style6 { FONT-SIZE: 11px; FONT-FAMILY: Arial, Helvetica, sans-serif }
	</style>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="650" border="0">
			<tr>
				<td height="30">&nbsp;</td>
			</tr>
			<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" width="600" align="center" border="0">
						<tr>
							<td colSpan="2">
								<div align="right"><IMG height="38" src="../images/main_table/ao_logo_business.jpg" width="119"></div>
							</td>
						</tr>
						<tr>
							<td colspan='2'>
								<table>
									<tr>
										<td class="style6" valign="top" width="10%" height="20"><strong>&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3627;&#3621;&#3633;&#3585;:</strong></td>
										<td class="style6" valign="top" width="90%" height="20"><asp:label id="introMainBuz" runat="server"></asp:label></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan='2'>
								<table>
									<tr>
										<td class="style6" valign="top" width="10%" height="20"><strong>&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong></td>
										<td class="style6" valign="top" width="90%" height="20"><asp:label id="moreBuz" runat="server"></asp:label></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><IMG height="1" src="../images/objects/no.gif" width="1"></td>
							<td><IMG height="1" src="../images/objects/no.gif" width="1"></td>
						</tr>
						<tr>
							<td width="350">
								<table class="standard_font" cellSpacing="0" cellPadding="0" width="284" border="0">
									<tr>
										<td width="48%"><IMG height="1" src="../images/objects/no.gif" width="1"></td>
										<td width="4%"><IMG height="1" src="../images/objects/no.gif" width="1"></td>
										<td width="48%" bgColor="#ffffff"><IMG height="1" src="../images/objects/no.gif" width="1"></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20">
											<asp:label id="JPos" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" height="20">&#3623;&#3640;&#3602;&#3636;&#3585;&#3634;&#3619;&#3624;&#3638;&#3585;&#3625;&#3634;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JEdu" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3626;&#3634;&#3586;&#3634;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JBranch" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3629;&#3633;&#3605;&#3619;&#3634;&#3588;&#3656;&#3634;&#3592;&#3657;&#3634;&#3591;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3619;&#3633;&#3610;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JNum" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JPhone" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3626;&#3606;&#3634;&#3634;&#3609;&#3607;&#3637;&#3656;&#3607;&#3635;&#3591;&#3634;&#3609;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JPlace" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3648;&#3586;&#3605;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JDistrict" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><asp:label id="JProvince" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
									</tr>
								</table>
							</td>
							<td vAlign="top" align="right" width="350">
								<table height="120" cellSpacing="0" cellPadding="0" width="120" align="left" border="0">
									<tr>
										<td bgColor="#ffffff">
											<div align="center"><span class="standard_font"></span></div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colSpan="2">&nbsp;</td>
						</tr>
						<tr class="standard_font">
							<td class="style6" colSpan="2" height="20"><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;:
								</strong>
								<asp:label id="JInfo" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
						</tr>
						<tr class="standard_font">
							<td colSpan="2" height="20">&nbsp;</td>
						</tr>
					</table>
					<p>&nbsp;</p>
					<p><FONT face="Tahoma"></FONT>&nbsp;</p>
					<p><FONT face="Tahoma"></FONT>&nbsp;</p>
					<p><FONT face="Tahoma"></FONT>&nbsp;</p>
					<p>&nbsp;</p>
				</td>
			</tr>
			<tr>
				<td>
					<table cellSpacing="0" cellPadding="0" width="600" align="center" border="0">
						<tr class="standard_font">
							<td width="700" height="20"><IMG height="1" src="../images/objects/000000.gif" width="100%"></td>
						</tr>
						<tr class="standard_font">
							<td height="20">
								<p class="style6">
									<asp:label id="compName" runat="server"></asp:label><br>
									<asp:label id="addr" runat="server"></asp:label><br>
									<asp:label id="telNo" runat="server"></asp:label>
									<br>
									<asp:label id="em" runat="server"></asp:label>&nbsp;
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
