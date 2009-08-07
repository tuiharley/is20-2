<%@Register TagPrefix="logo" TagName="logo_login" Src="../logo/logo_login2.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../search/right_menu/sky1.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="left_menu/left_menubar_search.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="footer_bar/footer_bar_search.ascx"%>
<%@ Page CodeBehind="search2_result_business.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.search2_result_business" %>
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
				<logo:logo_login id="logo_login" runat="server" />
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server" />
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif" class="Font_brown">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</td>
											<td><img src="../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><a href="search1_business.aspx" class="A_black_NOunderline">&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635;</a></td>
											<td><img src="../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
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
											<td width="663"><div id="totalPage"></div>
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
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../images/table/g_693.gif"
										class="Font_black_LH_17px">
										<tr>
											<td height="5" colspan="4"></td>
											<td width="5" height="5"></td>
										</tr>
										<tr>
											<td width="5"></td>
											<td width="61" valign="top"><strong>&#3588;&#3657;&#3609;&#3627;&#3634;&#3650;&#3604;&#3618; 
													:</strong></td>
											<td width="5" valign="top"></td>
											<td valign="top"><div id="searchCon"></div>
											</td>
											<td width="5"></td>
										</tr>
										<tr>
											<td height="5" colspan="4"></td>
											<td width="5" height="5"></td>
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
								<td height="15"></td>
							</tr>
							<tr>
								<td><div id="upPage">
									</div>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><div id="dealerList">
									</div>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><div id="dnPage">
									</div>
								</td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif" class="Font_brown">&#3585;&#3621;&#3633;&#3610;&#3652;&#3611;&#3627;&#3609;&#3657;&#3634;&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</td>
											<td><img src="../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../images/objects/sub_navi_blue_c.gif"><a href="search1_business.aspx" class="A_black_NOunderline">&#3588;&#3657;&#3609;&#3627;&#3634;&#3595;&#3657;&#3635;</a></td>
											<td><img src="../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
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
				</tr>
				<footer:footer_bar id="footer_bar" runat="server" /></table>
		</form>
		<script language="javascript">
			var stPage = 1;
			showSearchCon();
			function showSearchCon(){
				autoonclick.search2_result_business.showSearch(showSearch);
				//autoonclick.search2_result_business.showPage(stPage,showPages);
				autoonclick.search2_result_business.showList(stPage,showLists);
				//autoonclick.search2_result_business.showTotal(stPage,showTotalP);
				
			}
			function showSearch(response){
				var show = document.getElementById("searchCon");
				show.innerHTML=response.value;
			}
			function showPages(response){
				var show = document.getElementById("upPage");
				var show2 = document.getElementById("dnPage");
				show.innerHTML=response.value;
				show2.innerHTML=response.value;
			}
			function showLists(response){
				var show = document.getElementById("dealerList");
				//alert(response.value);
				show.innerHTML=response.value;
				//alert(response.value.indexOf('notfound'));
				if(response.value.indexOf('notfound')==-1){
					autoonclick.search2_result_business.showPage(stPage,showPages);
					autoonclick.search2_result_business.showTotal(stPage,showTotalP);
				}
			}
			function showLists2(response){
				var show = document.getElementById("dealerList");
				//alert(response.value);
				show.innerHTML=response.value;
				//alert(response.value.indexOf('notfound'));
				/*if(response.value.indexOf('notfound')==-1){
					autoonclick.search2_result_business.showPage(stPage,showPages);
					autoonclick.search2_result_business.showTotal(stPage,showTotalP);
				}*/
			}
			function showTotalP(response){
				var show = document.getElementById("totalPage");
				show.innerHTML=response.value;
			}
			function goPage(pageno){
				autoonclick.search2_result_business.showPage(pageno,showPages);
				autoonclick.search2_result_business.showList(pageno,showLists2);
				autoonclick.search2_result_business.showTotal(pageno,showTotalP);
			}
			
		</script>
				<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>

	</body>
</HTML>
