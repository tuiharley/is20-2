<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../footer_bar/footer_bar.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@ Page CodeBehind="parking3_example_detail_car_01_p.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.parking3_example_detail_car_01_p" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../css/style.css" type="text/css" rel="stylesheet">
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
	<body onload="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchResult1" runat="server" CssClass="A_black_NOunderline">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchAgain1" runat="server" CssClass="A_black_NOunderline">&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="requestSearch1" runat="server" CssClass="A_black_NOunderline">&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="parkingList1" runat="server" CssClass="A_black_NOunderline">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><asp:label id="upPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"></td>
				</tr>
				<tr>
					<td width="15"><FONT face="Tahoma"></FONT></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="526"><asp:label id="carBrand" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label></td>
											<td width="10"></td>
											<td width="127">
												<div align="right">&#3647;
													<asp:label id="head_price" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label></div>
												<DIV></DIV>
											</td>
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
									<table class="Font_black" height="30" cellSpacing="0" cellPadding="0" width="693" background="../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="10" height="5"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="66"><IMG height="10" src="../../images/objects/mailto.gif" width="15"><asp:HyperLink class="A_black_underline" id="sendFr" runat="server"></asp:HyperLink></td>
											<td width="21" background="../../images/separator/g_21.gif"></td>
											<td width="66"><IMG height="10" src="../../images/objects/print.gif" width="15"><asp:HyperLink id="printThis" runat="server" class="A_black_underline"></asp:HyperLink></td>
											<td width="21" background="../../images/separator/g_21.gif"></td>
											<td width="85"><IMG height="10" src="../../images/objects/complaint.gif" width="15"><asp:HyperLink class="A_black_underline" id="warnDel" runat="server"></asp:HyperLink></td>
											<td width="321" height="20"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="10" height="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="6"></td>
							</tr>
							<tr>
								<td height="6"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td vAlign="top" width="339">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td width="339">
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../images/table/dtl_vehicle.gif"
																border="0">
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3619;&#3634;&#3588;&#3634;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3611;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="enginetype" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="power" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3626;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="gear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numgear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numpump" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="cc" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3611;&#3619;&#3632;&#3605;&#3641;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numdoor" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3609;&#3633;&#3656;&#3591;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="numseat" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3629;&#3633;&#3605;&#3619;&#3634;&#3626;&#3636;&#3657;&#3609;&#3648;&#3611;&#3621;&#3639;&#3629;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="fuelconsume" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3588;&#3623;&#3634;&#3617;&#3592;&#3640;&#3606;&#3633;&#3591;&#3609;&#3657;&#3635;&#3617;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="fueltank" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="lastcheck" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../images/dividers/dtl_vehicle.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="114">
																		<div align="right">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</div>
																	</td>
																	<td width="11"></td>
																	<td width="204"><asp:label id="carid" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../images/lines/dtl.gif" width="339"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../images/table/g_339.gif"
																border="0">
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329"><asp:label id="accessory" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../images/lines/dtl.gif" width="339"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../images/table/g_339.gif"
																border="0">
																<tr>
																	<td colSpan="3" height="3"><FONT face="Tahoma"></FONT></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329"><asp:label id="description" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../images/lines/dtl.gif" width="339"></td>
													</tr>
												</table>
											</td>
											<td width="15"></td>
											<td vAlign="top" width="339">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td class="dtl_pic" width="339" height="327">
															<div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
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
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/h_b_339+ar.gif"
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
														<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../images/table/dtl_con.gif"
																border="0">
																<tr>
																	<td width="339" height="3"></td>
																</tr>
																<tr>
																	<td>
																		<table width="339" border="0" cellpadding="0" cellspacing="0" background="../../images/table/dtl_con.gif"
																			class="Font_black_LH_17px">
																			<tr>
																				<td height="3" colspan="5"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td width="77" valign="top"><div align="right">&#3607;&#3637;&#3656;&#3605;&#3633;&#3657;&#3591;</div>
																				</td>
																				<td width="11"></td>
																				<td width="241">
																					<asp:label id="Addr" CssClass="Font_black_LH_17px" runat="server"></asp:label>
																				</td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colspan="5"><img src="../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td width="77" valign="top"><div align="right">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</div>
																				</td>
																				<td width="11"></td>
																				<td width="241">
																					<asp:label id="Tel" CssClass="Font_black_LH_17px" runat="server"></asp:label></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td colspan="5"><img src="../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																			</tr>
																			<tr>
																				<td width="5"></td>
																				<td width="77" valign="top"><div align="right">Fax</div>
																				</td>
																				<td width="11"></td>
																				<td width="241">
																					<asp:label id="fax" CssClass="Font_black_LH_17px" runat="server"></asp:label></td>
																				<td width="5"></td>
																			</tr>
																			<tr>
																				<td height="3" colspan="5"></td>
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
														<td><IMG src="../../images/lines/dtl.gif"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="23"><IMG height="3" src="../../images/lines/l_g_693.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/h_o_693+ar.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;&#3626;&#3629;&#3610;&#3606;&#3634;&#3617;</td>
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
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5" rowSpan="5"></td>
											<td width="41">
												<div align="right">&#3594;&#3639;&#3656;&#3629;</div>
											</td>
											<td width="10"></td>
											<td width="256"><FONT face="Tahoma"><asp:textbox id="name" tabIndex="1" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></FONT></td>
											<td width="15"></td>
											<td width="94">&#3588;&#3635;&#3606;&#3634;&#3617;/&#3586;&#3657;&#3629;&#3648;&#3626;&#3609;&#3629;&#3649;&#3609;&#3632;</td>
											<td width="10"></td>
											<td width="256" rowSpan="3"><asp:textbox id="question" tabIndex="7" runat="server" CssClass="Font_black" Width="95%" MaxLength="1000"
													TextMode="MultiLine" Rows="5"></asp:textbox></td>
											<td width="5" rowSpan="5"></td>
										</tr>
										<tr>
											<td colSpan="6" height="10"></td>
										</tr>
										<tr>
											<td>
												<DIV class="Font_orange" align="right">Email</DIV>
											</td>
											<td></td>
											<td width="256"><FONT face="Tahoma"><asp:textbox id="email" tabIndex="3" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></FONT></td>
											<td><asp:requiredfieldvalidator id="EmailRequiredFieldValidator" runat="server" ControlToValidate="email" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640; Email"
													Font-Bold="True">*</asp:requiredfieldvalidator><asp:regularexpressionvalidator id="EmailRegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="&#3619;&#3632;&#3610;&#3640; Email &#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													Font-Bold="True" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:regularexpressionvalidator></td>
											<td></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="7" height="10"></td>
										</tr>
										<tr>
											<td>
												<div align="right">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</div>
											</td>
											<td></td>
											<td width="256"><FONT face="Tahoma"><asp:textbox id="phone1" tabIndex="4" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></FONT></td>
											<td></td>
											<td></td>
											<td></td>
											<td width="256">
												<div align="center"><INPUT class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
														style="CURSOR: hand" onclick="check_form(document.form1.name.value,document.form1.email.value,document.form1.phone1.value,document.form1.question.value);"
														onmouseout="document.all.doSearch.className='button'" type="button" value="&#3626;&#3656;&#3591; Email"
														name="doSearch">
												</div>
											</td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
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
								<td height="5"></td>
							</tr>
							<tr>
								<td><asp:label id="downPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchResult2" runat="server" CssClass="A_black_NOunderline">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="searchAgain2" runat="server" CssClass="A_black_NOunderline">&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="requestSearch2" runat="server" CssClass="A_black_NOunderline">&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:hyperlink id="parkingList2" runat="server" CssClass="A_black_NOunderline">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"><FONT face="Tahoma"></FONT></td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ForeColor="DarkRed" showcustompopup="True" customurl="../../Class/Msgbox.aspx"
							customwidth="225" customheight="250" customheader="Attention!" customtitle="Error on Form" modal="True"
							icon="warning" ShowSummary="False"></asp:validationsummary></td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript" src='../../j_script/checkEmail.js'></script>
		<script language="javascript">
		function changeMainPic(picNo,picUrl){
			autoonclick.parking3_example_detail_car_01_p.showMainPic(picNo,picUrl,UrlBack);
		}
		function UrlBack(res){
			var img1 = document.getElementById("image1");
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
			autoonclick.parking3_example_detail_car_01_p.sendQuestion(name,email,phone1,question,mailBack);
		}
		function mailBack(res){
			var x 
			alert(res.value);
			
		}
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
