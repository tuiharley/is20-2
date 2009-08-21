<%@ Page CodeBehind="payment2_listD.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.payment2_listD" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../css/style.css" rel="stylesheet" type="text/css">
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
	<body onLoad="MM_preloadImages('../images/main_table/offer_01.gif','../images/main_table/search_01.gif','../images/main_table/special_offer_01.gif','../images/main_table/dealer_01.gif','../images/main_table/company_01.gif','../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="15"></td>
							</tr>
						</table>
					</td>
					<td></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3594;&#3635;&#3619;&#3632;&#3648;&#3591;&#3636;&#3609;</td>
											<td width="5"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../images/header/pay_conf.gif"
										class="Font_white">
										<tr>
											<td width="3"></td>
											<td width="54"><DIV align="center">&#3619;&#3627;&#3633;&#3626;&#3629;&#3657;&#3634;&#3591;&#3629;&#3636;&#3591;</DIV>
											</td>
											<td width="5"></td>
											<td width="82"><DIV align="center">&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3594;&#3635;&#3619;&#3632;</DIV>
											</td>
											<td width="5"></td>
											<td width="53"><DIV align="center">&#3648;&#3623;&#3621;&#3634;&#3594;&#3635;&#3619;&#3632;</DIV>
											</td>
											<td width="5"></td>
											<td width="83"><DIV align="center">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3591;&#3636;&#3609;</DIV>
											</td>
											<td width="5"></td>
											<td width="71"><div align="center">&#3648;&#3586;&#3657;&#3634;&#3608;&#3609;&#3634;&#3588;&#3634;&#3619;</div>
											</td>
											<td width="5"></td>
											<td width="319"><DIV align="center"><span>&#3627;&#3617;&#3634;&#3618;&#3648;&#3627;&#3605;&#3640;</span></DIV>
											</td>
											<td width="3"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" border="0" cellspacing="0" cellpadding="0">
										<asp:Label id="tmpPay" runat="server"></asp:Label>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
