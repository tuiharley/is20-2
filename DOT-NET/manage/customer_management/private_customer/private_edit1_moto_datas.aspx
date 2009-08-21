<%@ Page CodeBehind="private_edit1_moto_datas.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.private_edit1_moto_datas" %>
<%@Register TagPrefix="model" TagName="model_list" Src="list/private_model_moto_list_puadmin.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">BODY { BACKGROUND-IMAGE: none; MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
//-->
			</script>
	</HEAD>
	<body onload="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<input id="brandIndex" type="hidden" name="brandIndex"> <input id="modelIndex" type="hidden" name="modelIndex">
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<tr>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="9" src="../../images/objects/so_ar_o_w.gif" width="19"><span class="Font_orange">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">&#3616;&#3634;&#3614;&#3605;&#3633;&#3623;&#3629;&#3618;&#3656;&#3634;&#3591;</span></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"><FONT face="Tahoma"></FONT></td>
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
								<td width="693">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</td>
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
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/h_b_693.gif"
										border="0">
										<tr>
											<td width="5"></td>
											<td width="683">
												<div align="center">- 
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
												</SELECT></td>
											<td width="10"><FONT face="Tahoma"><asp:customvalidator id="BrandValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3618;&#3637;&#3656;&#3627;&#3657;&#3629;&#3619;&#3606;"
														ControlToValidate="Brands" ClientValidationFunction="checkBrands" Font-Bold="True">*</asp:customvalidator></FONT></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</div>
											</td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="218"><FONT face="Tahoma"><asp:dropdownlist id="status" runat="server" CssClass="Font_black" DataTextField="status_name" DataValueField="status"
														Width="95%"></asp:dropdownlist></FONT></td>
											<td width="5"><asp:customvalidator id="carStatusValidate" tabIndex="2" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;"
													ControlToValidate="status" ClientValidationFunction="checkStatusValue" Font-Bold="True">*</asp:customvalidator><asp:customvalidator id="check_status" runat="server" ControlToValidate="status" ClientValidationFunction="check_status"
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
											<td width="218"><SELECT class="Font_black" id="Model" style="WIDTH: 100%" onchange="setBrandIndex('modelIndex',this.selectedIndex);"
													name="Model" runat="server">
													<OPTION selected></OPTION>
												</SELECT></td>
											<td width="10"><asp:customvalidator id="ModelValidator" tabIndex="1" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3619;&#3640;&#3656;&#3609;&#3586;&#3629;&#3591;&#3619;&#3606;"
													ControlToValidate="Model" ClientValidationFunction="checkModel" Font-Bold="True">*</asp:customvalidator></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3592;&#3604;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3619;&#3633;&#3657;&#3591;&#3649;&#3619;&#3585;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:dropdownlist id="firstmm" runat="server" CssClass="Font_black" DataTextField="month_name" DataValueField="month"></asp:dropdownlist>/
												<asp:dropdownlist id="firstyyyy" runat="server" CssClass="Font_black" DataTextField="year_name" DataValueField="year"></asp:dropdownlist>(&#3585;&#3619;&#3603;&#3637;&#3619;&#3606;&#3617;&#3639;&#3629;&#3626;&#3629;&#3591;)
											</td>
											<td width="5"><asp:customvalidator id="FristmmValidator" tabIndex="3" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3648;&#3604;&#3639;&#3629;&#3609;&#3592;&#3604;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3619;&#3633;&#3657;&#3591;&#3649;&#3619;&#3585;"
													ControlToValidate="firstmm" ClientValidationFunction="firstMMCheck" Font-Bold="True">*</asp:customvalidator><asp:customvalidator id="FristyyyyValidator" tabIndex="4" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3611;&#3637;&#3592;&#3604;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3619;&#3633;&#3657;&#3591;&#3649;&#3619;&#3585;"
													ControlToValidate="firstyyyy" ClientValidationFunction="firstYYCheck" Font-Bold="True">*</asp:customvalidator></td>
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
											<td width="217"><asp:textbox id="submodel" runat="server" CssClass="Font_black" Width="95%" MaxLength="100"></asp:textbox></td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:dropdownlist id="cartype" runat="server" CssClass="Font_black" DataTextField="cartype_name" DataValueField="cartype"
													Width="95%"></asp:dropdownlist></td>
											<td width="5"><asp:customvalidator id="CartypeValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;"
													ControlToValidate="cartype" ClientValidationFunction="carTypeCheck">*</asp:customvalidator></td>
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
											<td width="217"><asp:textbox id="carid" runat="server" CssClass="Font_black" Width="95%" MaxLength="50"></asp:textbox></td>
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
											<td width="217"><asp:dropdownlist id="enginetype" runat="server" CssClass="Font_black" DataTextField="enginetype_name"
													DataValueField="enginetype" Width="95%"></asp:dropdownlist></td>
											<td width="10"><FONT face="Tahoma"><asp:customvalidator id="EnginetypeValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;"
														ControlToValidate="enginetype" ClientValidationFunction="engineCheck" Font-Bold="True">*</asp:customvalidator></FONT></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="cc" runat="server" CssClass="Font_black" Width="60px" MaxLength="4"></asp:textbox>&nbsp;&#3595;&#3637;&#3595;&#3637;/cc</td>
											<td width="5"><asp:requiredfieldvalidator id="CcRequiredFieldValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;"
													ControlToValidate="cc" Font-Bold="True">*</asp:requiredfieldvalidator><asp:regularexpressionvalidator id="ccValidate" runat="server" ErrorMessage="&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="cc" Display="None" ValidationExpression="\d{1,4}"></asp:regularexpressionvalidator></td>
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
											<td width="217"><asp:dropdownlist id="color" runat="server" CssClass="Font_black" DataTextField="color_name" DataValueField="color"></asp:dropdownlist><asp:checkbox id="metalic" runat="server" Text="&#3648;&#3617;&#3607;&#3634;&#3621;&#3636;&#3588;"></asp:checkbox></td>
											<td width="10"><FONT face="Tahoma"><asp:customvalidator id="ColorValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3626;&#3637;"
														ControlToValidate="color" ClientValidationFunction="colorCheck" Font-Bold="True">*</asp:customvalidator></FONT></td>
											<td width="118">
												<div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="power" runat="server" CssClass="Font_black" Width="60px" MaxLength="4"></asp:textbox><asp:radiobuttonlist id="pow" runat="server" CssClass="Font_black" Width="54px" RepeatDirection="Horizontal">
													<asp:ListItem Value="hp">hp</asp:ListItem>
													<asp:ListItem Value="kw">kw</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"><asp:regularexpressionvalidator id="PowerRegularexpressionvalidator" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="power" Font-Bold="True" ValidationExpression="\d{1,4}">*</asp:regularexpressionvalidator></td>
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
											<td width="217"><asp:dropdownlist id="gear" runat="server" CssClass="Font_black" DataTextField="gear_name" DataValueField="gear"
													Width="100%"></asp:dropdownlist></td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="118">
												<div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="nummi" runat="server" CssClass="Font_black" Width="60px" MaxLength="7"></asp:textbox><asp:radiobuttonlist id="mi" runat="server" CssClass="Font_black" Width="14px" RepeatDirection="Horizontal">
													<asp:ListItem Value="km">km</asp:ListItem>
													<asp:ListItem Value="mi">mi</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"><asp:regularexpressionvalidator id="NummiRegularexpressionvalidator" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="nummi" Font-Bold="True" ValidationExpression="\d{1,7}">*</asp:regularexpressionvalidator></td>
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
											<td width="218"><FONT face="Tahoma"><asp:dropdownlist id="drive" runat="server" CssClass="Font_black" DataTextField="drive_name" DataValueField="drive"
														Width="95%"></asp:dropdownlist></FONT></td>
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
											<td width="217"><asp:textbox id="numgear" runat="server" CssClass="Font_black" Width="60px" MaxLength="2"></asp:textbox></td>
											<td width="10"><asp:regularexpressionvalidator id="NumgearRegularExpressionValidator" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="numgear" Font-Bold="True" ValidationExpression="\d{1,2}">*</asp:regularexpressionvalidator></td>
											<td width="118">
												<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:textbox id="numpump" runat="server" CssClass="Font_black" Width="60px" MaxLength="2"></asp:textbox></td>
											<td width="5"><asp:regularexpressionvalidator id="NumpumpRegularexpressionvalidator" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="numpump" Font-Bold="True" ValidationExpression="\d{1,2}">*</asp:regularexpressionvalidator></td>
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
												<asp:dropdownlist id="lastmm" runat="server" CssClass="Font_black" DataTextField="month_name" DataValueField="month"></asp:dropdownlist>/
												<asp:dropdownlist id="lastyyyy" runat="server" CssClass="Font_black" DataTextField="year_name" DataValueField="year"></asp:dropdownlist></td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="118">
												<div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
											</td>
											<td width="10"></td>
											<td width="218">&nbsp;
												<asp:radiobuttonlist id="insur" runat="server" CssClass="Font_black" Width="100px" RepeatDirection="Horizontal">
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
											<td width="217"><asp:textbox id="price" runat="server" CssClass="Font_black" Width="60%" MaxLength="14"></asp:textbox>&#3610;&#3634;&#3607; 
												(&#3627;&#3657;&#3634;&#3617;&#3651;&#3626;&#3656; , )</td>
											<td width="10"><asp:regularexpressionvalidator id="PriceRegularexpressionvalidator" runat="server" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3619;&#3634;&#3588;&#3634;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="price" Font-Bold="True" ValidationExpression="\d{1,12}\.\d{1,2}|\d{1,14}">*</asp:regularexpressionvalidator></td>
											<td class="Font_orange" width="118">
												<div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640; 
													(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
											</td>
											<td width="10"></td>
											<td width="218"><asp:radiobuttonlist id="acc" runat="server" CssClass="Font_black" Width="100px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1">&#3651;&#3594;&#3656;</asp:ListItem>
													<asp:ListItem Value="0">&#3652;&#3617;&#3656;&#3651;&#3594;&#3656;</asp:ListItem>
												</asp:radiobuttonlist></td>
											<td width="5"><asp:requiredfieldvalidator id="AccRequiredFieldValidator" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)"
													ControlToValidate="acc" Font-Bold="True">*</asp:requiredfieldvalidator></td>
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
														<td width="188" height="17"><asp:checkboxlist id="accessory1" runat="server" CssClass="Font_black" DataTextField="accessory_name"
																DataValueField="accessory"></asp:checkboxlist></td>
														<td width="5" rowSpan="2"></td>
														<td width="188" height="17"><asp:checkboxlist id="accessory2" runat="server" CssClass="Font_black" DataTextField="accessory_name"
																DataValueField="accessory"></asp:checkboxlist></td>
														<td width="5" rowSpan="2"></td>
														<td width="188" height="17"><asp:checkboxlist id="accessory3" runat="server" CssClass="Font_black" DataTextField="accessory_name"
																DataValueField="accessory"></asp:checkboxlist></td>
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
											<td colSpan="5"><asp:textbox id="description" runat="server" Width="450px" Rows="5" TextMode="MultiLine"></asp:textbox></td>
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
														<td width="80"><asp:image id="Image1" runat="server" Height="60px" BorderWidth="1px" width="80" ImageUrl="../../images/objects/no_image_80x60.gif"></asp:image></td>
														<td width="10"></td>
														<td width="62">
															<div align="right">&#3619;&#3641;&#3611;&#3627;&#3621;&#3633;&#3585;</div>
														</td>
														<td width="10"></td>
														<td width="412">&nbsp; <INPUT id="img1" type="file" onchange="a(1);chkPicSize(1);" name="img1" runat="server">
														</td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="80"><asp:image id="Image2" runat="server" Width="80px" Height="60px" BorderWidth="1px" ImageUrl="../../images/objects/no_image_80x60.gif"></asp:image></td>
														<td width="10"></td>
														<td width="62">
															<div align="right">&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610; 
																2</div>
														</td>
														<td width="10"></td>
														<td width="412">&nbsp; <INPUT id="img2" type="file" onchange="a(2);chkPicSize(2);" name="img2" runat="server">
														</td>
													</tr>
													<tr>
														<td colSpan="5" height="10"></td>
													</tr>
													<tr>
														<td width="80"><asp:image id="Image3" runat="server" Width="80px" Height="60px" BorderWidth="1px" ImageUrl="../../images/objects/no_image_80x60.gif"></asp:image></td>
														<td width="10"></td>
														<td width="62">
															<div align="right">&#3619;&#3641;&#3611;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610; 
																3</div>
														</td>
														<td width="10"></td>
														<td width="412">&nbsp; <INPUT id="img3" type="file" onchange="a(3);chkPicSize(3);" name="img3" runat="server">
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
												<td><FONT face="Tahoma"></FONT></td>
												<td width="4"><asp:button class="button" id="next_page" onmouseover="document.all.next_page.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.next_page.className='button'" runat="server" Text="&#3606;&#3633;&#3604;&#3652;&#3611;"
														name="next_page"></asp:button></td>
												<td><asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
														Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" name="cancel_but" CausesValidation="False"></asp:button></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="20"><asp:validationsummary id="vsmSummary" runat="server" ForeColor="DarkRed" showcustompopup="True" customurl="../../Class/Msgbox.aspx"
										customwidth="225" customheight="300" customheader="Attention!" customtitle="Error on Form" modal="True" icon="warning"
										ShowSummary="False"></asp:validationsummary></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"><FONT face="Tahoma"></FONT></td>
				</tr>
				<tr>
					<td width="140" height="16"></td>
					<td width="15" height="16"><FONT face="Tahoma"></FONT></td>
					<td width="693" height="16">
						<table class="Font_sm_black" cellSpacing="0" cellPadding="0" width="100%" border="0">
						</table>
					</td>
					<td width="15" height="16"></td>
				</tr>
			</table>
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
	</body>
</HTML>
