<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar2_search.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@ Page CodeBehind="search1_business.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.search1_business" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } 
			</style>
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
			<table width="693" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server" />
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server" />
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604; 
												&#3610;&#3609; AUTO-ONCLICK</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td width="693"><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif">
										<tr>
											<td height="7" colspan="11"></td>
										</tr>
										<tr>
											<asp:Label id="newDealer" runat="server"></asp:Label>
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
														<td width="309">&#3588;&#3657;&#3609;&#3627;&#3634;&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;</td>
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
													<tr>
														<td width="10" rowspan="11"></td>
														<td width="58"><div align="right"><strong>&#3627;&#3617;&#3623;&#3604;&#3627;&#3617;&#3641;&#3656;</strong></div>
														</td>
														<td width="10"></td>
														<td width="251"><select name="buzType" class="Font_black" style="WIDTH: 100%" id="buzType">
																<option value="0" selected>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3627;&#3617;&#3623;&#3604;&#3627;&#3617;&#3641;&#3656;</option>
															</select></td>
														<td width="10" rowspan="11"></td>
													</tr>
													<tr>
														<td height="10" colspan="3">
															<asp:Label id="err" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></td>
													</tr>
													<tr>
														<td width="58"><div align="right"><strong>&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</strong></div>
														</td>
														<td width="10"></td>
														<td width="251"><select name="carType" class="Font_black" style="WIDTH: 100%" id="carType">
																<option value="0" selected>&#3607;&#3640;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;</option>
															</select></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"><div align="right">&#3588;&#3635;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;</div>
														</td>
														<td width="10"></td>
														<td width="251"><input name="searchTxt" id="searchTxt" type="text" class="Font_black" style="WIDTH: 245px"></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"><div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
														</td>
														<td width="10"></td>
														<td width="251"><select name="province" onchange="showDistrict(this.value);" class="Font_black" style="WIDTH: 75%"
																id="province">
																<option selected value="0">&#3607;&#3640;&#3585;&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</option>
															</select></td>
													</tr>
													<tr>
														<td height="10" colspan="3"></td>
													</tr>
													<tr>
														<td width="58"><div align="right">&#3648;&#3586;&#3605;</div>
														</td>
														<td width="10"></td>
														<td width="251"><select name="district" class="Font_black" style="WIDTH: 75%" id="district">
																<option value="0" selected>&#3607;&#3640;&#3585;&#3648;&#3586;&#3605;</option>
															</select></td>
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
														<td width="329" valign="top"><div align="center">
																<strong>&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3651;&#3609;&#3652;&#3604;&#3648;&#3619;&#3655;&#3585;&#3607;&#3629;&#3619;&#3637;&#3656;&#3586;&#3629;&#3591; 
																	AUTO-ONCLICK &#3652;&#3604;&#3657;&#3615;&#3619;&#3637;! 
																	&#3623;&#3633;&#3609;&#3609;&#3637;&#3657;</strong>
																<p><strong>&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;&#3648;&#3585;&#3637;&#3656;&#3618;&#3623;&#3585;&#3633;&#3610;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;, 
																		&#3648;&#3623;&#3621;&#3634;&#3607;&#3635;&#3585;&#3634;&#3619;, 
																		&#3607;&#3637;&#3656;&#3629;&#3618;&#3641;&#3656;, 
																		&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;, 
																		&#3650;&#3621;&#3650;&#3585;&#3657;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3649;&#3621;&#3632;&#3621;&#3636;&#3591;&#3588;&#3660;&#3652;&#3611;&#3618;&#3633;&#3591;&#3648;&#3623;&#3655;&#3610;&#3648;&#3614;&#3592;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603; 
																		&#3592;&#3632;&#3606;&#3641;&#3585;&#3649;&#3626;&#3604;&#3591;&#3648;&#3611;&#3655;&#3609;&#3648;&#3614;&#3592;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3648;&#3629;&#3591; 
																		"AUTO-ONCLICK/&#3594;&#3639;&#3656;&#3629;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;"</strong>
																	- 
																	&#3585;&#3634;&#3619;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;&#3609;&#3637;&#3657; 
																	&#3629;&#3609;&#3640;&#3597;&#3634;&#3605;&#3626;&#3635;&#3627;&#3619;&#3633;&#3610; 
																	&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;, 
																	&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;, 
																	&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;/ - 
																	&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;/ 
																	-&#3649;&#3621;&#3632;&#3612;&#3641;&#3657;&#3651;&#3627;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3604;&#3657;&#3634;&#3609;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;:</p>
																<p>&#3617;&#3634;&#3648;&#3611;&#3655;&#3609;&#3626;&#3656;&#3623;&#3609;&#3627;&#3609;&#3638;&#3656;&#3591;&#3586;&#3629;&#3591; 
																	AUTO-ONCLICK &#3649;&#3621;&#3632;<br>
																	<strong>
																		<asp:HyperLink id="toDealer" runat="server" CssClass="A_black_underline" NavigateUrl="../dealer/dealer1_reg1_access_datas.aspx">&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;!</asp:HyperLink></strong></p>
																<img src="../../images/objects/handshake.jpg" width="136" height="51"></div>
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
														<td height="60"><div align="center"><img src="../../images/objects/half-banner-a833.gif" width="234" height="60"></div>
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
														<td><div align="center"><img src="../../images/objects/banner_button_120x60.gif" width="120" height="60"></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>Text... Maximum of 3 Lines xxxxxxxxxxxxx xxxxxxxxxxxxxxxxxx</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><img src="../../images/objects/banner_button_120x60.gif" width="120" height="60"></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>Text... Maximum of 3 Lines xxxxxxxxxxxxx xxxxxxxxxxxxxxxxxx</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><img src="../../images/objects/banner_button_120x60.gif" width="120" height="60"></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>Text... Maximum of 3 Lines xxxxxxxxxxxxx xxxxxxxxxxxxxxxxxx</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="130" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><img src="../../images/objects/banner_button_120x60.gif" width="120" height="60"></div>
														</td>
													</tr>
													<tr>
														<td height="5"><FONT face="Tahoma"></FONT></td>
													</tr>
													<tr>
														<td>Text... Maximum of 3 Lines xxxxxxxxxxxxx xxxxxxxxxxxxxxxxxx</td>
													</tr>
												</table>
											</td>
											<td width="7" background="../../images/separator/g_7.gif"></td>
											<td width="131" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="Font_blue_LH_15px">
													<tr>
														<td><div align="center"><img src="../../images/objects/banner_button_120x60.gif" width="120" height="60"></div>
														</td>
													</tr>
													<tr>
														<td height="5"></td>
													</tr>
													<tr>
														<td>Text... Maximum of 3 Lines xxxxxxxxxxxxx xxxxxxxxxxxxxxxxxx</td>
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
				<footer:footer_bar id="footer_bar" runat="server" />
			</table>
		</form>
		<script language="javascript">
					startList();
					startListType(1);
					//showNewDealer();
					setValue();
					function startList(){
						autoonclick.showBrands.showBuzType(listBuzType);
						autoonclick.showBrands.showProvinces(listProvince);
						
					}
					function listBuzType(res){
						var brandChooser = document.getElementById("buztype");
						brandChooser.options.length = 1;
						var x = res.value;
						branddb = x.split("!");
									
						var db="";
						for (var i = 0; i < branddb.length; i++) {
								db = branddb[i].split(":");
								brandChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function startListType(cat){
						autoonclick.showBrands.showCat(cat,listCarType);
						
					}
					function listCarType(res){
						var typeChooser = document.getElementById("carType");
						typeChooser.options.length = 1;
						var x = res.value;
						branddb = x.split("!");
									
						var db="";
						for (var i = 0; i < branddb.length; i++) {
								db = branddb[i].split(":");
								typeChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					
					
					function listProvince(res){
						var brandChooser = document.getElementById("province");
						brandChooser.options.length = 1;
						var x = res.value;
						branddb = x.split("!");
									
						var db="";
						for (var i = 0; i < branddb.length; i++) {
								db = branddb[i].split(":");
								brandChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showDistrict(prov){
							autoonclick.showBrands.showDistricts(prov,listDistricts);
					}
					function listDistricts(res){
						var brandChooser = document.getElementById("district");
						brandChooser.options.length = 1;
						var x = res.value;
						branddb = x.split("!");
									
						var db="";
						for (var i = 0; i < branddb.length; i++) {
								db = branddb[i].split(":");
								brandChooser.options[i + 1] = new Option(db[1], db[0]);
						}
					}
					function showDistrict2(prov){
							autoonclick.showBrands.showDistricts(prov,listDistricts2);
					}
					function listDistricts2(res){
						var brandChooser = document.getElementById("district");
						brandChooser.options.length = 1;
						var x = res.value;
						branddb = x.split("!");
									
						var db="";
						for (var i = 0; i < branddb.length; i++) {
								db = branddb[i].split(":");
								brandChooser.options[i + 1] = new Option(db[1], db[0]);
						}
						/*if(getIndex(brandChooser,db[1])>0){
							brandChooser.selectedIndex=getIndex(brandChooser,db[1]);
						}*/
						setDistrict();
					}
					function setDistrict(){
						autoonclick.search1_business.getValue(setSelectedDist);
					}
					function setSelectedDist(res){
						var db="";
						var dist = document.getElementById("district");
						db = res.value.split("|");
						if(getIndex(dist,db[1])>0){
							dist.selectedIndex=getIndex(dist,db[1]);
						}
					}
					function setValue(){
						autoonclick.search1_business.getValue(showValue);
					}
					function showValue(res){
						var db="";
						var prov = document.getElementById("province");
						var buzT = document.getElementById("buzType");
						var carT = document.getElementById("carType");
						
						//alert(res.value);
						db = res.value.split("|");
						/*if(db[0]>0){
							showDistrict(db[0]);
						}*/
						if(getIndex(prov,db[0])>0){
							prov.selectedIndex=getIndex(prov,db[0]);
							showDistrict2(db[0]);
							
							/*if(getIndex(dist,db[1])>0){
								dist.selectedIndex=getIndex(dist,db[1]);
							}*/
						}
						if(getIndex(buzT,db[2])>0){
							buzT.selectedIndex=getIndex(buzT,db[2]);
						}
						if(getIndex(carT,db[3])>0){
							carT.selectedIndex=getIndex(carT,db[3]);
						}
						
						//alert(getIndex(prov,db[0]));
						//alert(prov.selectedIndex);
						//prov.selectedIndex=2;
						
					}
					function getIndex(selectObj,valu){
						var x=-1;
						for(i=0;i<=selectObj.length-1;i++){
							if(selectObj.options[i].value==valu){
								x=i;
								break;
							}
						}
						return x;
					}
					/*function newDealer(res){
						var brandChooser = document.getElementById("district");
					}*/
		</script>
				<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
