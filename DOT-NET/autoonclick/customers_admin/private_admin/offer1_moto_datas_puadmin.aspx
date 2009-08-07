<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_menu/footer_menu_puadmin.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menu2_puadmin.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="top_menu/top_menu_puadmin.ascx"%>
<%@ Page CodeBehind="offer1_moto_datas_puadmin.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.offer1_moto_datas_puadmin" %>
<%@Register TagPrefix="model" TagName="model_list" Src="list/model_moto2_list_puadmin.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../../public/search/right_menu/sky1.ascx"%>
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
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"><FONT face="Tahoma"></FONT></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td>
									<table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../images/objects/so_ar_o_w.gif" width="19" height="9"><span class="Font_orange">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">&#3616;&#3634;&#3614;&#3605;&#3633;&#3623;&#3629;&#3618;&#3656;&#3634;&#3591;</span></td>
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
					<td vAlign="top"><FONT face="Tahoma"></FONT></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;: 
												&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;
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
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/h_b_693.gif"
										class="H1_white">
										<tr>
											<td width="5"></td>
											<td width="683"><div align="center">- 
													&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3607;&#3637;&#3656;&#3592;&#3635;&#3648;&#3611;&#3655;&#3609;&#3648;&#3609;&#3657;&#3609;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3604;&#3657;&#3623;&#3618;<span class="Font_orange_bold">&#3626;&#3637;&#3626;&#3657;&#3617;</span>
													-</div>
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
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td background="../../images/header/dtl_o_v.gif" colSpan="3" height="17">
												<div align="center"><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3619;&#3606;</strong></div>
											</td>
											<td bgColor="#e2e9f1" colSpan="5"><FONT face="Tahoma"></FONT></td>
											<td width="5"><IMG height="17" src="../../images/separator/g2_R5.gif" width="5"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td class="Font_orange" width="99">
												<div align="right">&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;</div>
											</td>
											<td width="10"></td>
											<td width="218"><SELECT class="Font_black" id="Brands" style="WIDTH: 100%" onchange="setBrandIndex('brandIndex',this.selectedIndex);model_list('Model',this.selectedIndex,'');"
													name="Brands" runat="server">
													<OPTION selected></OPTION>
												</SELECT></FONT></td>
											<td width="10"><FONT face="Tahoma"><asp:customvalidator id="BrandValidator" runat="server" Font-Bold="True" ClientValidationFunction="checkBrands"
														ControlToValidate="Brands" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;">*</asp:customvalidator></FONT></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</div>
											</td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="218"><FONT face="Tahoma"><asp:dropdownlist id="status" runat="server" Width="95%" DataValueField="status" DataTextField="status_name"
														CssClass="Font_black"></asp:dropdownlist></FONT></td>
											<td width="5"><asp:customvalidator id="carStatusValidate" tabIndex="2" runat="server" Font-Bold="True" ClientValidationFunction="checkStatusValue"
													ControlToValidate="status" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;">*</asp:customvalidator><asp:customvalidator id="check_status" runat="server" ClientValidationFunction="check_status" ControlToValidate="status"
													Display="None"></asp:customvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"><FONT face="Tahoma"></FONT></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td class="Font_orange" width="99">
												<div align="right">&#3619;&#3640;&#3656;&#3609;</div>
											</td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="218"><SELECT class="Font_black" id="Model" style="WIDTH: 100%" onchange="setBrandIndex('modelIndex',this.selectedIndex);setBrandIndex('brandIndex',document.form1.Brands.selectedIndex);"
													name="Model" runat="server">
													<OPTION selected></OPTION>
												</SELECT></td>
											<td width="10"><asp:customvalidator id="ModelValidator" tabIndex="1" runat="server" Font-Bold="True" ClientValidationFunction="checkModel"
													ControlToValidate="Model" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3640;&#3656;&#3609;&#3586;&#3629;&#3591;&#3619;&#3606;">*</asp:customvalidator></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3592;&#3604;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3619;&#3633;&#3657;&#3591;&#3649;&#3619;&#3585;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:dropdownlist id="firstmm" runat="server" DataValueField="month" DataTextField="month_name" CssClass="Font_black"></asp:dropdownlist>/
												<asp:dropdownlist id="firstyyyy" runat="server" DataValueField="year" DataTextField="year_name" CssClass="Font_black"></asp:dropdownlist>(&#3585;&#3619;&#3603;&#3637;&#3619;&#3606;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;)
											</td>
											<td width="5"><asp:customvalidator id="FristmmValidator" tabIndex="3" runat="server" Font-Bold="True" ClientValidationFunction="firstMMCheck"
													ControlToValidate="firstmm" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3648;&#3604;&#3639;&#3629;&#3609;&#3592;&#3604;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3619;&#3633;&#3657;&#3591;&#3649;&#3619;&#3585;">*</asp:customvalidator><asp:customvalidator id="FristyyyyValidator" tabIndex="4" runat="server" Font-Bold="True" ClientValidationFunction="firstYYCheck"
													ControlToValidate="firstyyyy" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3611;&#3637;&#3592;&#3604;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3619;&#3633;&#3657;&#3591;&#3649;&#3619;&#3585;">*</asp:customvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"><FONT face="Tahoma"></FONT></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99">
												<div align="right">&#3619;&#3640;&#3656;&#3609;&#3618;&#3656;&#3629;&#3618;/&#3619;&#3640;&#3656;&#3609;&#3629;&#3639;&#3656;&#3609;&#3654;</div>
											</td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="217"><asp:textbox id="submodel" runat="server" Width="95%" CssClass="Font_black" MaxLength="100"></asp:textbox></td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:dropdownlist id="cartype" runat="server" Width="95%" DataValueField="cartype" DataTextField="cartype_name"
													CssClass="Font_black"></asp:dropdownlist></td>
											<td width="5"><asp:customvalidator id="CartypeValidator" runat="server" ClientValidationFunction="carTypeCheck" ControlToValidate="cartype"
													ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;">*</asp:customvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99">
												<div align="right">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</div>
											</td>
											<td width="10"></td>
											<td width="217"><asp:textbox id="carid" runat="server" Width="95%" CssClass="Font_black" MaxLength="50"></asp:textbox></td>
											<td width="10"></td>
											<td width="118"><FONT face="Tahoma"></FONT></td>
											<td width="10"></td>
											<td width="218"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="9" height="21"><IMG height="21" src="../../images/dividers/g_693x21.gif" width="693"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td class="Font_orange" width="99">
												<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="217"><asp:dropdownlist id="enginetype" runat="server" Width="95%" DataValueField="enginetype" DataTextField="enginetype_name"
													CssClass="Font_black"></asp:dropdownlist></td>
											<td width="10"><FONT face="Tahoma"><asp:customvalidator id="EnginetypeValidator" runat="server" Font-Bold="True" ClientValidationFunction="engineCheck"
														ControlToValidate="enginetype" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;">*</asp:customvalidator></FONT></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="cc" runat="server" Width="60px" CssClass="Font_black" MaxLength="4"></asp:textbox>&nbsp;&#3595;&#3637;&#3595;&#3637;/cc</td>
											<td width="5"><asp:requiredfieldvalidator id="CcRequiredFieldValidator" runat="server" Font-Bold="True" ControlToValidate="cc"
													ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;">*</asp:requiredfieldvalidator><asp:regularexpressionvalidator id="ccValidate" runat="server" ControlToValidate="cc" ErrorMessage="&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													Display="None" ValidationExpression="\d{1,4}"></asp:regularexpressionvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td class="Font_orange" width="99">
												<div align="right">&#3626;&#3637;</div>
											</td>
											<td width="10"></td>
											<td width="217"><asp:dropdownlist id="color" runat="server" DataValueField="color" DataTextField="color_name" CssClass="Font_black"></asp:dropdownlist><asp:checkbox id="metalic" runat="server" Text="&#3648;&#3617;&#3607;&#3634;&#3621;&#3636;&#3588;"></asp:checkbox></td>
											<td width="10"><FONT face="Tahoma"><asp:customvalidator id="ColorValidator" runat="server" Font-Bold="True" ClientValidationFunction="colorCheck"
														ControlToValidate="color" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3626;&#3637;">*</asp:customvalidator></FONT></td>
											<td width="118">
												<div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="power" runat="server" Width="60px" CssClass="Font_black" MaxLength="4"></asp:textbox><asp:radiobuttonlist id="pow" runat="server" Width="54px" CssClass="Font_black" RepeatDirection="Horizontal">
													<asp:ListItem Value="hp" Selected="True">hp</asp:ListItem>
													<asp:ListItem Value="kw">kw</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"><asp:regularexpressionvalidator id="PowerRegularexpressionvalidator" runat="server" Font-Bold="True" ControlToValidate="power"
													ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ValidationExpression="\d{1,4}">*</asp:regularexpressionvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"><FONT face="Tahoma"></FONT></td>
											<td width="99">
												<div align="right">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
											</td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="217"><asp:dropdownlist id="gear" runat="server" Width="100%" DataValueField="gear" DataTextField="gear_name"
													CssClass="Font_black"></asp:dropdownlist></td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="118">
												<div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="nummi" runat="server" Width="60px" CssClass="Font_black" MaxLength="7"></asp:textbox><asp:radiobuttonlist id="mi" runat="server" Width="14px" CssClass="Font_black" RepeatDirection="Horizontal">
													<asp:ListItem Value="km" Selected="True">km</asp:ListItem>
													<asp:ListItem Value="mi">mi</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"><asp:regularexpressionvalidator id="NummiRegularexpressionvalidator" runat="server" Font-Bold="True" ControlToValidate="nummi"
													ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ValidationExpression="\d{1,7}">*</asp:regularexpressionvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"><FONT face="Tahoma"></FONT></td>
										</tr>
										<tr>
											<td width="5"><FONT face="Tahoma"></FONT></td>
											<td width="99">
												<div align="right">&#3586;&#3633;&#3610;&#3648;&#3588;&#3621;&#3639;&#3656;&#3629;&#3609;</div>
											</td>
											<td width="10"></td>
											<td width="218"><FONT face="Tahoma"><asp:dropdownlist id="drive" runat="server" Width="95%" DataValueField="drive" DataTextField="drive_name"
														CssClass="Font_black"></asp:dropdownlist></FONT></td>
											<td width="10"></td>
											<td width="118"><FONT face="Tahoma"></FONT></td>
											<td width="10"></td>
											<td width="218"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="9" height="21"><IMG height="21" src="../../images/dividers/g_693x21.gif" width="693"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99">
												<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="217"><asp:textbox id="numgear" runat="server" Width="60px" CssClass="Font_black" MaxLength="2"></asp:textbox></td>
											<td width="10"><asp:regularexpressionvalidator id="NumgearRegularExpressionValidator" runat="server" Font-Bold="True" ControlToValidate="numgear"
													ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ValidationExpression="\d{1,2}">*</asp:regularexpressionvalidator></td>
											<td width="118">
												<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="numpump" runat="server" Width="60px" CssClass="Font_black" MaxLength="2"></asp:textbox></td>
											<td width="5"><asp:regularexpressionvalidator id="NumpumpRegularexpressionvalidator" runat="server" Font-Bold="True" ControlToValidate="numpump"
													ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ValidationExpression="\d{1,2}">*</asp:regularexpressionvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="21"><IMG height="21" src="../../images/dividers/g_693x21.gif" width="693"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99">
												<div align="right">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</div>
											</td>
											<td width="10"></td>
											<td width="217">&nbsp;
												<asp:dropdownlist id="lastmm" runat="server" DataValueField="month" DataTextField="month_name" CssClass="Font_black"></asp:dropdownlist>/
												<asp:dropdownlist id="lastyyyy" runat="server" DataValueField="year" DataTextField="year_name" CssClass="Font_black"></asp:dropdownlist></td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="118">
												<div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
											</td>
											<td width="10"></td>
											<td width="218">&nbsp;
												<asp:radiobuttonlist id="insur" runat="server" Width="100px" CssClass="Font_black" RepeatDirection="Horizontal">
													<asp:ListItem Value="1">&#3651;&#3594;&#3656;</asp:ListItem>
													<asp:ListItem Value="0">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="9" height="21"><IMG height="21" src="../../images/dividers/g_693x21.gif" width="693"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99">
												<div align="right">&#3619;&#3634;&#3588;&#3634;</div>
											</td>
											<td width="10"></td>
											<td width="217"><asp:textbox id="price" runat="server" Width="60%" CssClass="Font_black" MaxLength="14"></asp:textbox>&#3610;&#3634;&#3607; 
												(&#3627;&#3657;&#3634;&#3617;&#3651;&#3626;&#3656; , )</td>
											<td width="10"><asp:regularexpressionvalidator id="PriceRegularexpressionvalidator" runat="server" Font-Bold="True" ControlToValidate="price"
													ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3619;&#3634;&#3588;&#3634;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ValidationExpression="\d{1,12}\.\d{1,2}|\d{1,14}">*</asp:regularexpressionvalidator></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640; 
													(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:radiobuttonlist id="acc" runat="server" Width="100px" CssClass="Font_black" RepeatDirection="Horizontal">
													<asp:ListItem Value="1">&#3651;&#3594;&#3656;</asp:ListItem>
													<asp:ListItem Value="0">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"><asp:requiredfieldvalidator id="AccRequiredFieldValidator" runat="server" Font-Bold="True" ControlToValidate="acc"
													ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)">*</asp:requiredfieldvalidator></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td background="../../images/header/dtl_o_v.gif" colSpan="3" height="17">
												<div align="center"><strong>&#3629;&#3640;&#3611;&#3585;&#3619;&#3603;&#3660;&#3648;&#3626;&#3619;&#3636;&#3617;</strong></div>
											</td>
											<td bgColor="#e2e9f1" colSpan="5"></td>
											<td width="5"><IMG height="17" src="../../images/separator/g2_R5.gif" width="5"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99"></td>
											<td width="10"></td>
											<td colSpan="5">
												<table cellSpacing="0" cellPadding="0" width="574" border="0">
													<tr>
														<td width="188" height="17"><asp:checkboxlist id="accessory1" runat="server" DataValueField="accessory" DataTextField="accessory_name"
																CssClass="Font_black"></asp:checkboxlist></td>
														<td width="5" rowSpan="2"></td>
														<td width="188" height="17"><asp:checkboxlist id="accessory2" runat="server" DataValueField="accessory" DataTextField="accessory_name"
																CssClass="Font_black"></asp:checkboxlist></td>
														<td width="5" rowSpan="2"></td>
														<td width="188" height="17"><asp:checkboxlist id="accessory3" runat="server" DataValueField="accessory" DataTextField="accessory_name"
																CssClass="Font_black"></asp:checkboxlist></td>
													</tr>
													<tr>
														<td width="188" height="17">&nbsp;</td>
														<td width="188" height="17">&nbsp;</td>
														<td width="188" height="17"><FONT face="Tahoma"></FONT></td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td background="../../images/header/dtl_o_v.gif" colSpan="3" height="17">
												<div align="center"><strong>&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</strong></div>
											</td>
											<td bgColor="#e2e9f1" colSpan="5"></td>
											<td width="5"><IMG height="17" src="../../images/separator/g2_R5.gif" width="5"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99"></td>
											<td width="10"></td>
											<td colSpan="5"><asp:textbox id="description" runat="server" Width="450px" TextMode="MultiLine" Rows="5"></asp:textbox></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td background="../../images/header/dtl_o_v.gif" colSpan="3" height="17">
												<div align="center"><strong>&#3619;&#3641;&#3611;&#3616;&#3634;&#3614;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;</strong></div>
											</td>
											<td bgColor="#e2e9f1" colSpan="5"></td>
											<td width="5"><IMG height="17" src="../../images/separator/g2_R5.gif" width="5"></td>
										</tr>
										<tr>
											<td colSpan="9"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="9" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="99"></td>
											<td width="10"></td>
											<td colSpan="5">
												<table cellSpacing="0" cellPadding="0" width="574" border="0">
													<tr>
														<td class="Font_black_LH_17px" colSpan="5">- 
															&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3594;&#3657;&#3619;&#3641;&#3611;&#3616;&#3634;&#3614;&#3607;&#3637;&#3656;&#3617;&#3637;&#3586;&#3609;&#3634;&#3604;&#3651;&#3609;&#3629;&#3633;&#3605;&#3619;&#3634;&#3626;&#3656;&#3623;&#3609; 
															4:3 (&#3585;&#3623;&#3657;&#3634;&#3591;:&#3626;&#3641;&#3591;) 
															&#3592;&#3632;&#3607;&#3635;&#3651;&#3627;&#3657;&#3649;&#3626;&#3604;&#3591;&#3619;&#3641;&#3611;&#3616;&#3634;&#3614;&#3652;&#3604;&#3657;&#3648;&#3627;&#3617;&#3634;&#3632;&#3626;&#3617;&#3617;&#3634;&#3585;&#3607;&#3637;&#3656;&#3626;&#3640;&#3604;<br>
															- 
															&#3586;&#3609;&#3634;&#3604;&#3586;&#3629;&#3591;&#3649;&#3605;&#3656;&#3621;&#3632;&#3616;&#3634;&#3614;&#3605;&#3657;&#3629;&#3591;&#3652;&#3617;&#3656;&#3648;&#3585;&#3636;&#3609; 
															150 kb 
															(&#3606;&#3656;&#3634;&#3618;&#3616;&#3634;&#3614;&#3592;&#3634;&#3585;&#3585;&#3621;&#3657;&#3629;&#3591;&#3604;&#3636;&#3592;&#3636;&#3605;&#3633;&#3621;&#3651;&#3627;&#3657;&#3605;&#3633;&#3657;&#3591;&#3588;&#3656;&#3634;&#3586;&#3609;&#3634;&#3604;&#3616;&#3634;&#3614;&#3607;&#3637;&#3656; 
															640 x 480 pixel 
															&#3592;&#3632;&#3604;&#3637;&#3607;&#3637;&#3656;&#3626;&#3640;&#3604;)</td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="80"><asp:image id="Image1" runat="server" ImageUrl="../../images/objects/no_image_80x60.gif" width="80"
																BorderWidth="1px" Height="60px" ImageAlign="Middle"></asp:image></td>
														<td width="10"></td>
														<td width="62">
															<div align="right">&#3619;&#3641;&#3611;&#3627;&#3621;&#3633;&#3585;</div>
														</td>
														<td width="10"></td>
														<td width="412">&nbsp;<INPUT id="img1" type="file" onchange="a(1);chkPicSize(1);" name="img1" runat="server">
														</td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="80"><asp:image id="Image2" runat="server" Width="80px" ImageUrl="../../images/objects/no_image_80x60.gif"
																BorderWidth="1px" Height="60px" ImageAlign="Middle"></asp:image></td>
														<td width="10"></td>
														<td width="62">
															<div align="right">&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610; 
																2</div>
														</td>
														<td width="10"></td>
														<td width="412">&nbsp;<INPUT id="img2" type="file" onchange="a(2);chkPicSize(2);" name="img2" runat="server">
														</td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="80"><asp:image id="Image3" runat="server" Width="80px" ImageUrl="../../images/objects/no_image_80x60.gif"
																BorderWidth="1px" Height="60px" ImageAlign="Middle"></asp:image></td>
														<td width="10"></td>
														<td width="62">
															<div align="right">&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610; 
																3</div>
														</td>
														<td width="10"></td>
														<td width="412">&nbsp;<INPUT id="img3" type="file" onchange="a(3);chkPicSize(3);" name="img3" runat="server">
														</td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
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
								<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<div align="center">
										<table cellSpacing="0" cellPadding="0" border="0">
											<tr>
												<td><asp:button class="button" id="next_page" onmouseover="document.all.next_page.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.next_page.className='button'" runat="server"
														Text="&#3606;&#3633;&#3604;&#3652;&#3611;" name="next_page"></asp:button></td>
												<td width="4"></td>
												<td><asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
														Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" name="cancel_but" CausesValidation="False"></asp:button></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="20"><FONT face="Tahoma"></FONT></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ShowSummary="False" icon="warning" modal="True" customtitle="Error on Form"
							customheader="Attention!" customheight="300" customwidth="225" customurl="../../Class/Msgbox.aspx"
							showcustompopup="True" ForeColor="DarkRed"></asp:validationsummary></td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
			function check_status(){
				if (document.form1.status.value==1){
					document.form1.firstmm.disabled=true;
					document.form1.firstyyyy.disabled=true;
				}else{
					document.form1.firstmm.disabled=false;
					document.form1.firstyyyy.disabled=false;
				}
				
			}
			function a(no){
				var f=document.form1;
				var filename=f.elements["img"+no].value.toLowerCase();
				//alert(filename);
				if(filename.length==0) {
					f.elements["Image"+no].src='../../images/objects/no_image_80x60.gif';
					return true;
				}else if(	filename.indexOf('.jpg')==-1 && 
							filename.indexOf('.jpe')==-1 && 
							filename.indexOf('.jpeg')==-1 && 
							filename.indexOf('.gif')==-1 && 
							filename.indexOf('.png')==-1 )
					{
							f.elements["Image"+no].src='../../images/objects/no_image_80x60.gif';
							alert('ÀÒ¾·ÕèÊè§µéÍ§ÁÕ¹ÒÁÊ¡ØÅ .jpg,.jpe,.jpeg,.gif ËÃ×Í .png à·èÒ¹Ñé¹');	
							return false;
						}
	  				else { f.elements["Image"+no].src=filename; return true;}
			}
			function chkPicSize(n)
			{
				var PicSize = document.images['Image'+n].fileSize;
				//var maxSize = 51200; // 51.2 KB
				var maxSize = 150000; // 150 KB
				if (PicSize > maxSize){ 
					alert("¢¹Ò´ÀÒ¾ãË­èä»¡ÃØ³Ò µÃÇ¨ÊÍºÍÕ¡¤ÃÑé§"); 
					document.form1.elements["img"+n].focus();
					document.images['Image'+n].src='../../images/objects/no_image_80x60.gif';
					return false;}
				else 
				{return true;}
			}
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
			function firstYYCheck(source, clientside_arguments){
				if (document.form1.status.value==2){
					if(clientside_arguments.Value=='yyyy'){
						clientside_arguments.IsValid=false;
					}else{
						clientside_arguments.IsValid=true;
					}
				}
			}
			function checkBrands(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function checkModel(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function carTypeCheck(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function engineCheck(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function colorCheck(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			
		</script>
		<model:model_list id="model_list" runat="server"></model:model_list>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
