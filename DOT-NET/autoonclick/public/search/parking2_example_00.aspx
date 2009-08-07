<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@ Page CodeBehind="parking2_example_00.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.parking2_example_00" enableViewState="True" enableViewStateMac="True"%>
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
			<INPUT id="want_comp" type="hidden" size="70" name="want_comp" >
			<INPUT id="want_comp_moto" type="hidden" size="70" name="want_comp_moto" >
			<INPUT id="want_comp_truck" type="hidden" size="70" name="want_comp_truck" >
			<INPUT id="want_comp_part" type="hidden" size="70" name="want_comp_part" >
			<INPUT id="carType" type="hidden" size="70" name="carType" >
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693">
						
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
											<td>&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;</td>
											<td width="100"></td>
											<td>
												<div align="right">&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3649;&#3621;&#3657;&#3623;
													<span class="Font_black_bold"><%=Session("saveCarNum")%></span>
													&#3592;&#3634;&#3585; 
													&#3614;&#3639;&#3657;&#3609;&#3607;&#3637;&#3656;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;
													<span class="Font_black_bold">20</span>
													&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;
												</div>
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
											<td width="683"><strong>&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3648;&#3621;&#3639;&#3629;&#3585;&#3652;&#3623;&#3657;&#3652;&#3604;&#3657;&#3648;&#3585;&#3655;&#3610;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3652;&#3623;&#3657;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;</strong></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="3" height="10"></td>
										</tr>
										<tr>
											<td></td>
											<td><strong>"&#3607;&#3640;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3606;&#3641;&#3585;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3592;&#3632;&#3606;&#3641;&#3585;&#3621;&#3610;&#3607;&#3636;&#3657;&#3591;&#3650;&#3604;&#3618;&#3629;&#3633;&#3605;&#3650;&#3609;&#3617;&#3633;&#3605;&#3636; 
													&#3627;&#3634;&#3585;&#3588;&#3640;&#3603;&#3652;&#3617;&#3656;&#3648;&#3586;&#3657;&#3634;&#3617;&#3634;&#3651;&#3594;&#3657;&#3616;&#3634;&#3618;&#3651;&#3609; 
													60 &#3623;&#3633;&#3609;"</strong></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="3" height="10"></td>
										</tr>
										<tr>
											<td></td>
											<td>
												<table cellSpacing="0" cellPadding="0" width="683" border="0">
													<tr>
														<td width="50"><strong>&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;&#3629;&#3639;&#3656;&#3609;&#3654;</strong></td>
														<td width="10" rowSpan="3"></td>
														<td width="623">
															<li>
																&#3606;&#3657;&#3634;&#3627;&#3634;&#3585;&#3623;&#3656;&#3634;&#3652;&#3604;&#3657;&#3617;&#3637;&#3585;&#3634;&#3619;&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3649;&#3611;&#3621;&#3591;&#3619;&#3634;&#3588;&#3634;&#3651;&#3609;&#3586;&#3603;&#3632;&#3607;&#3637;&#3656;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3606;&#3641;&#3585;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3649;&#3621;&#3657;&#3623; 
																&#3609;&#3633;&#3656;&#3609;&#3627;&#3617;&#3634;&#3618;&#3606;&#3638;&#3591;&#3617;&#3633;&#3609;&#3592;&#3632;&#3606;&#3641;&#3585;&#3649;&#3626;&#3604;&#3591;&#3652;&#3623;&#3657;&#3604;&#3657;&#3623;&#3618;&#3649;&#3621;&#3657;&#3623;</li></td>
													</tr>
													<tr>
														<td width="50"></td>
														<td width="623">
															<li>
																&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3648;&#3614;&#3639;&#3656;&#3629;&#3648;&#3611;&#3655;&#3609;&#3588;&#3635;&#3629;&#3608;&#3636;&#3610;&#3634;&#3618;&#3626;&#3633;&#3657;&#3609;&#3654;</li></td>
													</tr>
													<tr>
														<td width="50"></td>
														<td width="623">
															<li>
																&#3588;&#3640;&#3603;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3626;&#3656;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3652;&#3623;&#3657;&#3651;&#3627;&#3657;&#3648;&#3614;&#3639;&#3656;&#3629;&#3609;&#3654;&#3652;&#3604;&#3657;&#3604;&#3657;&#3623;&#3618;&#3648;&#3594;&#3656;&#3609;&#3585;&#3633;&#3609;</li></td>
													</tr>
												</table>
											</td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="3" height="11"><IMG height="11" src="../../images/dividers/g_693x11.gif" width="693"></td>
										</tr>
										<tr>
											<td></td>
											<td>&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3617;&#3634;&#3585;&#3585;&#3623;&#3656;&#3634; 
												1 &#3619;&#3641;&#3611; 
												&#3649;&#3626;&#3604;&#3591;&#3604;&#3657;&#3623;&#3618;&#3626;&#3633;&#3597;&#3621;&#3633;&#3585;&#3625;&#3603;&#3660;&#3619;&#3641;&#3611;
												<IMG height="9" src="../../images/objects/moreimages.gif" width="12"></td>
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
									<table cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><select class="Font_black" id="commands1" style="WIDTH: 118px" name="commands1" onchange='document.form1.commands2.value=document.form1.commands1.value;'>
													<option value="0"  selected>&#3650;&#3611;&#3619;&#3604;&#3648;&#3621;&#3639;&#3629;&#3585;&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</option>
													<option value="1">&#3621;&#3610;</option>
													<option value="2">&#3626;&#3656;&#3591;&#3651;&#3627;&#3657;&#3648;&#3614;&#3639;&#3656;&#3629;&#3609;</option>
													<option value="3">&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;</option>
													<option value="4">&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;</option>
												</select></td>
											<td width="4"></td>
											<td><input class="button" id="go1" onmouseover="document.all.go1.className='buttonover'" style="CURSOR: hand"
													onclick="doCommand(document.form1.commands1.value,<%=Session("saveCarNum")%>);" onmouseout="document.all.go1.className='button'"
													type="button" value="GO!" name="go1"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table class="All_Border_black" cellSpacing="0" cellPadding="0" width="118" border="0">
										<tr class="Font_black">
											<td width="25" bgColor="#999999">
												<div align="center">
													<input class="Font_black" onclick="checkAll(document.form1.carCheck,this.checked,<%=Session("saveCarNum")%>)" type="checkbox"
														value="checkbox" name="CheckAll1" id='CheckAll1'>
												</div>
											</td>
											<td width="1" bgColor="#000000"></td>
											<td width="90" bgColor="#e8e8e8">
												<div align="center">&#3648;&#3621;&#3639;&#3629;&#3585;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="7"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" border="0">
										<asp:label id="result" runat="server"></asp:label></table>
								</td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="7"></td>
							</tr>
							<tr>
								<td>
									<table class="All_Border_black" cellSpacing="0" cellPadding="0" width="118" border="0">
										<tr class="Font_black">
											<td width="25" bgColor="#999999">
												<div align="center">
													<input class="Font_black" onclick="checkAll(document.form1.carCheck,this.checked,<%=Session("saveCarNum")%>)" type="checkbox"
														value="checkbox" name="CheckAll2" id='CheckAll2'>
												</div>
											</td>
											<td width="1" bgColor="#000000"></td>
											<td width="90" bgColor="#e8e8e8">
												<div align="center">&#3648;&#3621;&#3639;&#3629;&#3585;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</div>
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
									<table cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><select class="Font_black" id="commands2" style="WIDTH: 118px" name="commands2" onchange='document.form1.commands1.value=document.form1.commands2.value;'>
													<option value="0" selected>&#3650;&#3611;&#3619;&#3604;&#3648;&#3621;&#3639;&#3629;&#3585;&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</option>
													<option value="1">&#3621;&#3610;</option>
													<option value="2">&#3626;&#3656;&#3591;&#3651;&#3627;&#3657;&#3648;&#3614;&#3639;&#3656;&#3629;&#3609;</option>
													<option value="3">&#3610;&#3633;&#3609;&#3607;&#3638;&#3585;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;</option>
													<option value="4">&#3648;&#3611;&#3619;&#3637;&#3618;&#3610;&#3648;&#3607;&#3637;&#3618;&#3610;</option>
												</select></td>
											<td width="4"></td>
											<td><input class="button" id="go2" onmouseover="document.all.go2.className='buttonover'" style="CURSOR: hand"
													onclick="doCommand(document.form1.commands2.value,<%=Session("saveCarNum")%>);" onmouseout="document.all.go2.className='button'"
													type="button" value="GO!" name="go2">
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
									
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
				</table>
			<INPUT id="carNum" type="hidden" name="carNum" runat="server"> 
			</TABLE>
			</form>
		<script type='text/javascript' src="../../j_script/cookie.js"></script>
		<script language="javascript">
		
		deleteCookie('saveCar','/');
		deleteCookie('saveCarNum','/');
		setCookie('saveCar', '<%=Session("saveCar")%>', getExpDate(60, 0, 0),'/'); 
		setCookie('saveCarNum', '<%=Session("saveCarNum")%>', getExpDate(60, 0, 0),'/');
		
		//var sURL = unescape(window.location.pathname);
		var sURL = unescape('blank_menu.aspx');
		function refresh()
		{
			window.location.href = sURL;
		}
		function addCar(num) {
					var x;
					
					deleteCookie('saveCar','/');
					deleteCookie('saveCarNum','/');
					if(num!=1){
						for(n=0;n<num;n++){
							x = getCookie('saveCar');
							setCookie('saveCar', x+document.form1.M[n].value+document.form1.Msg[n].value+',', getExpDate(60, 0, 0),'/'); 
							incSaveNum();
						}
					}else{
						setCookie('saveCar', document.form1.M.value+document.form1.Msg.value+',', getExpDate(60, 0, 0),'/'); 
						incSaveNum();
					} 
		}
		function addCar1(carNID) {
					var x = getCookie('saveCar');
					alert(carNID);
					setCookie('saveCar', x+carNID+',', getExpDate(60, 0, 0),'/');
		}
		function addCarMsg1(num) {
					var x;
					
					deleteCookie('saveCar','/');
					deleteCookie('saveCarNum','/');
					if(num!=1){
						for(n=0;n<num;n++){
							x = getCookie('saveCar');
							if(!document.form1.carCheck[n].checked){
								setCookie('saveCar', x+document.form1.M[n].value+document.form1.Msg[n].value+',', getExpDate(60, 0, 0),'/'); 
								incSaveNum();
							}
						}
					}
					//alert('ºÑ¹·Ö¡àÃÕÂºÃéÍÂ¤èØÐ');
		}
		function addCarMsg(num) {
					var x;
					
					deleteCookie('saveCar','/');
					deleteCookie('saveCarNum','/');
					if(num!=1){
						for(n=0;n<num;n++){
							x = getCookie('saveCar');
							
							if(document.form1.carCheck[n].checked){
								setCookie('saveCar', x+document.form1.M[n].value+document.form1.Msg[n].value+',', getExpDate(60, 0, 0),'/'); 
							}else{
								setCookie('saveCar', x+document.form1.M[n].value+',', getExpDate(60, 0, 0),'/'); 
							}
							incSaveNum();
						}
					}else{
						setCookie('saveCar', document.form1.M.value+document.form1.Msg.value+',', getExpDate(60, 0, 0),'/'); 
						incSaveNum();
					} 
		}
		function incSaveNum() {
					var x = getCookie('saveCarNum');
					if(x==''){
						setCookie('saveCarNum', 1, getExpDate(60, 0, 0),'/');
					}else{
						setCookie('saveCarNum', ++x, getExpDate(60, 0, 0),'/');
					}
		}
		function isChecked(num){
		var result = false;
			if(num!=1){
				for(n=0;n<num;n++){
					if(document.form1.carCheck[n].checked){
						result = true;
					}
				}
			}else{
				if(document.form1.carCheck.checked){
						result = true;
				}
			}
			
			return result;
		}
		function doCommand(i,num){
			switch (i){
				case '0':
					alert('¤Ø³ÂÑ§äÁèä´éàÅ×Í¡¤ÓÊÑè§¤èÐ');
					break;
				case '1':
					if(isChecked(num)){
						addCarMsg1(num);
						alert('»ÃÐ¡ÒÈ¶Ù¡ÅºáÅéÇ');
						refresh();
					}else{
						alert('¤Ø³ÂÑ§äÁèä´éàÅ×Í¡»ÃÐ¡ÒÈã´æ');
					}
					
					break;
				case '2':
					//alert('·Ó¡ÒÃ¨Ñ´Êè§àÃÕÂºÃéÍÂ¤èÐ');
					break;
				case '3':
					if(isChecked(num)){
						addCar(num);
						alert('»ÃÐ¡ÒÈ¶Ù¡ºÑ¹·Ö¡áÅéÇ¤èÐ');
						refresh();
					}else{
						alert('¤Ø³ÂÑ§äÁèä´éàÅ×Í¡»ÃÐ¡ÒÈã´æ');
					}
					break;
				case '4':
					if(num!=1){
						var number = 0;
						var car;
						
						/*if(	document.getElementById('carType').value.indexOf('car')>=0
							&& document.getElementById('carType').value.indexOf('bike')>=0)
						{alert('no');}
						if(	document.getElementById('carType').value.indexOf('car')>=0
							&& document.getElementById('carType').value.indexOf('bike')>=0
							&& document.getElementById('carType').value.indexOf('truck')>=0)
						{alert('no');}
						if(	document.getElementById('carType').value.indexOf('car')>=0
							&& document.getElementById('carType').value.indexOf('bike')>=0
							&& document.getElementById('carType').value.indexOf('truck')>=0
							&& document.getElementById('carType').value.indexOf('part')>=0)
						{alert('no');}
						if(	document.getElementById('carType').value.indexOf('bike')>=0
							&& document.getElementById('carType').value.indexOf('truck')>=0)
						{alert('no');}
						if(	document.getElementById('carType').value.indexOf('bike')>=0
							&& document.getElementById('carType').value.indexOf('truck')>=0
							&& document.getElementById('carType').value.indexOf('part')>=0)
						{alert('no');}
						if(	document.getElementById('carType').value.indexOf('truck')>=0
							&& document.getElementById('carType').value.indexOf('part')>=0)
						{alert('no');}*/
						
						if(document.getElementById('carType').value.indexOf('car')>=0){number+=1;car='car';}
						if(document.getElementById('carType').value.indexOf('bike')>=0){number+=1;car='bike';}
						if(document.getElementById('carType').value.indexOf('truck')>=0){number+=1;car='truck';}
						if(document.getElementById('carType').value.indexOf('part')>=0){number+=1;car='part';}
						switch(number){
							case 0:
								alert('¤Ø³ÂÑ§äÁèä´éàÅ×Í¡ÃÒÂ¡ÒÃ¤èÐ');
								break;
							case 1:
								compare(document.getElementById("want_comp").value,car);	
								break;
							default:
								alert('äÁèÊÒÁÒÃ¶·Ó¡ÒÃà»ÃÕÂºà·ÕÂºÃ¶·ÕèµèÒ§ª¹Ô´¡Ñ¹ä´é¤èÐ');
								break;
						}
					}else{
						alert('ÁÕÃÒÂ¡ÒÃà´ÕÂÇäÁèÊÒÁÒÃ¶à»ÃÕÂºà·ÕÂºä´é');
					}
					break;
				case '5':
					deleteCookie('saveCar','/');
					deleteCookie('saveCarNum','/');
					//deleteCookie('saveCarMsg','/');
					alert('»ÃÐ¡ÒÈ¶Ù¡ÅºáÅéÇ');
					refresh();
					break;
			}
		
		}
		function getCheckBox(TF,carid,num,cat,rowid){		
			var tmptxt;
			var t='want_comp';
			var c;
			switch(cat){
				case 1:
					c = 'car';
					break;
				case 2:
					c = 'bike';
					break;
				case 3:
					c = 'truck';
					break;
				case 4:
					c = 'part';
					break;
					
			}
			if(TF){
					document.all[t].value += ';' + carid;
					document.form1.carType.value+=c;
					if(num==1){
						document.all['checkB'].value=c;
					}else{
						document.form1.checkB[rowid].value=c;
					}
			}else{
				document.all[t].value = '';
				document.form1.checkB[rowid].value='';
				document.form1.carType.value='';
				if(num!=1){
					for(i=0;i<=num-1;i++){
						if(document.form1.carCheck[i].checked){
							document.all[t].value += ';' + document.form1.carCheck[i].value;
							document.form1.carType.value += document.form1.checkB[i].value;
						}
					}
				}	
			}	
		}
		function checkAll(field,checkEd,num){
				var myArray;
				if(!checkEd){
					if(num!=1){
						for (i = 0; i < field.length; i++){
							field[i].checked = false ;
							document.form1.checkB[i].value='';
						}
					}else{
						field.checked=false;
						document.form1.checkB.value='';
					}
					document.form1.CheckAll2.checked=false;
					document.form1.CheckAll1.checked=false;
					document.form1.carNum.value=0;
					document.all['want_comp'].value='';
					document.form1.carType.value='';
				}else{
					document.all['want_comp'].value='';
					document.form1.carType.value='';
					if(num!=1){
						for (i = 0; i < field.length; i++){
							myArray=document.form1.carCheck[i].value.split(':');
							field[i].checked = true ;
							document.all['want_comp'].value += ';' + document.form1.carCheck[i].value;
							document.form1.checkB[i].value=myArray[0];
							document.form1.carType.value += document.form1.checkB[i].value;
							
						}
					}else{
						myArray=document.form1.carCheck.value.split(':');
						field.checked=true;
						document.all['want_comp'].value = ';' + document.form1.carCheck.value;
						document.form1.checkB.value=myArray[0];
						document.form1.carType.value += document.form1.checkB.value;
					}
									
					document.form1.CheckAll2.checked=true;
					document.form1.CheckAll1.checked=true;
					document.form1.carNum.value=<%=Session("saveCarNum")%>;
				}
		}
		function picPopUp(carid,cat){
					var winWidth = 360;
					var winHeight = 660;
					var url;
					switch(cat){
						case 1 :
							url = 'pic_popup/show_pics.aspx?carid='+carid+'&cat='+cat;
							break;
						case 2 :
							url = 'pic_popup/show_pics_moto.aspx?carid='+carid+'&cat='+cat;
							break;
						case 3 :
							url = 'pic_popup/show_pics_truck.aspx?carid='+carid+'&cat='+cat;
							break;
						case 4 :
							url = 'pic_popup/show_pics_part.aspx?carid='+carid+'&cat='+cat;
							break;
							
					}
					
					prolong_win = window.open(url, 'Photos', 'width=' + winWidth + ',height=' + winHeight + ',toolbar=no,location=no,directories=no,status=no,menubar=no, scrollbars=no,resizable=no,copyhistory=no')
		}
		
		function compare(comp,cat){
			  autoonclick.parking2_example_00.goComparePage(comp,cat,UrlBack);
		}
		function UrlBack(res){
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
