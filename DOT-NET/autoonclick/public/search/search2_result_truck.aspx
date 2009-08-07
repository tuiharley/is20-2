<%@ Page CodeBehind="search2_result_truck.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.search2_result_truck" %>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
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
	<body onload="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif','../../images/buttons/compare_01.gif','../../images/buttons/save_ad_t_01.gif')">
		<form id="form1" name="form1" runat="server">
			<INPUT id="want_comp" type="hidden" size="70" name="want_comp" runat="server">
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
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:label id="searchResult1" runat="server" CssClass="Font_brown">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:label></td>
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
								<td height="15"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693" height="21">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3585;&#3634;&#3619;&#3588;&#3657;&#3609;&#3627;&#3634;:&nbsp;
												<asp:label id="carRange" runat="server" CssClass="Font_black"></asp:label>&#3592;&#3634;&#3585;
												<span class="Font_black_bold">
													<asp:label id="totalCar" runat="server" CssClass="Font_black"></asp:label>
												</span>&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;
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
									<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="693" background="../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="3" height="5"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td>
												<table cellSpacing="0" cellPadding="0" width="683" border="0">
													<tr>
														<td vAlign="top" width="61"><strong>&#3588;&#3657;&#3609;&#3627;&#3634;&#3650;&#3604;&#3618; 
																:</strong></td>
														<td width="5"></td>
														<td width="617"><asp:label id="searchCond" runat="server" CssClass="Font_black"></asp:label></td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="3" height="11"><IMG height="11" src="../../images/dividers/g_693x11.gif" width="693"></td>
										</tr>
										<tr>
											<td></td>
											<td>
												<table cellSpacing="0" cellPadding="0" width="683" border="0">
													<tr>
														<td width="61" rowSpan="2"><FONT face="Tahoma"></FONT></td>
														<td width="5" rowSpan="2"></td>
														<td width="301" height="17">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3621;&#3591;&#3652;&#3623;&#3657;&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609;7 
															&#3623;&#3633;&#3609; 
															&#3649;&#3626;&#3604;&#3591;&#3604;&#3657;&#3623;&#3618;&#3626;&#3633;&#3597;&#3621;&#3633;&#3585;&#3625;&#3603;&#3660;&#3619;&#3641;&#3611;
															<IMG height="12" src="../../images/objects/star.gif" width="13"></td>
														<td width="15" rowSpan="2"></td>
														<td width="301" rowSpan="2">
															<table height="30" cellSpacing="0" cellPadding="0" width="301" align="center" background="../../images/table/sort_t_b.gif"
																border="0">
																<tr>
																	<td noWrap height="21">
																		<div align="center">
																			<table class="H1_white" cellSpacing="0" cellPadding="0" border="0">
																				<tr>
																					<td>&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;&nbsp;
																						<asp:dropdownlist id="Order_By" runat="server" CssClass="Font_black">
																							<asp:ListItem Value="0">&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
																							<asp:ListItem Value="1">&#3611;&#3637;</asp:ListItem>
																							<asp:ListItem Value="2">&#3595;&#3637;&#3595;&#3637;/cc</asp:ListItem>
																							<asp:ListItem Value="3">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</asp:ListItem>
																							<asp:ListItem Value="4">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</asp:ListItem>
																							<asp:ListItem Value="5">&#3629;&#3634;&#3618;&#3640;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:ListItem>
																						</asp:dropdownlist></td>
																					<td width="4"></td>
																					<td><asp:button class="button" id="change_orderby" onmouseover="document.all.change_orderby.className='buttonover'"
																							style="CURSOR: hand" onmouseout="document.all.change_orderby.className='button'" runat="server"
																							CausesValidation="False" name="change_orderby" Text="&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;"></asp:button></td>
																				</tr>
																			</table>
																		</div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td width="301" height="17">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3617;&#3634;&#3585;&#3585;&#3623;&#3656;&#3634; 
															1 &#3619;&#3641;&#3611; 
															&#3649;&#3626;&#3604;&#3591;&#3604;&#3657;&#3623;&#3618;&#3626;&#3633;&#3597;&#3621;&#3633;&#3585;&#3625;&#3603;&#3660;&#3619;&#3641;&#3611;
															<IMG height="9" src="../../images/objects/moreimages.gif" width="12"></td>
													</tr>
												</table>
											</td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="3" height="5"></td>
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
								<td height="15"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td width="80">
												<input id='comp1' onmouseover="document.all.comp1.className='buttonover'" style="CURSOR: hand"
													onmouseout="document.all.comp1.className='button'" class='button' type='button' value='&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;'
													onClick='compare(document.getElementById("want_comp").value);'>
											</td>
											<td width="4"></td>
											<td width="80">
												<input id='addAllCook' onmouseover="document.all.addAllCook.className='buttonover'" style="CURSOR: hand"
													onmouseout="document.all.addAllCook.className='button'" class='button' type='button'
													value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;'
													onClick='saveAllCook();'>
											</td>
											<td width="50"></td>
											<td width="479">
												<div align="right">
													<table>
														<TR>
															<td width="40%"></td>
															<td width="60%">
																<div align="right"><asp:label id="Up_Pages" runat="server"></asp:label></div>
															</td>
														</TR>
													</table>
												</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" border="0">
										<asp:label id="carResult" runat="server"></asp:label></table>
								</td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td width="80">
												<input id='comp2' onmouseover="document.all.comp2.className='buttonover'" style="CURSOR: hand"
													onmouseout="document.all.comp2.className='button'" class='button' type='button' value='&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;'
													onClick='compare(document.getElementById("want_comp").value);'>
											</td>
											<td width="4"></td>
											<td width="80">
												<input id='addAllCook2' onmouseover="document.all.addAllCook2.className='buttonover'" style="CURSOR: hand"
													onmouseout="document.all.addAllCook2.className='button'" class='button' type='button'
													value='&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;'
													onClick='saveAllCook();'>
											</td>
											<td width="50"></td>
											<td width="479">
												<div align="right">
													<table>
														<TR>
															<td width="40%"></td>
															<td width="60%">
																<div align="right"><asp:label id="Down_Pages" runat="server"></asp:label></div>
															</td>
														</TR>
													</table>
												</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><asp:label id="searchResult2" runat="server" CssClass="Font_brown">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:label></td>
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
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script src="../../j_script/cookie.js" type="text/javascript"></script>
		<script language="javascript">
		function getCheckBox(TF,carid,curpage){		
			var tmptxt;
			if(TF){
					document.all['want_comp'].value += ':' + carid;
			}else{
				document.all['want_comp'].value = '';
				for(i=1;i<=<%=session("totalCar")%>;i++){
					if(document.all['carCheck' + i].checked){
						document.all['want_comp'].value += ':' + document.all['carCheck' + i].value;
					}
				}
				//document.all['want_comp'].value = tmptxt + document.all['want_comp'].value;
			}	
			//alert(document.all['want_comp'].value);
		}
		function makeCheckBox(){
		//alert(document.all['want_comp'].value);
			if(document.all['want_comp'].value != ''){
				if(document.all['want_comp'].value.indexOf(':') != -1){
				
				}else{
					for(i=1;i<=document.all['rowsid'].value;i++){
						if(document.all['carCheck' + i].value == document.all['want_comp'].value){
							document.all['carCheck' + i].checked = true;
						}
					}
				}
			}
		}
		function picPopUp(carid){
			var winWidth = 360;
			var winHeight = 600;
			var url = 'pic_popup/show_pics_truck.aspx?carid='+carid+'&cat=3';
			prolong_win = window.open(url, 'Photos', 'width=' + winWidth + ',height=' + winHeight + ',toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no')
		}
		function addCar(carid) {
					var x = getCookie('saveCar');
					setCookie('saveCar', x+'truck:'+carid+':,', getExpDate(60, 0, 0),'/');
				}
		function incSaveNum() {
			var x = getCookie('saveCarNum');
			if(x==''){
				setCookie('saveCarNum', 1, getExpDate(60, 0, 0),'/');
			}else{
				if(x==20){
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡»ÃÐ¡ÒÈà¡Ô¹ 20 »ÃÐ¡ÒÈä´é¤èÐ');
				}else{
					setCookie('saveCarNum', ++x, getExpDate(60, 0, 0),'/');
				}
			}
		}
		function noDup(carid) {
			var oStringObject = new String(getCookie('saveCar'));
			if(oStringObject.indexOf('truck:'+carid+':,')!=-1){
				alert('¤Ø³ä´é·Ó¡ÒÃºÑ¹·Ö¡»ÃÐ¡ÒÈäÇéáÅéÇ');
				return false;
			}else{
				return true;
			}
					
		}
		function getCarNum(){
			var x = getCookie('saveCarNum');
			var ans;
				if(x==''){
					ans = 0;
				}else{
					ans = x;
				}
			return ans;
		}
		function saveAdv(carid){
			if(noDup(carid)){
				if(getCarNum()<20){
					addCar(carid);
					incSaveNum();
					alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
				}else{
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡ä´éà¡Ô¹ 20 »ÃÐ¡ÒÈ');
				}
			}
		}
		function noDup2(carid) {
			var oStringObject = new String(getCookie('saveCar'));
			if(oStringObject.indexOf('truck:'+carid+':,')!=-1){
				//alert('¤Ø³ä´é·Ó¡ÒÃºÑ¹·Ö¡»ÃÐ¡ÒÈäÇéáÅéÇ');
				return false;
			}else{
				return true;
			}
					
		}
		function saveAdv2(carid){
			if(noDup2(carid)){
				if(getCarNum()<20){
					addCar(carid);
					incSaveNum();
					//alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
				}else{
					alert('äÁèÊÒÁÒÃ¶ºÑ¹·Ö¡ä´éà¡Ô¹ 20 »ÃÐ¡ÒÈ');
				}
			}
		}
		
		function saveAllCook(){
		 var checkT = false;
			for(j=0;j<=document.form1.carCheck.length-1;j++){
				if(document.form1.carCheck(j).checked){
					checkT = true;
				}
			}
			if(checkT){
				var tmpStr;
				var carID;
				tmpStr = document.all['want_comp'].value;
				tmpStr = tmpStr.substr(1,tmpStr.length);
				carID = tmpStr.split(':');
				for(i=0;i<=carID.length-1;i++){
					saveAdv2(carID[i]);
				}
				alert('ºÑ¹·Ö¡»ÃÐ¡ÒÈàÃÕÂºÃéÍÂ');
			}
		}
		
		function compare(comp){
			if(comp==''){
				alert('è¤Ø³ÂÑ§äÁèä´éàÅ×Í¡»ÃÐ¡ÒÈ');
			}else{
			  autoonclick.search2_result_truck.goComparePage(comp,UrlBack);
			}
			
		}
		function UrlBack(res){
		//alert(res.value);
			//var win=window.open(res.value,'Compare');
			popup2(res.value,'Compare');
		}
		function popup2(mylink, windowname)
		{
			if (! window.focus)return true;
			var href;
			if (typeof(mylink) == 'string')
				href=mylink;
			else
				href=mylink.href;
			window.open(href, windowname);
			return false;
		}
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
