<%@ Page CodeBehind="Industrial_Fuel_Gas.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Industrial_Fuel_Gas" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<% Session("CURRENT_HEADER_MENU") = "INFORMATION"
			Dim FUEL
			FUEL=Request.Item ("FUEL")
			if FUEL="" then FUEL=1
			%>
	</HEAD>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td height="140" background="../images/menu/banner4.jpg">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="BACKGROUND-IMAGE:url(../images/bg_sidemenu2.jpg); BACKGROUND-REPEAT:repeat-y">
									<tr>
										<td width="219" valign="top"><!--#include file="../Includes/m_info2.aspx" --></td>
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info2.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Industrial 
																Fuel Gas Piping System Standard Practice</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" cellspacing="2" cellpadding="0" align="center">
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=2" class="T_blue12"><strong>ระบบท่อส่งก๊าซในโรงงานอุตสาหกรรม</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=9" class="T_blue12"><strong>การทาสีและประเภทของสี
																		</strong></a>
																</td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=3" class="T_blue12"><strong>ท่อส่งก๊าซในโรงงาน</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=10" class="T_blue12"><strong>การระบุชนิดของท่อก๊าซในโรงงาน</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=4" class="T_blue12"><strong>การวางท่อส่งก๊าซ</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=11" class="T_blue12"><strong>ข้อปฏิบัติเมื่อพบว่ามีก๊าซรั่ว</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=5" class="T_blue12"><strong>การตรวจสอบและทดสอบระบบท่อ</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a class="T_blue12" href="Industrial_Fuel_Gas.aspx?FUEL=12"><strong>สถานที่อันตรายกับก๊าซธรรมชาติ
																		</strong></a>
																</td>
															</tr>
															<tr>
																<td align="center" valign="top"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=6" class="T_blue12"><strong>การต่ออุปกรณ์ใช้ก๊าซเข้ากับ<br>
																			ระบบท่อส่งก๊าซในอาคารโรงงาน</strong></a></td>
																<td align="center" valign="top"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=13" class="T_blue12"><strong>ตารางความสามารถในการส่งก๊าซ<br>
																			ของท่อ (A1 - A9)</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=7" class="T_blue12"><strong>การปรับปรุงระบบท่อฯหลังจากจ่ายก๊าซฯเข้าระบบ</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=14" class="T_blue12"><strong>การคำนวณหาขนาดท่อก๊าซในโรงงาน</strong></a></td>
															</tr>
															<tr>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=8" class="T_blue12"><strong>การบำรุงรักษาระบบท่อส่งก๊าซฯ</strong></a></td>
																<td align="center"><img src="../images/bull.gif" width="9" height="9" border="0"></td>
																<td><a href="Industrial_Fuel_Gas.aspx?FUEL=15" class="T_blue12"><strong>หนังสืออ้างอิง </strong>
																	</a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;<% select case FUEL
			   case 1: %></td>
												</tr>
												<tr>
													<td height="3" background="../images/information/l2.jpg"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" cellspacing="0" cellpadding="0" align="center">
															<tr>
																<td width="290" valign="top"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="251" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/plant-su.jpg" width="251" height="142"></td>
																					</tr>
																				</table>
																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>
																</td>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;นับตั้งแต่ได้มีการนำก๊าซธรรมชาติมาใช้เป็นเชื้อเพลิง 
																	ในการผลิตกระแสไฟฟ้า ให้การไฟฟ้าฝ่ายผลิตแห่งประเทศไทย (กฟผ.) ต่อมา บริษัท ปตท. 
																	จำกัด (มหาชน) ได้ขยายการจำหน่าย ก๊าซฯ ไปสู่ภาคอุตสาหกรรม 
																	จนกระทั่งความต้องการใช้ก๊าซ ธรรมชาติ 
																	เป็นเชื้อเพลิงทดแทนเชื้อเพลิงชนิดอื่นเพิ่มมากขึ้น</td>
															</tr>
															<tr>
																<td colspan="2">&nbsp;</td>
															</tr>
															<tr>
																<td colspan="2" class="T_gray13">ปตท. ก๊าซธรรมชาติ 
																	ตระหนักดีว่าก๊าซธรรมชาติเป็นเชื้อเพลิงที่สะอาดและ มีความปลอดภัยสูง 
																	แต่อย่างไรก็ตาม ความปลอดภัยจากการใช้ก๊าซธรรมชาติ 
																	จะต้องเริ่มตั้งแต่การออกแบบเลือกวัสดุที่ใช้ในการก่อสร้าง ระบบท่อส่งก๊าซทั้งของ 
																	ปตท. และระบบท่อส่งก๊าซในโรงงานของลูกค้า การปฏิบัติบำรุงรักษา ระบบท่อส่งก๊าซฯ 
																	ตลอดจนการปฏิบัติตามคำแนะนำการใช้อุปกรณ์ใช้ ก๊าซของผู้ผลิตอุปกรณ์ใช้ก๊าซนั้นๆ
																</td>
															</tr>
															<tr>
																<td colspan="2">&nbsp;</td>
															</tr>
															<tr>
																<td colspan="2" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ส่วนบริการลูกค้าก๊าซ 
																	ฝ่ายตลาดก๊าซธรรมชาติ มีหน้าที่ให้บริการลูกค้าในเรื่องต่าง ๆ อันเกี่ยวเนื่องกับ 
																	ธุรกิจก๊าซธรรมชาติ รวมถึงการให้บริการด้านเทคนิค และวิชาการ 
																	เพื่อสนองตอบต่อความต้องการของลูกค้าอย่างมีประสิทธิภาพ 
																	ทั้งนี้ส่วนบริการลูกค้าก๊าซ 
																	ได้พิจารณาจัดทำหนังสือแนะนำระบบท่อส่งก๊าซในโรงงานอุตสาหกรรมขึ้น 
																	โดยรวบรวมจากหัวข้อที่ลูกค้าสงสัย และสอบถามมาที่ส่วนบริการลูกค้าก๊าซ 
																	และหน่วยงานอื่น ๆ ของ ปตท. ทั้งนี้ เพื่อเป็นแนวทางในการปฏิบัติของลูกค้า 
																	ในการต่อเชื่อมท่อส่งก๊าซจากสถานีควบคุมความดัน และวัดปริมาณก๊าซ (M&amp;R 
																	Station) เข้าไปในโรงงาน เพื่อส่งก๊าซให้กับอุปกรณ์ใช้ก๊าซของลูกค้า 
																	ให้เกิดความปลอดภัยตามมาตรฐานสากลรวมถึงแนวทางปฏิบัติ 
																	เมื่อมีการปรับปรุงระบบท่อส่งก๊าซในโรงงานให้ถูกต้อง และปลอดภัยอีกด้วย 
																	ส่วนบริการลูกค้าก๊าซฝ่ายตลาดก๊าซธรรมชาติ หวังว่าคู่มือฉบับนี้ จะเป็นข้อมูล 
																	ที่มีประโยชน์ต่อหน่วยงานภายใน ปตท. และต่อลูกค้าก๊าซธรรมชาติ 
																	สำหรับการออกแบบและก่อสร้างระบบท่อส่งก๊าซในโรงงานอุตสาหกรรม 
																	เพื่อให้เกิดความปลอดภัยต่อไป</td>
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
													<td>&nbsp;<% case 2: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;ระบบท่อส่งก๊าซในโรงงานอุตสาหกรรม</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">ระบบท่อส่งก๊าซในโรงงานที่กล่าวในหนังสือฉบับนี้ หมายถึง 
														ท่อส่งก๊าซที่ต่อจากวาล์วตัวสุดท้ายของสถานีวัดปริมาณก๊าซ และควบคุมความดัน 
														(M&amp;R Station) ถึงวาล์วตัดก๊าซธรรมดา
														<span class="T_blue13">(Manual Shut-off Valve)</span>
														ของอุปกรณ์ใช้ก๊าซในโรงงาน (ดังรูป) 
														ระดับความดันก๊าซที่เหมาะสมของท่อส่งก๊าซในโรงงาน หรือในอาคารตามมาตรฐานของ
														<span class="T_blue13">National Fuel Gas Code (NFPA 54-1988)</span>
														ระบุไว้ไม่เกิน 125 Psig ก๊าซธรรมชาติจากระบบท่อของ ปตท. 
														ที่ออกจากสถานีวัดปริมาณก๊าซ และควบคุมความดัน (M&amp;R Station) 
														จะส่งผ่านเข้าระบบท่อส่งก๊าซของโรงงานเพื่อจ่ายให้แก่อุปกรณ์ใช้ก๊าซ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><img src="../images/information/industrial1.jpg" width="450" height="200"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_blue13"><strong>1. <u>ท่อประธาน (Main Piping)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อประธาน 
																	(Main Piping) หมายถึง ท่อก๊าซที่ต่อเชื่อมจากระบบท่อของสถานีควบคุมความดัน 
																	และวัดปริมาณก๊าซ (M&amp;R Station)</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. <u>ท่อย่อย (Branch Piping)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อย่อย 
																	(Branch Piping) หมายถึง ท่อก๊าซที่ต่อแยกจากท่อประธาน 
																	เพื่อส่งก๊าซที่รับต่อจากท่อประธาน ให้กับอุปกรณ์ใช้ก๊าซ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>3. <u>วาล์วปรับความดันท่อ (Line Pressure Regulator)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;วาล์วปรับความดันท่อ 
																	(Line Pressure Regulator) หมายถึง 
																	วาล์วปรับคามดันก๊าซที่ติดตั้งระหว่างสถานีควบคุมความดัน และวัดปริมาณก๊าซ 
																	(M&amp;R Station) กับอุปกรณ์ใช้ก๊าซ เพื่อปรับลดความดันก๊าซของท่อให้เหมาะสม</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>4. <u>อุปกรณ์ป้องกันความดันเกิน (Protective Device)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;อุปกรณ์ที่ใช้ป้องกันอันตราย 
																	ที่เกิดจากการทำงานผิดพลาดของอุปกรณ์ควบคุมความดัน (Pressure Regulator) 
																	ทำให้ความดันก๊าซระบบท่อส่งก๊าซขาออกของอุปกรณ์ปรับความดันสูง 
																	จนอาจทำให้อุปกรณ์ใช้ก๊าซได้รับความเสียหาย อุปกรณ์ที่ป้องกันความดันเกินมี 2 
																	ประเภท</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><strong>•&nbsp;<u>Relief Valve หรือ Safety Relief Valve</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นวาล์วป้องกันความดันก๊าซเกิน 
																				เมื่อความดันของก๊าซในระบบมีค่าสูงกว่าค่าที่ตั้งไว้ของ
																				<span class="T_gray12">
																					<strong>Relief Valve</strong></span>
																				ก๊าซจะถูกปล่อยออก เพื่อลดความดันในท่อวาล์วป้องกัน ความดันก๊าซเกินแบบนี้ 
																				จะติดตั้งที่ความดันขาออกของ
																				<span class="T_gray12">
																					<strong>Pressure Regulator</strong></span></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><strong>•&nbsp;<u>Shout-off Valve หรือ Safety Shut-off Valve</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นวาล์วป้องกันความดันก๊าซเกิน 
																				เมื่อความดันของก๊าซที่ออกจาก
																				<span class="T_gray12">
																					<strong>Pressure Regulator</strong></span>
																				มีค่าสูงกว่าค่าที่ตั้งไว้ของ
																				<span class="T_gray12">
																					<strong>Shut-off Valve</strong></span>
																				วาล์วนี้จะปิดตัวไม่ยอมให้ก๊าซไหลผ่านวาล์วป้องกัน ความดันก๊าซเกินแบบนี้ 
																				จะติดตั้งด้านหน้าของ
																				<span class="T_gray12">
																					<strong>Pressure Regulator</strong></span></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>5. <u>วาล์วตัดก๊าซธรรมดา (Manual Shut-off Valve)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นวาล์วที่ใช้ในการ 
																	ปิด - เปิด ด้วยมือหรือด้ามจับ เพื่อจ่ายก๊าซให้กับอุปกรณ์ใช้ก๊าซ โดยทั่ว ๆ ไป 
																	วาล์วนี้จะติดไว้ที่ส่วนปลายของท่อย่อยกับอุปกรณ์ใช้ก๊าซ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>6. <u>อุปกรณ์ใช้ก๊าซ (Gas Utilization Equipment)</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;อุปกรณ์ใช้ก๊าซ 
																	(Gas Utilization Equipment) หมายถึง อุปกรณ์ที่ใช้ก๊าซเป็นเชื้อเพลิง เช่น
																	<span class="T_gray12">
																		<strong>Burner, Furnace, Boiler, Dryer</strong></span>
																	ซึ่งอุปกรณ์ใช้ก๊าซที่กล่าวถึงนี้ ให้รวมถึงวาล์วปรับลดความดันก๊าซจากท่อย่อย 
																	อุปกรณ์ควบคุมส่วนผสมของก๊าซและอากาศ เช่น
																	<span class="T_bgray12">
																		<strong>Air, Blower, Gas-Air Mixer System</strong></span>
																	ซึ่งมาพร้อมกับอุปกรณ์ใช้ก๊าซหรือติดตั้งในภายหลัง</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
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
													<td>&nbsp;<% case 3: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14"><strong>&nbsp;&nbsp;&nbsp;ท่อส่งก๊าซในโรงงาน</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" class="T_blue13"><strong>1. 
																		ข้อกำหนดของวัสดุที่ใช้ในระบบท่อส่งก๊าซในโรงงาน</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13">•<strong>&nbsp;<u>ท่อ (Piping)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อที่นำมาเป็นท่อส่งก๊าซจากสถานีควบคุมความดัน 
																				และวัดปริมาณก๊าซ
																				<span class="T_blue13">(B&amp;R Station)</span>
																				ถึงอุปกรณ์ใช้ก๊าซในโรงงาน ให้ใช้ท่อเหล็ก Schedule 40 เป็นอย่างต่ำ 
																				รวมทั้งอุปกรณ์ท่อ
																				<span class="T_blue13">(Fitting)</span>
																				ต้องทำจากเหล็ก ในกรณีของท่อเหล็กและอุปกรณ์ท่อ
																				<span class="T_blue13">(Fitting)</span>
																				ที่ผ่านมาใช้งานมาแล้วอาจนำมาใช้เป็นท่อส่งก๊าซธรรมชาติได้ แต่ต้องแน่ใจว่า 
																				ท่อเหล็กและอุปกรณ์ท่อเหล่านั้นมีคุณสมบัติเสมือนของใหม่ 
																				และต้องฝ่ายการทำความสะอาด รวมทั้งทดสอบก่อนนำมาใช้งาน 
																				ท่อเหล็กที่ใช้จะต้องเป็นไปตามมาตรฐานดังนี้</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">Specfication for Black and Hot-Dipped, Zine-Coated Weld and 
																							Seamless Steel Pipe, ASTM A53</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">The Standard for Weld and Seamless Wrought-Steel pipe, ANSI 
																							B36.10</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">Specification for Seamless Carbon Steel Pipe for 
																							High-Temperature Service, ASTM A106</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13"><img src="../images/b_red.gif" width="15"></td>
																						<td class="T_gray13">Specification for Black and Hot-Dipped Zine-Coated 
																							(Galvanized) Weld and Seamless Steel Pipe for Ordinary Uses, ASTM A120</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">•<strong>&nbsp;<u>Tubing</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tubing 
																				ที่ใช้ร่วมกับระบบท่อก๊าซในโรงงาน ควรเป็นท่อเหล็กชนิดไร้ตะเข็บ ตามมาตรฐาน
																				<span class="T_blue13">"Standard Specification for Electric-Resistance-Weld Coil Steel Tubing 
      for Gas and Fuel Oil Lines, ASTM A539"</span>
																				หรือเทียบเท่า</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">•<strong>&nbsp;<u>อุปกรณ์ท่อ (Fitting)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;อุปกรณ์ท่อ 
																				(Fitting) ที่นำมาใช้ควรเป็นวัสดุที่ทำจากเหล็ก 
																				อุปกรณ์ท่อชนิดเกลียวต้องเป็นไปตามมาตรฐาน
																				<span class="T_blue13">ANSI B16.3 "Malleable-Iron Threaded Fitting"</span>
																				หรือเทียบเท่าขนาด และชนิดของเกลียวท่อ และข้อต่อต่าง ๆ ต้องเป็นเกลียว<span class="T_blue13">แบบเทเปอร์ (Taper pipe threads) หรือ NPT</span>
																				และอยู่ในมาตรฐานของ
																				<span class="T_blue13">"Standard for Pipe Threads, General Purpose (Inch), 
      ANSI/ASME B1.20.1"</span></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">•<strong>&nbsp;<u>หน้าแปลน (Flange)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;หน้าแปลน 
																				(Flange) ที่ใช้ร่วมกับท่อเหล็กในการต่อท่อส่งก๊าซ ควรเป็นไปตามมาตรฐาน
																				<span class="T_blue13">"Standard 
      for Pipe Flanges and Flanged Fittings, Steel Nickel Alloy and Other Special 
      Alloys, ANSI B16.5"</span></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">•<strong>&nbsp;<u>ปะเก็น (Gasket)</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;วัสดุที่ใช้ทำปะเก็นของการต่อท่อก๊าซแบบหน้าแปลน 
																				ควรเป็น
																				<span class="T_blue13">Neoprene</span>
																				หรือ วัสดุอื่นที่มีคุณสมบัติคล้ายกัน ห้ามใช้ยางธรรมชาติทำปะเก็น นอกจากนี้ 
																				อาจใช้ปะเก็นที่ทำด้วยโลหะ เช่น<span class="T_blue13"> Aluminium "O" rings, 
      spiral wound metal gasket, Metal-jacketed asbestos และ Asbestos</span>
																				ปะเก็นที่ผ่านการใช้งานมาแล้ว หรือที่ถูกถอดออกจากหน้าแปลน (Flange) 
																				ไม่ควรนำมาใช้อีก</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. การต่อท่อก๊าซ (Pipe Connection)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_gray13"><strong>การต่อท่อเหล็กที่ใช้เป็นท่อส่งก๊าซในโรงงาน สามารถทำได้โดย</strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">•</td>
																						<td class="T_gray13">ใช้ข้อต่อชนิดเกลียว (Pipe threaded and Fitting)</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">•</td>
																						<td class="T_gray13">ใช้หน้าแปลน (Flanged)s</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">•</td>
																						<td class="T_gray13">ใช้เชื่อม (Welded)</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การต่อท่อเหล็กที่ใช้เป็นท่อประธาน 
																				ควรใช้การต่อแบบเชื่อม (Weld) หรือใช้การต่อด้วยหน้าแปลน การเชื่อมท่อก๊าซนั้น 
																				ควรใช้ช่างเชื่อมที่ผ่านการทดสอบ 
																				และมีใบรับรองการเชื่อมจากหน่วยงาน/บริษัทที่ดำเนินการทดสอบช่างเชื่อม 
																				เพื่อเชื่อมท่อก๊าซ</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การต่อท่อเหล็กที่ใช้เป็นท่อย่อยที่ใช้กับความดันก๊าซต่ำกว่า 
																				60 Psig สามารถใช้ข้อต่อชนิดเกลียว (Pipe Threaded and Fitting) 
																				และขนาดของเกลียวที่ใช้ให้เป็นไปตามตารางที่ 1</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13"><strong><u>ตารางที่ 1 Specification for thread Metallic Pipe</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13"><table width="500" border="1" cellspacing="0" cellpadding="0" height="26" align="center"
																					bordercolor="#aec9e3">
																					<tr>
																						<td height="30" colspan="3" align="center" bgcolor="#ddf9ff" class="T_blue13"><b>Iron 
																								Pipe size Approximate Length of Approximate No of Thread</b></td>
																					</tr>
																					<tr>
																						<td width="112" align="center" bgcolor="#dfefff" class="T_gray13"><strong>(Inches)</strong></td>
																						<td width="241" align="center" bgcolor="#dfefff" class="T_gray13"><strong>Thread 
																								Portion (Inches)</strong></td>
																						<td width="177" align="center" bgcolor="#dfefff" class="T_gray13"><strong>to be cut</strong></td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">1/2</td>
																									<td width="241" align="center">3/4</td>
																									<td width="177" align="center">10</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">3/4</td>
																									<td width="241" align="center">3/4</td>
																									<td width="177" align="center">10</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">1</td>
																									<td width="241" align="center">7/8</td>
																									<td width="177" align="center">10</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">11/4</td>
																									<td width="241" align="center">1</td>
																									<td width="177" align="center">11</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">11/2</td>
																									<td width="241" align="center">1</td>
																									<td width="177" align="center">11</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">2</td>
																									<td width="241" align="center">1</td>
																									<td width="177" align="center">11</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">21/2</td>
																									<td width="241" align="center">11/2</td>
																									<td width="177" align="center">12</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">3</td>
																									<td width="241" align="center">11/2</td>
																									<td width="177" align="center">12</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																					<tr>
																						<td colspan="3"><table width="500" border="0" cellspacing="0" cellpadding="0" class="T_gray12">
																								<tr>
																									<td width="112" align="center">4</td>
																									<td width="241" align="center">15/8</td>
																									<td width="177" align="center">13</td>
																								</tr>
																							</table>
																						</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การต่อท่อย่อยจากท่อประธาน 
																				ควรใช้ตัวแยกที่มีขนาดเดียวกับท่อประธาน และควรต่อแยกออกจากท่อประธานทางด้านบน 
																				หรือด้านล่างของท่อฯ และที่ส่วนปลายของท่อแยกย่อย 
																				ที่ยังไม่ได้ต่อเข้ากับอุปกรณ์ใช้ก๊าซให้ทำการอุดด้วยปลั๊ก
																				<span class="T_blue13">(Thread plug)</span>
																				หรือแค๊ป
																				<span class="T_blue13">(Cap)</span></td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>3. ขนาดของท่อส่งก๊าซ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อเหล็กที่ใช้ส่งก๊าซธรรมชาติ 
																	ที่ต่อเชื่อมจากสถานีควบคุมความดัน และวัดปริมาณก๊าซถึงจุดต่อของอุปกรณ์ที่ใช้ก๊าซ
																	<span class="T_blue13">(Gas Utilization Equipment)</span>
																	ภายในโรงงานฯ มีหลักเกณฑ์ในการเลือกขนาดของท่อดังนี้</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/a_red.gif" width="8" height="10"></td>
																						<td class="T_gray13">ขนาดของท่อประธาน
																							<span class="T_blue13">(Main Piping)</span>
																							ที่ใช้ต้องมีขนาดที่สามารถส่งก๊าซ ให้พอเพียงต่อปริมาณความต้องการใช้ก๊าซสูงสุด
																							<span class="T_blue13">(Maximum Gas Demand)</span>
																							ของอุปกรณ์ใช้ก๊าซทั้งหมดในโรงงาน และเพียงพอต่อการขยาย 
																							หรือการใช้ก๊าซเพิ่มเติมในอนาคต</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/a_red.gif" width="8" height="10"></td>
																						<td class="T_gray13">ขนาดของท่อย่อย
																							<span class="T_blue13">(Branch Pipiing)</span>
																							ที่ใช้ต้องมีขนาดที่สามารถส่งก๊าซให้พอเพียง ต่อปริมาณความต้องการใช้ก๊าซสูงสุด
																							<span class="T_blue13">(Maximum Load)</span>
																							ของอุปกรณ์ใช้ก๊าซที่ต่อจากท่อย่อย</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/a_red.gif" width="8" height="10"></td>
																						<td class="T_gray13">ความดันก๊าซในโรงงาน ณ 
																							จุดต่อของอุปกรณ์ใช้ก๊าซจะต้องสูงกว่าความดันสุดที่ยอมให้ของอุปกรณ์ใช้ก๊าซ 
																							และความดันที่สูญเสียหรือความดันตกคล่อม
																							<span class="T_blue13">(Pressure Loss)</span>
																							ที่เกิดจากขนาดความยาวท่อข้อต่อข้องอ 
																							และวาล์วในระบบท่อจากจุดต้นทางถึงจุดต่อของอุปกรณ์ใช้ก๊าซฯ 
																							ต้องออกแบบไม่ให้เกิดความดันสูญเสีย หรือความดันลดลงมากกว่า 10 % ของความดันต้นทาง</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 
																				ความสามารถในการส่งก๊าซของท่อ Schedule 40 ในหน่วยของลูกบาศก์ฟุตมาตรฐาน (Standard 
																				condition,14.73 Psia, 60&deg;F) ที่ความดันใช้งาน 20 - 125 Psig 
																				ที่ยอมให้เกิดความดันสูญเสียไม่เกิน 10 % สามาถใช้จาก Table A1-A9</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>4. ปริมาตรก๊าซฯ ที่นำมาคำนวณหาขนาดของระบบท่อ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ความต้องการใช้ก๊าซฯ 
																	หรือปริมาตรก๊าซ ที่ต้องการสำหรับอุปกรณ์ใช้ก๊าซ (Maximum Load) 
																	พิจารณาได้จากแผ่นป้ายข้อมูลที่ติดมากับอุปกรณ์ใช้ก๊าซ 
																	และความต้องการใช้ก๊าซสูงสุด (Maximum Gas Demand) 
																	จะได้จากผลรวมของความต้องการใช้ก๊าซของอุปกรณ์ใช้ก๊าซที่ติดตั้งอยู่ทั้งหมดรวมกัน 
																	หน่วยของปริมาตรก๊าซที่ใช้คำนวณหาขนาดของท่อส่งก๊าซตาม
																	<span class="T_blue13">
																		<strong>Table A1-A9</strong></span>
																	มีหน่วยวัดเป็นลูกบาศก์ฟุตมาตรฐาน
																	<span class="T_blue13">(ลูกบาศก์ฟุตก๊าซที่ความดัน 14.73 Psia อุณหภูมิ 60 &deg; F)</span></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>5. ความดันก๊าซและการควบคุมความดัน</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ความดันก๊าซในโรงงาน 
																	ณ จุดต่อของอุปกรณ์ใช้ก๊าซฯ แต่ละเครื่องพิจารณาได้จากแผ่นป้ายที่ติดมากับอุปกรณ์ 
																	ใช้ก๊าซ หรือสอบถามจากโรงงานผู้ผลิตในกรณีที่ไม่ได้ระบุที่แผ่นป้าย 
																	เมื่อความดันก๊าซ ณ จุดต่อของอุปกรณ์ใช้ก๊าซมีค่าสูงกว่าค่าความดันสูงสุด (Maximum 
																	Pressure) ที่อุปกรณ์ใช้ก๊าซฯ ทนได้ซึ่งเกิดจากความดันต้น 
																	ทางที่ออกจากสถานีควบคุมความดัน และวัดปริมาณก๊าซให้ติดตั้งวาล์วปรับความดันท่อ 
																	(Line Pressure Regulator) เพิ่มเติมระหว่างท่อประธาน 
																	หรือท่อย่อยกับอุปกรณ์ใช้ก๊าซฯ เพื่อลดความดันก๊าซ โดยมีหลักเกณฑ์ดังนี้</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">การปรับลดความดันก๊าซจากระดับความดันก๊าซสูงกว่า 60 Psig 
																							มาที่ความดันระหว่าง 10-60 Psig จะต้องมีอุปกรณ์ป้องกันความดันเกิน (Pretective 
																							Device) เช่น Relief Valve หรือ Shut-off Valve</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">การปรับลดความดันก๊าซ จากระดับความดันก๊าซที่ต่ำกว่า 60 Psig 
																							มาที่ความดันระดับมากกว่า 10 Psig ไม่จำเป็นต้องมีอุปกรณ์ป้องกันความดัน</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">ต้องมีวาล์วตัดก๊าซธรรมดา (Manual Shut-Off Valve) 
																							ติดตั้งที่ด้านขาเข้าของวาล์วปรับความดันท่อ (Line Pressure Regulator)</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">ก๊าซที่ระบาย (Vent Gas) ออกจากวาล์วปรับความดันท่อ (Line 
																							Pressure Regulator) และวาล์วป้องกันความดันก๊าซ (Relief Valve) 
																							ต้องระบายผ่านทางท่อระบายก๊าซ (Vent Pipe) ส่งภายนอกอาคาร</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																						<td class="T_gray13">ไม่ควรติดตั้งวาล์วปรับความดันท่อ (Line Pressure Regulator) 
																							ในสถานที่ยากต่อการเข้าทำงาน ซ่อมแซม 
																							หรือในตำแหน่งที่ถูกซ่อนบังรวมทั้งในสถานที่อาจเกิดความเสียหายจากสารเคมี</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>6. วาล์วตัดก๊าซธรรมดา (Manual Shut-off Valve)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">วาล์วที่ใช้ทำเป็นวาล์วตัดก๊าซธรรมดา (Manual Shut-off Valve) 
																							สำหรับปิด-เปิด เพื่อจ่ายก๊าซให้อุปกรณ์ใช้ก๊าซฯ ควรเป็นชนิด Ball, Plug หรือ 
																							Excentric และไม่ควรใช้งานเกินกว่าความดันที่ระบุในข้อกำหนดของวาล์ว</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">ควรติดตั้งวาล์วตัดก๊าซที่ปลายของท่อย่อย 
																							ก่อนต่อเข้าที่เครื่องใช้ก๊าซฯ ทุก ๆ เครื่อง และติดตั้งในตำแหน่งที่เข้าหาได้ง่าย</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">ควรติดตั้งวาล์วนี้เมื่อขนาดของท่อใหญ่กว่า 1 นิ้ว 
																							และความดันก๊าซที่ใช้เกินกว่า 0.5 Psig</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">วาล์วที่ได้ระบุเป็นวาล์วฉุกเฉินของระบบท่อประธานของท่อย่อย 
																							ควรติดตั้งในตำแหน่งที่เข้าหาได้ง่าย และมีป้ายระบุชัดเจน 
																							และมีด้ามจับที่เหมาะสมพร้อมที่เข้าทำงานได้ตลอดเวลา</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																						<td class="T_gray13">ในกรณีของเครื่องใช้ก๊าซฯ ขนาดใหญ่เช่น Boiler 
																							ที่ตั้งอยู่ในอาคารเฉพาะที่มีผนังอาคาร และประตูปิดโดยรอบ 
																							ควรมีวาล์วฉุกเฉินที่ระบบท่อด้านเข้าตัวอาคารของอุปกรณ์ใช้ก๊าซ</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>7. ท่อระบายก๊าซ (Vent Pipe)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ขนาดของท่อระบายก๊าซที่ต่อจากวาล์วป้องกันความดันก๊าซ
																	<span class="T_blue13">(Relief Valve)</span>
																	หรือที่ระบายก๊าซ
																	<span class="T_blue13">(Vent Port)</span>
																	ของวาล์วปรับความดันก๊าซ
																	<span class="T_blue13">(Pressure 
      Regulator)</span>
																	ควรมีขนาดที่เหมาะสม ต้องไม่เล็กกว่าขนาดของวาล์วป้องกันความดันก๊าซ
																	<span class="T_blue13">(Relief Valve)</span>
																	และส่วนปลายของท่อระบายก๊าซต้องสูงเหนือตัวอาคารอย่างน้อย 0.9 เมตร (3 ฟุต) 
																	ในกรณีที่ส่วนปลายของท่อระบายก๊าซยื่นออกด้านข้างของอาคาร 
																	ต้องมีระยะห่างจากตัวอาคารอย่างน้อย 0.9 เมตร (3 ฟุต) 
																	ในระดับความสูงเหนือพื้นดินอย่างน้อย 3.6 เมตร (12 ฟุต) 
																	และอยู่ในตำแหน่งเหนือทิศทางลม</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ส่วนปลายของท่อระบายก๊าซต้องออกแบบป้องกันไม่ให้มีน้ำขัง 
																	แมลง หรือสิ่งแปลกปลอมอื่น ๆ เข้าไปอุดช่องทางของท่อระบายก๊าซ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 4: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14"><strong>&nbsp;&nbsp;&nbsp;การวางท่อส่งก๊าซ</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การวางท่อส่งก๊าซที่ต่อเชื่อมจาก
														<span class="T_blue13">M&amp;R Station</span>
														ของ ปตท. สามารถวางท่อส่งก๊าซได้ทั้งการวางใต้พื้นดิน และวางท่อเหนือพื้นดิน 
														การวางท่อส่งก๊าซทั้ง 2 แบบ จะต้องพิจารณาและปฏิบัติดังนี้</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" class="T_blue13"><strong>1. การวางท่อส่งก๊าซเหนือพื้นดิน</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อส่งก๊าซที่วางเหนือพื้นดินทั้งภายนอก 
																	และภายในอาคาร ควรได้รับการป้องกันการเกิดสนิม 
																	โดยเฉพาะท่อที่อยู่ภายนอกอาคารที่ได้รับความร้อนจากแสงแดด และความชื่นจากละอองน้ำ 
																	หรือน้ำฝนควรป้องกันการเกิดสนิมโดยวิธีทาสี หรืออาจใช้วัสดุเคลือบท่อ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อส่งก๊าซที่วางเหนือพื้นดินควรได้รับการยึดเกาะ 
																	หรือรองรับ
																	<span class="T_blue13">(Hangers, Support and Anchors)</span>
																	ที่เหมาะสม เพื่อป้องกันความล้าหรือการแตกหัก และกระทบกระเทือนต่าง ๆ ตัวยึดเกาะ 
																	หรือตัวค้ำยันต้องแข็งแรงเพียงพอต่อการรับน้ำหนักของท่อส่งก๊าซ ไม่ควรติดตั้ง 
																	หรือยึดตัวค้ำยันกับกำแพง หรือรั้วของโรงงาน ระยะห่างสูงสุดระหว่างตัวยึดเกาะ 
																	หรือรองรับต้องไม่เกินกว่าที่ระบุในตารางที่ 2</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>ตารางที่ 2 Spacing of Support for Piping and Tubing</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="2" align="center">
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#99cc00"></td>
																		</tr>
																		<tr>
																			<td width="244" height="25" align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Steel 
																					Pipe Size (Inches)</strong></td>
																			<td width="245" height="19" align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Spacing 
																					of Support (Feet)</strong></td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#99cc00"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">1/2 or Less</td>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">6 (1.8 เมตร)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">3/4 To 1</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">8 (2.5 เมตร)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">1 1/4 To 2 1/2</td>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">10 (3.0 เมตร)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">3 To 4</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">15 (4.5 เมตร)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">5 To 8</td>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">20 (6.0 เมตร)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">10 or Larger</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">25 (7.5 เมตร)</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfcfc" class="T_gray13">1 1/2 or larger (in Vertical)</td>
																			<td align="center" bgcolor="#f8f8f8" class="T_gray13">Every floor but not more than 
																				125% of horizontal spacing</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" align="center" bgcolor="#cce697"></td>
																		</tr>
																		<tr>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">Tubing for all size</td>
																			<td align="center" bgcolor="#fcfff2" class="T_gray13">6 (1.8 เมตร)</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="2" bgcolor="#cce697"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อส่งก๊าซที่วางเหนือพื้นผิวจราจรที่มีรถวิ่งผ่านระดับความสูงของท่อ 
																	จะต้องสูงพ้นจากการเกาะเกี่ยวของรถบรรทุก หรือรถยก (Folk lift) 
																	และควรมีป้ายบอกระดับความสูงของท่อส่งก๊าซ และจัดให้มีระบบ 
																	หรือเครื่องป้องกันอันตรายที่เกิดจากการเกาะเกี่ยวจากรถด้วย</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. การวางท่อส่งก๊าซใต้พื้นดิน</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การวางท่อส่งก๊าซใต้พื้นดินนั้น 
																	ท่อเหล็กที่ใช้เป็นท่อส่งก๊าซจะต้องทำการหุ้ม
																	<span class="T_blue13">(Coating or Wraping)</span>
																	ด้วยวัสดุที่สามารถป้องกันความชื้นจากใต้ดิน 
																	เพื่อป้องกันการกัดกร่อนของตัวท่อเหล็ก
																	<span class="T_blue13">(Corrode)</span>
																	หรือติดตั้งระบบป้องกันสนิมด้วยไฟฟ้า
																	<span class="T_blue13">(Cathodic Protection)</span></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อส่งก๊าซที่วางใต้พื้นดิน 
																	ควรวางที่ระดับความลึกไม่น้อยกว่า 0.8 เมตร จากหลังท่อ 
																	และท่อที่ฝังผ่านพื้นผิวจราจร ต้องมีระดับความลึกไม่น้อยกว่า 1.2 เมตร 
																	ร่องที่ขุดสำหรับวางท่อใต้ดินต้องบดอัดปรับให้เรียบ เพื่อป้องกันการทรุดตัวของท่อ 
																	และให้จัดหาป้ายเตือน
																	<span class="T_blue13">(Warning Sign)</span>
																	เพื่อบอกแนวของท่อก๊าซใต้ดิน</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อส่งก๊าซที่วางใต้พื้นดินควรให้มีท่อปลอดสวมป้องกันบริเวณรอยต่อ 
																	ระหว่างท่อใต้ดิน และท่อเหนือดิน และให้ซีล 
																	หรือปิดผนึกด้วยวัสดุกันน้ำที่ช่องว่างระหว่างท่อส่งก๊าซกับท่อปลอก 
																	และท่อส่งก๊าซที่ วางใต้พื้นดินจะวางต้องขึ้นเหนือพื้นดินก่อนเข้าอาคารโรงงาน</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การวางท่อใต้ดิน 
																	ควรหลีกเลี่ยงการวางท่อผ่านฐานราก ผนัง หรือใต้อาคาร 
																	และห้ามใช้ข้อต่อชนิดเกลียวกับการวางท่อใต้ดิน</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>3. ข้อควรระวังในการวางท่อก๊าซ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">มาตรวัดก๊าซ และวาล์วปรับความดันก๊าซ สำหรับอุปกรณ์ใช้ก๊าซ 
																				ควรห่างจากจุดกำเนิดประกายไฟ หรือความร้อนอย่างน้อย 0.9 เมตร (3 ฟุต)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">ห้ามใช้ส่วนหนึ่งส่วนใดของท่อเป็น Ground 
																				หรือต่อลงดินของระบบไฟฟ้า</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">ไม่ควรใช้ท่อก๊าซเป็นตัวค้ำยัน รองรับ หรือยึดเกาะของระบบท่ออื่น 
																				ๆ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">ไม่ควรดัด หรืองอท่อเหล็กที่ใช้เป็นท่อส่งก๊าซ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">ท่อส่งก๊าซส่วนที่ชำรุดให้เปลี่ยนใหม่ไม่ควรซ่อมแซม</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/b9.GIF" width="11" height="11"></td>
																			<td class="T_gray13">ควรหลีกเลี่ยงการวางท่อก๊าซร่วมกับท่อร้อยสายไฟ 
																				ท่อระบายน้ำหรือผ่านระบบจ่ายไฟฟ้า (Sub Station) ของโรงงาน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
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
													<td>&nbsp;<% case 5: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การตรวจสอบและทดสอบระบบท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เมื่อระบบท่อส่งก๊าซในอาคารได้ทำการก่อสร้างแล้วเสร็จ 
																	และทำความสะอาดพื้นผิวภายในท่อ โดยการใช้ก๊าซเฉื่อย 
																	หรือก๊าซไนโตรเจนไล่สิ่งสกปรกออกจากท่อก๊าซแล้ว ระบบท่อจะต้องทำการทดสอบหารอยรั่ว 
																	หรือทำ Leak Test ด้วยอากาศ ก๊าซเฉื่อย หรือไนโตรเจน โดยมีขั้นตอนดังนี้</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><span class="T_blue14"><u>ข้อควรระวัง</u> :</span>&nbsp;ห้ามใช้ก๊าซออกซิเจนในการทดสอบความดัน 
																	หรือการไล่สิ่งสกปรกที่ค้างในท่อส่งก๊าซ</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>1. <u>การทดสอบความดัน</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong>•&nbsp;<u>การทดสอบความดันท่อก๊าซให้ดำเนินการโดยมีขั้นตอนดังนี้</u></strong></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">1)</td>
																						<td class="T_gray13">ควรแยกแหล่งกำเนิดความดันที่ใช้การทดสอบระบบท่อในอาคารโรงงาน 
																							ออกจากระบบท่อก๊าซของ ปตท. หรือ
																							<span class="T_blue13">M&amp;R Station</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">2)</td>
																						<td class="T_gray13">ตรวจสอบ และมั่นใจว่าที่ส่วนปลายของระบบท่อที่เตรียมไว้ 
																							สำหรับต่อเข้ากับอุปกรณ์ใช้ก๊าซ ได้ทำการปิดวาล์ว อุด หรือปิดด้วยหน้าแปลนทึบ
																							<span class="T_blue13">(Blind flange)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">3)</td>
																						<td class="T_gray13">ไม่ควรทดสอบความดันของระบบท่อในโรงงานร่วมกับมาตรวัด 
																							และวาล์วปรับความดันก๊าซ
																							<span class="T_blue13">(Pressure regulator)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">4)</td>
																						<td class="T_gray13">ท่อระบายก๊าซชั่วคราว
																							<span class="T_blue13">(Temporary 
                              Vent Pipe)</span>
																							ที่เตรียมไว้สำหรับปล่อยก๊าซออกจากระบบ หลังการทดสอบความดัน 
																							จะต้องตรวจสอบให้แน่ใจว่า วาล์วที่จัดเตรียมไว้เพื่อระบายก๊าซ
																							<span class="T_blue13">(Vent Valve)</span>
																							อยู่ในตำแหน่ง
																							<span class="T_gray13">
																								<strong>"ปิด"</strong></span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">5)</td>
																						<td class="T_gray13">อุปกรณ์ที่ใช้วัดความดันสำหรับการทดสอบ เช่น
																							<span class="T_blue13">Chart Recorder หรือ Pressure gauge </span>ต้องได้รับการสอบเทียบ 
																							และผ่านการวัดความดัน ต้องควบคุมความดันก๊าซที่ใช้ในการทดสอบ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">6)</td>
																						<td class="T_gray13">ความดันที่ใช้และระยะเวลาในการทดสอบ ให้เป็นไปตาม
																							<span class="T_gray13">
																								<strong>ตารางที่ 3</strong></span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">7)</td>
																						<td class="T_gray13">เมื่อทดสอบความดันก๊าซของระบบท่อในอาคารโรงงานแล้วเสร็จ 
																							ให้ปล่อยก๊าซที่ใช้ทดสอบออกจากระบบท่อ 
																							โดยให้คงไว้ที่ความดันในท่อสูงกว่าความดันบรรยากาศ หรือความดันของการใช้งาน
																							<span class="T_blue13">(Operating Pressure)</span></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>ตารางที่ 3. Pressure Test Requirements</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="0" align="center">
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#99cc00" class="T_green13"></td>
																		</tr>
																		<tr>
																			<td height="40" align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Working 
																					Pressure (Psi)</strong></td>
																			<td align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Pipe Diameter (Inches)</strong></td>
																			<td align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Tested Pressure (Psi)</strong></td>
																			<td align="center" bgcolor="#f4ffd5" class="T_green13"><strong>Tested duration time 
																					(Hours)</strong></td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#99cc00" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" height="20" align="center" bgcolor="#fcfcfc" class="T_gray12">0-2</td>
																			<td width="122" align="center" bgcolor="#fcfcfc" class="T_gray12">up to 1/2</td>
																			<td width="120" align="center" bgcolor="#fcfcfc" class="T_gray12">50</td>
																			<td width="126" align="center" bgcolor="#fcfcfc" class="T_gray12">1.5</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" height="20" align="center" bgcolor="#fcfff2" class="T_gray12">0-2</td>
																			<td width="122" align="center" bgcolor="#fcfff2" class="T_gray12">1/2 to 5/8</td>
																			<td width="120" align="center" bgcolor="#fcfff2" class="T_gray12">50</td>
																			<td width="126" align="center" bgcolor="#fcfff2" class="T_gray12">2.0</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" height="20" align="center" bgcolor="#fcfcfc" class="T_gray12">2-33</td>
																			<td width="122" align="center" bgcolor="#fcfcfc" class="T_gray12">All sizes</td>
																			<td width="120" align="center" bgcolor="#fcfcfc" class="T_gray12">50</td>
																			<td width="126" align="center" bgcolor="#fcfcfc" class="T_gray12">24</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																		<tr>
																			<td width="127" align="center" bgcolor="#fcfff2" class="T_gray12">Over 33</td>
																			<td width="122" align="center" bgcolor="#fcfff2" class="T_gray12">All Sizes</td>
																			<td width="120" align="center" bgcolor="#fcfff2" class="T_gray12">1.5* Max 
																				operating Pressure</td>
																			<td width="126" align="center" bgcolor="#fcfff2" class="T_gray12">24</td>
																		</tr>
																		<tr>
																			<td height="1" colspan="4" align="center" bgcolor="#cce697" class="T_gray13"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*การทดสอบความดันของท่อที่ใช้ความดันสูงกว่า 
																	125 Psing ต้องมั่นใจว่าความดันที่ใช้ทดสอบไม่เกิน 50% ของความดันสูงสุดที่ท่อฯ 
																	ทนได้</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. <u>การตรวจหาตำแหน่งการรั่วของท่อส่งก๊าซ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ระบบท่อจะยังคงค่าความดันที่ใช้ทดสอบตลอดระยะเวลาที่ใช้ทดสอบ 
																	ซึ่งแสดงว่าไม่มีการรั่วเกิดขึ้น 
																	ถ้าความดันก๊าซลดลงให้ทำการตรวจสอบหาตำแหน่งการรั่วของก๊าซโดยใช้
																	<span class="T_green13">น้ำสบู่หรือ Gas Detector</span></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>3. <u>การจ่ายก๊าซธรรมชาติเข้าระบบในโรงงาน</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;หลังจากที่ 
																	ปตท. ได้ตรวจสอบระบบความปลอดภัยของท่อก๊าซในโรงงาน 
																	เมื่อการตรวจความปลอดภัยของระบบท่อก๊าซในโรงงาน ได้รับการยอมรับว่ามีความปลอดภัย</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong><u>การจ่ายก๊าซเข้าระบบจะดำเนินการดังนี้</u></strong></td>
																		</tr>
																		<tr>
																			<td class="T_org13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_org13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																						<td class="T_gray13">ต้องมั่นใจว่าวาล์วต่าง ๆ ที่ต่อเข้ากับระบบท่ออยู่ในตำแหน่ง 
																							"ปิด" ก่อนทำการจ่ายก๊าซธรรมชาติเข้าระบบ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">2.</td>
																						<td class="T_gray13">ระบบท่อที่บรรจุด้วยก๊าซเฉื่อย หรือก๊าซไนโตรเจน 
																							ควรปล่อยออกนอกอาคารผ่านทางท่อระบายก๊าซชั่วคราว
																							<span class="T_blue13">(Temporary Vent Pipe)</span>
																							ที่จัดเตรียมไว้</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">3.</td>
																						<td class="T_gray13">เปิดวาล์วให้ก๊าซธรรมชาติไล่ก๊าซเฉื่อยที่อัดไว้ในระบบท่อออกผ่านท่อ 
																							Vent</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">4.</td>
																						<td class="T_gray13">ทำการวัดเปอร์เซ็นต์ก๊าซด้วยเครื่องตรวจวัดก๊าซ
																							<span class="T_blue13">(Gas Detector)</span>
																							วัดจนได้ก๊าซธรรมชาติ 100% LEL
																							<span class="T_blue13">(Lower Explosive Level)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">5.</td>
																						<td class="T_gray13">คงความดันของระบบท่อที่ความดันปกติ 10 นาที 
																							เพื่อหาการรั่วของก๊าซอาจสังเกตได้จากมาตรวัดก๊าซ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">6.</td>
																						<td class="T_gray13">ตรวจการรั่วทุกจุดของข้อต่อต่าง ๆ ภายใต้ความดันปกติ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">7.</td>
																						<td class="T_gray13">ทำการปลดท่อระบายก๊าซชั่วคราว (Temporary Vent Pipe) ออกและทำการ 
																							"ปิด" วาล์ว และที่ส่วนปลายของวาล์วให้ทำการอุดด้วย "ปลั๊ก" 
																							หรือปิดด้วยหน้าแปลนทึบ
																							<span class="T_blue13">(Blind flange)</span></td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td class="T_org13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 6: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การต่ออุปกรณ์ใช้ก๊าซเข้ากับระบบท่อส่งก๊าซในอาคารโรงงาน</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><strong><u>การต่ออุปกรณ์ใช้ก๊าซเข้ากับระบบท่อก๊าซควรปฏิบัติดังนี้</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">ใช้ท่อ
																				<span class="T_blue13">(Rigid Piping)</span>
																				และอุปกรณ์ท่อ
																				<span class="T_blue13">(Fittings)</span>
																				ต่อจากระบบท่อเข้ากับเครื่องใช้ก๊าซโดยตรง</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">เมื่อจำเป็นต้องต่ออุปกรณ์ใช้ก๊าซกับระบบท่อก๊าซในอาคารโดยใช้อุปกรณ์
																				<span class="T_blue13">Quick-Disconnector </span>อุปกรณ์นี้ต้องต่อจากวาล์วตัดก๊าซธรรมดา
																				<span class="T_blue13">(Manual Shut-off 
      Valve)</span>
																				เสมอ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">การต่ออุปกรณ์ใช้ก๊าซเข้ากับระบบท่อก๊าซต้องไม่ให้เกิดการดึง 
																				รั้ง ระหว่างระบบท่อก๊าซกับอุปกรณ์ใช้ก๊าซ 
																				ซึ่งอาจทำให้ท่อก๊าซเกิดความล้าขึ้นที่อุปกรณ์ท่อ (Fittings)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">4.</td>
																			<td class="T_gray13">เมื่อจำเป็นต้องใช้อุปกรณ์ท่อแบบโลหะลูกฟูก
																				<span class="T_blue13">(Corrugated Metal)</span>
																				ให้ปฏิบัติดังนี้</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">•</td>
																						<td class="T_gray13">ไม่ควรเดินทะลุผนัง พื้น หรือเพดาน 
																							การต่ออุปกรณ์ท่อแบบโลหะลูกฟูก (Corrugated Metal) 
																							ให้ต่อกับระบบท่อในบริเวณเดียวกับที่ตั้งเครื่องใช้ก๊าซ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">•</td>
																						<td class="T_gray13">ความยาวท่อโลหะลูกฟูกไม่ควรเกิน 2 เมตร</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">•</td>
																						<td class="T_gray13">เมื่อติดตั้งท่อต่อโลหะลูกฟูกกับเครื่องใช้ที่มีล้อ 
																							ต้องมีอุปกรณ์เหนี่ยวรั้ง</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">5.</td>
																			<td class="T_gray13">ควรติดตั้งอุปกรณ์ดักสิ่งสกปรกที่ตกค้างอยู่ในท่อก๊าซ
																				<span class="T_blue13">(Sediment Trap หรือ Gas Filter) </span>ก่อนหน้าของจุดต่อของอุปกรณ์ใช้ก๊าซ 
																				เพื่อป้องกันฝุ่นผงที่ค้างในท่อก๊าซทำอันตรายต่ออุปกรณ์ใช้ก๊าซ</td>
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
													<td>&nbsp;<% case 7: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การปรับปรุงระบบท่อฯ 
														หลังจากจ่ายก๊าซฯ เข้าระบบ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;หลังจากที่ 
														ปตท. ได้จ่ายก๊าซเข้าระบบท่อก๊าซในโรงงาน 
														และหากโรงงานมีความจำเป็นต้องปรับปรุงระบบท่อก๊าซ เช่น 
														ยกเลิกท่อย่อยบางเส้นหรือเพิ่มท่อย่อยเมื่อมีการขยายโรงงานให้ปฏิบัติดังนี้</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td height="20" class="T_blue13"><strong>1. การยกเลิกท่อย่อย (Removal from Service)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">ตัดแยกการจ่ายก๊าซเข้าท่อย่อยเส้นที่ต้องการยกเลิก 
																				หรือปลดออกจากระบบท่อโดย
																				<span class="T_gray13">
																					<strong>"ปิด"</strong></span>
																				วาล์วต้นทางของท่อแยกย่อยเส้นนั้น จากจุดที่ใกล้ที่สุดออกจากท่อประธาน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">ปล่อยก๊าซที่ค้างอยู่ในท่อที่ยกเลิกออกสู่บรรยากาศผ่านวาล์ว 
																				ไม่ควรปล่อยก๊าซออกสู่ อากาศผ่านทางข้อต่อ
																				<span class="T_blue13">"Union"</span>
																				หรือผ่านหน้าแปลน
																				<span class="T_blue13">(Flange</span>) ถ้าขนาดของท่อที่ ต้องการยกเลิกออกจากระบบ 
																				มีความยาวเกินกว่าค่าที่ระบุใน
																				<span class="T_gray13">
																					<strong>ตารางที่ 4</strong></span>
																				ให้ทำการไล่ก๊าซที่ค้างอยู่ในท่อด้วยก๊าซเฉื่อย หรือก๊าซไนโตรเจน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">นำท่อก๊าซที่ยกเลิกออกจากระบบท่อแล้วส่วน 
																				ปลายของระบบท่อที่ต่อกับเส้นท่อที่ถูกยกเลิกหากมีวาล์วอยู่ให้ตำแหน่ง 
																				ของวาล์วอยู่ที่ตำแหน่ง
																				<span class="T_gray13">
																					<strong>"ปิด"</strong></span>
																				และให้อุดด้วย
																				<span class="T_gray13">
																					<strong>" ปลั๊ก"</strong></span>
																				หรือปิดด้วยหน้าแปลนทึบ (Blind Flange)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" valign="top" class="T_green13"><strong><u>ตารางที่ 4 Length of Gas Line 
																						Requiring Purging for Servicing or Modification</u></strong></td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="0" align="center">
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#99ccff"></td>
																					</tr>
																					<tr>
																						<td height="35" align="center" bgcolor="#dfefff" class="T_blue13"><strong>Norminal Pipe 
																								Size (Inches)</strong></td>
																						<td align="center" bgcolor="#dfefff" class="T_blue13"><strong>Min, Length of Piping 
																								Requiring Purging (feet)</strong></td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#99ccff"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#fbfbfb" class="T_gray13">2 1/2</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">50 (15 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#f4fdff" class="T_gray13">3</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">30 (9.0 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#fbfbfb" class="T_gray13">4</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">15 (4.5 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#f4fdff" class="T_gray13">6</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">10 (3.0 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td height="20" align="center" bgcolor="#fbfbfb" class="T_gray13">Over 8</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">Any length</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" bgcolor="#dfefff"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. การต่อท่อก๊าซฯ เพิ่มเข้าในระบบ (Placing in 
																		Operation)</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086df" class="T_gray13"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">ตัดแยกการจ่ายก๊าซในส่วนของท่อย่อย หรือท่อประธาน 
																				บริเวณจุดที่ต้องการต่อท่อย่อย เพิ่มเข้าในระบบออกจากระบบท่อในอาคาร โดย
																				<span class="T_gray13">
																					<strong>"ปิด"</strong></span>
																				วาล์วต้นทาง การจ่ายก๊าซเข้าท่อย่อย หรือท่อประธานที่ต้องการจะต่อท่อใหม่เข้าระบบ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">ถ้ามีการต่อเชื่อมท่อก๊าซด้วยการเชื่อมไฟฟ้า หรือการทำ
																				<span class="T_green13">Hot Work</span>
																				ต้องไล่ก๊าซที่ค้างอยู่ในท่อประธาน หรือท่อย่อยเส้นที่จะทำการต่อเชื่อม 
																				ออกสู่บรรยากาศด้วยก๊าซเฉื่อย หรือก๊าซไนโตรเจน จากนั้นให้ทำการต่อเชื่อม</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">ทำการทดสอบความดันท่อก๊าซที่ต่อเข้ากับระบบตามวิธีการทดสอบในข้อ 
																				4.3</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">4.</td>
																			<td class="T_gray13">ถ้าขนาดของท่อที่จะทำการต่อเพิ่มเข้าในระบบมีความยาวเกินค่าที่ระบุใน
																				<span class="T_gray13">
																					<strong>ตารางที่ 5</strong></span>
																				ให้ทำการไล่อากาศที่ค้างอยู่ในท่อด้วยก๊าซเฉื่อย หรือก๊าซไนโตรเจน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" class="T_green13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" class="T_green13"><strong><u>ตารางที่ 5 Length of Piping Requiring Purging 
																						Before Placing in Operation</u></strong></td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="2">
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#99ccff" class="T_blue13"></td>
																					</tr>
																					<tr>
																						<td width="219" height="35" align="center" bgcolor="#dfefff" class="T_blue13"><strong>Norminal 
																								Pipe Size (Inches)</strong></td>
																						<td width="270" align="center" bgcolor="#dfefff" class="T_blue13"><strong>Min, Length 
																								of Piping Requiring Purging (feet)</strong></td>
																					</tr>
																					<tr>
																						<td colspan="2" align="center" bgcolor="#99ccff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">3</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">30 (9.0 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">4</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">15 (4.5 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">6</td>
																						<td align="center" bgcolor="#fbfbfb" class="T_gray13">10 (3.0 เมตร)</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																					<tr>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">Over 8</td>
																						<td align="center" bgcolor="#f4fdff" class="T_gray13">Any length</td>
																					</tr>
																					<tr>
																						<td height="1" colspan="2" align="center" bgcolor="#dfefff" class="T_gray13"></td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2" align="center" valign="top" class="T_gray13">&nbsp;</td>
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
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 8: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การบำรุงรักษาระบบท่อส่งก๊าซฯ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong>ระบบท่อก๊าซในอาคารโรงงานที่อยู่ในความดูแลของโรงงาน 
															ควรดำเนินการให้มีการตรวจสอบเป็นระยะ ๆ โดยตรวจสอบดังนี้</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																<td class="T_gray13">ตรวจสอบการรั่วของก๊าซ (Leak) ที่บริเวณข้อต่อทุกจุดทุก 3-6 
																	เดือน</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">2.</td>
																<td class="T_gray13">ถ้าท่อเกิดการกัดกร่อน (Corrode) ทำให้ผนังท่อสึกลึก 
																	ให้ตรวจสอบความหนาของท่อ ถ้าส่วนที่ถูกกัดกร่อนลึกเป็น 0.8 
																	เท่าของความหนาของท่อให้ทำการซ่อมโดยเปลี่ยนท่อส่วนนั้นออก</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">3.</td>
																<td class="T_gray13">ตรวจสอบสภาพผิวของท่อก๊าซ หากพบสนิมหรือ Corrode 
																	ให้ทำการความสะอาดผิว และทาสี</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 9: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การทาสีและประเภทของสี</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ท่อก๊าซที่ติดตั้งทั้งภายนอกและภายในตัวอาคารโรงงาน 
														ควรทาสีเพื่อป้องกันความชื้น และการเกิดสนิม สีที่ใช้ควรเป็นสีประเภท
														<span class="T_blue13">Chlorinated 
      Rubber </span>ที่มีคุณสมบัติทนต่อการกัดกร่อน เกาะยึดกับสีเดิมได้ดี ทนต่อสภาวะดินฟ้าอากาศ 
														และทนต่อรังสีอุลตราไวโอเลตหรือแสงแดดได้ดี</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_blue13"><strong>1. <u>การเตรียมพื้นผิวท่อ</u></strong></td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">•</td>
																			<td class="T_gray13">ทำความสะอาดพื้นผิวท่อ 
																				หรือขัดพื้นผิวท่อบริเวณที่เกิดสนิมให้สะอาดจนถึงเนื้อเหล็ก 
																				ในกรณีที่พื้นผิวท่อเกิดคราบน้ำมันหรือจารบี ให้ทำการขัดล้างด้วยสารละลายเคมี 
																				และล้างด้วยน้ำให้สะอาด และปล่อยทิ้งให้แห้ง</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">•</td>
																			<td class="T_gray13">สำหรับท่อก๊าซที่มีสีเดิมจับอู่ และต้องการทาสีทับใหม่ 
																				ให้เตรียมพื้นผิวสีเดิมให้หยาบ โดยขัดด้วยกระดาษทรายหยาบ 
																				หลังจากนั้นล้างด้วยน้ำสะอาด และปล่อยทิ้งให้แห้ง</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. <u>การทาสี</u></strong></td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">สำหรับท่อเหล็กที่ไม่เคยผ่านการทาสี หรือท่อใหม่ 
																				และท่อก๊าซเดิมที่มีสนิมจับอยู่ให้ดำเนินการตามข้อ 8.1.1 แล้วให้ทาสีรองพื้นด้วย
																				<span class="T_blue13">Epicon Zince rich Primer B</span>
																				ให้มีความหนา
																				<span class="T_blue13">D.F.T. (Dry Film Thickness)</span>
																				ประมาณ 50 ไมครอน และตามด้วยสี
																				<span class="T_blue13">Chlorinated Rubber</span>
																				หลังจากที่แห้งแล้วให้ทาสี
																				<span class="T_blue13">Chlorinated 
      Rubber</span>
																				ทับอีกครั้ง ความหนา
																				<span class="T_blue13">D.F.T.</span>
																				ของสีทั้งหมดต้องไม่น้อยกว่า 230 ไมครอน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">สำหรับท่อที่มีสีเดิมจับอยู่ให้ดำเนินการตามข้อ 8.1.2 
																				แล้วให้ทาสี
																				<span class="T_blue13">Chlorinated Rubber</span>
																				ทับโดยมีความหนา
																				<span class="T_blue13">D.F.T.</span>
																				ที่ประมาณ 100 ไมครอนสีของท่อที่ทาเสร็จจะต้องจับเป็นผิวเรียบ 
																				ไม่มีสิ่งสกปรกจับเกาะติดอยู่ หรือมีรูพรุน สีแตก สีถลอก สีพอง และสีย้อย 
																				ถ้าปรากฏว่ามีสิ่งที่กล่าวมาแล้วข้างต้นให้ทำการซ่อมสีใหม่</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 10: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การระบุชนิดของท่อก๊าซในโรงงาน</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ตามข้อกำหนดสัญลักษณ์มาตรฐานสีของระบบท่อของ 
														ปตท. กำหนดให้สีอลูมิเนียม (บรอนซ์) เป็นสีสำหรับท่อรับส่งก๊าซทุกชนิด 
														และใช้แถบสีระบุชนิดของก๊าซ โดยก๊าซธรรมชาติจะใช้สีเหลืองหรือสีเหลืองคาดท่อ 
														พร้อมระบุตัวหนังสือ
														<span class="T_blue13">"NG"</span>
														สีดำ และลูกศรบอกทิศทางการไหลของก๊าซทุก ๆ ระยะ 6 เมตร หรือทุก ๆ 
														ที่มีการเปลี่ยนทิศของท่อหรือท่อแยกย่อย</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><img src="../images/information/pic-color1.jpg" width="281" height="34"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>ขนาดของแถบสี ตัวหนังสือ 
																และลูกศรบอกทิศทางการไหลของก๊าซได้จาก ตารางที่ 5</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="500" border="0" cellspacing="1" cellpadding="2" height="23" align="center">
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#99cc00"></td>
															</tr>
															<tr>
																<td width="174" height="20" align="center" bgcolor="#f9ffe6" class="T_green13"><strong>ขนาดเส้นผ่าศูนย์กลางท่อ</strong></td>
																<td width="184" align="center" bgcolor="#f9ffe6" class="T_green13"><strong>ขนาดความหนาของแถบสี</strong></td>
																<td width="230" align="center" bgcolor="#f9ffe6" class="T_green13"><strong>ความสูงของตัวอักษร 
																		"NG"</strong></td>
															</tr>
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#99cc00"></td>
															</tr>
															<tr>
																<td width="174" align="center" bgcolor="#fcfcfc" class="T_gray13">1-2 นิ้ว</td>
																<td width="184" align="center" bgcolor="#fcfcfc" class="T_gray13">20 ซม.</td>
																<td width="230" align="center" bgcolor="#fcfcfc" class="T_gray13">ใช้ป้ายแขวนตามความเหมาะสม</td>
															</tr>
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#b5f000"></td>
															</tr>
															<tr>
																<td width="174" align="center" bgcolor="#fdfff4" class="T_gray13">
																	2-4 นิ้ว
																</td>
																<td width="184" align="center" bgcolor="#fdfff4" class="T_gray13">20 ซม.</td>
																<td width="230" align="center" bgcolor="#fdfff4" class="T_gray13">3 ซม.</td>
															</tr>
															<tr>
																<td height="1" colspan="3" align="center" bgcolor="#b5f000" class="T_gray13"></td>
															</tr>
															<tr>
																<td width="174" align="center" bgcolor="#fcfcfc" class="T_gray13">มากกว่า 4 นิ้ว</td>
																<td width="184" align="center" bgcolor="#fcfcfc" class="T_gray13">40 ซม.
																</td>
																<td width="230" align="center" bgcolor="#fcfcfc" class="T_gray13">6.5 ซม.</td>
															</tr>
															<tr>
																<td height="1" colspan="3" bgcolor="#b5f000"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>รูปแบบของลูกศร แสดงทิศทางการไหล กำหนดไว้ดังนี้</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="450" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="219" class="T_blue13"><strong>A = ขนาดเส้นผ่าศูนย์กลางของท่อ/3</strong></td>
																<td width="231"><img src="../images/information/airrow1.jpg" width="205" height="138"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>แถบสีเหลืองและสีพื้นผิวท่อ (สีบรอนซ์) 
																ที่ใช้ต้องเทียบเคียงได้กับสีมาตรฐานสากลดังต่อไปนี้</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="500" border="0" cellspacing="1" cellpadding="0" align="center">
															<tr>
																<td width="163" rowspan="2" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>ชนิดของสี</strong></td>
																<td colspan="4" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>มาตรฐานสีสากล</strong></td>
															</tr>
															<tr>
																<td width="98" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>BS4800</strong></td>
																<td width="113" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>RAL</strong></td>
																<td width="89" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>CS</strong></td>
																<td width="153" align="center" bgcolor="#dfeeff" class="T_blue13"><strong>MUNSEL</strong></td>
															</tr>
															<tr>
																<td width="163" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">สีบรอนซ์ 
																	(สีพื้นผิวท่อ)</td>
																<td width="98" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">-</td>
																<td width="113" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">9006</td>
																<td width="89" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">515</td>
																<td width="153" height="23" align="center" bgcolor="#fbfbfb" class="T_gray13">-</td>
															</tr>
															<tr>
																<td width="163" align="center" bgcolor="#f4faff" class="T_gray13">แถบสีเหลือง</td>
																<td width="98" align="center" bgcolor="#f4faff" class="T_gray13">10E55</td>
																<td width="113" align="center" bgcolor="#f4faff" class="T_gray13">1003</td>
																<td width="89" align="center" bgcolor="#f4faff" class="T_gray13">622</td>
																<td width="153" align="center" bgcolor="#f4faff" class="T_gray13">31.Y 8.3 / 15.6</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ในโรงงานที่มีระบบท่อไม่ซับซ้อน 
														การให้สีของท่อก๊าซธรรมชาติอาจใช้สีเดียวตลอดทั้งเส้นท่อ และใช้
														<span class="T_blue13">"NG"</span>
														และ
														<span class="T_blue13">"ลูกศร"</span>
														กำกับบอกทิศทางการไหลของก๊าซ 
														แต่สีท่อที่ใช้จะต้องแยกให้ท่อก๊าซธรรมชาติออกจากท่ออื่น ๆ อย่างชัดเจน</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td align="center" class="T_gray13"><img src="../images/information/pic-color2.jpg" width="281" height="34"></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 11: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;ข้อปฏิบัติเมื่อพบว่ามีก๊าซรั่ว</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13">&nbsp;&nbsp;<strong><u>เมื่อตรวจพบว่ามีก๊าซรั่วเกิดขึ้นให้ปฏิบัติดังนี้</u></strong></td>
															</tr>
															<tr>
																<td class="T_org13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_org13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																			<td class="T_gray13">ปิดวาล์วที่ต้นทางของท่อที่พบว่ามีก๊าซรั่ว</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">กำหนดขอบเขตของพื้นที่ที่พบว่ามีก๊าซรั่ว โดยใช้เทป 
																				หรือเชือกล้อมบริเวณที่พบก๊าซรั่ว 
																				เขียนป้ายเตือนห้ามบุคคลที่ไม่เกี่ยวข้องเข้าใกล้บริเวณที่พบว่ามีก๊าซรั่ว</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">ดำเนินการให้มีอากาศถ่ายเท เพื่อนำเอาก๊าซออกสู่บรรยากาศ 
																				โดยปกติก๊าซธรรมชาติ เมื่อรั่วไหลออกจากระบบท่อจะลอยสูงเหนือพื้นดิน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">4.</td>
																			<td class="T_gray13">หลีกเลี่ยง 
																				และป้องกันไม่ให้เกิดประกายไฟขึ้นในบริเวณที่มีก๊าซรั่ว</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">5.</td>
																			<td class="T_gray13">ทำการซ่อม และแก้ไขรอยรั่วของก๊าซ</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_org13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 12: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;สถานที่อันตรายกับก๊าซธรรมชาติ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การกำหนดขอบเขตของพื้นที่อันตราย 
														จากมาตรฐานของ
														<span class="T_blue13">API 500 C (American Petroleum Institute Recommended Practice 
      500 C), Classification of Locations for Electrical Installations at Pipeline 
      Transportation Facilities</span>
														กำหนดขอบเขตของพื้นที่อันตรายของสถานีควบคุมความดัน และวัดปริมาณก๊าซ (M&amp;R 
														Station) ของความดันก๊าซไม่เกิน 275 Psig ให้พื้นที่ในรัศมีระยะห่างจากสถานีฯ 0.9 
														เมตร (10 ฟุต) และความดันก๊าซมากกว่า 275 Psig ให้พื้นที่ในรัศมีระยะห่างจากสถานีฯ 
														8.4 เมตร (25 ฟุต)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;มาตรฐานของ
														<span class="T_blue13">ASI 500 C</span>
														จัดให้สถานีควบคุมความดัน และวัดปริมาณก๊าซ อยู่ในประเภทเป็นสถานที่อันตราย
														<span class="T_blue13">ประเภทที่ 1 แบบที่ 2 (Class 1 Division 2)</span>
														การเลือกใช้อุปกรณ์ไฟฟ้าในพื้นที่ควบคุม หรือพื้นที่อันตรายมาตรฐานของ
														<span class="T_blue13">NEC (National Electric Code, ANSI 70)</span>
														และข้อกำหนดมาตรฐานการติดตั้งทางไฟฟ้าสำหรับประเทศไทย
														<span class="T_blue13">(มาตรฐาน ว.ส.ท. E.I.T. Standard 2001-30)</span>
														กำหนดให้อุปกรณ์ไฟฟ้า ดวงโคม เซอร์กิตเบรคเกอร์ 
														หน้าสัมผัสปลด-สับของสวิทช์แบบกดปุ่ม รีเรย์ ฯลฯ 
														จะต้องมีเครื่องห่อหุ้มที่ได้รับการรับรองสำหรับสถานที่ - อันตรายประเภทที่ 1 
														แบบที่ 1
														<span class="T_blue13">(Class 1 Division 1)</span>
														ยกเว้นอุปกรณ์ที่กล่าวมานี้อยู่ในช่องที่ปิดผนึกจนก๊าซ และไอเข้าไปไม่ได้ 
														หรือระบบวงจรได้มีการป้องกันไม่ให้ปล่อยพลังงานออกมาเพียงพอ 
														ที่จุดระเบิดสารผสมเฉพาะอย่าง ในบรรยากาศภายใต้ สภาพการทำงานที่ปรกติ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การเดินสายไฟจะต้องเดินสายไฟร้อยท่อโลหะหนาแบบมีเกลียว 
														และท่อร้อยสายไฟต่อเข้าเครื่องห่อหุ้มของสวิทช์ เซอร์กิต เบรคเกอร์ 
														ที่อาจทำให้เกิดอาร์ก ประกายไฟ ต้องมีการปิดผนึก 
														ซึ่งสารที่ใช้ในการปิดผนึกต้องได้รับการรับรองสำหรับสภาพ และการใช้งาน 
														และต้องจัดให้มีการต่อลงดินของระบบไฟฟ้า</td>
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
														<% case 13: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;ตารางความสามารถในการส่งก๊าซของท่อ 
														(A1 - A9)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A1</strong></u> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 5 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=1"></iframe></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> :</strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A2</strong></u> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 10 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=2"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A3</strong></u> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 20 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=3"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><u><strong>Table A4</strong></u> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 25 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=4"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A5</u></strong> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 60 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=5"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A6</u></strong> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 80 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=6"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A7</u></strong> :
														<br>
														ความสามารถในการส่งก๊าซที่ความดัน 100 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr bgcolor="#99ccff">
													<td height="1"><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=7"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A8</u></strong> : 
														ความสามารถในการส่งก๊าซที่ความดัน 120 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=8"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="1" bgcolor="#99ccff"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><u>Table A9</u></strong> : 
														ความสามารถในการส่งก๊าซที่ความดัน 125 Psig. ที่ ถพ.ก๊าซ 0.779 
														และยอมให้เกิดความดันสูญเสีย 10% ตลอดความยาวท่อ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><iframe frameborder="0" marginheight="0" marginwidth="0" height="364" width="100%" scrolling="auto"
															src="Table_A1_9.aspx?TABLE=9"></iframe></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_green13"><strong><u>หมายเหตุ</u> : </strong>
														<br>
														ปริมาตรก๊าซที่ได้จากตารางเป็นปริมาตรก๊าซที่ 14.73 Psia 60&deg; F 
														ในหน่วยลูกบาศก์ฟุตมาตรฐาน (Standard cubic feet)</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong>ความสามารถส่งก๊าซของท่อ Schedule 40 คำนวณได้จากสมการ</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="320" border="1" cellspacing="1" cellpadding="0" bordercolor="#6699cc" height="37"
															align="center">
															<tr>
																<td align="center" class="T_gray13">
																	<strong>Q = 223.7 D<sup>2.623</sup> [ (P1<sup>2</sup>-P2<sup>2</sup>) Y / Cr.L ]<sup>0.541</sup></strong>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="90%" border="0" cellspacing="1" cellpadding="2" align="center" class="T_gray13">
															<tr>
																<td>Where</td>
																<td>Q = Rate ; Cu.ft/hr at 60 F 14.73 Psia (Standard Condition)</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>D = Inside diameter of pipe; inch</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>P1 = Upstream pressure; psia</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>P2 = Downstream pressure; psia</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>T = Superexpansibility factor = 1/supercompressibility factor</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>Cr = Factor for viscosity, density and temperature = 0.00354.SG.T (Z/SG)<sup>0.152</sup></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>S = Specific gravity of gas at 60 F 30 inch of Hg</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>T = Abs temperature = 460 + F</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>Z = Viscosity of gas in centipoise = 0.012 for NG and 0.008 for Propane</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
																<td>L = Length of pipe</td>
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
													<td>&nbsp;
														<% case 14: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การคำนวณหาขนาดท่อก๊าซในโรงงาน</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td align="center"><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fig5.jpg" width="500" height="278"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
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
													<td class="T_blue13">จาก Pipe Plan ของโรงงานหนึ่ง แสดงอัตราการใช้ก๊าซธรรมชาติ 
														และระยะทางจากจุดจ่ายก๊าซที่ M&amp;R Station ที่ความดันก๊าซ 25 Psig 
														ให้หาขนาดของท่อก๊าซในโรงงาน</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td class="T_gray13">ค่าความร้อนของก๊าซธรรมชาติ 940 Btu/scf ที่ ถพ. ของก๊าซธรรมชาติ 
																	= 0.779 จากอัตราการใช้ก๊าซของแผ่นป้ายข้อมูลอุปกรณ์ใช้ก๊าซ 
																	คำนวณหาปริมาตรก๊าซที่ใช้
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet A 10.2 MMBtu/Hr = 10,200/940 = 10,851 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet B 2.8 MMBtu/Hr = 2,979 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet C 8.5 MMBtu/Hr = 9,043 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Outlet D 5.2 MMBtu/scf = 5,532 scf/Hr</td>
															</tr>
															<tr>
																<td class="T_gray13">Maximum gas demand = 10,851 + 2,979 + 5,532 = 28,405 scf/Hr</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" cellspacing="2" cellpadding="0" align="center" class="T_gray13">
															<tr>
																<td width="108" valign="top" class="T_blue13"><b><u>จาก Table A4</u></b></td>
																<td>ระยะทางจากจุดจ่ายก๊าซ - Outlet A = 50 + 70 + 35 + 55 + 28 = 238 เมตร<br>
																	อัตราการใช้ก๊าซ = 10,851 scf/Hr
																</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>จุดตัดที่เหมาะสมของ Table A4 (ความยาวท่อ 238 เมตร, ปริมาตรก๊าซ 14,488 scf/Hr) 
																	จะได้ขนาดท่อ = 2.5 นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td width="108" class="T_blue13"><b><u>ทำนองเดียวกัน</u></b></td>
																<td>ที่ Outlet B (245 เมตร, ปริมาตรก๊าซ 2,979 scf/Hr) =&gt; จะได้ท่อขนาด = 1.5 นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>ที่ Section A (210 เมตร, ปริมาตรก๊าซ 13,830 scf/Hr) =&gt; จะได้ท่อขนาด = 3.0 
																	นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>ที่ Outlet C (220 เมตร, ปริมาตรก๊าซ 9,043 scf/Hr) =&gt; จะได้ท่อขนาด = 2.5 นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>ที่ Section B (155 เมตร, ปริมาตรก๊าซ 22,873 scf/Hr) =&gt; จะได้ท่อขนาด = 3.0 
																	นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>ที่ Outlet D (180 เมตร, ปริมาตรก๊าซ 5,532 scf/Hr) =&gt; จะได้ท่อขนาด = 2.0 นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>ที่ Section C (120 เมตร, ปริมาตรก๊าซ 28,405 scf/Hr) =&gt; จะได้ท่อขนาด = 3.0 
																	นิ้ว</td>
															</tr>
															<tr>
																<td width="108">&nbsp;</td>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong>ดังนั้นขนาดของท่อตาม Pipe Plan</strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																<td background="../images/f_pic_c2.jpg"></td>
																<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
															</tr>
															<tr>
																<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																		<tr>
																			<td align="center"><img src="../images/information/fig5.1.jpg" width="500" height="278"></td>
																		</tr>
																	</table>
																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
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
														<% case 15: %>
													</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;หนังสืออ้างอิง</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="25" align="center" class="T_gray13">1.</td>
																<td class="T_gray13">Natural Fuel Gas Code (ANSI Z223.1-1988 / NFPA 54-1988)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">2.</td>
																<td class="T_gray13">Natural Fuel Gas Code Handbook By Theodore C. Lemoff, P.E., 
																	First Edition</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">3.</td>
																<td class="T_gray13">Fuel Gas Piping (USAS B31.2-1968)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">4.</td>
																<td class="T_gray13">API Recommended Practice 500C</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">5.</td>
																<td class="T_gray13">Gas Transmission And Distribution Piping System (ASME 
																	B31.8-1992)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">6.</td>
																<td class="T_gray13">ข้อกำหนดมาตรฐานการติดตั้งทางไฟฟ้าสำหรับประเทศไทย (ว.ส.ท.)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">7.</td>
																<td class="T_gray13">PTT - Natural Gas Utilization Code</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">8.</td>
																<td class="T_gray13">ข้อกำหนดสัญลักษณ์มาตรฐานสีของระบบท่อ (SP.P 00013 REV.1)</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13">9.</td>
																<td class="T_gray13">การออกแบบ และก่อสร้างระบบท่อก๊าซภายในโรงงานอุตสาหกรรม 
																	(นายวิชัย ศิริรัตรชัยกูล)</td>
															</tr>
															<tr>
																<td align="center" valign="top" class="T_gray13">10.</td>
																<td class="T_gray13">แนวทางการซ่อมบำรุงรักษาระบบท่อ และอุปกรณ์ของโรงงานที่ออกจาก 
																	Metering and Regulating ของ ป.ต.ท. (นายปรีชา แก้วพันธุ์)</td>
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
</HTML>
