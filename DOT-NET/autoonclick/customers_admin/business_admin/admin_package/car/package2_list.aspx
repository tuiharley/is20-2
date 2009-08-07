<%@Register TagPrefix="footer" TagName="footer_bar" Src="../menu/MBottom.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../menu/MLeft2.ascx"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../menu/MTop.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky3.ascx"%>
<%@ Page CodeBehind="package2_list.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.package2_list" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css"> BODY { BACKGROUND-IMAGE: url(../../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff } A:active { TEXT-DECORATION: none } A:link { TEXT-DECORATION: none } A:visited { TEXT-DECORATION: none } A:hover { TEXT-DECORATION: none } </style>
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
	<body onLoad="MM_preloadImages('../../../../images/main_table/offer_01.gif','../../../../images/main_table/search_01.gif','../../../../images/main_table/special_offer_01.gif','../../../../images/main_table/dealer_01.gif','../../../../images/main_table/company_01.gif','../../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693"><table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../../images/objects/sub_navi_blue_c.gif" class="Font_brown">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</td>
											<td><img src="../../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">-</a></td>
											<td><img src="../../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../../images/objects/sub_navi_blue_c.gif"><a href="../../admin_job/job1_list.aspx" class="A_black_NOunderline">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</a></td>
											<td><img src="../../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
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
					<td width="693" valign="top">
						<div id="tableList">
						</div>
						<table>
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../../images/objects/sub_navi_blue_c.gif" class="Font_brown">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</td>
											<td><img src="../../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">-</a></td>
											<td><img src="../../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../../images/objects/sub_navi_blue_c.gif"><a href="../../admin_job/job1_list.aspx" class="A_black_NOunderline">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</a></td>
											<td><img src="../../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
					<td width="120" valign="top"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar>
			</table>
		</form>
		<script language="javascript">
					startList();
					function startList(){
						autoonclick.package2_list.showTable(tableBack);
						
					}
					function tableBack(response){
					var tableList = document.getElementById("tableList");
						tableList.innerHTML=response.value;
						//autoonclick.package2_list.showNotice(noticeBack);
					}
					function noticeBack(response){
					var packages = document.getElementById("packages");
						packages.innerHTML=response.value;
					}
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
