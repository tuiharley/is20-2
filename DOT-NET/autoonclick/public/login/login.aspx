<%@ Page CodeBehind="login.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.login" %>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../left_menu/left_menubar2.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../footer_bar/footer_bar.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
		<LINK href="../../css/style.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body onload="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="983" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td>
									<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="693" align="center"
										background="../../images/table/g_693.gif" border="0">
										<tr>
											<td colSpan="3">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="663">&#3621;&#3655;&#3629;&#3585;&#3629;&#3636;&#3609;&#3648;&#3586;&#3657;&#3634;&#3626;&#3641;&#3656;&#3619;&#3632;&#3610;&#3610; 
															(Login)</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td colSpan="3"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="3" height="10"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683">
												<table cellSpacing="0" cellPadding="0" align="center" border="0">
													<tr>
														<td><IMG height="21" src="../../images/objects/arrow_blue_21.gif" width="15" align="absMiddle"><A class="A_black_underline" href="../offer/offer6_intro.aspx">&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3610;&#3640;&#3588;&#3588;&#3621;&#3607;&#3633;&#3656;&#3623;&#3652;&#3611;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;</A><br>
															<IMG height="21" src="../../images/objects/arrow_blue_21.gif" width="15" align="absMiddle"><A class="A_black_underline" href="../dealer/dealer1_reg1_access_datas.aspx">&#3626;&#3635;&#3627;&#3619;&#3633;&#3610;&#3612;&#3641;&#3657;&#3611;&#3619;&#3632;&#3585;&#3629;&#3610;&#3585;&#3634;&#3619;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656;</A><br>
															<IMG height="21" src="../../images/objects/arrow_orange_21.gif" width="15" align="absMiddle"><A class="A_black_underline" href="forgotten_password.aspx">&#3621;&#3639;&#3617;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;(Password)! 
																&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656; </A>
														</td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="3"><IMG height="21" src="../../images/dividers/g_693x21.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="3"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683">
												<table cellSpacing="0" cellPadding="0" width="237" align="center" border="0">
													<tr>
														<td width="51">
															<div align="right">Username:</div>
														</td>
														<td width="4"></td>
														<td width="178">
															<asp:TextBox id="User_name" runat="server" MaxLength='12'></asp:TextBox></td>
														<td width="4">
															<asp:RequiredFieldValidator id="RequiredUsername" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; UserName"
																ControlToValidate="User_name" Font-Bold="True">*</asp:RequiredFieldValidator></td>
													</tr>
													<tr>
														<td height="10"></td>
														<td width="4" height="10"></td>
														<td width="178" height="10"></td>
														<td width="4"></td>
													</tr>
													<tr>
														<td>
															<div align="right">Password:</div>
														</td>
														<td width="4"></td>
														<td width="178">
															<asp:TextBox id="Pass" runat="server" TextMode="Password" maxLength="12"></asp:TextBox></td>
														<td width="4">
															<asp:RequiredFieldValidator id="RequiredPassword" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; Password"
																ControlToValidate="Pass" Font-Bold="True">*</asp:RequiredFieldValidator></td>
													</tr>
													<tr>
														<td height="10"></td>
														<td width="4" height="10"></td>
														<td width="178" height="10"></td>
														<td width="4"></td>
													</tr>
													<tr>
														<td></td>
														<td width="4"></td>
														<td width="178">
															<!--<A class="A80" href="../../customers_admin/business_admin/startpage/startpage_example_with_package.htm">Login</A>-->
															<asp:Button class="button" style="CURSOR:hand" onmouseover="document.all.login_submit.className='buttonover'"
																onmouseout="document.all.login_submit.className='button'" id="login_submit" name="login_submit"
																runat="server" Text="Login"></asp:Button></td>
														<td width="4"></td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colSpan="3" height="10"></td>
										</tr>
										<tr>
											<td colSpan="3"><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
										</tr>
										<tr>
											<td colSpan="3"><IMG height="5" src="../../images/lines/l_o_693.gif" width="693"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="693" height="20"><FONT face="Tahoma">
										<asp:TextBox id="resultLogin" runat="server" Visible="False"></asp:TextBox>
										<asp:CustomValidator id="loginFail" runat="server" ControlToValidate="resultLogin" ErrorMessage="login &#3609;&#3637;&#3657;&#3652;&#3617;&#3656;&#3617;&#3637;&#3651;&#3609;&#3619;&#3632;&#3610;&#3610;"
											Display="None" ClientValidationFunction="loginCheck"></asp:CustomValidator></FONT></td>
							</tr>
						</table>
						<asp:validationsummary id="vsmSummary" runat="server" ForeColor="DarkRed" ShowSummary="False" icon="warning"
							modal="True" customtitle="Error on Form" customheader="Attention!" customheight="300" customwidth="225"
							customurl="../../Class/Msgbox.aspx" showcustompopup="True"></asp:validationsummary>
					</td>
					<td width="15" rowSpan="2"></td>
					<td vAlign="top" width="120"><IMG height="600" src="../../images/objects/skyscraper_120x600.gif" width="120"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
		<%if request.querystring("login") = "fail" then%>
			alert('login ¹ÕéäÁèÁÕã¹ÃÐºº');
		<%end if%>
		function loginCheck(source, clientside_arguments){
				if(clientside_arguments.Value=="fail"){
					clientside_arguments.IsValid=false;
				}else{
					clientside_arguments.IsValid=true;
				}
			}
		</script>
	</body>
</HTML>
