<html>
	<head>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<meta content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization"
				name="keywords">
			<script language="javascript" src="../script/js.js"></script>
			<% Session("CURRENT_HEADER_MENU") = "CUSTOMER"
			Dim CUST
			CUST=Request.Item ("CUST")
			if CUST="" then CUST=1
			%>
	</head>
	<body>
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td vAlign="top">
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td background="../images/menu/banner3.jpg" height="140">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td vAlign="top">
								<table style="BACKGROUND-IMAGE: url(../images/bg_sidemenu2.jpg); BACKGROUND-REPEAT: repeat-y"
									cellSpacing="0" cellPadding="0" width="100%" border="0">
									<tr>
										<td vAlign="top" width="219"><!--#include file="../Includes/m_customer.aspx" --></td>
										<td vAlign="top">
											<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
												<tr>
													<td>&nbsp;<% select case CUST
			   case 1: %></td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_cust1.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">
														<table cellSpacing="0" cellPadding="1" width="96%" align="center" border="0">
															<tr>
																<td align="center" width="90" rowSpan="5"><A href="img/ogc.pdf" target="_blank"><IMG height="95" alt="View" src="../images/customer/Letter/23apr03.jpg" width="73" border="0"></A></td>
																<td width="15" rowSpan="5"></td>
																<td width="446">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13" width="446" height="17"><strong>จดหมาย ฉบับวันที่ 23 เมษายน 2546</strong></td>
															</tr>
															<tr>
																<td class="T_gray13" width="446">เรื่อง ปรับปรุงระบบการวัดคุณภาพก๊าซธรรมชาติ
																</td>
															</tr>
															<tr>
																<td width="446">&nbsp;</td>
															</tr>
															<tr>
																<td width="446">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td class="T_gray13" background="../images/information/l2.jpg" height="3"><FONT face="Tahoma"></FONT></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">
														<table cellSpacing="0" cellPadding="1" width="96%" align="center" border="0">
															<tr>
																<td align="center" width="90" rowSpan="5"><A href="img/scb-account.pdf" target="_blank"><IMG height="95" alt="View" src="../images/customer/Letter/account.jpg" width="73" border="0"></A></td>
																<td width="15" rowSpan="5"></td>
																<td width="446">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13" width="446" height="17">จดหมาย ฉบับวันที่ 14 มีนาคม 2546</td>
															</tr>
															<tr>
																<td class="T_gray13" width="446">เรื่อง 
																	แจ้งการเปลี่ยนแปลงบัญชีเงินฝากธนาคารไทยพาณิชย์ จำกัด ของ บมจ.ปตท.
																</td>
															</tr>
															<tr>
																<td width="446">&nbsp;</td>
															</tr>
															<tr>
																<td width="446">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td background="../images/information/l2.jpg" height="3"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 2: %></td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_cust2.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>
														<table cellSpacing="0" cellPadding="0" width="96%" align="center" border="0">
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 3: %></td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_cust3.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 4: %>
													</td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_cust4.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 5: %>
													</td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_cust5.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 6: %>
													</td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_vendor.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>
														<table cellSpacing="2" cellPadding="0" width="96%" align="center" border="0">
															<tr>
																<td class="T_gray13" align="center" width="20">&nbsp;<IMG height="9" src="../images/a_org.gif" width="7"></td>
																<td class="T_gray13"><A class="T_gray13" href="VendorList/vendor_01.aspx" target="_blank">บริษัทที่ให้บริการ 
																		สำรวจออกแบบก่อสร้าง ระบบท่อส่งก๊าซฯ ภายในโรงงาน</A></td>
															</tr>
															<tr>
																<td class="T_gray13" vAlign="top" align="center">&nbsp;<IMG height="9" src="../images/a_org.gif" width="7"></td>
																<td class="T_gray13" vAlign="top"><A class="T_gray13" href="VendorList/vendor_02.aspx" target="_blank">บริษัทที่ให้บริการ 
																		ตรวจวัดประสิทธิภาพ การเผาไหม้ และเปลี่ยนอุปกรณ์เดิม มาใช้ก๊าซธรรมชาติ 
																		และแก้ไขข้อขัดข้องในระบบ COMBUSTION</A></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;<IMG height="9" src="../images/a_org.gif" width="7"></td>
																<td class="T_gray13"><A class="T_gray13" href="VendorList/vendor_03.aspx" target="_blank">หน่วยงานที่ปรึกษา 
																		ด้านการอนุรักษ์พลังงาน สามารถทำ PRE -FEASIBILITY STUDY CO-GEN ได้</A></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;<IMG height="9" src="../images/a_org.gif" width="7"></td>
																<td class="T_gray13"><A class="T_gray13" href="VendorList/vendor_04.aspx" target="_blank">บริษัทที่ให้บริการสำรวจ 
																		ออกแบบก่อสร้างระบบ Co-Generation</A></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;<IMG height="9" src="../images/a_org.gif" width="7"></td>
																<td class="T_gray13"><A class="T_gray13" href="VendorList/vendor_05.aspx" target="_blank">บริษัทที่ให้บริการวิศวกรรมและก่อสร้างระบบ 
																		Absorption Chiller</A></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;<IMG height="9" src="../images/a_org.gif" width="7"></td>
																<td class="T_gray13"><A class="T_gray13" href="VendorList/vendor_06.aspx" target="_blank">บริษัทจำหน่ายติดตั้ง 
																		ซ่อมบำรุง อุปกรณ์วัด และควบคุมก๊าซ</A></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 7: %>
													</td>
												</tr>
												<tr>
													<td><IMG height="38" src="../images/title_download.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>
														<table cellSpacing="0" cellPadding="0" width="96%" align="center" border="0">
															<tr>
																<td class="T_blue13"><strong><u>เอกสาร</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">
																	<table cellSpacing="2" cellPadding="2" width="98%" align="center" border="0">
																		<tr>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="18" src="../images/icon_zip.gif" width="17" border="0"></A></td>
																			<td class="T_gray13" align="center" width="25"><A href="#"><IMG height="19" src="../images/icon_dw.gif" width="15" border="0"></A></td>
																			<td class="T_gray13">ทิศทางใหม่โครงการท่อส่งก๊าซธรรมชาติ [ 6.04 MB. ]</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="18" src="../images/icon_zip.gif" width="17" border="0"></A></td>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="19" src="../images/icon_dw.gif" width="15" border="0"></A></td>
																			<td class="T_gray13">ศูนย์ปฎิบัติการระบบท่อส่งก๊าซธรรมชาติ [ 4 MB. ]</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="18" src="../images/icon_zip.gif" width="17" border="0"></A></td>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="19" src="../images/icon_dw.gif" width="15" border="0"></A></td>
																			<td class="T_gray13">โรงแยกก๊าซธรรมชาติ [ 3.71 MB. ]</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="18" src="../images/icon_zip.gif" width="17" border="0"></A></td>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="19" src="../images/icon_dw.gif" width="15" border="0"></A></td>
																			<td class="T_gray13">ความรู้เรื่องก๊าซ [ 8.45 MB. ]</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="18" src="../images/icon_zip.gif" width="17" border="0"></A></td>
																			<td class="T_gray13" align="center"><A href="#"><IMG height="19" src="../images/icon_dw.gif" width="15" border="0"></A></td>
																			<td class="T_gray13">ความปลอดภัยของระบบท่อ [ 4.07 MB. ]</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<%end select %></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/footer.aspx" --></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
