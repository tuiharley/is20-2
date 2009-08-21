<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft2.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@ Page CodeBehind="package6_change1_sizeterm.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.package6_change1_sizeterm" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
A:active { TEXT-DECORATION: none }
A:link { TEXT-DECORATION: none }
A:visited { TEXT-DECORATION: none }
A:hover { TEXT-DECORATION: none }
</style>
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
// my Script ----//


	function get_radio_value()
	{
	var rad_val= -1;
		if(document.form1.rdNewPack.length=='undefined'){
			if(document.form1.rdNewPack.checked){
				rad_val = document.form1.rdNewPack.value;
			}
		}else{
			for (var i=0; i < document.form1.rdNewPack.length; i++)
			{
			
			if (document.form1.rdNewPack[i].checked)
				{
				rad_val = document.form1.rdNewPack[i].value;
				}
			}
		}
		
	return rad_val;
	}

	function goNext(){
		var newPack;
		newPack = get_radio_value();
		
		if(newPack!=-1){
			autoonclick.package6_change1_sizeterm.setNewPackage(newPack,urlBack);	
		}else{
			alert('¡ÃØ³ÒàÅ×Í¡ Package');
		}
		
	}
	function urlBack(response){
	var url="package6_change2_starttime.aspx";
		if(response.value==1){
			document.location.href=url;
		}
	}
//-->
			</script>
	</HEAD>
	<body onLoad="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="983" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../images/objects/so_ar_o_w.gif" width="19" height="9"><span class="Font_orange">&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3648;&#3619;&#3636;&#3656;&#3617;&#3605;&#3657;&#3609;</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">&#3626;&#3619;&#3640;&#3611;&#3612;&#3621;</span></td>
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
								<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;: 
												&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3651;&#3627;&#3617;&#3656;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;</td>
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
										class="Font_black_LH_17px">
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683"><strong>&#3649;&#3614;&#3585;&#3648;&#3585;&#3592;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3648;&#3604;&#3636;&#3617;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603;&#3588;&#3639;&#3629; 
													:&nbsp;
													<asp:Label id="oldPack" runat="server" CssClass="Font_orange"></asp:Label>
													&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;
													<span class="Font_orange">
														<asp:Label id="oldMonth" runat="server" CssClass="Font_orange"></asp:Label>
													</span>
													&#3648;&#3604;&#3639;&#3629;&#3609;</strong></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="11" colspan="3"><img src="../../../images/dividers/g_693x11.gif" width="693" height="11"></td>
										</tr>
										<tr>
											<td></td>
											<td><strong>&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3649;&#3621;&#3632;&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;</strong><br>
												**&#3586;&#3633;&#3657;&#3609;&#3605;&#3629;&#3609;&#3585;&#3634;&#3619;&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3649; 
												&#3614;&#3588;&#3648;&#3585;&#3592;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3609;&#3637;&#3657;&#3648;&#3611;&#3655;&#3609;&#3585;&#3634;&#3619;&#3619;&#3657;&#3629;&#3591;&#3586;&#3629;&#3617;&#3634;(request) 
												&#3648;&#3607;&#3656;&#3634;&#3609;&#3633;&#3657;&#3609; 
												&#3592;&#3632;&#3617;&#3637;&#3612;&#3621;&#3605;&#3656;&#3629;&#3648;&#3617;&#3639;&#3656;&#3629;&#3588;&#3640;&#3603;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;&#3588;&#3656;&#3634;&#3610; 
												&#3619;&#3636;&#3585;&#3634;&#3619;
												<BR>
												&#3649;&#3621;&#3632;&#3652;&#3604;&#3657;&#3649;&#3592;&#3657;&#3591;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;&#3649;&#3621;&#3657;&#3623;&#3649;&#3621;&#3632;&#3648;&#3619;&#3634;&#3592;&#3632;&#3604;&#3635;&#3648;&#3609;&#3636;&#3609;&#3585;&#3634;&#3619;&#3651;&#3627;&#3657;&#3607;&#3633;&#3609;&#3607;&#3637;
											</td>
											<td></td>
										</tr>
										<tr>
											<td height="11" colspan="3"><img src="../../../images/dividers/g_693x11.gif" width="693" height="11"></td>
										</tr>
										<tr>
											<td></td>
											<td><span class="Font_blue_bold">&#3649;&#3609;&#3632;&#3609;&#3635;! &#3627;&#3634;&#3585;&#3588;&#3640;&#3603;&#3648;&#3621;&#3639;&#3629;&#3585;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;&#3607;&#3637;&#3656;&#3617;&#3637;&#3614;&#3639;&#3657;&#3609;&#3607;&#3637;&#3656;&#3649;&#3621;&#3632;&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;&#3617;&#3634;&#3585;&#3585;&#3623;&#3656;&#3634; &#3588;&#3640;&#3603;&#3592;&#3632;&#3611;&#3619;&#3632;&#3627;&#3618;&#3633;&#3604;&#3652;&#3604;&#3657;&#3617;&#3634;&#3585;&#3606;&#3638;&#3591; 20% </span><br>
												&#3629;&#3633;&#3605;&#3619;&#3634;&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3609;&#3637;&#3657;&#3619;&#3623;&#3617;&#3616;&#3634;&#3625;&#3637;&#3617;&#3641;&#3621;&#3588;&#3656;&#3634;&#3648;&#3614;&#3636;&#3656;&#3617; 
												7% &#3649;&#3621;&#3657;&#3623;<br>
												&#3585;&#3656;&#3629;&#3609;&#3607;&#3637;&#3656;&#3588;&#3640;&#3603;&#3592;&#3632;&#3585;&#3619;&#3632;&#3607;&#3635;&#3585;&#3634;&#3619;&#3651;&#3604;&#3654; 
												&#3586;&#3629;&#3649;&#3609;&#3632;&#3609;&#3635;&#3651;&#3627;&#3657;&#3629;&#3656;&#3634;&#3609;
												<a href="#" class="A_black_underline">&#3586;&#3657;&#3629;&#3605;&#3585;&#3621;&#3591;&#3649;&#3621;&#3632;&#3648;&#3591;&#3639;&#3656;&#3629;&#3609;&#3652;&#3586;&#3585;&#3634;&#3619;&#3651;&#3594;&#3657;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</a>
												&#3586;&#3629;&#3591; AUTO-ONCLICK</td>
											<td></td>
										</tr>
										<tr>
											<td height="5" colspan="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/sl_pack_t2.gif"
										class="Font_white">
										<tr>
											<td width="139"><div align="center">&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</div>
											</td>
											<td width="139"><div align="center">&#3614;&#3639;&#3657;&#3609;&#3607;&#3637;&#3656;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div>
											</td>
											<td width="138"><div align="center">&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;</div>
											</td>
											<td width="138"><div align="center">
													&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;/&#3610;.
												</div>
											</td>
											<td width="139"><div align="center">&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/sl_pack_t2x4.gif"
										class="Font_black">
										<asp:Label id="packageList" runat="server"></asp:Label>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><table border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td>
												<input class='button' id='next' name='next' onmouseover="document.all.next.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.next.className='button'" type="button"
													value='µèÍä»' onClick='goNext();'>
											</td>
											<td width="4"></td>
											<td>
												<asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
													CausesValidation="False" Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" name="cancel_but"></asp:button></td>
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
					<td width="120" valign="top"><img src="../../../images/objects/skyscraper_120x600.gif" width="120" height="600"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
	</body>
</HTML>
