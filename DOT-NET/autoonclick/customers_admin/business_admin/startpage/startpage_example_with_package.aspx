<%@ Page CodeBehind="startpage_example_with_package.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.startpage_example_with_package" %>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky2.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
	<body onload="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="693" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">&#3618;&#3636;&#3609;&#3604;&#3637;&#3605;&#3657;&#3629;&#3609;&#3619;&#3633;&#3610;
												<asp:label id="compName" runat="server"></asp:label></td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/st_bu_admin_t0.gif"
										border="0">
										<tr>
											<td width="5" height="4"></td>
											<td width="536" height="4"></td>
											<td width="20" height="4"></td>
											<td width="132" height="4"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td class="Padding_TB_5px" vAlign="top" width="536"><strong>&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;:
													<asp:label id="today" runat="server" Font-Bold="True" CssClass="Font_black"></asp:label></strong><br>
												<br>
												<asp:hyperlink id="msgBox" runat="server" Font-Bold="True" CssClass="A_black_underline"></asp:hyperlink>
												<!--<A class="A_black_underline" href="../message_box/inbox.htm"><strong>&#3585;&#3621;&#3656;&#3629;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3648;&#3586;&#3657;&#3634;: 
														(3)</strong></A>--></td>
											<td width="20"></td>
											<td width="132">
												<div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
											</td>
										</tr>
										<tr>
											<td width="5" height="4"></td>
											<td width="536" height="4"></td>
											<td width="20" height="4"></td>
											<td width="132" height="4"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td><asp:label id="DealerPackage" runat="server"></asp:label></td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="560" align="center" border="0">
										<tr>
											<td width="273">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="273" background="../../../images/header/h_b_273+ar.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="243">&#3585;&#3634;&#3619;&#3592;&#3633;&#3604;&#3585;&#3634;&#3619;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
											<td width="14"></td>
											<td width="273">
												<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="273" background="../../../images/header/h_b_273+ar.gif"
													border="0">
													<tr>
														<td width="25"></td>
														<td width="243">&#3585;&#3634;&#3619;&#3592;&#3633;&#3604;&#3585;&#3634;&#3619;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;</td>
														<td width="5"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td width="273" height="1"><IMG height="1" src="../../../images/lines/w4.gif" width="273"></td>
											<td width="14" height="1"></td>
											<td width="273" height="1"><IMG height="1" src="../../../images/lines/w4.gif" width="273"></td>
										</tr>
										<tr>
											<td width="273">
												<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="273" background="../../../images/table/st_bu_adm_t2.gif"
													border="0">
													<tr>
														<td width="5" height="21"></td>
														<td height="21"><asp:hyperlink id="paymentNotice" runat="server" CssClass="A_black_underline" NavigateUrl="../payment/payment1_notify1_selectionD.aspx">&#3649;&#3592;&#3657;&#3591;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</asp:hyperlink></td>
														<td width="5" height="21"></td>
													</tr>
													<tr>
														<td width="5" height="21"></td>
														<td height="21"><asp:hyperlink id="paymentList" runat="server" CssClass="A_black_underline" NavigateUrl="../payment/payment2_listD.aspx">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</asp:hyperlink></td>
														<td width="5" height="21"></td>
													</tr>
													<tr>
														<td width="5" height="21"></td>
														<td height="21"></td>
														<td width="5" height="21"></td>
													</tr>
												</table>
											</td>
											<td width="14"></td>
											<td width="273">
												<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="273" background="../../../images/table/st_bu_adm_t2.gif"
													border="0">
													<tr>
														<td width="5" height="21"><FONT face="Tahoma"></FONT></td>
														<td height="21"><asp:hyperlink id="chagePass" runat="server" CssClass="A_black_underline">&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;</asp:hyperlink></td>
														<td width="5" height="21"></td>
													</tr>
													<tr>
														<td width="5" height="21"><FONT face="Tahoma"></FONT></td>
														<td height="21"><asp:hyperlink id="changeContact" runat="server" CssClass="A_black_underline">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3585;&#3634;&#3619;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;</asp:hyperlink></td>
														<td width="5" height="21"></td>
													</tr>
													<tr>
														<td width="5" height="21"></td>
														<td height="21"><asp:hyperlink id="changeBuz" runat="server" CssClass="A_black_underline">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3608;&#3640;&#3619;&#3585;&#3636;&#3592;</asp:hyperlink></td>
														<td width="5" height="21"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td width="273" height="1"><IMG height="1" src="../../../images/objects/e1eaf5.gif" width="100%"></td>
											<td width="14" height="1"></td>
											<td width="273" height="1"><IMG height="1" src="../../../images/objects/e1eaf5.gif" width="100%"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" rowSpan="2"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
