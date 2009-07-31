<%@ Page CodeBehind="Information.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Information" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<% Session("CURRENT_HEADER_MENU") = "INFORMATION"
			Dim INFO
			INFO=Request.Item ("INFO")
			if INFO="" then INFO=1
			%>
	</head>
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
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0" style="background-image:url(../images/bg_sidemenu2.jpg);background-repeat:repeat-y">
									<tr>
										<td width="219" valign="top"><!--#include file="../Includes/m_info.aspx" --></td>
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info1.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td>&nbsp;<% select case INFO
			   case 1: %></td>
												</tr>
												<tr>
													<td height="20" class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ก๊าซธรรมชาติ 
																คือ อะไร</u></strong></td>
												</tr>
												<tr>
													<td class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td valign="top" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ก๊าซธรรมชาติ 
																				เป็นพลังงานปิโตรเลียมชนิดหนึ่ง เช่นเดียวกับน้ำมัน ที่จริง น้ำมัน ก๊าซธรรมชาติ 
																				และถ่านหิน ก็คือ ซากพืช และซากสัตว์ที่ทับถมกันมานานหลายแสนหลายล้านปี 
																				และทับถมสะสมกัน จนจมอยู่ใต้ดิน แล้วเปลี่ยนรูปเป็นสิ่งที่เรียกว่า ฟอสซิล 
																				ระหว่างนั้นก็มีการเปลี่ยนแปลงตามธรรมชาติ จนซากสัตว์ 
																				และซากพืชหรือฟอสซิลนั้นกลายเป็นน้ำมันดิบ ก๊าซธรรมชาติ และถ่านหิน 
																				ที่เรานำมาใช้ประโยชน์ได้ในที่สุด เราจึงเรียกเชื้อเพลิงประเภทน้ำมัน ก๊าซธรรมชาติ 
																				และถ่านหิน ว่า เชื้อเพลิงฟอสซิล</td>
																			<td width="230" align="center" valign="top"><img src="../images/information/kw01.jpg" width="226" height="163"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ในทางวิทยาศาสตร์ 
																	เรารู้กันดีว่า ต้นพืช และสัตว์ รวมทั้งคน ประกอบด้วยเซลล์เล็กๆ มากมาย 
																	เซลล์เหล่านี้ประกอบด้วยธาตุไฮโดรเจนและธาตุคาร์บอนเป็นหลัก 
																	เวลาซากสัตว์และซากพืชทับถมและเปลี่ยนรูปเป็นน้ำมันหรือก๊าซธรรมชาติหรือถ่านหิน 
																	พวกนี้จึงมีองค์ประกอบของสารไฮโดรคาร์บอนเป็นส่วนใหญ่ 
																	และเมื่อนำไฮโดรคาร์บอนเหล่านี้มาเผา จะให้พลังงานออกมาแบบเดียวกับที่เราเผาฟืน 
																	เพียงแต่เชื้อเพลิงฟอสซิล เช่น น้ำมัน ก๊าซธรรมชาติ หรือถ่านหิน 
																	ให้ความร้อนมากกว่า</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><STRONG>•&nbsp;<u>องค์ประกอบของก๊าซธรรมชาติ</u></STRONG></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">ก๊าซธรรมชาติมีก๊าซหลายอย่างประกอบเข้าด้วยกัน 
																	มีชื่อทางวิทยาศาสตร์ว่า มีเทน อีเทน โพรเพน บิวเทน ฯลฯ 
																	แต่โดยทั่วไปจะประกอบด้วยก๊าซมีเทนเป็นส่วนใหญ่ คือ ร้อยละ 70 ขึ้นไป 
																	ก๊าซพวกนี้เป็นสารไฮโดรคาร์บอนทั้งสิ้น เมื่อจะนำมาใช้ 
																	ต้องแยกก๊าซออกจากกันเสียก่อน จึงจะใช้ประโยชน์ได้เต็มที่ 
																	นอกจากสารไฮโดรคาร์บอนแล้ว ก๊าซธรรมชาติยังอาจประกอบด้วยก๊าซอื่นๆ อาทิ 
																	ก๊าซคาร์บอนไดออกไซด์ ไฮโดรเจนซัลไฟด์ ไนโตรเจน และน้ำ เป็นต้น</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">สารประกอบเหล่านี้สามารถแยกออกจากกันได้ 
																	โดยนำมาผ่านกระบวนการแยกที่โรงแยกก๊าซธรรมชาติ 
																	ก๊าซที่ได้แต่ละตัวนำไปใช้ประโยชน์ต่อเนื่องได้อีกมากมาย</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">Methane (CH4), Ethane (C2H6), Propane (C3H8), Butane (C4H10), 
																	Pentane (C5H12), Hexane (C6H14) และ Non-Hydrocarbon อื่น เช่น CO2, N2, H2O, H2S 
																	เป็นต้น</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="25" align="center"><strong class="T_blue14"><u>องค์ประกอบของก๊าซธรรมชาติ</u></strong></td>
															</tr>
															<tr>
																<td align="center" class="T_gray13"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/flow.gif" width="400" height="375"></td>
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
																<td class="T_gray13">&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<% case 2: %></td>
												</tr>
												<tr>
													<td height="20" class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ก๊าซธรรมชาติในสถานะต่าง 
																ๆ</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="160" valign="top" class="T_gray13"><img src="../images/information/kw02.jpg" width="154" height="112"></td>
																			<td valign="top" class="T_green13"><strong>Pipe Natural Gas</strong>
																				<span class="T_gray13">หรือก๊าซธรรมชาติที่ขนส่งโดยทางท่อ เรียกชื่อทางการตลาดว่า Sale Gas คือ ก๊าซธรรมชาติที่มีก๊าซมีเทนเป็นส่วนใหญ่ ถูกขนส่งด้วยระบบท่อเพื่อส่งให้กับผู้ใช้ที่เป็นลูกค้า นำไปเป็นเชื้อเพลิงในการผลิตกระแสไฟฟ้า หรือในโรงงานอุตสาหกรรม</span></td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																			<td align="center" valign="top">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="3" colspan="2" background="../images/information/l2.jpg"></td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top">&nbsp;</td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13"><img src="../images/information/kw03.jpg" width="154" height="112"></td>
																			<td valign="top" class="T_green13"><STRONG>Natural Gas for Vehicles (NGV) 
																					หรือก๊าซธรรมชาติสำหรับรถยนต์</STRONG>
																				<span class="T_gray13">คือ   รูปแบบของการใช้ก๊าซธรรมชาติเป็นเชื้อเพลิง สำหรับยานยนต์ ส่วนใหญ่เป็นก๊าซมีเทน   เมื่อขนส่งก๊าซธรรมชาติมาทางท่อ จะส่งเข้าสถานีบริการ และเครื่องเพิ่มความดันก๊าซ ณ   สถานีบริการจะรับก๊าซธรรมชาติที่มีความดันต่ำ จากระบบท่อมาอัดเพิ่มความดันประมาณ   3,000-3,600 ปอนด์ต่อตารางนิ้ว จากนั้น ก็จะสามารถเติมใส่ถังเก็บก๊าซฯ   ของรถยนต์ต่อไป</span></td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="3" colspan="2" background="../images/information/l2.jpg"></td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top">&nbsp;</td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13"><img src="../images/information/kw04.jpg" width="154" height="112"></td>
																			<td valign="top" class="T_green13"><STRONG>Liquefied Natural Gas (LNG) 
																					หรือก๊าซธรรมชาติเหลว</STRONG>
																				<span class="T_gray13">ในการขนส่งก๊าซธรรมชาติจากแหล่งผลิตไปยังบริเวณที่ใช้   ปกติจะขนส่งโดยระบบท่อ   แต่ในกรณีที่ระยะทางระหว่างแหล่งผลิต กับบริเวณที่ใช้มีระยะทางไกลเกินกว่า 2,000   กิโลเมตร การวางท่อส่งก๊าซฯ จะต้องใช้เงินลงทุนเป็นจำนวนมาก   จึงมีการขนส่งด้วยเรือที่ถูกออกแบบไว้เฉพาะ   โดยการทำก๊าซธรรมชาติ ให้กลายสภาพเป็นของเหลว เพื่อให้ปริมาตรลดลงประมาณ 600 เท่า   โดยทั่วไปจะมีอุณหภูมิ -160 องศาเซลเซียส   ซึ่งจะทำให้ประหยัดค่าใช้จ่ายมากกว่าการขนส่ง ด้วยระบบท่อ </span></td>
																		</tr>
																		<tr>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="3" colspan="2" background="../images/information/l2.jpg"></td>
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
													<td>&nbsp;<% case 3: %></td>
												</tr>
												<tr>
													<td height="20" class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>คุณสมบัติทั่วไปของก๊าซธรรมชาติ</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="160" valign="top" class="T_gray13"><img src="../images/information/kw07.jpg" width="154" height="112"></td>
																			<td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="15" align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">เป็นเชื้อเพลิงปิโตรเลียมชนิดหนึ่ง 
																							เกิดจากการทับถมของสิ่งมีชีวิตนับล้านปี</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">เป็นสารประกอบไฮโดรคาร์บอน ประกอบด้วยก๊าซมีเทนเป็นหลัก</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">ไม่มีสีและไม่มีกลิ่น 
																							ดังนั้นในการขนส่งหรือในกระบวนการผลิตก๊าซธรรมชาติ 
																							จึงต้องมีการเติมสารที่มีกลิ่นลงไปเพื่อความปลอดภัยในการใช้งาน</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">เบากว่าอากาศ มีค่าความถ่วงจำเพาะ (Specific Gravity) ประมาณ 
																							0.6-0.8 เมื่อรั่วไหลจะลอยขึ้นสู่ที่สูง และฟุ้งกระจายไปในอากาศอย่างรวดเร็ว 
																							จึงมีความปลอดภัยกว่า</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">ติดไฟได้ โดยมีช่วงของการติดไฟที่ 5-15% ของปริมาตรในอากาศ 
																							และอุณหภูมิที่สามารถติดไฟได้เองคือ 537-540 องศาเซลเซียส</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">เป็นเชื้อเพลิงสะอาด เผาไหม้สมบูรณ์กว่า 
																							จึงส่งผลกระทบต่อสิ่งแวดล้อมน้อยกว่า เมื่อเปรียบเทียบกับปิโตรเลียมด้วยกัน</td>
																					</tr>
																				</table>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td height="3" background="../images/information/l2.jpg">
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>คุณประโยชน์ของก๊าซธรรมชาติ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="160" valign="top" class="T_gray13"><img src="../images/information/kw08.jpg" width="154" height="112"></td>
																			<td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="15" align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">เป็นเชื้อเพลิงปิโตรเลียมที่นำมาใช้งานได้อย่างมีประสิทธิภาพสูง 
																							มีการเผาไหม้สมบูรณ์</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">ลดการสร้างก๊าซเรือนกระจก ซึ่งเป็นสาเหตุของภาวะโลกร้อน</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">มีความปลอดภัยสูงในการใช้งาน เนื่องจากเบากว่าอากาศ 
																							จึงลอยขึ้นเมื่อเกิดการรั่ว</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">มีราคาถูกกว่าเชื้อเพลิงปิโตรเลียมอื่นๆ เช่น น้ำมัน น้ำมันเตา 
																							และก๊าซปิโตรเลียมเหลว</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">สามารถสร้างมูลค่าเพิ่ม 
																							ช่วยขับเคลื่อนการเจริญเติบโตทางเศรษฐกิจของประเทศ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_org13">•</td>
																						<td class="T_gray13">ก๊าซธรรมชาติส่วนใหญ่ที่ใช้ในประเทศไทยผลิตได้เอง 
																							จากแหล่งในประเทศ จึงช่วยลดการนำเข้าพลังงานเชื้อเพลิงอื่นๆ 
																							และประหยัดเงินตราต่างประเทศได้มาก
																						</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_red13">&nbsp;</td>
																						<td class="T_gray13">&nbsp;</td>
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
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;
														<% case 4: %>
													</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>การใช้ประโยชน์จากก๊าซธรรมชาติ</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_gray13"><u>เราสามารถใช้ประโยชน์จากก๊าซธรรมชาติได้ใน 2 ลักษณะใหญ่ๆ คือ</u></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>1. ใช้เป็นเชื้อเพลิง</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td valign="top" class="T_gray13">
																				เราสามารถใช้ก๊าซธรรมชาติได้โดยตรง ด้วยการใช้เป็นเชื้อเพลิงสำหรับผลิตกระแสไฟฟ้า 
																				หรือในโรงงานอุตสาหกรรม เช่น อุตสาหกรรมเซรามิก อุตสาหกรรมสุขภัณฑ์ ฯลฯ 
																				หรือสามารถนำมาใช้ในระบบ
																				<span class="T_green13">
																					<strong>Co-generatio</strong></span></td>
																			<td width="160" align="center" valign="top"><span class="T_gray13"><img src="../images/information/kw05.jpg" width="154" height="113"></span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>ทั้งนี้โดยมีประเภทการใช้โดยสรุป ดังนี้</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="15" align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13">
																				ใช้เป็นเชื้อเพลิงสำหรับผลิตกระแสไฟฟ้า</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13">ใช้เป็นเชื้อเพลิงในโรงงานอุตสาหกรรม</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13">ใช้เป็นเชื้อเพลิงในระบบ Co-generation</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13">
																				ใช้เป็นเชื้อเพลิงสำหรับยานพาหนะ ที่เรียกว่า ก๊าซธรรมชาติสำหรับยานยนต์ (Natural 
																				Gas for Vehicles : NGV)</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
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
																<td height="20" class="T_blue13"><strong>2. ผลิตภัณฑ์ต่าง ๆ 
																		หลังผ่านกระบวนการแยกในโรงแยกก๊าซ</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="160" valign="top" class="T_gray13"><img src="../images/information/kw06.jpg" width="154" height="113"></td>
																			<td class="T_gray13">เพราะในตัวเนื้อก๊าซธรรมชาติ 
																				มีสารประกอบที่เป็นประโยชน์อยู่มากมาย เมื่อนำมาผ่านกระบวนการแยกที่โรงแยกก๊าซแล้ว 
																				ก็จะได้ผลิตภัณฑ์ต่างๆ มาใช้ประโยชน์ได้ดังนี้</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="15" align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13"><span class="T_green13"><strong><u>ก๊าซมีเทน (C1)</u> : </strong>
																				</span>ใช้เป็นเชื้อเพลิงสำหรับผลิตกระแสไฟฟ้า ในโรงงานอุตสาหกรรม 
																				และนำไปอัดใส่ถังด้วยความดันสูง เรียกว่าก๊าซธรรมชาติอัด 
																				สามารถใช้เป็นเชื้อเพลิงในรถยนต์ รู้จักกันในชื่อว่า
																				<span class="T_blue13">"ก๊าซธรรมชาติสำหรับยานยนต์" (Natural Gas for Vehicles : NGV)</span></td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13"><span class="T_green13"><strong><u>ก๊าซอีเทน (C2)</u> :</strong></span>
																				ใช้เป็นวัตถุดิบในอุตสาหกรรมปิโตรเคมีขั้นต้น สามารถนำไปใช้ผลิตเม็ดพลาสติก 
																				เส้นใยพลาสติกชนิดต่างๆ เพื่อนำไปใช้แปรรูปต่อไป</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13"><span class="T_green13"><strong><u>ก๊าซโพรเพน (C3) 
																							และก๊าซบิวเทน (C4)</u> :</strong></span>
																				ก๊าซโพรเพนใช้เป็นวัตถุดิบในอุตสาหกรรมปิโตรเคมีขั้นต้นได้เช่นเดียวกัน 
																				และหากนำเอาก๊าซโพรเพนกับก๊าซบิวเทนมาผสมกัน อัดใส่ถังเป็นก๊าซปิโตรเลียมเหลว (<span class="T_blue13">Liquefied Petroleum Gas - LPG)</span>
																				หรือที่เรียกว่าก๊าซหุงต้ม สามารถนำไปใช้เป็นเชื้อเพลิงในครัวเรือน 
																				เป็นเชื้อเพลิงสำหรับรถยนต์ และใช้ในการเชื่อมโลหะได้ 
																				รวมทั้งยังนำไปใช้ในโรงงานอุตสาหกรรมบางประเภทได้อีกด้วย</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13"><span class="T_green13"><strong><u>ไฮโดรคาร์บอนเหลว (Heavier 
																							Hydrocarbon)</u> : </strong>
																				</span>อยู่ในสถานะที่เป็นของเหลวที่อุณหภูมิและความดันบรรยากาศ 
																				เมื่อผลิตขึ้นมาถึงปากบ่อบนแท่นผลิต 
																				สามารถแยกจากไฮโดรคาร์บอนที่มีสถานะเป็นก๊าซบนแท่นผลิต เรียกว่า
																				<span class="T_blue13">คอนเดนเสท (Condensate)</span>
																				สามารถลำเลียงขนส่งโดยทางเรือหรือทางท่อ นำไปกลั่นเป็นน้ำมันสำเร็จรูปต่อไป</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13"><span class="T_green13"><strong><u>ก๊าซโซลีนธรรมชาติ</u> :</strong></span>
																				แม้ว่าจะมีการแยกคอนเดนเสทออกเมื่อทำการผลิตขึ้นมาถึงปากบ่อบนแท่นผลิตแล้ว 
																				แต่ก็ยังมีไฮโดรคาร์บอนเหลวบางส่วนหลุดไปกับไฮโดรคาร์บอนที่มีสถานะเป็นก๊าซ 
																				เมื่อผ่านกระบวนการแยกจากโรงแยกก๊าซธรรมชาติแล้ว 
																				ไฮโดรคาร์บอนเหลวเหล่านี้ก็จะถูกแยกออก เรียกว่า
																				<span class="T_blue13">ก๊าซโซลีนธรรมชาติ หรือ NGL (natural gasoline)</span>
																				และส่งเข้าไปยังโรงกลั่นน้ำมัน 
																				เป็นส่วนผสมของผลิตภัณฑ์น้ำมันสำเร็จรูปได้เช่นเดียวกับคอนเดนเสท 
																				และยังเป็นตัวทำละลายซึ่งนำไปใช้ในอุตสาหกรรมบางประเภทได้เช่นกัน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_green13">•</td>
																			<td valign="top" class="T_gray13"><span class="T_green13"><strong><u>ก๊าซคาร์บอนไดออกไซด์</u>
																						:</strong></span>
																				เมื่อผ่านกระบวนการแยกแล้ว จะถูกนำไปทำให้อยู่ในสภาพของแข็ง เรียกว่าน้ำแข็งแห้ง 
																				นำไปใช้ในอุตสาหกรรมถนอมอาหาร อุตสาหกรรมน้ำอัดลมและเบียร์ 
																				ใช้ในการถนอมอาหารระหว่างการขนส่ง นำไปเป็นวัตถุดิบสำคัญในการทำฝนเทียม 
																				และนำไปใช้สร้างควันในอุตสาหกรรมบันเทิง อาทิ การแสดงคอนเสิร์ต หรือ 
																				การถ่ายทำภาพยนตร์
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
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
													<td>&nbsp;
														<% case 5: %>
													</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ระบบ 
																Co-generation</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ระบบโคเจนเนอเรชั่น 
																	หมายถึง การผลิตพลังงานไฟฟ้า (หรือพลังงานกล) ร่วมกับพลังงานความร้อน (ก๊าซร้อน 
																	ของเหลวร้อน หรือไอน้ำ) หรือเรียกอีกชื่อได้ว่า Combined Heat and Power (CHP) 
																	จากการวิเคราะห์ทางทฤษฏี และทดลองในทางปฏิบัติแล้วพบว่า 
																	การผลิตไฟฟ้าและความร้อนร่วมกันนี้จะมีประสิทธิภาพดีกว่าการผลิตแยกกันมาก</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>1. การเปรียบเทียบการใช้พลังงานแบบทั่วไปและ แบบ 
																		Co-generation</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong>• โรงงานที่มีการใช้ไอน้ำแบบทั่วไป</strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13" align="center"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/flow2.gif" width="505" height="302" border="1"></td>
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
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" background="../images/information/l2.jpg"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong>• โรงงานที่มีการใช้ไอน้ำแบบติดตั้งระบบ Co-generation</strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td align="center" class="T_gray13"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/flow3.gif" width="505" height="302" border="1"></td>
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
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" background="../images/information/l2.jpg"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>2. ประโยชน์จากเทคโนโลยี Co-generation</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">2.1</td>
																			<td valign="top" class="T_gray13">ส่งเสริมให้มีการใช้พลังงานอย่างคุ้มค่า 
																				โดยการนำความร้อนที่เหลือจากการผลิตไฟฟ้ามาผลิตพลังงานในรูปแบบอื่นๆ เช่น ทำไอน้ำ 
																				ทำความเย็น เป็นต้น ซึ่งเทคโนโลยี Co-generation 
																				จะก่อให้เกิดประสิทธิภาพการใช้พลังงานถึง 80% สูงกว่าระบบ Centralize 
																				ในปัจจุบันซึ่งมีประสิทธิภาพเพียง 40-50%</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.2</td>
																			<td valign="top" class="T_gray13">ช่วยลดการนำเข้าน้ำมันเชื้อเพลิงของประเทศ 
																				จากการนำก๊าซธรรมชาติมาทดแทน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.3</td>
																			<td valign="top" class="T_gray13">ช่วยลดต้นทุนการผลิตของโรงงานอุตสาหกรรม 
																				หรือการประกอบการจากค่าใช้จ่าย การใช้พลังงานที่ลดลง ระบบ Co-generation 
																				ลดต้นทุนค่าไฟฟ้าอุตสาหกรรม ซึ่งเป็นการลดต้นทุนการผลิต 
																				และเป็นการเสริมสร้าศักยภาพในการแข่งขัน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.4</td>
																			<td valign="top" class="T_gray13">ระบบ Co-generation 
																				มีประโยชน์มากสำหรับโรงงานที่มีความต้องการใช้พลังงานในรูปแบบไฟฟ้า 
																				และความร้อนที่เหมาะสมกัน เพราะประโยชน์ที่จะได้รับ คือ 
																				การนำเอาความร้อนที่ต้องปล่อยทิ้ง กลับมาใช้เป็นพลังงานในรูปแบบอื่นๆ เช่น ทำไอน้ำ 
																				การอบแห้ง ฯลฯ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.5</td>
																			<td valign="top" class="T_gray13">ช่วยลดการลงทุนโรงไฟฟ้าขนาดใหญ่ที่มีประสิทธิภาพต่ำ 
																				และมีต้นทุนสูง เนื่องจากความต้องการพลังงานไฟฟ้าที่ต่างกัน ในแต่ละช่วงเวลาของวัน</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">&nbsp;</td>
																			<td valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.6</td>
																			<td valign="top" class="T_gray13">ช่วยลดมลภาวะจากการใช้ก๊าซธรรมชาติแทนการใช้น้ำมันเตาในการผลิตไอน้ำ 
																				การอบแห้ง ฯลฯ</td>
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
													<td>&nbsp;
														<% case 6: %>
													</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>ก๊าซธรรมชาติและก๊าซหุงต้ม 
																แตกต่างกันอย่างไร</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="160" valign="top" class="T_gray13"><img src="../images/information/photo_kw6.jpg" width="153" height="91"></td>
																			<td valign="top" class="T_green13"><strong>ก๊าซหุงต้ม</strong>
																				<span class="T_gray13">&nbsp;มีชื่อเป็นทางการว่าก๊าซปิโตรเลียมเหลว </span><span class="T_blue13">(liquefied petroleum gas: LPG)</span><span class="T_gray13"> หรือเรียกย่อๆ ว่า แอลพีจี   เป็นผลิตภัณฑ์ที่ได้จากการแยกน้ำมันดิบในโรงกลั่นน้ำมัน หรือการแยกก๊าซธรรมชาติ   ในโรงแยกก๊าซธรรมชาติ ก๊าซปิโตรเลียมเหลว ประกอบด้วยส่วนผสมของไฮโดรคาร์บอน 2 ชนิด   คือ โพรเพน และบิวเทน ในอัตราส่วนเท่าใดก็ได้ หรืออาจจะเป็นโพรเพนบริสุทธิ์ 100%   หรือบิวเทนบริสุทธิ์ 100% ก็ได้ สำหรับในประเทศไทย   ก๊าซหุงต้มส่วนใหญ่ ได้จากโรงแยกก๊าซธรรมชาติ   โดยใช้อัตราส่วนผสมของโพรเพน และบิวเทนประมาณ 70:30 ซึ่งจะให้ค่าความร้อนที่สูง   ทำให้ผู้ใช้ประหยัดเวลา และค่าเชื้อเพลิง</span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">ก๊าซปิโตรเลียมเหลวสามารถใช้เป็นเชื้อเพลิงในการหุงต้ม 
																	ในครัวเรือน ในโรงงานอุตสาหกรรม และในยานพาหนะได้ เช่นเดียวกับก๊าซธรรมชาติ 
																	ที่สามารถใช้เป็นเชื้อเพลิงในการผลิตกระแสไฟฟ้า ในโรงงานอุตสาหกรรม และในยานพาหนะ 
																	แต่ในประเทศไทยยังไม่มีการนำก๊าซธรรมชาติมาใช้งานในครัวเรือนโดยตรง 
																	ด้วยคุณสมบัติในการเป็นเชื้อเพลิงติดไฟของก๊าซธรรมชาติ และก๊าซหุงต้ม 
																	เพื่อความปลอดภัย 
																	ผู้ใช้ต้องใส่ใจในการปฏิบัติตามกฎความปลอดภัยในการใช้งานอย่างเคร่งครัด</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="520" border="0" align="center" cellpadding="0" cellspacing="1">
															<tr>
																<td width="169" height="25" align="center" bgcolor="#71A938" class="T_white13"><strong>ข้อเปรียบเทียบ</strong></td>
																<td width="172" align="center" bgcolor="#7CBB3E" class="T_white13"><strong>ก๊าซธรรมชาติ </strong>
																</td>
																<td width="175" align="center" bgcolor="#99CC66" class="T_white13"><strong>ก๊าซหุงต้ม 
																		(LPG)</strong></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">&nbsp;</td>
																<td valign="top" class="T_gray13">&nbsp;</td>
																<td valign="top" class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">•&nbsp;ความปลอดภัย</td>
																<td valign="top" class="T_gray13">•&nbsp;มีความปลอดภัยสูง เนื่องจากเบากว่าอากาศ 
																	เมื่อเกิดการรั่วไหล จะลอยขึ้นสู่อากาศทันที</td>
																<td valign="top" class="T_gray13">•&nbsp;มีความปลอดภัยน้อย เนื่องจากหนักกว่าอากาศ 
																	เมื่อเกิดการรั่วไหล จะกระจายอยู่ตามพื้นราบ</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">&nbsp;</td>
																<td valign="top" class="T_gray13">&nbsp;</td>
																<td valign="top" class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" colspan="3" valign="top" background="../images/information/l2.jpg"></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">&nbsp;</td>
																<td valign="top" class="T_gray13">&nbsp;</td>
																<td valign="top" class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">•&nbsp;ความพร้อมในการนำมาใช้งาน</td>
																<td valign="top" class="T_gray13">•&nbsp;สถานะเป็นก๊าซ นำไปใช้ได้เลย</td>
																<td valign="top" class="T_gray13">•&nbsp;สถานะเป็นของเหลว ต้องทำให้เป็นก๊าซ 
																	ก่อนนำไปใช้งาน</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" colspan="3" background="../images/information/l2.jpg"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">•&nbsp;ประสิทธิภาพการเผาไหม้</td>
																<td class="T_gray13">•&nbsp;เผาไหม้ได้สมบูรณ์
																</td>
																<td class="T_gray13">•&nbsp;เผาไหม้ได้สมบูรณ์</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" colspan="3" background="../images/information/l2.jpg"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">•&nbsp;คุณลักษณะของเชื้อเพลิง</td>
																<td valign="top" class="T_gray13">•&nbsp;ไม่มีสี ไม่มีกลิ่น เผาไหม้ปราศจากเขม่า 
																	และกำมะถัน</td>
																<td valign="top" class="T_gray13">•&nbsp;ไม่มีสี ไม่มีกลิ่น 
																	แต่โดยทั่วไปจะเติมสารเคมี เพื่อความปลอดภัย</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" colspan="3" background="../images/information/l2.jpg"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13">•&nbsp;ค่าใช้จ่ายอื่นๆ</td>
																<td valign="top" class="T_gray13">•&nbsp;ไม่ต้องสร้างถังเก็บสำรองเชื้อเพลิง</td>
																<td valign="top" class="T_gray13">•&nbsp;ต้องมีถังเก็บสำรอง<br>
																	•&nbsp;ต้องสั่งซื้อเชื้อเพลิงล่วงหน้า</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="3" colspan="3" background="../images/information/l2.jpg"></td>
															</tr>
														</table>
													</td>
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
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>โรงแยกก๊าซธรรมชาติ</u></strong></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ปตท.ได้ตระหนักในคุณประโยชน์ของก๊าซธรรมชาติดังกล่าว 
																	จึงได้ทำการก่อสร้างโรงแยกก๊าซธรรมชาติขึ้น ที่จังหวัดระยอง 4 หน่วย 
																	และที่อำเภอขนอม จังหวัดนครศรีธรรมราช อีก 1 หน่วย</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong>•&nbsp;&nbsp;<u>วัตถุประสงค์ของการก่อสร้างโรงแยกก๊าซธรรมชาติมีดังนี้</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
																		<tr>
																			<td width="20" align="center" class="T_gray13">1.</td>
																			<td class="T_gray13">เพื่อผลิตก๊าซหุงต้มหรือ แอล พี จี<span class="T_blue13"> (Propane และ Butane)</span>
																				สำหรับสนองความต้องการภายในประเทศ</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">2.</td>
																			<td class="T_gray13">เพื่อแยกก๊าซอีเทน
																				<span class="T_blue13">(Ethane)</span>
																				สำหรับใช้เป็นวัตถุดิบในอุตสาหกรรมปิโตรเคมี ซึ่งเป็นอุตสาหกรรมพื้นฐาน 
																				อันจะส่งเสริมให้เกิดการพัฒนาอุตสาหกรรมปิโตรเคมีต่อเนื่องในสาขาต่าง ๆ 
																				อย่างกว้างขวาง</td>
																		</tr>
																		<tr>
																			<td align="center" valign="top" class="T_gray13">3.</td>
																			<td class="T_gray13">เพื่อแยกก๊าซมีเทน
																				<span class="T_blue13">(Methane)</span>
																				สำหรับใช้เป็นเชื้อเพลิงทดแทนน้ำมันเตาในโรงไฟฟ้า และโรงงานอุตสาหกรรมอื่น ๆ 
																				ในอนาคต นอกจากนั้นยังสามารถนำก๊าซมีเทนไปใช้ 
																				เป็นวัตถุดิบสำหรับอุตสาหกรรมปุ๋ยเคมี ผลิตแอมโมเนียและยูเรีย 
																				ตลอดจนใช้ผลิตเมธานอลได้ด้วย</td>
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
																<td class="T_green13"><strong>•&nbsp;&nbsp;<u>กระบวนการผลิตของโรงแยกก๊าซธรรมชาติระยอง</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="T_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/plantrayong1.jpg" width="498" height="332"></td>
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
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong>•&nbsp;&nbsp;<u>ประโยชน์จากโรงแยกก๊าซธรรมชาติ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_org13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_gray13"><strong>ผลิตภัณฑ์ที่ได้จากโรงแยกก๊าซธรรมชาติสามารถนำมาใช้ประโยชน์ได้ดังนี้</strong></td>
																		</tr>
																		<tr>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
																					<tr>
																						<td width="20" align="center" valign="top" class="T_gray13">1.</td>
																						<td class="T_gray13"><span class="T_green13"><strong>ก๊าซมีเทน (Methane)</strong></span>
																							ใช้เป็นเชื้อเพลิงในโรงไฟฟ้า โรงงานอุตสาหกรรม ปุ๋ยเคมี 
																							และเมื่อนำไปอัดใส่ถังด้วยความดันสูง เรียกว่า
																							<span class="T_blue13">ก๊าซธรรมชาติอัด (Compressed Natural Gas - CNG)</span>
																							หรืออีกชื่อหนึ่งคือ
																							<span class="T_blue13">ก๊าซธรรมชาติสำหรับยานยนต์ (Natural Gas Vehicles - NGV)</span>
																							สามารถใช้เป็นเชื้อเพลิงในรถยนต์ได้</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">2.</td>
																						<td class="T_gray13"><span class="T_green13"><strong>ก๊าซอีเทน (Ethane)</strong></span>
																							ใช้เป็นวัตถุดิบในอุตสาหกรรมปิโตรเคมีขั้นต้น ที่ใช้ผลิตเม็ดพลาสติก 
																							เส้นใยพลาสติกชนิดต่างๆ</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">3.</td>
																						<td class="T_gray13"><span class="T_green13"><strong>ก๊าซโปรเพน (Propane) 
																									และก๊าซปิโตรเลียมเหลว (Liquidfied Petroleum Gas - LPG)</strong></span>
																							ก๊าซโปรเพนใช้เป็นวัตถุดิบในอุตสาหกรรมปิโตรเคมีขั้นต้น ส่วนก๊าซ
																							<span class="T_blue13">LPG (ก๊าซหุงต้ม)</span>
																							เป็นส่วนผสมของ<span class="T_blue13">ก๊าซโปรเพน (Propane)</span>
																							และ<span class="T_blue13">ก๊าซบิวเทน (Butane)</span>
																							ใช้เป็นเชื้อเพลิงในครัวเรือน รถยนต์ การเชื่อมโลหะ โรงงานอุตสาหกรรมบางประเภท 
																							ซึ่งปัจจุบันประมาณร้อยละ 70 แห่ง ทั่วประเทศไทย</td>
																					</tr>
																					<tr>
																						<td align="center" valign="top" class="T_gray13">4.</td>
																						<td class="T_gray13"><span class="T_green13"><strong>ก๊าซธรรมชาติเหลว (Natural Gasoline - 
																									NGL)</strong></span>
																							นำเข้าโรงกลั่นน้ำมันจะได้ผลิตภัณฑ์น้ำมันสำเร็จรูป และสามารถใช้ทำตัวทำละลายได้</td>
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
																<td align="right" class="T_blue13">ที่มาของข้อมูล : โรงแยกก๊าซธรรมชาติ จ.ระยอง</td>
															</tr>
														</table>
													</td>
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
