<%@ Page CodeBehind="detail_part.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.detail_part" %>
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
		<table width="693" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td width="15"></td>
				<td width="693"><table width="693" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="693"><table border="0" align="right" cellpadding="0" cellspacing="0" class="Page_Number">
									<tr>
										<td><!--&lt;&lt;--></td>
										<td><img src="../images/objects/no.gif" width="7" height="1"></td>
										<td><!--<strong>Ad 1 of 4</strong>--></td>
										<td><img src="../images/objects/no.gif" width="7" height="1"></td>
										<td><!--&gt;&gt;--></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="5"></td>
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
							<td width="693">
								<table width="693" height="21" border="0" cellpadding="0" cellspacing="0" 
							background="<%=tbl_background%>"
									class="Font_white">
									<tr>
										<td width="25"></td>
										<td width="526"><strong>&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3629;&#3632;&#3652;&#3627;&#3621;&#3656;:
												<asp:label id="notice" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label>&nbsp;/&#3623;&#3633;&#3609;&#3607;&#3637;&#3656;&#3621;&#3591;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;:
												<asp:label id="date_post" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label></strong></td>
										<td width="10"></td>
										<td width="127"><div align="right">
												<div align="center"><%=tbl_word%></div>
											</div>
										</td>
										<td width="5"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><img src="../images/lines/w.gif" width="693" height="1"></td>
						</tr>
						<tr>
							<td><table width="693" height="31" border="0" cellpadding="0" cellspacing="0" background="../images/table/f_line.gif"
									class="Font_black">
									<tr>
										<td height="5" colspan="7"></td>
									</tr>
									<tr>
										<td width="61" height="20"><div align="center">&#3588;&#3635;&#3626;&#3633;&#3656;&#3591;:</div>
										</td>
										<td width="113" height="20"><div align="center">
												<asp:HyperLink id="show_ad" runat="server" ForeColor="Black" Font-Underline="True">&#3648;&#3611;&#3636;&#3604;/&#3611;&#3636;&#3604; &#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:HyperLink></div>
										</td>
										<td width="98" height="20"><div align="center"><FONT face="Tahoma">
													<asp:HyperLink id="edit_ad" runat="server" ForeColor="Black" Font-Underline="True">&#3649;&#3585;&#3657;&#3652;&#3586;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:HyperLink></FONT></div>
										</td>
										<td width="118" height="20" align="center"><FONT face="Tahoma">
												<asp:HyperLink id="changeContact" runat="server" ForeColor="Black" Font-Underline="True">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3626;&#3656;&#3623;&#3609;&#3605;&#3633;&#3623;</asp:HyperLink></FONT>
										</td>
										<td width="84" height="20"><!--<div align="center"><asp:HyperLink class="A_black_underline" id="printThis" runat="server"></asp:HyperLink></div>-->
											<div align="center"><asp:HyperLink id="del_ad" runat="server" ForeColor="Black" Font-Underline="True">&#3621;&#3610;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:HyperLink></div>
										</td>
										<td width="84" height="20" align="center"><FONT face="Tahoma"> </FONT>
										</td>
										<td width="135" height="20"><div align="center">
												<!--<asp:HyperLink id="back_main" runat="server" ForeColor="Black" Font-Underline="True">&#3585;&#3621;&#3633;&#3610;&#3626;&#3641;&#3656;&#3619;&#3634;&#3618;&#3585;&#3634;&#3619;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:HyperLink>--></div>
										</td>
									</tr>
									<tr>
										<td height="6" colspan="7"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../images/header/h_b_693+ar.gif"
									class="H1_white">
									<tr>
										<td width="25"></td>
										<td width="526">
											<asp:Label id="partBrand" runat="server" CssClass="H1_white" ForeColor="Transparent"></asp:Label></td>
										<td width="10"></td>
										<td width="127">
											<div align="right">
												&#3647;&nbsp;
												<asp:label id="head_price" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label>
											</div>
											<DIV></DIV>
										</td>
										<td width="5"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td><table width="693" border="0" cellpadding="0" cellspacing="0" class="Font_black">
									<tr>
										<td width="339" valign="top"><table width="339" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="339"><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../images/header/h_b_339+ar.gif"
															class="H1_white">
															<tr>
																<td width="25"></td>
																<td width="309">&#3619;&#3634;&#3618;&#3621;&#3632;&#3648;&#3629;&#3637;&#3618;&#3604;</td>
																<td width="5"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><img src="../images/lines/w2.gif" width="339" height="1"></td>
												</tr>
												<tr>
													<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../images/table/dtl_part.gif"
															class="Font_black_LH_17px">
															<tr>
																<td height="3" colspan="5"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3619;&#3634;&#3588;&#3634;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3626;&#3616;&#3634;&#3614;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3611;&#3637;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3626;&#3637;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3619;&#3627;&#3633;&#3626;&#3626;&#3637;</div>
																</td>
																<td width="11"></td>
																<td width="238"><FONT face="Tahoma">
																		<asp:label id="colorcode" runat="server" CssClass="Font_black_LH_17px"></asp:label>
																	</FONT>
																</td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3594;&#3635;&#3619;&#3640;&#3604;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr class="Font_black_LH_17px">
																<td colspan="5"><img src="../images/dividers/dtl_part.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="80" valign="top"><div align="right">&#3619;&#3627;&#3633;&#3626;&#3626;&#3636;&#3609;&#3588;&#3657;&#3634;</div>
																</td>
																<td width="11"></td>
																<td width="238">
																	<asp:label id="carid" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																<td width="5"></td>
															</tr>
															<tr>
																<td height="3" colspan="5"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><img src="../images/lines/dtl.gif" width="339" height="2"></td>
												</tr>
												<tr>
													<td height="10"></td>
												</tr>
												<tr>
													<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../images/header/h_b_339+ar.gif"
															class="H1_white">
															<tr>
																<td width="25"></td>
																<td width="309">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3648;&#3614;&#3636;&#3656;&#3617;&#3648;&#3605;&#3636;&#3617;</td>
																<td width="5"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><img src="../images/lines/w2.gif" width="339" height="1"></td>
												</tr>
												<tr>
													<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../images/table/g_339.gif"
															class="Font_black_LH_17px">
															<tr>
																<td height="3" colspan="3"><FONT face="Tahoma"></FONT></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="329">
																	<asp:Label id="description" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:Label></td>
																<td width="5"></td>
															</tr>
															<tr>
																<td height="3" colspan="3"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><img src="../images/lines/dtl.gif" width="339" height="2"></td>
												</tr>
											</table>
										</td>
										<td width="15"></td>
										<td width="339" valign="top"><table width="339" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="339" class="dtl_pic" height="327"><div align="center">
															<asp:image id="Image1" runat="server"></asp:image>
														</div>
													</td>
												</tr>
												<tr>
													<td height="10"></td>
												</tr>
												<tr>
													<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../images/header/h_b_339+ar.gif"
															class="H1_white">
															<tr>
																<td width="25"></td>
																<td width="309">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3605;&#3636;&#3604;&#3605;&#3656;&#3629;</td>
																<td width="5"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><img src="../images/lines/w2.gif" width="339" height="1"></td>
												</tr>
												<tr>
													<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../images/table/dtl_con.gif"
															class="Font_black_LH_17px">
															<tr>
																<td height="3" colspan="5"></td>
															</tr>
															<tr>
																<td colspan="5"><img src="../images/dividers/dtl_con.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="77" valign="top"><div align="right">&#3607;&#3637;&#3656;&#3629;&#3618;&#3641;&#3656;</div>
																</td>
																<td width="11"></td>
																<td width="241">
																	<asp:Label id="Addr" runat="server" CssClass="Font_black_LH_17px"></asp:Label>
																</td>
																<td width="5"></td>
															</tr>
															<tr>
																<td colspan="5"><img src="../images/dividers/dtl_con.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="77" valign="top"><div align="right">&#3650;&#3607;&#3619;&#3624;&#3633;&#3614;&#3607;&#3660;</div>
																</td>
																<td width="11"></td>
																<td width="241">
																	<asp:Label id="Tel" runat="server" CssClass="Font_black_LH_17px"></asp:Label></td>
																<td width="5"></td>
															</tr>
															<tr>
																<td colspan="5"><img src="../images/dividers/dtl_con.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td width="5"></td>
																<td width="77" valign="top"><div align="right">Fax</div>
																</td>
																<td width="11"></td>
																<td width="241">
																	<asp:Label id="fax" runat="server" CssClass="Font_black_LH_17px"></asp:Label></td>
																<td width="5"></td>
															</tr>
															<tr>
																<td colspan="5"><img src="../images/dividers/dtl_con.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td colspan="5"><img src="../images/dividers/dtl_con.gif" width="339" height="3"></td>
															</tr>
															<tr>
																<td height="3" colspan="5"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td><img src="../images/lines/dtl.gif"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td height="10"></td>
						</tr>
						<tr>
							<td><img src="../images/lines/l_b_693.gif" width="693" height="5"></td>
						</tr>
						<tr>
							<td height="5"><div align="center"><input type="button" class="button" id="close" onmouseover="document.all.close.className='buttonover'"
										style="CURSOR: hand" onmouseout="document.all.close.className='button'" value="Close" name="close" onclick="window.close();"></div>
							</td>
						</tr>
						<tr>
							<td><table border="0" align="right" cellpadding="0" cellspacing="0" class="Page_Number">
									<tr>
										<td><!--&lt;&lt;--></td>
										<td><img src="../images/objects/no.gif" width="7" height="1"></td>
										<td><!--<strong>Ad 1 of 4</strong>--></td>
										<td><img src="../images/objects/no.gif" width="7" height="1"></td>
										<td><!--&gt;&gt;--></td>
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
		</table>
	</body>
</HTML>
