<%@ Page CodeBehind="Absorption.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Absorption" %>
<html>
	<head>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<%	
	Dim abs
	abs=Request.Item ("abs")
	if abs="" then abs=1
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
							<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="219" valign="top" style="background-image:url(../images/bg_sidemenu2.jpg); background-repeat:repeat-y"><!--#include file="../Includes/m_info3.aspx" --></td>
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
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
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Absorption
															</u></strong>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=1"><strong>Absorption 
																			Chiller คืออะไร</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=7"><strong>AIR 
																			Conditioning System</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=2"><strong>ประโยชน์ของ 
																			Absorption Chillers</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=8"><strong>Feature 
																			of absorption chiller</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=3"><strong>หลักการทำงานของ 
																			Absorption Chiller</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=9"><strong>Comparison 
																			table for operating cost</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=4"><strong>Absorption 
																			Chiller แบ่งตามประเภทแหล่งความร้อน</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=10"><strong>การเพิ่ม 
																			ABS เข้าในระบบทำน้ำเย็นเดิม</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=5"><strong>During 
																			diagram for Lithium Bromide (absorbent)&amp;Distilled Water(refrigerant)</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=11"><strong>Feasibility 
																			study for a 500 TR. vapour absorption chiller</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Absorption.aspx?abs=6"><strong>ABS 
																			Chiller Piping Diagram For A/C System</strong></a></td>
																<td valign="top" class="T_gray13"></td>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><%	select case abs
	case 1: %></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Absorption Chiller คืออะไร</td>
												</tr>
												<tr>
													<td class="text_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เครื่องทำความเย็น 
														ชนิดระบายความร้อนด้วยน้ำประเภทหนึ่ง ที่รู้จักกันดีและใช้งานทั่วไป เป็นชนิด
														<span class="T_green10">
															<strong>COMPRESSOR CHILLER</strong></span></td>
												</tr>
												<tr>
												  <td height="10" class="T_gray13">&nbsp;</td>
										  </tr>
												<tr>
												  <td height="10" class="T_gray13">&nbsp;</td>
										  </tr>
												<tr>
												  <td height="10" class="T_gray13">&nbsp;</td>
										  </tr>
												<tr>
												  <td height="10" class="T_gray13">&nbsp;</td>
										  </tr>
												<tr>
												  <td height="10" class="T_gray13">&nbsp;</td>
										  </tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 2: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;ประโยชน์ของ Absorption 
														Chillers</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="98%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td width="20" class="T_gray13" align="center">&nbsp;</td>
																<td width="30" class="T_gray13" align="center">1.</td>
																<td class="T_gray13">ไม่ใช้ไฟฟ้า</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td width="20" class="T_gray13" align="center">&nbsp;</td>
																<td width="30" class="T_gray13" align="center">2.</td>
																<td class="T_gray13">ใช้ความร้อนเป็นแหล่งพลังงาน</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td width="20" class="T_gray13" align="center">&nbsp;</td>
																<td width="30" class="T_gray13" align="center">3.</td>
																<td class="T_gray13">หมดปัญหาเรื่องค่าบำรุงรักษา</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td width="20" class="T_gray13" align="center">&nbsp;</td>
																<td width="30" class="T_gray13" align="center">4.</td>
																<td class="T_gray13">ปราศจากเสียงในการทำงาน</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;</td>
																<td class="T_gray13" align="center">5.</td>
																<td class="T_gray13">ไม่มีการรั่วของ Refrigerant</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;</td>
																<td class="T_gray13" align="center">6.</td>
																<td class="T_gray13">สามารถปรับประสิทธิภาพการทำงานได้ตั้งแต่ 10-100%</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;</td>
																<td class="T_gray13" align="center">7.</td>
																<td class="T_gray13">ค่าใช้จ่ายในการเดินเครื่องต่ำ</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13" align="center">&nbsp;</td>
																<td class="T_gray13" align="center">8.</td>
																<td class="T_gray13">สามารถติดตั้งบนสถานที่ ที่รับน้ำหนักได้น้อย</td>
															</tr>
															<tr>
																<td></td>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td width="20" class="T_gray13" align="center">&nbsp;</td>
																<td width="30" class="T_gray13" align="center">9.</td>
																<td class="T_gray13">ปราศจากสารทำลายชั้นบรรยากาศ</td>
															</tr>
														</table>													</td>
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
													<td><span class="T_blue13">
															<% case 3: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;หลักการทำงานของ Absorption 
														Chiller</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;คุณสมบัติการเดือดของน้ำมีค่าแปรผันตามความดัน 
														ที่ความดันบรรยากาศปกติน้ำจะเดือดที่ 100 &deg;C ที่ความดันต่ำกว่าบรรยากาศ 
														น้ำจะเดือดที่อุณหภูมิต่ำกว่า 100 &deg;C และที่ความดันสัมบูรณ์ (Vacuum) 6 
														มิลลิเมตรปรอด น้ำจะเดือดที่ 3.7 &deg;C คุณสมบัติของสาร LiBr 
														เป็นสารที่สามารถดูดซับน้ำได้ดี เมื่อความเข้มข้นสูงจะสามารถดูดซับน้ำได้มาก 
														และที่อุณหภูมิเพิ่มขึ้นการดูดซับน้ำจะน้อยลง													</td>
												</tr>
												<tr>
													<td height="20"></td>
												</tr>
												<tr>
													<td height="10" class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;โดยคุณสมบัติดังกล่าวนี้
														<span class="T_blue13">Vapour Absorption Machine</span>
														สามารถผลิตน้ำ Chiller ได้ถึง 4.5 &deg;C โดยใช้ไอน้ำเป็นพลังงานความร้อน
														<span class="T_blue13">Absorption Machine</span>
														ทำงานโดยการดูดซับความร้อนจากน้ำ Chller ในขณะที่น้ำในระบบระเหยเป็นไอที่ 3.7 
														&deg;C Chiller จะคายความร้อนให้กับน้ำที่ระเหย และสาร LiBr จะดูดซับไอน้ำเอาไว้ 
														และจะถูกปั้มไปยังระบบ Generator เพื่อใช้ความร้อนแยกเอาน้ำ และสาร LiBr 
														ออกจากกันและไหลกลับเข้ามาในระบบอีกครั้ง</td>
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
																			<td align="center"><img src="../images/information/absorp1.gif" width="519" height="380"></td>
																		</tr>
																	</table>																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>													</td>
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
																			<td align="center"><img src="../images/information/absorp2.gif" width="519" height="380"></td>
																		</tr>
																	</table>																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>													</td>
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
																			<td align="center"><img src="../images/information/absorp3.gif" width="519" height="359"></td>
																		</tr>
																	</table>																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>													</td>
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
																			<td align="center"><img src="../images/information/absorp4.gif" width="519" height="359"></td>
																		</tr>
																	</table>																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>													</td>
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
																			<td align="center"><img src="../images/information/absorp5.gif" width="519" height="352"></td>
																		</tr>
																	</table>																</td>
																<td background="../images/f_pic_c5.jpg">&nbsp;</td>
															</tr>
															<tr>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																<td background="../images/f_pic_c7.jpg"></td>
																<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
															</tr>
														</table>													</td>
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
													<td><span class="T_blue13">
															<% case 4: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Absorption Chiller 
														แบ่งตามประเภทแหล่งความร้อน</td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
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
																						<td align="center"><img src="../images/information/direct1.gif" width="434" height="176"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<th scope="row">
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="40" align="center">
																				<img src="../images/a_red.gif" width="8" height="10"></th>
																			<td width="514" class="T_red13">Direct Fired Chiller</td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/d1.jpg" width="500" height="333"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="40" align="center">
																				<img src="../images/a_red.gif" width="8" height="10"></th>
																			<td width="514" class="T_red13">Single Effect Steam fired chiller</td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/d2.jpg" width="500" height="336"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="40" align="center">
																				<img src="../images/a_red.gif" width="8" height="10"></th>
																			<td width="514" class="T_red13">Double Effect Steam fired chiller</td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/d3.jpg" width="500" height="336"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="40" align="center">
																				<img src="../images/a_red.gif" width="8" height="10"></th>
																			<td width="514" class="T_red13">Air conditioning system</td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/air-con.jpg" width="376" height="281"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<td scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																						<td background="../images/f_pic_c2.jpg"></td>
																						<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																						<td align="center" valign="top" bgcolor="#ffffff"><table width="250" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																								<tr>
																									<td align="center"><img src="../images/information/air-con2.jpg" width="250" height="194"></td>
																								</tr>
																							</table>																						</td>
																						<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																						<td background="../images/f_pic_c7.jpg"></td>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																					</tr>
																				</table>																			</td>
																			<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																					<tr>
																						<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																						<td background="../images/f_pic_c2.jpg"></td>
																						<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																						<td align="center" valign="top" bgcolor="#ffffff"><table width="250" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																								<tr>
																									<td align="center"><img src="../images/information/air-con3.jpg" width="250" height="194"></td>
																								</tr>
																							</table>																						</td>
																						<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																					</tr>
																					<tr>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																						<td background="../images/f_pic_c7.jpg"></td>
																						<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																					</tr>
																				</table>																			</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 5: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;During diagram for Lithium 
																	Bromide(absorbent)&amp;Distilled Water(refrigerant)</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/diagram1.gif" width="463" height="323"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
														</table>													</td>
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
													<td><span class="T_blue13">
															<% case 6: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;ABS Chiller Piping Diagram 
																	For A/C System</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/diagram2.gif" width="500" height="372"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
														</table>													</td>
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
													<td><span class="T_blue13">
															<% case 7: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;AIR Conditioning System</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<td scope="row"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>TYPE 
																						OF CHILLER</u></strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td><table width="550" border="0" align="center" cellpadding="0" cellspacing="1" class="T_gray12">
																					<tr bgcolor="#819cc0" class="T_white12">
																						<td height="25" colspan="2"><div align="center">METHOD</div>																						</td>
																						<td width="139" height="25"><div align="center">TYPE</div>																						</td>
																						<td width="192" height="25"><div align="center">REFRIGERANT</div>																						</td>
																						<td width="212" height="25"><div align="center">ENERGY SOURCE</div>																						</td>
																					</tr>
																					<tr>
																						<td width="27" rowspan="3" bgcolor="#c5d1e2"><div align="center">A
																								<br>
																								B
																								<br>
																								S
																								<br>
																								O
																								<br>
																								R
																								<br>
																								P
																								<br>
																								T
																								<br>
																								I
																								<br>
																								O
																								<br>
																								N</div>																						</td>
																						<td width="111" rowspan="2" bgcolor="#f9fcff"><div align="center">STREAM
																								<br>
																								OR
																								<br>
																								HOT
																								<br>
																								WATER
																								<br>
																							</div>																						</td>
																						<td width="139" bgcolor="#f9f9f9"><div align="center">SINGLE EFFECT</div>																						</td>
																						<td width="192" rowspan="3" bgcolor="#f9fcff"><div align="center">H<sub>2</sub>O
																							</div>																						</td>
																						<td width="212" bgcolor="#c5d1e2"><div align="center">LOW PRESSURE STREAM<br>
																								(0.8~1.5 kg/cm<sup>2</sup> .G)<br>
																								HOT WATER<br>
																								(130~150 C)</div>																						</td>
																					</tr>
																					<tr>
																						<td width="139" height="111" bgcolor="#f9f9f9"><div align="center">DOUBLE EFFECT</div>																						</td>
																						<td width="212" height="111" bgcolor="#c5d1e2"><div align="center">LOW PRESSURE STREAM<br>
																								(8 kg/cm<sup>2</sup> .G)<br>
																								HOT WATER<br>
																								(180~200 C)</div>																						</td>
																					</tr>
																					<tr>
																						<td width="111" height="19" bgcolor="#e3e9f1"><div align="center">DIRECT FIRED</div>																						</td>
																						<td width="139" height="19" bgcolor="#e3e9f1"><div align="center">DOUBLE EFFECT</div>																						</td>
																						<td width="212" height="19" bgcolor="#e3e9f1"><div align="center">GAS,OIL</div>																						</td>
																					</tr>
																					<tr>
																						<td colspan="2" rowspan="3" bgcolor="#e3e9f1"><div align="center">COMPRESSION</div>																						</td>
																						<td width="139" bgcolor="#e3e9f1">
																							CENTRIFUGAL</td>
																						<td width="192" bgcolor="#e3e9f1">R-11,12,22,113,114</td>
																						<td width="212" rowspan="3" bgcolor="#e3e9f1"><div align="center">ELECTRICITY</div>																						</td>
																					</tr>
																					<tr>
																						<td width="139" bgcolor="#e3e9f1">SCREW R-22,12																						</td>
																						<td width="192" bgcolor="#e3e9f1">R-22,12</td>
																					</tr>
																					<tr>
																						<td width="139" bgcolor="#e3e9f1">RECIPROCATING</td>
																						<td width="192" bgcolor="#e3e9f1">R-22,2</td>
																					</tr>
																				</table>																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>ADVANTAGE 
																						OF ABSORPTION CHILLER</u></strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td class="T_green13"><table width="550" border="0" cellspacing="1" cellpadding="0" align="center" height="23"
																					class="T_gray12">
																					<tr bgcolor="#819cc0" class="T_white12">
																						<td width="110" height="25">&nbsp;</td>
																						<td width="205" height="25" align="center">ABSORPTION CHILLER																						</td>
																						<td width="231" height="25" align="center">ELECTRIC CHILLER																						</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="110" rowspan="2">&nbsp;&nbsp;ENERGY SOURCE</td>
																						<td width="205">TOWN GAS,OIL,STREAM,HOT WATER</td>
																						<td width="231">
																							BIG ELECTRICITY</td>
																					</tr>
																					<tr>
																						<td width="205" bgcolor="#f2f9ff">SMALL ELECTRICITY</td>
																						<td width="231" bgcolor="#f2f9ff">EXPENSIVE POWER RECEIVING FACILITY</td>
																					</tr>
																					<tr bgcolor="#fbfffb">
																						<td width="110" rowspan="2">&nbsp;&nbsp;HEAT MEDIUM</td>
																						<td width="205">REFRIGERANT : H<sub>2</sub>O
																							<br>
																							ABSORBENT : LiBr</td>
																						<td width="231">REFRIGERANT:CFCs,HCFCs,HFC</td>
																					</tr>
																					<tr>
																						<td width="205" bgcolor="#fbfffb">SAFE &amp; HARMLESS</td>
																						<td width="231" bgcolor="#fbfffb">ENVIRONMENTAL POLLUTION</td>
																					</tr>
																					<tr bgcolor="#f2f9ff">
																						<td width="110" rowspan="2">&nbsp;&nbsp;PRINCIPLE</td>
																						<td width="205">STATIC PROCESS</td>
																						<td width="231">DYNAMIC PROCESS</td>
																					</tr>
																					<tr>
																						<td width="205" bgcolor="#f2f9ff">LOW NOISE AND VIBRATION</td>
																						<td width="231" bgcolor="#f2f9ff">NOISE AND VIBRATION</td>
																					</tr>
																				</table>																			</td>
																		</tr>
																		<tr>
																			<td class="T_green13">&nbsp;</td>
																		</tr>
																	</table>																</td>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 8: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Feature of absorption 
																	chiller</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="30" align="center" class="T_gray13">1.</td>
																			<td class="T_gray13">SMALL POWER CONSUMPTION</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">2.</td>
																			<td class="T_gray13">OZONE SAFE, CFCs FREE</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">3.</td>
																			<td class="T_gray13">LOW NOISE AND VIBRATION</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">4.</td>
																			<td class="T_gray13">NO NEED FOR AN OPERATING ENGINEER</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">5.</td>
																			<td class="T_gray13">WASTE HEAT IS AVAILABLE</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">6.</td>
																			<td class="T_gray13">CHILLED / HOT WATER SUPPLY (DIRECT FIRED TYPE)</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">7.</td>
																			<td class="T_gray13">WIDE RANGE SELECTION</td>
																		</tr>
																	</table>																</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
															<tr>
																<th scope="row">&nbsp;																	</th>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 9: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Comparison table for 
																	operating cost</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>ABSORPTION 
																			CHILLER FOR PLANT APPLICATION</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="540" border="0" align="center" cellpadding="0" cellspacing="1" bordercolor="#6699cc">
																		<tr bgcolor="#7999bd">
																			<td height="35" colspan="2" align="center" bgcolor="#0099CC" class="T_white12">WATER COOLED CHILLER 
																					CCAP 150 USRT																			</td>
																			<td width="205" height="35" align="center" bgcolor="#0099CC" class="T_white12">ABS-DOUBLE EFFECT 
																					STEAMFIRED TYPE SATURATED STEAM, 8 Kg/Sq. CM																		</td>
																			<td width="150" height="35" align="center" bgcolor="#0099CC" class="T_white12">SCREW COMPRESSOR TYPE																		</td>
																		</tr>
																		<tr bgcolor="#ffffff">
																			<td width="120" rowspan="2" bgcolor="#DFEFFF" class="T_gray13">&nbsp;&nbsp;CONSUMP</td>
																			<td width="60" bgcolor="#DFEFFF" class="T_gray13">&nbsp;&nbsp;ELEC.</td>
																			<td width="205" bgcolor="#DFEFFF" class="T_gray13">3.2 Kw</td>
																			<td width="150" bgcolor="#DFEFFF" class="T_gray13">125 Kw</td>
																		</tr>
																		<tr>
																			<td width="60" bgcolor="#DFEFFF" class="T_gray13">&nbsp;&nbsp;STEAM</td>
																			<td width="205" bgcolor="#DFEFFF" class="T_gray13">650 Kg/h</td>
																			<td width="150" bgcolor="#DFEFFF" class="T_gray13">-</td>
																		</tr>
																		<tr bgcolor="#f0f8ff">
																			<td width="120" rowspan="2" bgcolor="#F4FDFF" class="T_gray13">&nbsp;&nbsp;COST</td>
																			<td width="60" bgcolor="#F4FDFF" class="T_gray13">&nbsp;&nbsp;ELEC.</td>
																			<td width="205" bgcolor="#F4FDFF" class="T_gray13">3.2 Kw x 2.0 Baht/Unit x 24 h x 365 d = 56,064 
																				Baht/Year</td>
																			<td width="150" bgcolor="#F4FDFF" class="T_gray13">125 Kw x 2.0 Baht/Unit x 24 h x 365 d = 2,190,000 
																				Baht/Year</td>
																		</tr>
																		<tr>
																			<td width="60" bgcolor="#F4FDFF" class="T_gray13">&nbsp;&nbsp;STEAM</td>
																			<td width="205" bgcolor="#F4FDFF" class="T_gray13">660 Kg/h x 0.2 Baht/Kg x 24h x 
																				365 d =1,561,032 Baht/Year</td>
																			<td width="150" bgcolor="#F4FDFF" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr bgcolor="#ffffff">
																			<td width="120" bgcolor="#DFEFFF" class="T_gray13">COMPARISION</td>
																			<td width="60" bgcolor="#DFEFFF" class="T_gray13">&nbsp;</td>
																			<td width="205" bgcolor="#DFEFFF" class="T_gray13">73.8%</td>
																			<td width="150" bgcolor="#DFEFFF" class="T_gray13">100%</td>
																		</tr>
																		<tr bgcolor="#ffffff">
																			<td width="120" bgcolor="#F4FDFF" class="T_gray13">TOTAL COST</td>
																			<td width="60" bgcolor="#F4FDFF" class="T_gray13">&nbsp;</td>
																			<td width="205" bgcolor="#F4FDFF" class="T_gray13">1,617,096 Baht/Year</td>
																			<td width="150" bgcolor="#F4FDFF" class="T_gray13">2,190,000 Baht/Year</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>ABOVE 
																			DATA BASED ON</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_gray13" align="center">1.</td>
																			<td class="T_gray13">100% OPERATING TIME / TYPE																			</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">2.</td>
																			<td class="T_gray13">AVERAGE OVERALL ELECTRICITY COST COMPLY TO TOU RATE 2.00 
																				BAHT/UNIT)																			</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">3.</td>
																			<td class="T_gray13">ESTIMATE STEAM PRICE 0.27 BAHT/Kg.hr (Natural Gas 110 
																				BAHT/UNIT)																			</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>A/C 
																			SYSTEM INVESTMENT COMPARISION</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="545" border="0" cellspacing="1" cellpadding="0" align="center" class="T_gray12">
																		<tr bgcolor="#006699" class="T_white12">
																			<td height="25" colspan="2" align="center" bgcolor="#0099CC">DESCRIPTION</td>
																			<td width="174" height="25" align="center" bgcolor="#0099CC">ABS CHILLER</td>
																			<td width="172" height="25" align="center" bgcolor="#0099CC">COMPRESSOR CHILLER																			</td>
																		</tr>
																		<tr bgcolor="#e3e9f1">
																			<td colspan="2" bgcolor="#DFEFFF">TOTAL SYSTEM COOLING CAPACITY																			</td>
																			<td width="174" bgcolor="#DFEFFF">
																				150 TR.</td>
																			<td width="172" bgcolor="#DFEFFF">150 TR.</td>
																		</tr>
																		<tr bgcolor="#fffff9">
																			<td colspan="2" bgcolor="#F4FDFF">CHILLER TYPE																			</td>
																			<td width="174" bgcolor="#F4FDFF">DOUBLE EFFECTED
																				<br>
																		  STEAM FIRED																			</td>
																			<td width="172" bgcolor="#F4FDFF">SCREW COMPRESSOR																			</td>
																		</tr>
																		<tr bgcolor="#e3e9f1">
																			<td colspan="2" bgcolor="#DFEFFF">ENERGY INPUT																			</td>
																			<td width="174" bgcolor="#DFEFFF">7 BAR SAT. STEAM																			</td>
																			<td width="172" bgcolor="#DFEFFF">ELECTRICITY 380 / 3 / 50																			</td>
																		</tr>
																		<tr bgcolor="#fffff9">
																			<td colspan="2" bgcolor="#F4FDFF">TOTAL OPERATING EXPENSE / YEAR</td>
																			<td width="174" bgcolor="#F4FDFF">&nbsp;</td>
																			<td width="172" bgcolor="#F4FDFF">&nbsp;</td>
																		</tr>
																		<tr bgcolor="#e3e9f1">
																			<td width="99" bgcolor="#DFEFFF">&nbsp;</td>
																			<td width="120" bgcolor="#DFEFFF">- ELECTRICITY																			</td>
																			<td width="174" bgcolor="#DFEFFF">76.3 KW = 1,336,776 B/YR.</td>
																			<td width="172" bgcolor="#DFEFFF">196.1 KW = 3,435,672 B/YR</td>
																		</tr>
																		<tr bgcolor="#fffff9">
																			<td width="99" bgcolor="#F4FDFF">&nbsp;</td>
																			<td width="120" bgcolor="#F4FDFF">- STEAM																			</td>
																			<td width="174" bgcolor="#F4FDFF">750 KG/HR = 1,776,900 B/YR.</td>
																			<td width="172" bgcolor="#F4FDFF">0 B/YR.</td>
																		</tr>
																		<tr bgcolor="#e3e9f1">
																			<td colspan="2" bgcolor="#DFEFFF">TOTAL OPERATING EXP.</td>
																			<td width="174" bgcolor="#DFEFFF">3,110,676 B/YR.</td>
																			<td width="172" bgcolor="#DFEFFF">3,435,672 B/YR.</td>
																		</tr>
																		<tr bgcolor="#fffff9">
																			<td colspan="2" bgcolor="#F4FDFF">TOTAL MAINTENANCE EXPENSE / YEAR</td>
																			<td width="174" bgcolor="#F4FDFF">&nbsp;</td>
																			<td width="172" bgcolor="#F4FDFF">&nbsp;</td>
																		</tr>
																		<tr bgcolor="#e3e9f1">
																			<td width="99" bgcolor="#DFEFFF">&nbsp;</td>
																			<td width="120" bgcolor="#DFEFFF">- PREVENTIVE																			</td>
																			<td width="174" bgcolor="#DFEFFF">240,000 B/YR.</td>
																			<td width="172" bgcolor="#DFEFFF">240,000 B/YR.</td>
																		</tr>
																		<tr bgcolor="#fffff9">
																			<td width="99" bgcolor="#F4FDFF">&nbsp;</td>
																			<td width="120" bgcolor="#F4FDFF">- OVERHAULS</td>
																			<td width="174" bgcolor="#F4FDFF">200,900 B/YR.</td>
																			<td width="172" bgcolor="#F4FDFF">400,000 B/YR.</td>
																		</tr>
																		<tr bgcolor="#e3e9f1">
																			<td colspan="2" bgcolor="#DFEFFF">TOTAL OPERATING EXP.																			</td>
																			<td width="174" bgcolor="#DFEFFF">440,000 B/YR.</td>
																			<td width="172" bgcolor="#DFEFFF">640,000 B/YR.</td>
																		</tr>
																		<tr bgcolor="#fffff9">
																			<td colspan="2" bgcolor="#F4FDFF">TOTAL O &amp; M EXPENSE / YEAR																			</td>
																			<td width="174" bgcolor="#F4FDFF">3,550,676 B/YR.</td>
																			<td width="172" bgcolor="#F4FDFF">
																				4,075,672 B/YR.</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>REMARK 
																			- ABOVE DATA BASE ON</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_gray13" align="center">1.</td>
																			<td class="T_gray13">ELECTRICITY PRICE 2 BAHT / KWHR																			</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">2.</td>
																			<td class="T_gray13">STEAM PRICE 0.27 BAHT / KG AT 7.0 BAR SAT. STEAM</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">3.</td>
																			<td class="T_gray13">OPERATING HR / YEAR 365 X 24																			</td>
																		</tr>
																		<tr>
																			<td height="5"></td>
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">4.</td>
																			<td class="T_gray13">EXCLUDE INTEREST OF CAPITAL INVESTMENT.																			</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><span class="T_blue13">
															<% case 10: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;การเพิ่ม ABS 
																	เข้าในระบบทำน้ำเย็นเดิม</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<th scope="row">
																	<table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#ffffff"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/abs.gif" width="497" height="161"></td>
																					</tr>
																				</table>																			</td>
																			<td background="../images/f_pic_c5.jpg">&nbsp;</td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c6.jpg" width="8" height="12"></td>
																			<td background="../images/f_pic_c7.jpg"></td>
																			<td background="../images/f_pic_c7.jpg"><img src="../images/f_pic_c8.jpg" width="10" height="12"></td>
																		</tr>
																	</table>																</th>
															</tr>
														</table>													</td>
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
													<td><span class="T_blue13">
															<% case 11: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#deefff" class="T_blue14">&nbsp;&nbsp;&nbsp;Feasibility study for a 
																	500 TR. vapour absorption chiller</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>FEASIBILITY 
																			STUDY FOR A 500 TR. VAPOUR ABSORPTION CHILLER</u></strong></td>
															</tr>
															<tr>
																<td height="20"></td>
															</tr>
															<tr>
																<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong>1 No. 500 TR. Centrifugal chiller</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_gray13" align="center">&nbsp;</td>
																			<td width="518" class="T_gray13">Power consumption = 0.70 x 500 = 350 KW</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Rate of power</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Peak period = 305 Baht / KW / month</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Energy charge = 1.07 Baht / kWh</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Annual operating cost during peak period for 500 TR.</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">= [(350 x 1.07 x 3 x 30) + (350 x 305)] Baht / month x 12 
																				months / year</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">
																				= 1.7 million Baht / year</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Maintenance cost = 100,000 Baht / year</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Total operating cost = 1.8 million Baht / year</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13">&nbsp;&nbsp;&nbsp;<strong>1 No. 500 TR. Vapour Absorption Chiller</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_gray13" align="center">&nbsp;</td>
																			<td width="518" class="T_gray13">Steam required = 500 x 4.5 Kg / TR.<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;= 2,250 kg / hr @ 8 kg / cm2 (g)																			</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Efficiency of boiler = 88 %																			</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Fuel used = Bunker oil, Grade A / C</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Calorific Value = 9650 Kcal / Kg</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Cost of fuel = 4 Baht / kg																			</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Condensate return = 90 DegC (90 Kcal / kg)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Enthalpy of steam at 8 bar = 662 Kcal / kg</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Operating cost = 2,250 x (662 - 90)
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;------------- x 4 Baht / kg
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;0.88 x 9650
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;= 606 Baht / 
																				hr</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Annual operating cost = 606 x 3 hrs / year x 30 days / month x 
																				12 months / year
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = 0.65 million 
																				Baht / year</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Maintenance cost = 30,000 Baht / year																			</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Total operating cost = 0.68 million Baht / year</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>Annual 
																			Operating savings due to 500 TR. Absorption Chiller running only</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_gray13" align="center">&nbsp;</td>
																			<td width="518" class="T_gray13">During peak period (18:30 to 21:30)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">
																				= 1.8 - 0.68</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">= 1.12 million Baht / year</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Investment Analysis (indicative):</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">&nbsp;</td>
																			<td class="T_gray13">Absorption chiller :</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td>&nbsp;</td>
																			<td width="528"><span class="T_gray13">1 no. 500 TR. Absorption chiller 
      : 6.51 million Baht<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--------------<br>
