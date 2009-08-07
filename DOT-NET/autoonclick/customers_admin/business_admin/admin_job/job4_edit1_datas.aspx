<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky2.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft2.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="province" TagName="province_list" Src="../list/province_list2_Deadmin.ascx"%>
<%@ Page CodeBehind="job4_edit1_datas.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.job4_edit1_datas" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } </style>
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
	<body onLoad="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../images/objects/so_ar_o_w.gif" width="19" height="9"><span class="Font_orange">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</span></td>
											<td width="20"></td>
											<td><span class="Font_grey">&#3616;&#3634;&#3614;&#3605;&#3633;&#3623;&#3629;&#3618;&#3656;&#3634;&#3591;</span></td>
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
								<td width="693"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_693.gif"
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
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_693.gif"
										class="Font_black">
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207" class="Font_orange"><div align="right">&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:dropdownlist id="JobPosDL" runat="server" Width="95%" CssClass="Font_black" DataValueField="Position_ID"
													DataTextField="Position_Name"></asp:dropdownlist></td>
											<td width="10"></td>
											<td width="206">
												<asp:customvalidator id="JPosReq" runat="server" ClientValidationFunction="checkPosition" Font-Bold="True"
													ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;"
													ControlToValidate="JobPosDL">*</asp:customvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207"><div align="right">&#3629;&#3639;&#3656;&#3609;&#3654; 
													&#3650;&#3611;&#3619;&#3604;&#3619;&#3632;&#3610;&#3640;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:textbox id="JOther" runat="server" Width="95%" CssClass="Font_black" MaxLength="100"></asp:textbox></td>
											<td width="10"></td>
											<td width="206"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207"><div align="right">&#3623;&#3640;&#3602;&#3636;&#3585;&#3634;&#3619;&#3624;&#3638;&#3585;&#3625;&#3634;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:textbox id="JEdu" runat="server" Width="95%" CssClass="Font_black" MaxLength="100"></asp:textbox></td>
											<td width="10"></td>
											<td width="206"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207"><div align="right">&#3626;&#3634;&#3586;&#3634;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:textbox id="JBranch" runat="server" Width="95%" CssClass="Font_black" MaxLength="100"></asp:textbox></td>
											<td width="10"></td>
											<td width="206"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207"><div align="right">&#3629;&#3633;&#3605;&#3619;&#3634;&#3588;&#3656;&#3634;&#3592;&#3657;&#3634;&#3591;</div>
											</td>
											<td width="10"></td>
											<td width="250"><asp:textbox id="JSal" runat="server" Width="70px" CssClass="Font_black" MaxLength="15"></asp:textbox>
												&#3610;&#3634;&#3607; &#3605;&#3656;&#3629;
												<asp:dropdownlist id="SalPer" runat="server" Width="70px" CssClass="Font_black">
													<asp:ListItem Value="M" Selected="True">&#3648;&#3604;&#3639;&#3629;&#3609;</asp:ListItem>
													<asp:ListItem Value="D">&#3623;&#3633;&#3609;</asp:ListItem>
												</asp:dropdownlist></td>
											<td width="10"></td>
											<td width="206">
												<asp:regularexpressionvalidator id="PriceRegularexpressionvalidator" runat="server" Font-Bold="True" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3588;&#3656;&#3634;&#3592;&#3657;&#3634;&#3591;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="JSal" ValidationExpression="\d{1,12}\.\d{1,2}|\d{1,14}">*</asp:regularexpressionvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207"><div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3619;&#3633;&#3610;</div>
											</td>
											<td width="10"></td>
											<td width="250"><asp:textbox id="JNum" runat="server" Width="70px" CssClass="Font_black" MaxLength="3"></asp:textbox>
												&#3629;&#3633;&#3605;&#3619;&#3634;
											</td>
											<td width="10"></td>
											<td width="206">
												<asp:regularexpressionvalidator id="NumdoorRegularexpressionvalidator" runat="server" Font-Bold="True" ErrorMessage="&#3619;&#3632;&#3610;&#3640;&#3592;&#3635;&#3609;&#3623;&#3609;&#3607;&#3637;&#3656;&#3619;&#3633;&#3610;&#3652;&#3617;&#3656;&#3606;&#3641;&#3585;&#3605;&#3657;&#3629;&#3591;"
													ControlToValidate="JNum" ValidationExpression="\d{1,3}">*</asp:regularexpressionvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5" class="Font_orange"></td>
											<td width="207" class="Font_orange"><div align="right">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:textbox id="JPhone" runat="server" Width="80%" CssClass="Font_black" MaxLength="100"></asp:textbox></td>
											<td width="10"></td>
											<td width="206">
												<asp:requiredfieldvalidator id="Phone1RequiredFieldValidator" runat="server" Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;"
													ControlToValidate="JPhone">*</asp:requiredfieldvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207" class="Font_orange"><div align="right">&#3626;&#3606;&#3634;&#3609;&#3607;&#3637;&#3656;&#3607;&#3635;&#3591;&#3634;&#3609;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:textbox id="JPlace" runat="server" Width="95%" CssClass="Font_black" MaxLength="100"></asp:textbox></td>
											<td width="10"></td>
											<td width="206">
												<asp:requiredfieldvalidator id="placeRequire" runat="server" Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3594;&#3639;&#3656;&#3629;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;"
													ControlToValidate="JPlace">*</asp:requiredfieldvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207" class="Font_orange"><div align="right">&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;</div>
											</td>
											<td width="10"></td>
											<td width="250"><FONT face="Tahoma"><SELECT class="Font_black" id="Province" onchange="district_list('district',this.selectedIndex,0);"
														name="Province" runat="server">
														<OPTION selected></OPTION>
													</SELECT></FONT></td>
											<td width="10"></td>
											<td width="206">
												<asp:customvalidator id="ProvinceCustomValidator" runat="server" ClientValidationFunction="checkProvince"
													Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3592;&#3633;&#3591;&#3627;&#3623;&#3633;&#3604;"
													ControlToValidate="province">*</asp:customvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207" class="Font_orange"><div align="right">&#3648;&#3586;&#3605;/&#3629;&#3635;&#3648;&#3616;&#3629;</div>
											</td>
											<td width="10"></td>
											<td width="250"><SELECT class="Font_black" id="District" name="District" runat="server">
													<OPTION selected></OPTION>
												</SELECT></td>
											<td width="10"></td>
											<td width="206">
												<asp:customvalidator id="DistrictCustomValidator" runat="server" ClientValidationFunction="checkDistrict"
													Font-Bold="True" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3629;&#3635;&#3648;&#3616;&#3629;"
													ControlToValidate="district">*</asp:customvalidator></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="207"><div align="right">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</div>
											</td>
											<td width="10"></td>
											<td width="250">
												<asp:textbox id="description" runat="server" Width="244px" CssClass="Font_black" TextMode="MultiLine"
													Rows="5" Height="77px"></asp:textbox></td>
											<td width="10"></td>
											<td width="206"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="7"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><div align="center"><table border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td>
													<asp:button class="button" id="next_page" onmouseover="document.all.next_page.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.next_page.className='button'" runat="server"
														Text="&#3606;&#3633;&#3604;&#3652;&#3611;" name="next_page"></asp:button></td>
												<td width="4"></td>
												<td><a href="job1_list.aspx" class="A80">&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;</a></td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ShowSummary="False" icon="warning" modal="True" customtitle="Error on Form"
							customheader="Attention!" customheight="250" customwidth="225" customurl="../../../Class/Msgbox.aspx"
							showcustompopup="True" ForeColor="DarkRed"></asp:validationsummary>
					</td>
					<td width="15" valign="top"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
		<script language="javascript">
			//disableBtn("next_page",true);
			function disableBtn(btnName,flag){
				document.getElementById(btnName).disabled=flag;
			}
			
			function checkPosition(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function checkProvince(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
			function checkDistrict(source, clientside_arguments){
				if(clientside_arguments.Value==0){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
		</script>
		<province:province_list id="province_list" runat="server"></province:province_list>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
