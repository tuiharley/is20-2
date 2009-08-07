<%@Register TagPrefix="model" TagName="model_list" Src="list/model_parts_list_search.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="province" TagName="province_list" Src="list/province_list_search.ascx"%>
<%@ Page CodeBehind="search1_part2.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.search1_part2" %>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
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
			<input id="brandIndex" type="hidden" name="brandIndex"> <input id="modelIndex" type="hidden" name="modelIndex">
			<INPUT id="proinceIndex" type="hidden" name="proinceIndex"><INPUT id="districtIndex" type="hidden" name="districtIndex">
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><FONT face="Tahoma"></FONT></td>
					<td></td>
					<td vAlign="top"><FONT face="Tahoma"></FONT></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604; 
												&#3610;&#3609; AUTO-ONCLICK
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
								<td width="693">
									<div id="carShow"></div>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td width="693"><IMG height="5" src="../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td width="693" height="15"></td>
							</tr>
							<tr>
								<td width="693">
									<table cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td width="339">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/m_h_b_339.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="309">&#3588;&#3657;&#3609;&#3627;&#3634;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
											<td width="15" rowSpan="7"></td>
											<td width="339">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/m_h_o_339.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="309">&#3588;&#3640;&#3603;&#3619;&#3641;&#3657;&#3627;&#3619;&#3639;&#3629;&#3652;&#3617;&#3656;&#3623;&#3656;&#3634;...?</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
										</tr>
										<tr>
											<td vAlign="top" width="339" background="../../images/table/g_339.gif">
												<table class="Font_black" cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<asp:label id="txtNotFound" runat="server"></asp:label>
													<tr>
														<td width="10" rowSpan="13"></td>
														<td width="73">
															<div align="right"><strong>&#3627;&#3617;&#3623;&#3604;&#3627;&#3617;&#3641;&#3656;</strong></div>
														</td>
														<td width="10"></td>
														<td width="236"><SELECT class="Font_black" id="category" style="WIDTH: 95%" onchange="setBrandIndex('brandIndex',this.selectedIndex);setBrandIndex('modelIndex',0);model_list('parttype',this.selectedIndex,'');"
																name="category" runat="server">
																<OPTION selected></OPTION>
															</SELECT></td>
														<td width="10" rowSpan="13"></td>
													</tr>
													<tr>
														<td colSpan="3" height="10"></td>
													</tr>
													<tr>
														<td width="73">
															<div align="right"><strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</strong></div>
														</td>
														<td width="10"></td>
														<td width="236"><SELECT class="Font_black" id="parttype" style="WIDTH: 95%" onchange="setBrandIndex('modelIndex',this.selectedIndex);"
																name="parttype" runat="server">
																<OPTION selected></OPTION>
															</SELECT></td>
													</tr>
													<tr>
														<td colSpan="3" height="10"></td>
													</tr>
													<tr>
														<td width="73">
															<div align="right">&#3626;&#3616;&#3634;&#3614;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
														</td>
														<td width="10"></td>
														<td width="236"><asp:dropdownlist id="status" runat="server" CssClass="Font_black" DataTextField="status_name" DataValueField="status"
																Width="95%"></asp:dropdownlist></td>
													</tr>
													<tr>
														<td colSpan="3" height="10"></td>
													</tr>
													<tr>
														<td width="73">
															<div align="right">&#3588;&#3635;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;</div>
														</td>
														<td width="10"></td>
														<td width="236"><asp:textbox id="searchWord" runat="server" CssClass="Font_black" Width="80%" MaxLength="50"></asp:textbox></td>
													</tr>
													<tr>
														<td colSpan="3" height="10"></td>
													</tr>
													<tr>
														<td width="73">
															<div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
														<td width="10"></td>
														<td width="236"><FONT face="Tahoma"><SELECT class="Font_black" id="Province" onchange="setBrandIndex('proinceIndex',this.selectedIndex);setBrandIndex('districtIndex',0);district_list('district',this.selectedIndex,0);"
																	name="Province" runat="server">
																	<OPTION selected></OPTION>
																</SELECT></FONT></td>
													</tr>
													<tr>
														<td colSpan="3" height="10"></td>
													</tr>
													<tr>
														<td width="73">
															<div align="right">&#3648;&#3586;&#3605;</div>
														</td>
														<td width="10"></td>
														<td width="236"><FONT face="Tahoma"><SELECT class="Font_black" id="District" onchange="setBrandIndex('districtIndex',this.selectedIndex);"
																	name="District" runat="server">
																	<OPTION selected></OPTION>
																</SELECT></FONT></td>
													</tr>
													<tr>
														<td colSpan="3" height="10"></td>
													</tr>
													<tr>
														<td width="73"></td>
														<td width="10"></td>
														<td width="236"><asp:button class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
																style="CURSOR: hand" onmouseout="document.all.doSearch.className='button'" runat="server" name="doSearch"
																Text="&#3588;&#3657;&#3609;&#3627;&#3634;"></asp:button></td>
													</tr>
												</table>
											</td>
											<td vAlign="top" width="339" background="../../images/table/g_339.gif" rowSpan="3">
												<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td colSpan="3" height="5"></td>
													</tr>
													<tr>
														<td width="5"></td>
														<td vAlign="top" width="329"><asp:label id="information" runat="server"></asp:label></td>
														<td width="5"></td>
													</tr>
													<tr>
														<td colSpan="3" height="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td vAlign="bottom" background="../../images/table/g_339.gif"><IMG height="21" src="../../images/dividers/g_b_339x21.gif" width="339"></td>
										</tr>
										<tr>
											<td background="../../images/table/b_339.gif">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td height="60">
															<div align="center"><asp:Label id="halfBanner" runat="server"></asp:Label></div>
														</td>
													</tr>
													<tr>
														<td height="8"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
											<td><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
										</tr>
										<tr>
											<td width="339"><IMG height="5" src="../../images/lines/l_b_339.gif" width="339"></td>
											<td width="339"><IMG height="5" src="../../images/lines/l_o_339.gif" width="339"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td>
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
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
								<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" background="../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="11" height="7"></td>
										</tr>
										<tr>
											<td width="7"></td>
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><asp:Label id="banner1" runat="server"></asp:Label></div>
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
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><asp:Label id="banner2" runat="server"></asp:Label></div>
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
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><asp:Label id="banner3" runat="server"></asp:Label></div>
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
											<td vAlign="top" width="130">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><asp:Label id="banner4" runat="server"></asp:Label></div>
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
											<td vAlign="top" width="131">
												<table class="Font_blue_LH_15px" cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td>
															<div align="center"><asp:Label id="banner5" runat="server"></asp:Label></div>
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
											<td colSpan="11" height="5"></td>
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
								<td width="693" height="20"></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ForeColor="DarkRed" showcustompopup="True" customurl="../../Class/Msgbox.aspx"
							customwidth="225" customheight="300" customheader="Attention!" customtitle="Error on Form" modal="True"
							icon="warning" ShowSummary="False"></asp:validationsummary></td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<model:model_list id="model_list" runat="server"></model:model_list><province:province_list id="province_list" runat="server"></province:province_list>
		<script language="javascript">
		function setBrandIndex(frm,indexValue){
				var c = document.getElementById(frm);
				c.value = indexValue;
		}
		
			<%if session("brandIndex") <> "" then%>
				document.getElementById("brandIndex").value = '<%=session("brandIndex")%>';
			<%end if%>
			<%if session("modelIndex") <> "" then%>
				document.getElementById("modelIndex").value = '<%=session("modelIndex")%>';
			<%end if%>
			<%if session("proinceIndex") <> "" then%>
				document.getElementById("proinceIndex").value = '<%=session("proinceIndex")%>';
			<%end if%>
			<%if session("districtIndex") <> "" then%>
				document.getElementById("districtIndex").value = '<%=session("districtIndex")%>';
			<%end if%>
			
		startList2();
		function startList2(){
			autoonclick.search1_part2.showPart(txtBack2);
		}
		function txtBack2(response){
			var show1 = document.getElementById("carShow");
			show1.innerHTML = response.value;
		}
		
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