Total investment&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      6.51 million Baht<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--------------<br>
( Exchange rate 1 U$ = 37 Baht )</span></td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="14">&nbsp;</td>
																			<td><span class="T_gray13">Playback period is 6.51 / 1.12 = 
      5.81 years.</span></td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13"><img src="../images/b9.GIF" width="11" height="11">&nbsp;<strong><u>Conclusions</u>
																		:</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="23">&nbsp;</td>
																			<td width="30" class="T_gray13" align="center" valign="top">1.</td>
																			<td class="T_gray13">Operating costs for Absorption chiller is slightly 
																				lower. The savings can reduce or increase depending on the power consumption 
																				pattern during peak and partial peak hours</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">2.</td>
																			<td class="T_gray13">Capital costs for absorption chiller are higher than the 
																				compression chiller. But a centrifugal chiller requires a standby because of 
																				having more number of moving parts. Due to the inherent characteristic of an 
																				Absorption chiller of not having many moving parts, a standby is not required. 
																				The only moving parts are two pumps - absorbent &amp; refrigerant pumps. These 
																				pumps are canned motor pumps from Teikoku, Japan and are world famous for their 
																				reliability. In the 600 installations we have so far, there has been no 
																				problems in these pumps.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">3.</td>
																			<td class="T_gray13">R-22 and R-123 are transient refrigerants containing HCFC. As 
																				per Montreal Protocol to which Thailand is a signatory and an active member, 
																				these are to be phased out in a few years. R-123 is highly toxic in nature. The 
																				other available alternative, R-134a has a very high global warming potential 
																				(GWP) of about 1000 times that of CO2.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">4.</td>
																			<td class="T_gray13">Conversion of a chiller from one refrigerant to another at a 
																				later date requires change of components, results in reduction in capacity, 
																				increase in specific power consumption and is a specialized and expensive 
																				process.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">5.</td>
																			<td class="T_gray13">The only presently available permanent alternative is 
																				absorption chiller which uses water as refrigerant.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">6.</td>
																			<td class="T_gray13">Due to negligible moving parts in an Absorption chiller, the 
																				noise and vibration level is very low.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">7.</td>
																			<td class="T_gray13">Since there is no dynamic loading in an Absorption chiller, 
																				the foundation required is negligible. In fact, when testing the chiller in our 
																				factory we do not even require to bolt the chiller to the ground. On the other 
																				hand, a centrifugal chiller requires a highly firm foundation. This difference 
																				in civil costs has not been considered in the capital cost comparison.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">8.</td>
																			<td class="T_gray13">As an Absorption chiller does not require monitoring as in a 
																				centrifugal chiller there are savings on terms of manpower also.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">9.</td>
																			<td class="T_gray13">There is topping up of refrigerant required in a centrifugal 
																				chiller. This is an additional cost for a centrifugal chiller. As an Absorption 
																				chiller runs under vacuum, there is no leakage out of the system and therefore 
																				topping up is not required.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																			<td>&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13" align="center" valign="top">10.</td>
																			<td class="T_gray13">The absorption chiller also has a longer life than centrifugal 
																				chillers. This is again due to being a more stable equipment and not having 
																				many moving parts.</td>
																		</tr>
																	</table>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
														</table>													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;<%end select %></td>
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
