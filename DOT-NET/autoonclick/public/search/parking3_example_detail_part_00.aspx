<%@Register TagPrefix="footer" TagName="footer_bar" Src="../footer_bar/footer_bar.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@ Page CodeBehind="parking3_example_detail_part_00.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.parking3_example_detail_part_00" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="693" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<asp:label id="upPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
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
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="526">
												<asp:Label id="partBrand" runat="server" CssClass="H1_white" ForeColor="Transparent"></asp:Label></td>
											<td width="10"></td>
											<td width="127">
												<div align="right">&#3647;
													<asp:label id="head_price" runat="server" CssClass="H1_white" ForeColor="Transparent"></asp:label>
												</div>
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
								<td><table width="693" height="30" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="5" colspan="8"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="66"><img src="../../images/objects/mailto.gif" width="15" height="10"><asp:HyperLink class="A_black_underline" id="sendFr" runat="server"></asp:HyperLink></td>
											<td width="21" background="../../images/separator/g_21.gif"></td>
											<td width="66"><img src="../../images/objects/print.gif" width="15" height="10"><asp:HyperLink id="printThis" runat="server" class="A_black_underline"></asp:HyperLink></td>
											<td width="21" background="../../images/separator/g_21.gif"></td>
											<td width="85"><img src="../../images/objects/complaint.gif" width="15" height="10"><asp:HyperLink class="A_black_underline" id="warnDel" runat="server"></asp:HyperLink></td>
											<td width="424" height="20"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="8"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/dtl_693.gif" width="693" height="2"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td width="693"><table width="693" border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td width="339" valign="top"><table width="339" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td width="339"><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_339+ar.gif"
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
														<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../images/table/dtl_part.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3619;&#3634;&#3588;&#3634;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3626;&#3616;&#3634;&#3614;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3611;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3626;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3619;&#3627;&#3633;&#3626;&#3626;&#3637;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="colorcode" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3594;&#3635;&#3619;&#3640;&#3604;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
																		<asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr class="Font_black_LH_17px">
																	<td colspan="5"><img src="../../images/dividers/dtl_part.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="80" valign="top"><div align="right">&#3619;&#3627;&#3633;&#3626;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
																	</td>
																	<td width="11"></td>
																	<td width="238">
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
														<td><img src="../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_339+ar.gif"
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
														<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_339.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329">
																		<asp:Label id="description" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:Label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
												</table>
											</td>
											<td width="15"></td>
											<td width="339" valign="top"><table width="339" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td width="339" height="327" class="dtl_pic"><div align="center">
																<asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label>
															</div>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../images/table/dtl_con.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">&#3594;&#3639;&#3656;&#3629;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;/&#3585;&#3636;&#3592;&#3585;&#3634;&#3619;</div>
																	</td>
																	<td width="11"></td>
																	<td width="241">
																		<asp:label id="custName" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">&#3607;&#3637;&#3656;&#3629;&#3618;&#3641;&#3656;</div>
																	</td>
																	<td width="11"></td>
																	<td width="241">
																		<asp:label id="Addr" runat="server" CssClass="Font_black_LH_17px"></asp:label>
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
																		<asp:label id="Tel" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
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
																		<asp:label id="fax" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">&#3623;&#3633;&#3609;-&#3648;&#3623;&#3621;&#3634;&#3607;&#3635;&#3585;&#3634;&#3619;</div>
																	</td>
																	<td width="11"></td>
																	<td width="241">
																		<asp:label id="operateTime" runat="server" CssClass="Font_black_LH_17px"></asp:label>
																	</td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><img src="../../images/objects/arrow_orange_17.gif" width="15" height="17" align="absMiddle">
																		<asp:HyperLink class="A_black_underline" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;</asp:HyperLink>
																		<br>
																		<img src="../../images/objects/arrow_orange_17.gif" width="15" height="17" align="absMiddle">
																		<asp:HyperLink class="A_black_underline" id="de_home" runat="server">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;&#3649;&#3621;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;&#3586;&#3629;&#3591;&#3626;&#3617;&#3634;&#3594;&#3636;&#3585;</asp:HyperLink>
																	</td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../images/lines/dtl.gif"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="23"><img src="../../images/lines/l_g_693.gif" width="693" height="3"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_o_693+ar.gif"
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
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
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
												<asp:textbox id="name" tabIndex="1" runat="server" CssClass="Font_black" MaxLength="50" Width="95%"></asp:textbox></td>
											<td width="15"></td>
											<td width="94">&#3588;&#3635;&#3606;&#3634;&#3617;/&#3586;&#3657;&#3629;&#3648;&#3626;&#3609;&#3629;&#3649;&#3609;&#3632;</td>
											<td width="10"></td>
											<td width="256" rowspan="3">
												<asp:textbox id="question" tabIndex="7" runat="server" CssClass="Font_black" MaxLength="1000"
													Width="95%" Rows="5" TextMode="MultiLine"></asp:textbox></td>
											<td width="5" rowspan="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="6"></td>
										</tr>
										<tr>
											<td>
												<DIV class="Font_orange" align="right">Email</DIV>
											</td>
											<td></td>
											<td width="256">
												<asp:textbox id="email" tabIndex="3" runat="server" CssClass="Font_black" MaxLength="50" Width="95%"></asp:textbox></td>
											<td></td>
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
												<asp:textbox id="phone1" tabIndex="4" runat="server" CssClass="Font_black" MaxLength="50" Width="95%"></asp:textbox></td>
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
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><asp:label id="downPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
			</TABLE></form>
		<script language="javascript" src='../../j_script/checkEmail.js'></script>
		<script language="javascript">
		function changeMainPic(picNo,picUrl){
			autoonclick.parking3_example_detail_part_00.showMainPic(picNo,picUrl,UrlBack);
		}
		function UrlBack(res){
			var img1 = document.getElementById("image1");
			//alert(res.value);
			img1.innerHTML = res.value;
		}
		function check_form(name,eml,phone1,question){ // f is the form (passed using the <I>this</I> keyword)
				// check the first email address ( the exclamation means "not" )
				
				if(!check_email(eml)){
					alert("Email ���١��ͧ");
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
			autoonclick.parking3_example_detail_part_00.sendQuestion(name,email,phone1,question,mailBack);
		}
		function mailBack(res){
			var x 
			alert(res.value);
			
		}
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>