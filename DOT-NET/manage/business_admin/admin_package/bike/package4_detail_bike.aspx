<%@ Page CodeBehind="package4_detail_bike.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.package4_detail_bike" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=tis-620">
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
								<td width="693"><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="../car/package2_list.aspx" class="A_black_NOunderline">รายการแพคเกจ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">รายการโฆษณาพิเศษ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">รายการตำแหน่งงาน</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td><asp:label id="upPage" runat="server" ForeColor="Transparent" CssClass="Font_black"></asp:label>
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
								<td width='693'>
									<asp:label id="topicTxt" runat="server"></asp:label>
								</td>
							</tr>
							<tr>
								<td><img src="../../../images/lines/w.gif" width="693" height="1"></td>
							</tr>
							<tr>
								<td><table width="693" height="31" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/f_line.gif"
										class="Font_black">
										<tr>
											<td height="5" colspan="7"></td>
										</tr>
										<tr>
											<td width="61" height="20"><div align="center">คำสั่ง:</div>
											</td>
											<td width="113" height="20"><div align="center">
													<font id='opC' onclick="openClose();" class="fontBl" onmouseover="document.all.opC.className='fontBl1'"
														style="CURSOR: hand" onmouseout="document.all.opC.className='fontBl'">
														<div id="openNotice">เปิด/ปิดประกาศ</div>
													</font>
												</div>
											</td>
											<td width="98" height="20"><div align="center">
													<asp:hyperlink id="edit_ad" runat="server" class="A_black_underline"></asp:hyperlink></div>
											</td>
											<td width="118" height="20">
												<div align="center"><asp:HyperLink class="A_black_underline" id="bikeList" runat="server"></asp:HyperLink></div>
											</td>
											<td width="84" height="20"><div align="center"><asp:HyperLink class="A_black_underline" id="printThis" runat="server"></asp:HyperLink></div>
											</td>
											<td width="84" height="20"><div align="center">
													<font id='delAd' onclick="deleteAds();" class="fontBl" onmouseover="document.all.delAd.className='fontBl1'"
														style="CURSOR: hand" onmouseout="document.all.delAd.className='fontBl'">ลบประกาศ</font></div>
											</td>
											<td width="135" height="20"><div align="center"></div>
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
								<td><table width="693" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_693+ar.gif"
										class="H1_white">
										<tr>
											<td width="25"></td>
											<td width="526">
												<asp:label id="carBrand" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label></td>
											<td width="10"></td>
											<td width="127">
												<div align="right">฿
													<asp:label id="head_price" runat="server" ForeColor="Transparent" CssClass="H1_white"></asp:label>
												</div>
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
														<td width="339"><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">รายละเอียด</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/dtl_vehicle.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ประเภทรถ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ราคา</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">สภาพรถ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ปี</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">เลขไมล์</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ประเภทเครื่องยนต์</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="enginetype" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">กำลังเครื่องยนต์</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="power" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">สี</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ขับเคลื่อน</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="drive" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ระบบเกียร์</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="gear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">จำนวนเกียร์</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="numgear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">จำนวนสูบ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="numpump" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ขนาดเครื่องยนต์</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="cc" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">ตรวจสอบรถครั้งล่าสุด</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="lastcheck" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">รถมีอุบัติเหตุ(ยังไม่ซ่อม)</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">รถมีประกัน</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
																		<asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_vehicle.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="114" valign="top"><div align="right">เลขตัวรถ</div>
																	</td>
																	<td width="11"></td>
																	<td width="204">
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
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">อุปกรณ์เสริม</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_339.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329">
																		<asp:label id="accessory" runat="server" CssClass="Font_black_LH_17px" Height="70px" Width="100%"></asp:label>
																	</td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">ข้อมูลเพิ่มเติม</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/g_339.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329">
																		<asp:label id="description" runat="server" CssClass="Font_black_LH_17px" Height="70px" Width="100%"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
													</tr>
												</table>
											</td>
											<td width="15"></td>
											<td width="339" valign="top"><table width="339" border="0" cellspacing="0" cellpadding="0">
													<tr>
														<td class="dtl_pic" width="339" height="327">
															<div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table height="45" cellSpacing="0" cellPadding="0" border="0">
																<tr>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image2" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																	<td width="10"></td>
																	<td class="dtl_pic2" width="60" height="60">
																		<div align="center"><asp:label id="image3" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td><table width="339" height="21" border="0" cellpadding="0" cellspacing="0" background="../../../images/header/h_b_339+ar.gif"
																class="H1_white">
																<tr>
																	<td width="25"></td>
																	<td width="309">ข้อมูลติดต่อ</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/w2.gif" width="339" height="1"></td>
													</tr>
													<tr>
														<td><table width="339" border="0" cellpadding="0" cellspacing="0" background="../../../images/table/dtl_con.gif"
																class="Font_black_LH_17px">
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">ชื่อบริษัท/กิจการ</div>
																	</td>
																	<td width="11"></td>
																	<td width="241">
																		<asp:Label id="compname" runat="server"></asp:Label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">ที่อยู่</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:Label id="Addr" runat="server"></asp:Label>
																	</td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">โทรศัพท์</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:Label id="Tel" runat="server"></asp:Label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">Fax</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:Label id="fax" runat="server"></asp:Label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">วัน-เวลาทำการ</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:Label id="officeHour" runat="server"></asp:Label><!--9:00 am - 5:00 pm-->
																	</td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colspan="5"><img src="../../../images/dividers/dtl_con.gif" width="339" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="77" valign="top"><div align="right">ข้อมูลเพิ่มเติม</div>
																	</td>
																	<td width="11"></td>
																	<td width="241">
																		<!-- Company Map-->
																		<img src="../../../images/objects/arrow_orange_17.gif" width="15" height="17" align="absMiddle">
																		<asp:HyperLink class="A_black_underline" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;</asp:HyperLink><br>
																		<!-- Company Info -->
																		<img src="../../../images/objects/arrow_orange_17.gif" width="15" height="17" align="absMiddle">
																		<asp:HyperLink class="A_black_underline" id="de_home" runat="server">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;&#3649;&#3621;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;&#3586;&#3629;&#3591;&#3626;&#3617;&#3634;&#3594;&#3636;&#3585;</asp:HyperLink></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td height="3" colspan="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><img src="../../../images/lines/dtl.gif" width="339" height="2"></td>
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
								<td><img src="../../../images/lines/l_b_693.gif" width="693" height="5"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td><asp:label id="downPage" runat="server" ForeColor="Transparent" CssClass="Font_black"></asp:label>
								</td>
							</tr>
							<tr>
								<td><table border="0" cellpadding="0" cellspacing="0" class="Font_black">
										<tr>
											<td><img src="../../../images/objects/sub_navi_blue_l.gif" width="10" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="../car/package2_list.aspx" class="A_black_NOunderline">รายการแพคเกจ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">รายการโฆษณาพิเศษ</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_s.gif" width="21" height="16"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><a href="#" class="A_black_NOunderline">รายการตำแหน่งงาน</a></td>
											<td><img src="../../../images/objects/sub_navi_blue_r.gif" width="10" height="16"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td width="15" valign="top"><FONT face="Tahoma"></FONT></td>
				</tr>
			</table>
		</form>
		<script language="javascript">
		getOpenCl();
		function changeMainPic(picNo,picUrl){
			manage.package4_detail_bike.showMainPic(picNo,picUrl,UrlBack);
		}
		function UrlBack(res){
			var img1 = document.getElementById("image1");
			//alert(res.value);
			img1.innerHTML = res.value;
		}
	
				function getOpenCl(){
					manage.package4_detail_bike.getOpTxt(txtBack);
				}
				function openClose(){
					manage.package4_detail_bike.openAd(txtBack);
				}
				function txtBack(res){
					var openNotice = document.getElementById("openNotice");
					var headTopic = document.getElementById("h1");
					var db = res.value.split("!");
					//alert(res.value);
					openNotice.innerHTML = db[0];
					headTopic.innerHTML = db[1];
				}
				
				function deleteAds(){
					if(confirm('คุณต้องการที่จะลบประกาศ')){
					manage.package4_detail_bike.deleteAdsAJX(urlBack);
					}
				}
				function urlBack(res){
					//var openNotice = document.getElementById("delAd");
					//openNotice.innerHTML = res.value;
					window.location.href="package3_list_moto_term_new.aspx?noticeid="+res.value;
				}

		</script>
	</body>
</HTML>
