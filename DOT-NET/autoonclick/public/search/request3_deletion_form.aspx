<%@ Page CodeBehind="request3_deletion_form.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.request3_deletion_form" %>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { BACKGROUND-IMAGE: url(../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="693" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607; 
												:</td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqCAr" runat="server" CssClass="A_black_NOunderline">&#3619;&#3606;&#3618;&#3609;&#3605;&#3660;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqBike" runat="server" CssClass="A_black_NOunderline">&#3619;&#3606;&#3592;&#3633;&#3585;&#3619;&#3618;&#3634;&#3609;&#3618;&#3609;&#3605;&#3660;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqTruck" runat="server" CssClass="A_black_NOunderline">&#3619;&#3606;&#3610;&#3619;&#3619;&#3607;&#3640;&#3585;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif">
												<asp:hyperlink id="reqPart" runat="server" CssClass="A_black_NOunderline">&#3594;&#3636;&#3657;&#3609;&#3626;&#3656;&#3623;&#3609;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;/&#3611;&#3619;&#3632;&#3604;&#3633;&#3610;&#3618;&#3609;&#3605;&#3660;</asp:hyperlink></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
											<td width="79"></td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td width="162" background="../../images/objects/sub_navi_blue_c.gif" class="Font_brown"><div align="right">
													|| 
													&#3605;&#3657;&#3629;&#3591;&#3585;&#3634;&#3619;&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;&#3588;&#3621;&#3636;&#3658;&#3585;&#3607;&#3637;&#3656;&#3609;&#3637;&#3656; 
													||</div>
											</td>
											<td><IMG height="16" src="../../images/objects/sub_navi_blue_r.gif" width="10"></td>
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
								<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3621;&#3610;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3613;&#3634;&#3585;&#3588;&#3657;&#3609;&#3627;&#3634;&#3585;&#3633;&#3610;&#3648;&#3619;&#3634;</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="122" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black_LH_17px">
										<tr>
											<td height="10" colspan="6"></td>
										</tr>
										<tr>
											<td height="25"></td>
											<td height="25" colspan="4" bgcolor="#ddebff" class="All_Border_blue"><div align="center"><span class="Font_orange_bold">&#3588;&#3635;&#3648;&#3605;&#3639;&#3629;&#3609; :</span>
													<strong>&#3585;&#3634;&#3619;&#3621;&#3610;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3609;&#3637;&#3657;&#3652;&#3617;&#3656;&#3626;&#3634;&#3617;&#3634;&#3619;&#3606;&#3648;&#3619;&#3637;&#3618;&#3585;&#3588;&#3639;&#3609;&#3652;&#3604;&#3657;</strong></div>
											</td>
											<td height="25"></td>
										</tr>
										<tr>
											<td height="10" colspan="6"></td>
										</tr>
										<tr>
											<td width="5" height="18"></td>
											<td width="234"><div align="right">
													<DIV class="Font_orange" align="right">Email</DIV>
												</div>
											</td>
											<td width="10"></td>
											<td width="206">
												<asp:textbox id="email" tabIndex="3" runat="server" CssClass="Font_black" MaxLength="50" Width="95%"></asp:textbox></td>
											<td width="233"></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="10" colspan="6"></td>
										</tr>
										<tr>
											<td width="5" height="18"></td>
											<td width="234"><div align="right">
													<DIV class="Font_orange" align="right">Password</DIV>
												</div>
											</td>
											<td></td>
											<td width="206">
												<asp:textbox id="password" runat="server" CssClass="standard_font" MaxLength="12" Width="95%"
													TextMode="Password"></asp:textbox></td>
											<td></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="6"></td>
										</tr>
										<tr>
											<td width="5" height="21"></td>
											<td width="234"></td>
											<td></td>
											<td width="206"><div align="center"><INPUT class="button" id="comp1" onmouseover="document.all.comp1.className='buttonover'"
														style="CURSOR: hand" onclick='return checkForm();' onmouseout="document.all.comp1.className='button'" type="button"
														value="&#3621;&#3610;" name="comp1"></div>
											</td>
											<td></td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="6"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
		<script language="javascript" src='../../j_script/checkEmail.js'></script>
		<script language="javascript">
		function checkForm(){
			var pass = document.form1.password.value;
			var eml = document.form1.email.value;
			if(!emlRequire(eml)){
				alert('¡ÃØ³ÒÃÐºØ Email');
				return false;
			}
			if(!checkEmail(eml)){
				alert('Email äÁè¶Ù¡µéÍ§');
				return false;
			}
			if(!passRequire(pass)){
				alert('¡ÃØ³ÒÃÐºØ Password');
				return false;
			}
			autoonclick.request3_deletion_form.delSearch(pass,eml);
			alert('Åº¢éÍÁÙÅàÃÕÂºÃéÍÂ');
			document.form1.password.value='';
			document.form1.email.value='';
			if(document.all || document.getElementByID){
				document.all.email.style.background = "#ffffff";
			}
			return true;
		}
		function checkEmail(eml){
			if(!check_email(eml)){
					document.form1.email.focus(); 
					if(document.all || document.getElementByID){
						document.all.email.style.background = "#ffff99";
					}
					return false;
			}
			return true;
		}
		function passRequire(pass){
			if(pass==''){
				return false;
			}
			return true;
		}
		function emlRequire(eml){
			if(eml==''){
				return false;
			}
			return true;
		}
		</script>
						<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
