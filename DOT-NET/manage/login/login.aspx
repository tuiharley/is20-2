<%@ Page CodeBehind="login.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>auto-onclick</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<script language="JavaScript" type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
		</script>
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
			<style type="text/css">.style2 { FONT-SIZE: small; FONT-FAMILY: Arial, Helvetica, sans-serif }
	.Stil1 { FONT-WEIGHT: bold; COLOR: #ffffff }
	</style>
	</HEAD>
	<body onload="MM_preloadImages('../pics/template_pics/hori_navi_pics/gif/admin01.gif','../pics/template_pics/hori_navi_pics/gif/search01.gif','../pics/template_pics/hori_navi_pics/gif/specialoffer01.gif','../pics/template_pics/hori_navi_pics/gif/dealer01.gif','../pics/template_pics/hori_navi_pics/gif/company01.gif','../pics/template_pics/hori_navi_pics/gif/logout01.gif')">
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
								<td width="165" height="22"></td>
								<td width="615">&nbsp;</td>
							</tr>
							<tr>
								<td vAlign="top" background="../pics/template_pics/verti_navi_pics/gif/bg_verti_navi.gif"
									height="471">&nbsp;
								</td>
								<td vAlign="top">
									<table cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td>&nbsp;</td>
										</tr>
										<tr>
											<td>
												<table class="standard_font" cellSpacing="0" cellPadding="0" width="297" border="0">
													<tr>
														<td width="15" height="20"><IMG height="20" src="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_dividing_left_blue_15x20.gif"
																width="15"></td>
														<td width="267" background="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_bg_blue_5x20.gif"
															height="20"><span class="Stil1">&#3621;&#3655;&#3629;&#3585;&#3629;&#3636;&#3609;&#3648;&#3586;&#3657;&#3634;&#3626;&#3641;&#3656;&#3619;&#3632;&#3610;&#3610;(Login) 
</span></td>
														<td width="15" height="20"><IMG height="20" src="../pics/template_pics/table_headings+corners+bg/main_heading+bg/main_headline_dividing_right_blue_15x20.gif"
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
														<td class="font11Linebig" bgColor="#fafafa">&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; 
															Username&#3649;&#3621;&#3632;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;(Password)</td>
														<td class="Rborder" bgColor="#fafafa">&nbsp;</td>
													</tr>
													<tr>
														<td class="Lborder" bgColor="#fafafa"><IMG height="20" src="../pics/objects/no.gif" width="1"></td>
														<td bgColor="#fafafa"><IMG height="1" src="../pics/objects/cccccc.gif" width="100%"></td>
														<td class="Rborder" bgColor="#fafafa"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
													</tr>
													<tr>
														<td class="Lborder" bgColor="#fafafa">&nbsp;</td>
														<td bgColor="#fafafa">
															<table class="standard_font" cellSpacing="0" cellPadding="0" width="267" border="0">
																<tr>
																	<td noWrap width="58" height="30">Username</td>
																	<td width="10" height="30"><IMG height="1" src="../pics/objects/no.gif" width="10"></td>
																	<td width="199" height="30"><span class="app_fcap">&nbsp; <asp:textbox id="User_name" runat="server" Width="168px"></asp:textbox>
<asp:RequiredFieldValidator id="RequiredUsername" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; Username"
																				ControlToValidate="User_name"
																				EnableClientScript="False">*</asp:RequiredFieldValidator> 
                            </span></td>
																</tr>
																<tr>
																	<td noWrap height="30">Password</td>
																	<td height="30">&nbsp;</td>
																	<td width="199" height="30"><span class="app_fcap">&nbsp; <asp:textbox id="Pass" runat="server" Width="168px" TextMode="Password"></asp:textbox>
<asp:RequiredFieldValidator id="RequiredPassword" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; Password"
																				ControlToValidate="Pass" EnableClientScript="False">*</asp:RequiredFieldValidator></span></td>
																</tr>
																<tr>
																	<td><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
																	<td><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
																	<td width="199"><IMG height="10" src="../pics/objects/no.gif" width="1"></td>
																</tr>
																<tr>
																	<td>&nbsp;</td>
																	<td>&nbsp;</td>
																	<td width="199">&nbsp;
																		<asp:ImageButton id="submit" runat="server" ImageUrl="../pics/template_pics/function_buttons/submit_button_grey_60x20.gif"></asp:ImageButton></td>
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
												<asp:Label id="Err_login" runat="server" Width="286px" ForeColor="Red"></asp:Label>
											</td>
										</tr>
										<tr>
											<td><IMG height="25" src="../pics/objects/no.gif" width="1">
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
