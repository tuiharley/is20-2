<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<%@ Page CodeBehind="parking1_intro_01.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.parking1_intro_01" %>
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
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<table width="693" border="0" cellpadding="0" cellspacing="0">
			<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
			<tr>
				<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
				<td width="15"></td>
				<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
									<tr>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchResult1" runat="server" CssClass="A_black_NOunderline">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:hyperlink></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><FONT face="Tahoma"><asp:hyperlink id="searchAgain1" runat="server" CssClass="A_black_NOunderline">&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635;</asp:hyperlink></FONT></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="requestSearch1" runat="server" CssClass="A_black_NOunderline">&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;</asp:hyperlink></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:label id="parkingList1" runat="server" CssClass="Font_brown">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:label></td>
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
				<td valign="top"></td>
			</tr>
			<tr>
				<td width="15"></td>
				<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
									class="H1_white">
									<tr>
										<td width="25"></td>
										<td width="663">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</td>
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
										<td width="683"><strong>&#3586;&#3603;&#3632;&#3609;&#3637;&#3657;&#3652;&#3617;&#3656;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3651;&#3609;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</strong>
										</td>
										<td width="5"></td>
									</tr>
									<tr>
										<td height="5" colspan="3"></td>
									</tr>
									<tr>
										<td></td>
										<td>&#3648;&#3617;&#3639;&#3656;&#3629;&#3588;&#3640;&#3603;&#3614;&#3610;&#3619;&#3606;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3651;&#3592; 
											&#3627;&#3619;&#3639;&#3629;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619; 
											&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3609;&#3633;&#3657;&#3609;&#3654; 
											&#3648;&#3585;&#3655;&#3610;&#3652;&#3623;&#3657;&#3651;&#3609;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585; 
											&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3652;&#3604;&#3657; 
											&#3650;&#3604;&#3618;&#3607;&#3637;&#3656;&#3652;&#3617;&#3656;&#3605;&#3657;&#3629;&#3591;&#3607;&#3635;&#3585;&#3634;&#3619;&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635; 
											&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3609;&#3633;&#3657;&#3609;&#3592;&#3632;&#3606;&#3641;&#3585;&#3648;&#3585;&#3655;&#3610;&#3650;&#3604;&#3618; 
											Cookie &#3651;&#3609; Browser &#3586;&#3629;&#3591;&#3588;&#3640;&#3603; 
											&#3649;&#3621;&#3632;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3648;&#3619;&#3637;&#3618;&#3585; 
											&#3604;&#3641;&#3610;&#3609;&#3588;&#3629;&#3617;&#3614;&#3636;&#3623;&#3648;&#3605;&#3629;&#3619;&#3660;&#3607;&#3637;&#3656;&#3652;&#3604;&#3657;&#3607;&#3635;&#3585;&#3634;&#3619;&#3648;&#3585;&#3655;&#3610;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3609;&#3637;&#3657;&#3648;&#3607;&#3656;&#3634;&#3609;&#3633;&#3657;&#3609; 
											&#3648;&#3614;&#3637;&#3618;&#3591;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656; 
											"&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;" 
											&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3585;&#3655;&#3592;&#3632;&#3606;&#3641;&#3585;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3652;&#3623;&#3657; 
											&#3649;&#3621;&#3632;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3648;&#3619;&#3637;&#3618;&#3585;&#3604;&#3641;&#3652;&#3604;&#3657;&#3650;&#3604;&#3618;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656; 
											"&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;" 
											&#3648;&#3619;&#3634;&#3652;&#3604;&#3657; 
											&#3592;&#3633;&#3604;&#3626;&#3619;&#3619;&#3614;&#3639;&#3657;&#3609;&#3607;&#3637;&#3656;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3652;&#3604;&#3657;&#3606;&#3638;&#3591; 
											20 &#3619;&#3634;&#3618;&#3585;&#3634;&#3619; 
											&#3649;&#3621;&#3632;&#3648;&#3619;&#3634;&#3618;&#3633;&#3591;&#3617;&#3637;&#3615;&#3633;&#3591;&#3585;&#3660;&#3594;&#3633;&#3656;&#3609;&#3605;&#3656;&#3634;&#3591;&#3654; 
											&#3651;&#3609;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603; 
											&#3648;&#3594;&#3656;&#3609; 
											&#3626;&#3656;&#3591;&#3651;&#3627;&#3657;&#3648;&#3614;&#3639;&#3656;&#3629;&#3609; 
											&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; 
											&#3621;&#3610;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</td>
										<td></td>
									</tr>
									<tr>
										<td height="10" colspan="3"></td>
									</tr>
									<tr>
										<td></td>
										<td><strong>"&#3607;&#3640;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3592;&#3632;&#3606;&#3641;&#3585;&#3621;&#3610;&#3607;&#3636;&#3657;&#3591;&#3650;&#3604;&#3618;&#3629;&#3633;&#3605;&#3650;&#3609;&#3617;&#3633;&#3605;&#3636; 
												&#3627;&#3634;&#3585;&#3588;&#3640;&#3603;&#3652;&#3617;&#3656;&#3648;&#3586;&#3657;&#3634;&#3617;&#3634;&#3651;&#3594;&#3657;&#3616;&#3634;&#3618;&#3651;&#3609; 
												60 &#3623;&#3633;&#3609;"</strong></td>
										<td></td>
									</tr>
									<tr>
										<td height="10" colspan="3"></td>
									</tr>
									<tr>
										<td></td>
										<td><table width="683" border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td width="50"><strong>&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;&#3629;&#3639;&#3656;&#3609;&#3654;</strong></td>
													<td width="10" rowspan="3"></td>
													<td width="623"><li>&#3606;&#3657;&#3634;&#3627;&#3634;&#3585;&#3623;&#3656;&#3634;&#3652;&#3604;&#3657;&#3617;&#3637;&#3585;&#3634;&#3619;&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3649;&#3611;&#3621;&#3591;&#3619;&#3634;&#3588;&#3634;&#3651;&#3609;&#3586;&#3603;&#3632;&#3607;&#3637;&#3656;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3606;&#3641;&#3585;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3649;&#3621;&#3657;&#3623; 
															&#3609;&#3633;&#3656;&#3609;&#3627;&#3617;&#3634;&#3618;&#3606;&#3638;&#3591;&#3617;&#3633;&#3609;&#3592;&#3632;&#3606;&#3641;&#3585;&#3649;&#3626;&#3604;&#3591;&#3652;&#3623;&#3657;&#3604;&#3657;&#3623;&#3618;&#3649;&#3621;&#3657;&#3623;</li></td>
												</tr>
												<tr>
													<td width="50"></td>
													<td width="623"><li>&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3648;&#3614;&#3639;&#3656;&#3629;&#3648;&#3611;&#3655;&#3609;&#3588;&#3635;&#3629;&#3608;&#3636;&#3610;&#3634;&#3618;&#3626;&#3633;&#3657;&#3609;&#3654;</li></td>
												</tr>
												<tr>
													<td width="50"></td>
													<td width="623"><li>&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3626;&#3656;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3652;&#3623;&#3657;&#3651;&#3627;&#3657;&#3648;&#3614;&#3639;&#3656;&#3629;&#3609;&#3654;&#3652;&#3604;&#3657;&#3604;&#3657;&#3623;&#3618;&#3648;&#3594;&#3656;&#3609;&#3585;&#3633;&#3609;</li></td>
												</tr>
											</table>
										</td>
										<td></td>
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
							<td height="15"></td>
						</tr>
						<tr>
							<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
									<tr>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchResult2" runat="server" CssClass="A_black_NOunderline">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:hyperlink></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchAgain2" runat="server" CssClass="A_black_NOunderline">&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635;</asp:hyperlink></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="requestSearch2" runat="server" CssClass="A_black_NOunderline">&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;</asp:hyperlink></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
										<td background="../../images/objects/sub_navi_blue_c.gif"><asp:label id="parkingList2" runat="server" CssClass="Font_brown">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:label></td>
										<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="20"></td>
						</tr>
					</table>
				</td>
				<td width="15" valign="top"></td>
			</tr>
			<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
		</table>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
		<script src="../../j_script/cookie.js" type="text/javascript"></script>
		<script language="javascript">
				deleteCookie('saveCar','/');
				deleteCookie('saveCarNum','/');
		</script>
	</body>
</HTML>
