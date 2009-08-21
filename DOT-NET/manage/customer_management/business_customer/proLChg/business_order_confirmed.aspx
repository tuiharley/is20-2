<%@ Page CodeBehind="business_order_confirmed.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.business_order_confirmed" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { BACKGROUND-IMAGE: none; MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
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
	<body onLoad="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="693" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693"><table border="0" align="right" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td width="100" background="../../../images/objects/sub_navi_blue_c.gif"><div align="center"><SCRIPT language="JavaScript" type="text/javascript">
        <!--
        document.write('<a href="javascript:history.back();" class="A_black_NOunderline">&#3618;&#3657;&#3629;&#3609;&#3585;&#3621;&#3633;&#3610;</a>');
        // -->
													</SCRIPT></div>
											</td>
											<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
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
								<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663"><asp:Label id="header" runat="server"></asp:Label></td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/order_dtl.gif"
										class="Font_black_LH_15px">
										<tr class="Font_white">
											<td width="3" height="21"></td>
											<td width="58" height="21"><div align="center">&#3619;&#3627;&#3633;&#3626;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="94" height="21"><div align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="65" height="21"><div align="center">&#3594;&#3609;&#3636;&#3604;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="68" height="21"><div align="center">&#3619;&#3632;&#3618;&#3632;&#3648;&#3623;&#3621;&#3634;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="94" height="21"><div align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3648;&#3619;&#3636;&#3656;&#3617;&#3605;&#3657;&#3609;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="86" height="21"><div align="center">&#3588;&#3656;&#3634;&#3610;&#3619;&#3636;&#3585;&#3634;&#3619;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="90" height="21"><div align="center">&#3626;&#3606;&#3634;&#3609;&#3632;</div>
											</td>
											<td width="5" height="21"></td>
											<td width="97" height="21"><div align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3618;&#3639;&#3609;&#3618;&#3633;&#3609;&#3626;&#3606;&#3634;&#3609;&#3632;</div>
											</td>
											<td width="3" height="21"></td>
										</tr>
										<asp:Label id="prolongs" runat="server"></asp:Label>
										<tr>
											<td height="5" colspan="17">
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<%if request.querystring("cond") = "unconfirm" %>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><table border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td>
												<asp:button class="button" id="cancel_but" onmouseover="document.all.cancel_but.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.cancel_but.className='button'" runat="server"
													name="cancel_but" Text="&#3621;&#3610;"></asp:button></td>
										</tr>
									</table>
								</td>
							</tr>
							<% end if %>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
				</tr>
			</table>
			</TABLE>
		</form>
		<script language="javascript">
			function delOK(){
				if (confirm('Are you sure to delete?')){
					return true;
				}else{
					return false;
				}
			}
		</script>
	</body>
</HTML>
