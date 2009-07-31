<%@ Page CodeBehind="Co_generation.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Co_generation" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<%	
     Dim co
	co=Request.Item ("co")
	if co="" then co=1
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
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="219" valign="top"><!--#include file="../Includes/m_info3.aspx" --></td>
										<td align="left" valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><img src="../images/title_info3.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td class="T_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Co-generation
															</u></strong>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Co_generation.aspx"><strong>โคเจเนอเรชั่น 
																			(COGENERATION)</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Co_generation_engine.aspx"><strong>ระบบ 
																			COGENERATION จาก GAS ENGINE</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Co_generation_turbine.aspx"><strong>ระบบ 
																			COGENERATION จาก GAS TURBINE</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Ex_Co_generation.aspx"><strong>ตัวอย่างระบบ 
																			COGENERATION ของลูกค้า ปตท. ปัจจุบัน</strong></a></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;โคเจเนอเรชั่น 
														(COGENERATION)</td>
												</tr>
												<tr>
													<td class="text_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=1">โคเจเนอเรชั่นหมายถึง</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=5">หลักการทำงานของ 
																		GAS TURBINE</a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=2">ทางเลือกในการใช้พลังงาน</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=6">COMBINED 
																		CYCLE</a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=3">เปรียบเทียบการใช้พลังงาน 
																		แบบทั่วไป และแบบ&nbsp;&nbsp;COGENERATION</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=7">BACK 
																		PRESSURE STEAM TURBINE</a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=4">เปรียบเทียบ 
																		ประสิทธิภาพ แบบทั่วไป และแบบ&nbsp;COGENERATION</a></td>
																<td valign="top" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;<a class="T_gray13" href="Co_generation.aspx?co=8">EXTRACTION 
																		STEAM TURBINE</a></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;</td>
												</tr>
												<tr>
													<td height="3" background="../images/information/l2.jpg"></td>
												</tr>
												<tr>
													<td>&nbsp;
														<% select case co
	case 1: %>
													</td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>โคเจเนอเรชั่น 
																			หมายถึง</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;การผลิตพลังงานไฟฟ้า 
																	( หรือ พลังงานกล ) ร่วมกับพลังงานความร้อน ( ก๊าซร้อน, ของเหลวร้อน หรือ ไอน้ำ)</td>
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
													<td><% case 2: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>ทางเลือกในการใช้พลังงาน</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" class="T_gray13">1.</td>
																			<td class="T_gray13">ซื้อ หรือ ผลิตพลังงานไฟฟ้า แล้วใช้พลังงานไฟฟ้าบางส่วนไปทำ 
																				ความเย็น
																			</td>
																		</tr>
																		<tr>
																			<td align="center" class="T_gray13">2.
																			</td>
																			<td class="T_gray13">ซื้อ หรือ ผลิตพลังงานไฟฟ้า และผลิตพลังงานความร้อนจากน้ำมัน
																			</td>
																		</tr>
																		<tr>
																			<td align="center" valign="baseline" class="T_gray13">3.</td>
																			<td class="T_gray13">ผลิตไฟฟ้าขึ้นใช้เอง แล้วนำพลังงานความร้อน ( Exhaust Heat 
																				)ที่ปล่อยออกมาจากระบบผลิตไฟฟ้า (Turbine Generator) ไปใช้ทำความร้อน (Steam or 
																				Direct Heat to process ) อีกต่อหนึ่ง เรียกว่า ระบบ COGENERATION</td>
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
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 3: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>เปรียบเทียบการใช้พลังงานแบบทั่วไป 
																			และแบบ COGENERATION</u></strong></td>
															</tr>
															<tr>
																<td height="15"></td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	แบบทั่วไป ( CONVENTIONAL )</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fig17.gif" width="489" height="208"></td>
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
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	แบบโคเจเนอเรชั่น ( COGENERATION )</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/fig18.gif" width="490" height="226"></td>
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
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 4: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>เปรียบเทียบประสิทธิภาพแบบทั่วไป 
																			และแบบ COGENERATION</u></strong></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="21">&nbsp;</td>
																			<td colspan="2" class="T_blue13"><img src="../images/blue.gif" width="16" height="16">&nbsp;แบบทั่วไป 
																				( CONVENTIONAL )
																			</td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td width="20">&nbsp;</td>
																			<td width="125" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>System Eff.</strong></td>
																			<td class="T_gray13">= ( 100 + 170 ) / ( 244 + 200 )
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">&nbsp;</td>
																			<td class="T_gray13">= 61 %
																			</td>
																		</tr>
																		<tr>
																			<td colspan="3">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="21">&nbsp;</td>
																			<td colspan="2" class="T_blue13"><img src="../images/blue.gif" width="16" height="16">&nbsp;แบบ 
																				COGENERATION</td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td width="20">&nbsp;</td>
																			<td width="125" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>System Eff.</strong></td>
																			<td class="T_gray13">= ( 100 + 170 ) / ( 357 )
																			</td>
																		</tr>
																		<tr>
																			<td colspan="2">&nbsp;</td>
																			<td class="T_gray13">= 76 %</td>
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
														</table>
													</td>
												</tr>
												<tr>
													<td><% case 5: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>หลักการทำงานของ 
																			GAS TURBINE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">อากาศถูกดูดเข้าไปยังเครื่องอัดอากาศ ( Compressor )</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">อากาศนั้นถูกป้อนเข้าไปยังห้องเผาไหม้ ( Combustion chamber )</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ที่ห้องเผาไหม้ เชื้อเพลิง ( Natural Gas ) 
																				จะถูกฉีดเข้ามาผสมกับอากาศ และจุดระเบิด
																			</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ก๊าซร้อนจากการเผาไหม้ จะขยายตัวผ่านไปยังเครื่องกังหันก๊าซ 
																				ทำให้กังหันก๊าซหมุน</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">แกนของเครื่องกังหันก๊าซจะต่อไปขับเครื่องปั่นไฟฟ้า (Generator ) 
																				เพื่อผลิตกระแสไฟฟ้า</td>
																		</tr>
																		<tr>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center" valign="baseline"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ส่วนก๊าซร้อนที่ปล่อยจากกังหันก๊าซจะมีอุณหภูมิประมาณ 450-550 
																				องศาเซลเซียส ก๊าซร้อนนี้ สามารถนำไปใช้เป็นแหล่งให้ความร้อน</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">- ใน Waste Heat Boiler เพื่อผลิตไอน้ำ ที่ความดันต่ำๆ หรือ</td>
																		</tr>
																		<tr>
																			<td width="33">&nbsp;</td>
																			<td class="T_gray13">
																				- ใช้ได้โดยตรง ( Direct Heat ) เพื่อใช้ในกระบวนการผลิต</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	หลักการทำงานของ Turbines</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines1.gif" width="403" height="245"></td>
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
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	แนวคิดสำหรับการประยุกต์ใช้ความร้อนโดยตรง</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines2.gif" width="507" height="202"></td>
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
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	แนวคิดสำหรับการประยุกต์ใช้ Fluid Heating หรือ Steam</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines3.gif" width="507" height="207"></td>
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
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	แนวคิดสำหรับการประยุกต์ใช้ Steam และ Chiller</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="520" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines4.gif" width="498" height="179"></td>
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
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	แนวคิดสำหรับการประยุกต์ใช้ Steam Turbines</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines5.gif" width="507" height="283"></td>
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
																<td class="T_blue13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../images/blue.gif" width="16" height="16">&nbsp; 
																	Typical Steam Application</td>
															</tr>
															<tr>
																<td height="10"></td>
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
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="252" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/turbines6.gif" width="491" height="292"></td>
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
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 6: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>COMBINED 
																			CYCLE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Combined 
																	Cycle คือการนำไอน้ำที่ได้จาก Waste Heat Boiler ไปใช้ผลิต กระแสไฟฟ้า 
																	โดยกังหันไอน้ำ ( Steam Turbine ) 
																	อีกชั้นหนึ่งก่อนที่จะนำไอน้ำที่ผลิตได้ไปใช้งานในกระบวนการผลิต ( Process 
																	)&nbsp;&nbsp;&nbsp;ดังนั้น Combined Cycle จะผลิตกระแสไฟฟ้าได้สูงขึ้น 
																	เมื่อเทียบต่อปริมาณการใช้งานเท่า ๆ กัน
																</td>
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
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><% case 7: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>BACK 
																			PRESSURE STEAM TURBINE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>หลักการ :</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">น้ำมันเชื้อเพลิงจะถูกเผาใน Boiler เพื่อผลิตไอน้ำ ที่ความดันสูง 
																				( อาจสูงถึง 100 บาร์ )</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ปล่อยไอน้ำนั้น ให้ขยายตัวผ่านเครื่องกังหันไอน้ำ ( Steam 
																				Turbine )
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">กังหันไอน้ำ จะหมุนขับGenerator เพื่อผลิตกระแสไฟฟ้า
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ไอน้ำที่ผ่านกังหันไอน้ำ จะ ถูกปล่อยออกจากตัวกังหัน 
																				และมีความดัน เหลืออยู่ประมาณ 3 - 20 บาร์
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">
																				ไอน้ำนี้จะถูกนำไปใช้ในกระบวนการผลิตต่อไป</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																			<td height="7"></td>
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
														</table>
													</td>
												</tr>
												<tr>
													<td><% case 8: %></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
															<tr>
																<td class="T_green13"><img src="../images/bull_green.jpg" width="9" height="9">&nbsp;<strong><u>EXTRACTION 
																			STEAM TURBINE</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>หลักการ :</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25" align="center" valign="baseline"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">Extraction Turbine จะต่างจาก Back Pressure Turbine 
																				ตรงที่มีไอน้ำบางส่วนถูกปล่อยออกมาในช่วงกลางของกังหัน
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ไอน้ำที่ปล่อยออกมานี้จะมีความดันหลายขนาดให้เลือก 
																				ตามความเหมาะสมกับจุดใดจุดหนึ่งของ Process</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ไอน้ำที่เหลือจะถูกปล่อยให้ขยายตัวผ่านกังหัน 
																				เพื่อผลิตไฟฟ้าจนมีความดันต่ำ จึงออกจากกังหัน
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>การพิจารณาเลือกระบบ COGENERATION</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25" align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">ขนาดของระบบ</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">ชนิดของเชื้อเพลิง</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center" class="T_gray13"></td>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 
																				ก๊าซธรรมชาติเป็นเชื้อเพลิงที่เหมาะสมอย่างยิ่งต่อระบบ Cogeneration</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">อัตราส่วนระหว่างความร้อนต่อไฟฟ้าที่โรงงานต้องการ ประมาณ 2 : 1</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><span class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></span></td>
																			<td class="T_gray13">ความคุ้มทุนทางเศรษฐศาสตร์
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>TRI - GENERATION</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;คือ 
																	การผลิตไฟฟ้า ความร้อน และทำความเย็นในระบบเดียวกัน
																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><strong>หลักการ :</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="10">&nbsp;</td>
																			<td width="25" align="center" valign="baseline"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ความร้อนจาก Waste Heat Boiler จะถูกส่งไปยัง Absorption Chiller 
																				เพื่อทำความเย็นสำหรับระบบ Air Condition ต่อไป
																			</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7" align="center"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td align="center"><img src="../images/b_red.gif" width="15" height="15"></td>
																			<td class="T_gray13">ทำให้สามารถเพิ่มประสิทธิภาพรวมของทั้งระบบ</td>
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
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;
														<%end select %>
													</td>
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
