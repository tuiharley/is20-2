<%@ Page CodeBehind="startpage_example1.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.startpage_example1" %>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_menu/footer_menu_puadmin.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menu_puadmin.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="top_menu/top_menu_puadmin.ascx"%>
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
		<table cellSpacing="0" cellPadding="0" width="693" border="0">
			<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
			<tr>
				<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
				<td width="15"></td>
				<td vAlign="top" width="693">
					<table cellSpacing="0" cellPadding="0" width="693" border="0">
						<tr>
							<td width="693">
								<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/m_h_o.gif"
									border="0">
									<tr>
										<td width="25"></td>
										<td>&#3618;&#3636;&#3609;&#3604;&#3637;&#3605;&#3657;&#3629;&#3609;&#3619;&#3633;&#3610;
											<asp:Label id="cust_name" runat="server" ForeColor="White" BackColor="Transparent"></asp:Label></td>
										<td width="40"><FONT face="Tahoma"></FONT></td>
										<td>
											<div align="right">
												&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;:</div>
										</td>
										<td width="100">
											<asp:Label id="date_log" runat="server" BackColor="Transparent"></asp:Label></td>
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
										<td width="5" rowSpan="5"></td>
										<td width="572" height="10"></td>
										<td width="21" background="../../images/separator/g_21.gif" rowSpan="5"></td>
										<td width="90" height="10"></td>
										<td width="5" rowSpan="5"></td>
									</tr>
									<tr>
										<td width="552"><strong>&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3586;&#3634;&#3618;, 
												&#3585;&#3619;&#3640;&#3603;&#3634;&#3648;&#3621;&#3639;&#3629;&#3585;&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3637;&#3656;&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;:</strong></td>
										<td noWrap width="110"><asp:hyperlink id="msgBox" runat="server" CssClass="A_black_underline" Font-Bold="True"></asp:hyperlink>
											<!--
										<div align="right"><strong><a href="#" class="A_black_underline">&#3585;&#3621;&#3656;&#3629;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3648;&#3586;&#3657;&#3634; 
														(100)</a></strong></div>--></td>
									</tr>
									<tr>
										<td width="572" height="10"></td>
										<td width="90" height="10"></td>
									</tr>
									<tr>
										<td width="572">
											<table cellSpacing="0" cellPadding="0" border="0">
												<tr>
													<td><IMG height="9" src="../../images/objects/arrow_blue.gif" width="15">
														<asp:HyperLink id="carOffer" runat="server" ForeColor="Black" Font-Underline="True" BorderStyle="None">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</asp:HyperLink></td>
													<td width="10"><FONT face="Tahoma"></FONT></td>
													<td><IMG height="9" src="../../images/objects/arrow_blue.gif" width="15">
														<asp:HyperLink id="bikeOffer" runat="server" ForeColor="Black" Font-Underline="True" BorderStyle="None">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</asp:HyperLink></td>
													<td width="10"><FONT face="Tahoma"></FONT></td>
													<td><IMG height="9" src="../../images/objects/arrow_blue.gif" width="15">
														<asp:HyperLink id="TruckOffer" runat="server" ForeColor="Black" Font-Underline="True" BorderStyle="None">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</asp:HyperLink></td>
													<td width="10"><FONT face="Tahoma"></FONT></td>
													<td><IMG height="9" src="../../images/objects/arrow_blue.gif" width="15">
														<asp:HyperLink id="partOffer" runat="server" ForeColor="Black" Font-Underline="True" BorderStyle="None">&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;/&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</asp:HyperLink></td>
												</tr>
											</table>
										</td>
										<td width="90"></td>
									</tr>
									<tr>
										<td width="572" height="10"></td>
										<td width="90" height="10"></td>
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
								<table class="Font_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../images/header/p+so_b_li.gif"
									border="0">
									<tr>
										<td width="3"></td>
										<td width="60">
											<div align="center">&#3619;&#3627;&#3633;&#3626;</div>
										</td>
										<td width="5"></td>
										<td width="78">
											<div align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;</div>
										</td>
										<td width="5"></td>
										<td width="85">
											<div align="center">&#3594;&#3609;&#3636;&#3604;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div>
										</td>
										<td width="5"></td>
										<td width="75">
											<div align="center">&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>
										</td>
										<td width="5"></td>
										<td width="78">
											<div align="center">&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;</div>
										</td>
										<td width="5"></td>
										<td width="64">
											<div align="center">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</div>
										</td>
										<td width="5"></td>
										<td width="46">
											<div align="center">&#3648;&#3611;&#3636;&#3604;/&#3611;&#3636;&#3604;</div>
										</td>
										<td width="5"></td>
										<td width="45">
											<div align="center">&#3626;&#3606;&#3634;&#3609;&#3632;</div>
										</td>
										<td width="5"></td>
										<td width="60">
											<div align="center">&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</div>
										</td>
										<td width="5"></td>
										<td width="51">
											<div align="center">P</div>
										</td>
										<td width="3"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><IMG height="1" src="../../images/lines/w.gif" width="693"></td>
						</tr>
						<tr>
							<td>
								<table cellSpacing="0" cellPadding="0" width="693" border="0">
									<asp:label id="cardata" runat="server"></asp:label></table>
							</td>
						</tr>
						<tr>
							<td><IMG height="5" src="../../images/lines/l_b_693.gif" width="693"></td>
						</tr>
						<tr>
							<td height="15"></td>
						</tr>
						<tr>
							<td>
								<table cellSpacing="0" cellPadding="0" width="693" border="0">
									<tr>
										<td width="339">
											<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/h_b_339+ar.gif"
												border="0">
												<tr>
													<td width="25"></td>
													<td>&#3585;&#3634;&#3619;&#3592;&#3633;&#3604;&#3585;&#3634;&#3619;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</td>
													<td width="5"></td>
												</tr>
											</table>
										</td>
										<td width="15"></td>
										<td width="339">
											<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../images/header/h_b_339+ar.gif"
												border="0">
												<tr>
													<td width="25"></td>
													<td>&#3585;&#3634;&#3619;&#3592;&#3633;&#3604;&#3585;&#3634;&#3619;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3621;&#3591;&#3607;&#3632;&#3648;&#3610;&#3637;&#3618;&#3609;</td>
													<td width="5"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td width="339" height="1"><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
										<td width="15" height="1"></td>
										<td width="339" height="1"><IMG height="1" src="../../images/lines/w2.gif" width="339"></td>
									</tr>
									<tr>
										<td width="339">
											<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../images/table/st_pr_adm.gif"
												border="0">
												<tr>
													<td width="5" height="21"></td>
													<td width="329" height="21">
														<asp:HyperLink id="payment_notify" runat="server" ForeColor="Black" Font-Underline="True" NavigateUrl="payment1_notify1_selection.aspx">&#3649;&#3592;&#3657;&#3591;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</asp:HyperLink><A class="A_black_underline" href="payment1_notify1_selection.htm"></A></td>
													<td width="5" height="21"></td>
												</tr>
												<tr>
													<td width="5" height="21"></td>
													<td height="21">
														<asp:HyperLink id="payment_list" runat="server" ForeColor="Black" NavigateUrl="payment2_list.aspx"
															Font-Underline="True">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</asp:HyperLink><A class="A_black_underline" href="payment2_list.htm"></A></td>
													<td width="5" height="21"></td>
												</tr>
											</table>
										</td>
										<td width="15"></td>
										<td width="339">
											<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../images/table/st_pr_adm.gif"
												border="0">
												<tr>
													<td width="5" height="21"></td>
													<td width="329" height="21"><FONT face="Tahoma"></FONT>
														<asp:HyperLink id="changePass" runat="server" ForeColor="Black" NavigateUrl="change_password.aspx"
															Font-Underline="True">&#3648;&#3611;&#3621;&#3637;&#3656;&#3618;&#3609;&#3619;&#3627;&#3633;&#3626;&#3612;&#3656;&#3634;&#3609;</asp:HyperLink><A class="A_black_underline" href="change_password.htm"></A></td>
													<td width="5" height="21"></td>
												</tr>
												<tr>
													<td width="5" height="21"></td>
													<td width="329" height="21"><FONT face="Tahoma"></FONT>
														<asp:HyperLink id="changeContact" runat="server" ForeColor="Black" NavigateUrl="offer3_contact_datas_puadmin.aspx?from=startpage_example1"
															Font-Underline="True">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3585;&#3634;&#3619;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;</asp:HyperLink><A class="A_black_underline" href="change_contact_datas.htm"></A></td>
													<td width="5" height="21"></td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td width="339" height="1"><IMG height="1" src="../../images/objects/e1eaf5.gif" width="100%"></td>
										<td width="15" height="1"></td>
										<td width="339" height="1"><IMG height="1" src="../../images/objects/e1eaf5.gif" width="100%"></td>
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
							<td height="20"></td>
						</tr>
					</table>
				</td>
				<td width="15" rowSpan="2"></td>
			</tr>
			<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</TABLE>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
