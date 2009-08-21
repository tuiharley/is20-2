<%@ Page CodeBehind="send_message.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.send_message" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { MARGIN: 50px 50px 10px; BACKGROUND-COLOR: #ffffff }
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
	<body onLoad="MM_preloadImages('../../images/main_table/offer_01.gif','../../images/main_table/search_01.gif','../../images/main_table/special_offer_01.gif','../../images/main_table/dealer_01.gif','../../images/main_table/company_01.gif','../../images/main_table/login_01_3.gif')">
		<form id="Form1" runat="server">
			<table width="983" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="15"></td>
					<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td>&#3585;&#3621;&#3656;&#3629;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617; 
												:</td>
											<td width="20"></td>
											<td><asp:HyperLink id="inMsg" CssClass="A_black_underline" runat="server">&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3648;&#3586;&#3657;&#3634;</asp:HyperLink></td>
											<td width="20"></td>
											<td class="Font_brown">&#3626;&#3656;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;</td>
											<td width="20"></td>
											<td><asp:HyperLink id="sentMsg" CssClass="A_black_underline" runat="server">&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;&#3607;&#3637;&#3656;&#3626;&#3656;&#3591;&#3649;&#3621;&#3657;&#3623;</asp:HyperLink></td>
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
					<td valign="top"><FONT face="Tahoma"></FONT></td>
					<td></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td width="693" valign="top"><table width="693" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="693" height="21"><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../images/header/m_h_o.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="663">&#3626;&#3656;&#3591;&#3586;&#3657;&#3629;&#3588;&#3623;&#3634;&#3617;</td>
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
											<td height="10" colspan="4"></td>
										</tr>
										<tr>
											<td width="150"><div align="right"><strong>&#3648;&#3619;&#3639;&#3656;&#3629;&#3591;</strong></div>
											</td>
											<td width="10"><FONT face="Tahoma"></FONT></td>
											<td width="373">
												<asp:TextBox id="topic" runat="server"></asp:TextBox>
												<asp:RequiredFieldValidator id="topicRequire" runat="server" ErrorMessage="&#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3648;&#3619;&#3639;&#3656;&#3629;&#3591;"
													Font-Bold="True" Font-Size="Medium" ControlToValidate="topic">* &#3585;&#3619;&#3640;&#3603;&#3634;&#3619;&#3632;&#3610;&#3640;&#3648;&#3619;&#3639;&#3656;&#3629;&#3591;</asp:RequiredFieldValidator>
											</td>
											<td width="160"></td>
										</tr>
										<tr>
											<td height="10" colspan="4"><FONT face="Tahoma"></FONT></td>
										</tr>
										<tr>
											<td valign="top"><div align="right"><strong>Details</strong></div>
											</td>
											<td><FONT face="Tahoma"></FONT></td>
											<td><FONT face="Tahoma">
													<asp:TextBox id="detail" runat="server" TextMode="MultiLine" Height="184px" Width="320px"></asp:TextBox></FONT></td>
											<td><FONT face="Tahoma"></FONT></td>
										</tr>
										<tr>
											<td height="10" colspan="4"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><img src="../../images/lines/l_o_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><table border="0" align="center" cellpadding="0" cellspacing="0">
										<tr>
											<td>
												<asp:button class="button" id="next_page" onmouseover="document.all.next_page.className='buttonover'"
													style="CURSOR: hand" onmouseout="document.all.next_page.className='button'" runat="server"
													name="next_page" Text="&#3626;&#3656;&#3591;"></asp:button></td>
											<td width="4"><FONT face="Tahoma">
													<asp:button class="button" id="cancel" onmouseover="document.all.cancel.className='buttonover'"
														style="CURSOR: hand" onmouseout="document.all.cancel.className='button'" runat="server"
														name="cancel" Text="&#3618;&#3585;&#3648;&#3621;&#3636;&#3585;" CausesValidation="False"></asp:button></FONT></td>
											<td><FONT face="Tahoma"></FONT></td>
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
					<td width="120" valign="top" height="600"></td>
					<td></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
