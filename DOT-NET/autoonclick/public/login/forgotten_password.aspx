<%@ Page CodeBehind="forgotten_password.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.forgotten_password" %>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../left_menu/left_menubar2.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../footer_bar/footer_bar.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<style type="text/css">
BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table width="693" border="0" align="center" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black_LH_17px">
										<tr>
											<td colspan="3"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
													class="H1_white">
													<tr>
														<td width="25"></td>
														<td width="663">&#3621;&#3639;&#3617;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609; 
															(Password) !</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td colspan="3"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td height="10" colspan="3"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683"><table border="0" align="center" cellpadding="0" cellspacing="0">
													<tr>
														<td><strong>&#3627;&#3634;&#3585;&#3621;&#3639;&#3617;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;(Password) 
																&#3585;&#3619;&#3640;&#3603;&#3634;&#3626;&#3656;&#3591;&#3629;&#3637;&#3648;&#3617;&#3621;&#3660;&#3586;&#3629;&#3591;&#3588;&#3640;&#3603; 
																&#3649;&#3621;&#3657;&#3623;&#3648;&#3619;&#3634;&#3592;&#3632;&#3592;&#3633;&#3604;&#3626;&#3656;&#3591;&#3652;&#3611;&#3651;&#3627;&#3657;</strong></td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td colspan="3"><img src="../../images/dividers/g_693x21.gif" width="693" height="21"></td>
										</tr>
										<tr>
											<td colSpan="3">
												<asp:ValidationSummary id="ValidationSummary1" runat="server"></asp:ValidationSummary>
												<asp:Label id="label1" runat="server" ForeColor="Red"></asp:Label></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="683"><table border="0" align="center" cellpadding="0" cellspacing="0">
													<tr>
														<td><div align="right">Email:</div>
														</td>
														<td width="4"></td>
														<td>
															<asp:TextBox id="email" runat="server"></asp:TextBox></td>
														<td>
															<asp:RequiredFieldValidator id="EmailValidate" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3651;&#3626;&#3656; Email"
																ControlToValidate="email" EnableClientScript="False">*</asp:RequiredFieldValidator></td>
													</tr>
													<tr>
														<td height="10"></td>
														<td width="4" height="10"></td>
														<td height="10"></td>
														<td></td>
													</tr>
													<tr>
														<td></td>
														<td width="4"></td>
														<td>
															<!--<a href="#" class="A80">&#3626;&#3656;&#3591;</a>-->
															<asp:Button class="button" id="send_email" onmouseover="document.all.send_email.className='buttonover'"
																style="CURSOR: hand" onmouseout="document.all.send_email.className='button'" runat="server"
																name="send_email" Text="&#3626;&#3656;&#3591;"></asp:Button></td>
														<td></td>
													</tr>
												</table>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="3"></td>
										</tr>
										<tr>
											<td colspan="3"><img src="../../images/lines/w.gif" width="693" height="1"></td>
										</tr>
										<tr>
											<td colspan="3"><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td width="693" height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" rowspan="2"></td>
					<td width="120" valign="top"><img src="../../images/objects/skyscraper_120x600.gif" width="120" height="600"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
	</body>
</HTML>
