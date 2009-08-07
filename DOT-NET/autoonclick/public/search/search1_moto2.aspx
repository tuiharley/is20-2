<%@Register TagPrefix="model" TagName="model_list" Src="list/model_moto_list_search.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="province" TagName="province_list" Src="list/province_list_search.ascx"%>
<%@ Page CodeBehind="search1_moto2.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.search1_moto2" %>
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
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_b.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3588;&#3657;&#3609;&#3627;&#3634;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;&#3629;&#3618;&#3656;&#3634;&#3591;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</td>
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
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../images/photos/detail_moto_search.jpg"
										border="0">
										<TBODY>
											<tr>
												<td colSpan="11" height="10"></td>
											</tr>
											<asp:Label id="txtNotFound" runat="server"></asp:Label>
								</td>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td background="../../images/header/dtl_s_v.gif" colSpan="3" height="17">
									<div align="center"><strong class="Font_black_bold">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3619;&#3606;</strong></div>
								</td>
								<td colSpan="7"></td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right"><strong>&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;</strong></div>
								</td>
								<td width="10"></td>
								<td width="200"><SELECT class="Font_black" id="Brands" onchange="setBrandIndex('brandIndex',this.selectedIndex);setBrandIndex('modelIndex',0);model_list('Model',this.selectedIndex,'');"
										name="Brands" runat="server">
										<OPTION selected></OPTION>
									</SELECT></td>
								<td width="10"><FONT face="Tahoma"></FONT></td>
								<td width="86">
									<div align="right"><strong>&#3619;&#3634;&#3588;&#3634;</strong></div>
								</td>
								<td width="10"></td>
								<td width="137"><asp:dropdownlist id="Price1" runat="server" Width="100%" DataValueField="Price1_Value" DataTextField="Price1"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"><FONT face="Tahoma"></FONT></td>
								<td width="137"><asp:dropdownlist id="Price2" runat="server" Width="100%" DataValueField="Price2_Value" DataTextField="Price2"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right"><strong>&#3619;&#3640;&#3656;&#3609;</strong></div>
								</td>
								<td width="10"></td>
								<td width="200"><SELECT class="Font_black" id="Model" onchange="setBrandIndex('modelIndex',this.selectedIndex);"
										name="Model" runat="server">
										<OPTION selected></OPTION>
									</SELECT></td>
								<td width="10"></td>
								<td width="86">
									<div align="right"><strong>&#3611;&#3637;</strong></div>
								</td>
								<td width="10"></td>
								<td width="137"><asp:dropdownlist id="Year1" runat="server" Width="100%" DataValueField="Lyear_value" DataTextField="LYEAR"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
								<td width="137"><asp:dropdownlist id="Year2" runat="server" Width="100%" DataValueField="RYear_Value" DataTextField="RYEAR"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right"><strong>&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</strong></div>
								</td>
								<td width="10"></td>
								<td width="200"><asp:dropdownlist id="status" runat="server" Width="95%" DataValueField="status" DataTextField="status_name"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="10"><FONT face="Tahoma"></FONT></td>
								<td width="86">
									<div align="right"><strong>&#3595;&#3637;&#3595;&#3637;/cc</strong></div>
								</td>
								<td width="10"></td>
								<td width="137"><asp:dropdownlist id="CC1" runat="server" Width="100%" DataValueField="LCC_Value" DataTextField="LCC"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
								<td width="137"><asp:dropdownlist id="CC2" runat="server" Width="100%" DataValueField="RCC_Value" DataTextField="RCC"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
								</td>
								<td width="10"></td>
								<td width="200"><asp:dropdownlist id="cartype" runat="server" Width="95%" DataValueField="cartype" DataTextField="cartype_name"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="10"></td>
								<td width="86">
									<div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
								</td>
								<td width="10"></td>
								<td width="137"><asp:dropdownlist id="power1" runat="server" Width="100%" DataValueField="LPower_Value" DataTextField="LPower"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
								<td width="137"><asp:dropdownlist id="power2" runat="server" Width="100%" DataValueField="RPower_Value" DataTextField="RPower"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right">&#3586;&#3633;&#3610;&#3648;&#3588;&#3621;&#3639;&#3656;&#3629;&#3609;</div>
								</td>
								<td width="10"></td>
								<td width="200"><FONT face="Tahoma">
										<asp:dropdownlist id="drive" runat="server" Width="95%" DataValueField="drive" DataTextField="drive_name"
											CssClass="Font_black"></asp:dropdownlist>
									</FONT>
								</td>
								<td width="10"></td>
								<td width="86">
									<div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
								</td>
								<td width="10"></td>
								<td width="137"><asp:dropdownlist id="mile1" runat="server" Width="100%" DataValueField="LMile_Value" DataTextField="LMile"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
								<td width="137"><asp:dropdownlist id="mile2" runat="server" Width="100%" DataValueField="RMile_Value" DataTextField="RMile"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
								</td>
								<td width="10"></td>
								<td width="200"><asp:dropdownlist id="enginetype" runat="server" Width="95%" DataValueField="enginetype" DataTextField="enginetype_name"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td width="10"></td>
								<td width="86">
									<div align="right">&#3626;&#3637;</div>
								</td>
								<td width="10"></td>
								<td width="137"><asp:dropdownlist id="color" runat="server" DataValueField="color" DataTextField="color_name" CssClass="Font_black"
										Width="100%"></asp:dropdownlist></td>
								<td width="5"></td>
								<td width="137"><asp:checkbox id="metalic" runat="server" Text="&#3648;&#3617;&#3607;&#3634;&#3621;&#3636;&#3588;"></asp:checkbox></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td height="21"></td>
								<td><div align="right">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
								</td>
								<td></td>
								<td><asp:dropdownlist id="gear" runat="server" Width="95%" DataValueField="gear" DataTextField="gear_name"
										CssClass="Font_black"></asp:dropdownlist></td>
								<td></td>
								<td><div align="right"><FONT face="Tahoma"></FONT></div>
								</td>
								<td></td>
								<td>&nbsp;</td>
								<td></td>
								<td>&nbsp;</td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td background="../../images/header/dtl_s_v.gif" colSpan="3" height="17">
									<div class="Font_black_bold" align="center">&#3607;&#3637;&#3656;&#3605;&#3633;&#3657;&#3591;</div>
								</td>
								<td colSpan="7"><FONT face="Tahoma"></FONT></td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"><FONT face="Tahoma"></FONT></td>
							</tr>
							<tr>
								<td width="5" height="21"></td>
								<td width="88">
									<div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
								</td>
								<td width="10"></td>
								<td width="200"><SELECT class="Font_black" id="Province" onchange="setBrandIndex('proinceIndex',this.selectedIndex);setBrandIndex('districtIndex',0);district_list('district',this.selectedIndex,0);"
										name="Province" runat="server">
										<OPTION selected></OPTION>
									</SELECT></td>
								<td width="10"></td>
								<td width="86">
									<div align="right">&#3648;&#3586;&#3605;</div>
								</td>
								<td width="10"></td>
								<td width="137"><SELECT class="Font_black" id="District" name="District" onchange="setBrandIndex('districtIndex',this.selectedIndex);"
										runat="server">
										<OPTION selected></OPTION>
									</SELECT></td>
								<td width="5"></td>
								<td width="137"></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td background="../../images/header/dtl_s_v.gif" colSpan="3" height="17">
									<div class="Font_black_bold" align="center">&#3585;&#3634;&#3619;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</div>
								</td>
								<td colSpan="7"><FONT face="Tahoma"></FONT></td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="8"></td>
							</tr>
							<tr>
								<td height="26"></td>
								<td>
									<div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
								</td>
								<td></td>
								<td width="200"><asp:dropdownlist id="Insurrance" runat="server" Width="159px" CssClass="Font_black">
										<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
										<asp:ListItem Value="1">&#3652;&#3617;&#3656;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</asp:ListItem>
									</asp:dropdownlist></td>
								<td></td>
								<td width="86">
									<div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;<br>
										(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)*</div>
								</td>
								<td></td>
								<td width="137"><asp:dropdownlist id="accident" runat="server" Width="137px" CssClass="Font_black">
										<asp:ListItem Value="0">&#3652;&#3617;&#3656;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</asp:ListItem>
										<asp:ListItem Value="1">&#3649;&#3626;&#3604;&#3591;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
										<asp:ListItem Value="2">&#3649;&#3626;&#3604;&#3591;&#3648;&#3593;&#3614;&#3634;&#3632;&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;</asp:ListItem>
									</asp:dropdownlist></td>
								<td></td>
								<td width="137"><FONT face="Tahoma"></FONT></td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="7"></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<div align="right">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;</div>
								</td>
								<td></td>
								<td width="200"><asp:dropdownlist id="showPic" runat="server" Width="159px" CssClass="Font_black">
										<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
										<asp:ListItem Value="1">&#3649;&#3626;&#3604;&#3591;&#3648;&#3593;&#3614;&#3634;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3617;&#3637;&#3619;&#3641;&#3611;</asp:ListItem>
									</asp:dropdownlist></td>
								<td></td>
								<td width="86">
									<div align="right">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3619;&#3632;&#3610;&#3640;&#3619;&#3634;&#3588;&#3634;</div>
								</td>
								<td></td>
								<td width="137"><asp:dropdownlist id="showPrice" runat="server" Width="137px" CssClass="Font_black">
										<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
										<asp:ListItem Value="1">&#3649;&#3626;&#3604;&#3591;&#3648;&#3593;&#3614;&#3634;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3619;&#3632;&#3610;&#3640;&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
									</asp:dropdownlist></td>
								<td></td>
								<td width="137"></td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td height="21"></td>
								<td>
									<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3612;&#3641;&#3657;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</div>
								</td>
								<td></td>
								<td width="200"><asp:dropdownlist id="SaleType" runat="server" Width="160px" CssClass="Font_black">
										<asp:ListItem Value="0">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;</asp:ListItem>
										<asp:ListItem Value="1">&#3610;&#3640;&#3588;&#3588;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611; / &#3648;&#3592;&#3657;&#3634;&#3586;&#3629;&#3591;&#3586;&#3634;&#3618;&#3648;&#3629;&#3591;</asp:ListItem>
										<asp:ListItem Value="2">&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619; / &#3612;&#3641;&#3657;&#3649;&#3607;&#3609;&#3592;&#3635;&#3627;&#3609;&#3656;&#3634;&#3618;</asp:ListItem>
									</asp:dropdownlist></td>
								<td></td>
								<td width="86">
									<div align="right">&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;</div>
								</td>
								<td></td>
								<td width="137"><asp:dropdownlist id="order_by" runat="server" Width="137px" CssClass="Font_black">
										<asp:ListItem Value="0">&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
										<asp:ListItem Value="1">&#3611;&#3637;</asp:ListItem>
										<asp:ListItem Value="2">&#3595;&#3637;&#3595;&#3637; / CC</asp:ListItem>
										<asp:ListItem Value="3">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</asp:ListItem>
										<asp:ListItem Value="4">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</asp:ListItem>
										<asp:ListItem Value="5">&#3629;&#3634;&#3618;&#3640;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:ListItem>
									</asp:dropdownlist></td>
								<td></td>
								<td width="137">
									<div align="right">&nbsp;
										<asp:button class="button" id="doSearch" onmouseover="document.all.doSearch.className='buttonover'"
											style="CURSOR: hand" onmouseout="document.all.doSearch.className='button'" runat="server"
											Text="&#3588;&#3657;&#3609;&#3627;&#3634;" name="doSearch"></asp:button>
									</div>
								</td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td background="../../images/header/dtl_s_v.gif" colSpan="3" height="17">
									<div class="Font_black_bold" align="center">&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;</div>
								</td>
								<td colSpan="7"></td>
								<td width="5"></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td height="86"></td>
								<td></td>
								<td></td>
								<td colSpan="7" valign="top">
									<table cellSpacing="0" cellPadding="0" width="574" border="0">
										<tr>
											<td width="188" height="17">
												<asp:checkboxlist id="accessory1" runat="server" CssClass="Font_black" DataTextField="accessory_name"
													DataValueField="accessory"></asp:checkboxlist></td>
											<td width="5" height="17"></td>
											<td width="188" height="17">
												<asp:checkboxlist id="accessory2" runat="server" CssClass="Font_black" DataTextField="accessory_name"
													DataValueField="accessory"></asp:checkboxlist></td>
											<td width="5" height="17"></td>
											<td width="188" height="17"><FONT face="Tahoma">
													<asp:checkboxlist id="accessory3" runat="server" CssClass="Font_black" DataTextField="accessory_name"
														DataValueField="accessory"></asp:checkboxlist></FONT></td>
										</tr>
									</table>
								</td>
								<td></td>
							</tr>
							<tr>
								<td colSpan="11" height="10"></td>
							</tr>
							<tr>
								<td height="0"></td>
								<td></td>
								<td></td>
								<td width="200"></td>
								<td></td>
								<td width="86"></td>
								<td></td>
								<td width="137"></td>
								<td></td>
								<td width="137"></td>
								<td></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
				</tr>
				<tr>
					<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<asp:validationsummary id="vsmSummary" runat="server" ForeColor="DarkRed" showcustompopup="True" customurl="../../Class/Msgbox.aspx"
				customwidth="225" customheight="300" customheader="Attention!" customtitle="Error on Form" modal="True"
				icon="warning" ShowSummary="False"></asp:validationsummary></TD>
			<td vAlign="top" width="15"></td>
			</TR>
			<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></TBODY></TABLE>
		</form>
		<script language="javascript">

			function setBrandIndex(frm,indexValue){
				var c = document.getElementById(frm);
				c.value = indexValue;
			}
			function checkStatusValue(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}	
			function firstMMCheck(source, clientside_arguments){
				if (document.form1.status.value==2){
					if(clientside_arguments.Value=='mm'){
						clientside_arguments.IsValid=false;
					}else{
						clientside_arguments.IsValid=true;
					}
				}
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
		</script>
		<model:model_list id="model_list" runat="server"></model:model_list>
		<province:province_list id="province_list" runat="server"></province:province_list>
			<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
