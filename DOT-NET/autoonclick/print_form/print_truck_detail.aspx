<%@ Page CodeBehind="print_truck_detail.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.print_truck_detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY {
	MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px
}
</style>
		<LINK href="../../../css/css.css" type="text/css" rel="stylesheet">
			<style type="text/css">.style3 {
	FONT-WEIGHT: bold; FONT-SIZE: xx-large
}
.style4 {
	FONT-WEIGHT: bold; FONT-SIZE: x-large
}
.style5 {
	FONT-SIZE: 12px
}
.style6 {
	FONT-SIZE: 11px; FONT-FAMILY: Arial, Helvetica, sans-serif
}
.style7 {
	FONT-WEIGHT: bold; FONT-SIZE: x-large; FONT-FAMILY: Arial, Helvetica, sans-serif
}
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
										<td class="style6" width="48%" height="20">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="cate" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" height="20">&#3619;&#3634;&#3588;&#3634;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="price" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="carStatus" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3611;&#3637;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="carYear" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="mi" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="engType" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="engPower" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3626;&#3637;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="color" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3614;&#3621;&#3634;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="praoNum" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3614;&#3621;&#3634;&#3586;&#3633;&#3610;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="praoDrive" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" height="20">&#3609;&#3657;&#3635;&#3627;&#3609;&#3633;&#3585;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="truckLoad" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" height="20">&#3609;&#3657;&#3635;&#3627;&#3609;&#3633;&#3585;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="truckWg" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="gearsSys" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="gearsNum" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="pisNum" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">&nbsp;<asp:label id="CC" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3611;&#3619;&#3632;&#3605;&#3641;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">&nbsp;<asp:label id="doors" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3609;&#3633;&#3656;&#3591;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="seats" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3629;&#3633;&#3605;&#3619;&#3634;&#3626;&#3636;&#3657;&#3609;&#3648;&#3611;&#3621;&#3639;&#3629;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="consume" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3588;&#3623;&#3634;&#3617;&#3592;&#3640;&#3606;&#3633;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="tank" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="lastCheck" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="accident" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td width="48%" height="20"><span class="style6">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</span></td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="insur" runat="server"></asp:label></td>
									</tr>
									<tr>
										<td class="style6" width="48%" height="20">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</td>
										<td height="20">&nbsp;</td>
										<td class="style6" width="48%" bgColor="#ffffff" height="20"><IMG height="10" src="../images/objects/no.gif" width="5">
											<asp:label id="carNo" runat="server"></asp:label></td>
									</tr>
								</table>
							</td>
							<td vAlign="top" align="right" width="350">
								<table height="217" cellSpacing="0" cellPadding="0" width="285" align="left" border="1">
									<tr>
										<td bgColor="#ffffff">
											<div align="center"><asp:label id="image1" CssClass="Font_black_LH_17px" runat="server"></asp:label></div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colSpan="2">&nbsp;</td>
						</tr>
						<tr class="standard_font">
							<td class="style6" colSpan="2" height="20"><strong>&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;:</strong>
								<asp:label id="Accessory" runat="server"></asp:label></td>
						</tr>
						<tr class="standard_font">
							<td class="style6" colSpan="2" height="20"><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;:
								</strong>
								<asp:label id="moreInfo" runat="server"></asp:label></td>
						</tr>
						<tr class="standard_font">
							<td class="style7" colSpan="2" height="60"><asp:label id="price2" runat="server"></asp:label></td>
						</tr>
						<tr class="standard_font">
							<td colSpan="2" height="20">&nbsp;</td>
						</tr>
					</table>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
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
								<p class="style6"><asp:label id="compName" runat="server"></asp:label><br>
									<asp:label id="addr" runat="server"></asp:label><br>
									<asp:label id="telNo" runat="server"></asp:label><br>
									<asp:label id="em" runat="server"></asp:label><FONT face="Tahoma">&nbsp;</FONT><asp:hyperlink id="homep" runat="server"></asp:hyperlink></p>
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
