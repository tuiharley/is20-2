<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky2.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@ Page CodeBehind="Dealer_change_password.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.Dealer_change_password" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } </style>
			<STYLE type="text/css">#topbar { BORDER-RIGHT: white 0px solid; PADDING-RIGHT: 0px; BORDER-TOP: white 0px solid; PADDING-LEFT: 0px; Z-INDEX: 100; VISIBILITY: hidden; PADDING-BOTTOM: 0px; WIDTH: 200px; PADDING-TOP: 0px; POSITION: absolute; HEIGHT: 350px }
	</STYLE>
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
	</HEAD>
	<body onLoad="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="693" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;(Password)</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_693.gif"
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
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="7" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">
													Password &#3648;&#3604;&#3636;&#3617;
												</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24">
												<asp:TextBox id="Pass" runat="server" TextMode="Password" MaxLength="12"></asp:TextBox></td>
											<td width="10" height="24">
												<asp:RequiredFieldValidator id="oldPassRequire" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Password &#3648;&#3604;&#3636;&#3617;"
													ControlToValidate="Pass" Font-Bold="True">*</asp:RequiredFieldValidator>
												<asp:RegularExpressionValidator id="OldPassValidate" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640; Password &#3648;&#3604;&#3636;&#3617;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="Pass" Font-Bold="True" ValidationExpression="\w{5,12}">*</asp:RegularExpressionValidator></td>
											<td width="231" height="24"></td>
											<td width="5" height="24"></td>
										</tr>
										<tr>
											<td height="4" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" height="24"></td>
											<td width="232" height="24"><div align="right" class="Font_orange">Password 
													&#3651;&#3627;&#3617;&#3656;
												</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24">
												<asp:textbox id="password" runat="server" TextMode="Password" CssClass="standard_font" MaxLength="12"></asp:textbox></td>
											<td width="10" height="24">
												<asp:RequiredFieldValidator id="PasswordRequiredFieldValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Password &#3651;&#3627;&#3617;&#3656;"
													ControlToValidate="password" Font-Bold="True">*</asp:RequiredFieldValidator>
												<asp:RegularExpressionValidator id="PasswordRegularExpressionValidator" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640; Password &#3651;&#3627;&#3617;&#3656;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="password" Font-Bold="True" ValidationExpression="\w{5,12}">*</asp:RegularExpressionValidator></td>
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
											<td width="232" height="24"><div align="right" class="Font_orange">&#3618;&#3639;&#3609;&#3618;&#3633;&#3609; 
													Password &#3651;&#3627;&#3617;&#3656;</div>
											</td>
											<td width="10" height="24"></td>
											<td width="200" height="24">
												<asp:textbox id="confirm" runat="server" TextMode="Password" CssClass="standard_font" MaxLength="12"></asp:textbox></td>
											<td width="10" height="24">
												<asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="&#3618;&#3639;&#3609;&#3618;&#3633;&#3609; Password &#3651;&#3627;&#3617;&#3656;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="confirm" Font-Bold="True" ControlToCompare="password">*</asp:CompareValidator>
												<asp:RequiredFieldValidator id="ConfirmRequiredFieldValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Confirm Password &#3651;&#3627;&#3617;&#3656;"
													ControlToValidate="confirm" Font-Bold="True">*</asp:RequiredFieldValidator></td>
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
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><div align="center"><table border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td>
													<asp:button class="button" id="next_page" onmouseover="document.all.next_page.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.next_page.className='button'" runat="server"
														name="next_page" Text="&#3605;&#3585;&#3621;&#3591;"></asp:button></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" icon="warning" modal="True" customtitle="Error on Form"
							customheader="Attention!" customheight="300" customwidth="225" customurl="../../../Class/Msgbox.aspx"
							showcustompopup="True" ForeColor="DarkRed" ShowSummary="False"></asp:validationsummary>
					</td>
					<td width="15" rowspan="2"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
			</TABLE>
		</form>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
