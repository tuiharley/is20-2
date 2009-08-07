<%@ Page CodeBehind="job1_list.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.job1_list" %>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft2.ascx"%>
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
			<table cellSpacing="0" cellPadding="0" width="983" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="../admin_package/car/package2_list.aspx">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="#">-</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><span class="Font_brown">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</span></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
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
								<td width="693">
									<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../../images/header/m_h_o.gif"
										border="0">
										<tr>
											<td width="25"></td>
											<td width="663">
												<div id="AdsNum"></div>
											</td>
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
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/g_693.gif"
										border="0">
										<tr>
											<td colSpan="7" height="5"></td>
										</tr>
										<tr>
											<td width="5" height="26"></td>
											<td width="80" height="26">
												<div align="right"><strong>&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;:</strong></div>
											</td>
											<td width="5" height="26"></td>
											<td width="211" height="26"><select id="cond" name="cond" class="Font_black" style="WIDTH: 211px">
													<option value="1" selected>&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624; 
														(&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;/&#3609;&#3634;&#3609;&#3626;&#3640;&#3604;)</option>
													<option value="2">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3626;&#3636;&#3657;&#3609;&#3626;&#3640;&#3604;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624; 
														(&#3585;&#3656;&#3629;&#3609;/&#3627;&#3621;&#3633;&#3591;)</option>
													<option value="3">&#3626;&#3606;&#3634;&#3609;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624; 
														(&#3611;&#3636;&#3604;/&#3648;&#3611;&#3636;&#3604;)</option>
													<option>----------------------------------------</option>
													<option value="4">&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;(&#3585;&#3586;&#3588;,abc...)</option>
												</select>
											</td>
											<td width="4"></td>
											<td width="383" onClick='sortData(document.form1.cond.value);'><A class="A80" href="#">&#3649;&#3626;&#3604;&#3591;&#3612;&#3621;</A></td>
											<td width="5" height="26"></td>
										</tr>
										<tr>
											<td colSpan="7" height="5"></td>
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
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td onClick='deleteDetail();'><A class="A80" href="#">&#3621;&#3610;</A></td>
											<td width="4"></td>
											<td><asp:label id="offer1" runat="server"></asp:label></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_white" height="21" cellSpacing="0" cellPadding="0" width="693" background="../../../images/header/job_b_li.gif"
										border="0">
										<tr>
											<td width="3"></td>
											<td width="20">
												<div align="center">X</div>
											</td>
											<td width="5"></td>
											<td width="60">
												<div align="center">&#3619;&#3627;&#3633;&#3626;</div>
											</td>
											<td width="5"></td>
											<td width="74">
												<div align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;</div>
											</td>
											<td width="5"></td>
											<td width="78">
												<div align="center">&#3594;&#3609;&#3636;&#3604;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div>
											</td>
											<td width="5"></td>
											<td width="72">
												<div align="center">&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>
											</td>
											<td width="5"></td>
											<td width="74">
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
											<td width="43">
												<div align="center">&#3626;&#3606;&#3634;&#3609;&#3632;</div>
											</td>
											<td width="5"></td>
											<td width="60">
												<div align="center">&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;</div>
											</td>
											<td width="5"></td>
											<td width="46">
												<div align="center">P</div>
											</td>
											<td width="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td><asp:label id="JobLists" runat="server" CssClass="Font_black"></asp:label></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td onClick='deleteDetail();'><A class="A80" href="#">&#3621;&#3610;</A></td>
											<td width="4"></td>
											<td><asp:label id="offer2" runat="server"></asp:label></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_o_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="15"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="../admin_package/car/package2_list.aspx">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3649;&#3614;&#3588;&#3648;&#3585;&#3592;</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="#">-</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><span class="Font_brown">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3605;&#3635;&#3649;&#3627;&#3609;&#3656;&#3591;&#3591;&#3634;&#3609;</span></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
			//disableBtn("next_page",true);
			//AdsNum
			var catType = 6;
			
			showAdsNum(catType);
			
			function showAdsNum(cat){
						autoonclick.job1_list.showTerm(cat,UrlBack);	
					}					
			function UrlBack(res){
						var divObj = document.getElementById("AdsNum");
						
						if(res.value!='-1'){
							divObj.innerHTML = res.value;
						}else{
							window.location.href='job1_list_empty.aspx';
						}
			}
					
			// ---------   Remark START----------------------------		
			function saveRem(jobid){
			var btnName = "remark" + jobid;
				//alert(document.getElementById(btnName).value);
				autoonclick.job1_list.saveRemark(jobid,document.getElementById(btnName).value,SaveBack);
			}
			function SaveBack(res){
						if(res.value!='OK'){
							alert('äÁèÊÒÁÒÃºÑ¹·Ö¡ä´é');
						}else{
							alert('ºÑ¹·Ö¡àÃÕÂºÃéÍÂ');
						}
			}
			// ---------   Remark END----------------------------	
			
			// ---------   Show START----------------------------
			function showJob(detailid){
						autoonclick.job1_list.setDetailShow(detailid,delAdv);
					}
			function delAdv(response){
					var txt = "delCar" + response.value;
					var typePriceSt = document.getElementById(txt);
						if(typePriceSt.innerHTML=="à»Ô´"){
							typePriceSt.innerHTML="»Ô´";
						}else{
							typePriceSt.innerHTML="à»Ô´";
						}
			}
			// ---------   Show END----------------------------
			// ---------   Detail Delete START----------------------
			function deleteDetail(){
					if(confirm('Â×¹ÂÑ¹¡ÒÃÅº')){
						var checkB = document.form1.elements["noticeDe"];
						var maxCheckB = checkB.length;
						if(maxCheckB==null){
								if(checkB.checked){
									autoonclick.job1_list.setDetailDelete(checkB[i].value);	
								}
						}else{
							for(var i=0;i<maxCheckB;i++){
								if(checkB[i].checked){
								  autoonclick.job1_list.setDetailDelete(checkB[i].value);
								}
							}
						}
						showAdsNum(catType);
						autoonclick.job1_list.showJobAJ(showJobRJ);
					}
			}
			// ---------   Detail Delete END----------------------
			function showJobRJ(res){
						var divObj = document.getElementById("JobList");
						divObj.innerHTML = res.value;
			}
			//----------   Sort Start --------------------------
			
			function sortData(condID){
				//alert(condID);
				autoonclick.job1_list.showJobAJ(condID,showJobRJ);
			}
			
			
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
