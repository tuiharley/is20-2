<%@ Page CodeBehind="search1_job.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.search1_job" %>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar2_search.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<%@Register TagPrefix="province" TagName="province_list" Src="list/province_list_search.ascx"%>
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



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
			</script>
	</HEAD>
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<INPUT id="proinceIndex" type="hidden" name="proinceIndex"><INPUT id="districtIndex" type="hidden" name="districtIndex">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604; 
												&#3610;&#3609; AUTO-ONCLICK
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
								<td width="693"><div id="carShow"></div>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td width="693"><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td width="693" height="15"></td>
							</tr>
							<tr>
								<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="339"><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_b_339.gif"
													class="H1_white">
													<tr>
														<td width="25"></td>
														<td width="309">&#3588;&#3657;&#3609;&#3627;&#3634;&#3591;&#3634;&#3609;</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
											<td width="15" rowspan="7"></td>
											<td width="339"><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o_339.gif"
													class="H1_white">
													<tr>
														<td width="25"></td>
														<td width="309">&#3588;&#3640;&#3603;&#3619;&#3641;&#3657;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;&#3623;&#3656;&#3634;...?</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
											<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
										</tr>
										<tr>
											<td width="339" valign="top" background="../../images/table/g_339.gif"><table width="339" border="0" cellpadding="0" cellspacing="0" class="Font_black">
													<tr>
														<td height="10" colspan="5"></td>
													</tr>
													<asp:label id="txtNotFound" runat="server"></asp:label>
													<tr>
														<td width="10" rowspan="9"></td>
														<td width="58"><div align="right"><strong>&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;</strong></div>
														</td>
														<td width="10"></td>
														<td width="251">
															<asp:dropdownlist id="jobPos" runat="server" CssClass="Font_black" DataTextField="Position_Name" DataValueField="Position_ID"
																Width="95%"></asp:dropdownlist></td>
														<td width="10" rowspan="9"></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"><div align="right">&#3588;&#3635;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;</div>
														</td>
														<td width="10"></td>
														<td width="251">
															<asp:textbox id="searchWord" runat="server" CssClass="Font_black" Width="80%" MaxLength="50"></asp:textbox></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"><div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
														<td width="10"></td>
														<td width="251"><SELECT class="Font_black" id="Province" onchange="setBrandIndex('proinceIndex',this.selectedIndex);setBrandIndex('districtIndex',0);district_list('district',this.selectedIndex,0);"
																name="Province" runat="server">
																<OPTION selected></OPTION>
															</SELECT></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"><div align="right">&#3648;&#3586;&#3605;</div>
														</td>
														<td width="10"></td>
														<td width="251"><SELECT class="Font_black" id="District" onchange="setBrandIndex('districtIndex',this.selectedIndex);"
																name="District" runat="server">
																<OPTION selected></OPTION>
															</SELECT></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"></td>
														<td width="10"></td>
														<td width="251">
															<asp:button class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
																style="CURSOR: hand" onmouseout="document.all.doSearch.className='button'" runat="server"
																name="doSearch" Text="&#3588;&#3657;&#3609;&#3627;&#3634;"></asp:button></td>
													</tr>
												</table>
											</td>
											<td width="339" rowspan="3" valign="top" background="../../images/table/g_339.gif"><table width="339" border="0" cellpadding="0" cellspacing="0" class="Font_black_LH_17px">
													<tr>
														<td height="5" colspan="3"></td>
													</tr>
													<tr>
														<td width="5"></td>
														<td width="329" valign="top"><div align="center"><strong>&#3627;&#3634;&#3591;&#3634;&#3609;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3651;&#3592;&#3588;&#3640;&#3603;&#3652;&#3604;&#3657;&#3610;&#3609; 
																	AUTO-ONCLICK!</strong>
																<p><strong>&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3607;&#3637;&#3656;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3585;&#3633;&#3610; 
																		AUTO-ONCLICK 
																		&#3592;&#3632;&#3629;&#3609;&#3640;&#3597;&#3634;&#3605;&#3651;&#3627;&#3657;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;&#3652;&#3604;&#3657;&#3615;&#3619;&#3637;!</strong></p>
																&#3627;&#3634;&#3585;&#3588;&#3640;&#3603;&#3585;&#3635;&#3621;&#3633;&#3591;&#3588;&#3657;&#3609;&#3627;&#3634;&#3591;&#3634;&#3609;&#3607;&#3637;&#3656;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610; 
																&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;, 
																&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;, 
																&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585; 
																&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3627;&#3634;&#3652;&#3604;&#3657;&#3585;&#3633;&#3610;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3617;&#3639;&#3629;&#3588;&#3657;&#3609;&#3627;&#3634;&#3591;&#3634;&#3609;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;!</div>
														</td>
														<td width="5"></td>
													</tr>
													<tr>
														<td height="5" colspan="3"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td background="../../images/table/g_339.gif" valign="bottom"><img src="../../images/dividers/g_b_339x21.gif" width="339" height="21"></td>
										</tr>
										<tr>
											<td background="../../images/table/b_339.gif"><table width="339" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td height="60"><div align="center"><asp:Label id="halfBanner" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="8"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
											<td><img src="../../images/lines/w2.gif" width="339" height="1"></td>
										</tr>
										<tr>
											<td width="339"><img src="../../images/lines/l_b_339.gif" width="339" height="5"></td>
											<td width="339"><img src="../../images/lines/l_o_339.gif" width="339" height="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3612;&#3641;&#3657;&#3626;&#3609;&#3633;&#3610;&#3626;&#3609;&#3640;&#3609; 
												AUTO-ONCLICK</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif">
										<tr>
											<td height="7" colspan="11"></td>
										</tr>
										<tr>
											<td width="7"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><asp:Label id="banner1" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td><asp:Label id="banner1_txt" runat="server"></asp:Label></td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><asp:Label id="banner2" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td><asp:Label id="banner2_txt" runat="server"></asp:Label></td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><asp:Label id="banner3" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td><asp:Label id="banner3_txt" runat="server"></asp:Label></td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><asp:Label id="banner4" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td><asp:Label id="banner4_txt" runat="server"></asp:Label></td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="131" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><asp:Label id="banner5" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td><asp:Label id="banner5_txt" runat="server"></asp:Label></td>
													</tr>
												</table>
											</td>
											<td width="7"></td>
										</tr>
										<tr>
											<td height="5" colspan="11"></td>
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
								<td width="693" height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" rowspan="2"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
		<script language="javascript">
	
			<%if session("proinceIndex") <> "" then%>
				document.getElementById("proinceIndex").value = '<%=session("proinceIndex")%>';
			<%end if%>
			<%if session("districtIndex") <> "" then%>
				document.getElementById("districtIndex").value = '<%=session("districtIndex")%>';
			<%end if%>
			function setBrandIndex(frm,indexValue){
				var c = document.getElementById(frm);
				c.value = indexValue;
			}
			
			
			startList2();
			function startList2(){
				autoonclick.search1_job.showPart(txtBack2);
			}
			function txtBack2(response){
				var show1 = document.getElementById("carShow");
				show1.innerHTML = response.value;
			}
		</script>
		<province:province_list id="province_list" runat="server"></province:province_list>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
