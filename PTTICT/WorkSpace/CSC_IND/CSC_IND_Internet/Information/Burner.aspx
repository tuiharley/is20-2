<%@ Page CodeBehind="Burner.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Burner" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<%	
     Dim bn
	bn=Request.Item ("bn")
	if bn="" then bn=1
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
													<td class="T_blue13"><strong><img src="../images/bullet2.jpg" width="8" height="8">&nbsp;&nbsp;<u>Burner 
																/ Boiler </u></strong>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="2">
															<tr>
																<td width="50%" valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=1"><strong>Burner</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=4"><strong>ข้อมูลที่ต้องทราบก่อนเปลี่ยนมาใช้ก๊าซธรรมชาติ</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=2"><strong>Boiler</strong></a></td>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=5"><strong>ตัวอย่างการคำนวณ</strong></a></td>
															</tr>
															<tr>
																<td valign="top" class="T_gray13"><img src="../images/bull.gif" width="9" height="9">&nbsp;<a class="T_blue12" href="Burner.aspx?bn=3"><strong>การเปลี่ยนมาใช้เชื้อเพลิงก๊าซธรรมชาติ</strong></a></td>
																<td valign="top" class="T_gray13"></td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><%	select case bn
	case 1: %></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;Burner</td>
												</tr>
												<tr>
													<td class="text_blue13">&nbsp;</td>
												</tr>
												<tr>
													<td class="T_blue13"><table width="96%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td class="T_green13"><strong><u>ประเภทของเครื่องพ่นไฟ แบ่งได้เป็น 3 ประเภทใหญ่ 
																			ตามชนิดเชื้อเพลิง</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14">1. OIL BURNER</td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099CC"></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25" align="center"><img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">เชื้อเพลิงเป็นของเหลว เช่น น้ำมันเตา, ดีเซล
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center"><img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">นิยมใช้กันมาก เพราะเชื้อเพลิงราคาถูก (น้ำมันเตา)</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue13">หลักการของการทำงาน คือ &quot; ให้น้ำมันแตกตัวมากที่สุด 
																	เพื่อให้การเผาไหม้มีประสิทธิภาพสมบูรณ์ที่สุด &quot;</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><strong><u>แบ่งเป็น 3 ชนิด ตามลักษณะการกระจายน้ำมันที่หัวฉีด</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.1</strong></td>
																			<td class="T_green13"><strong>Air Atomizing</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;ใช้ลมแรงดันประมาณ 
																				9-20 Psi ในการผสมกับเชื้อเพลิงเหลวในห้องเผาไหม้ เพื่อให้น้ำมันแตกตัวรวมกับอากาศ 
																				และได้ประสิทธิภาพสูงสุด ระบบนี้ต้องใช้แก๊ส LPG นำร่องในช่วงจุดเริ่มต้น																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;นิยมใช้ในบอยเลอร์ของสหรัฐอเมริกา</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.2</strong></td>
																			<td class="T_green13"><strong>Pressure Atomizing</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;ใช้ปั๊มน้ำมันแรงดันสูง 
																				สูบอัดน้ำมันให้เป็นฝอย ด้วยแรงดัน 10-30 bar
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;Recommended 
																				Viscosity at Nozzle head equal 10 CST ( Temp. 120-130&deg;C )
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;เนื่องจาก 
																				น้ำมันถูกฉีดเป็นฝอยละอองเล็กมาก จึงสามารถจุดลุกไหม้ได้ โดยมิต้องใช้ Gas 
																				จุดนำร่อง</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;เครื่องพ่นไฟชนิดนี้ 
																				ผู้ผลิตบางราย สามารถปรับ Primary Air ที่ Combustion head 
																				เพื่อปรับอากาศส่วนเกินได้ จึงทำให้มีประสิทธิภาพ การเผาไหม้ที่ดี ( Excess Air 
																				ประมาณ 15 % และ CO<sub>2</sub> ประมาณ 13.5% )</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;นิยมใช้ในบอยเลอร์ของประเทศทางยุโรป</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.3</strong></td>
																			<td class="T_green13"><strong>Rotary Cup</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;ไม่ใช้หัวฉีดเหมือน 
																				2 แบบแรก แต่จะใช้ลูกถ้วยเหวี่ยง (Rotary Cup) ที่ความเร็วรอบสูงมาก 
																				เพื่อให้น้ำมันแตกตัวเป็นฝอย
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;ฝอยละอองของน้ำมันแบบนี้ 
																				จะไม่ละเอียดเท่า 2 แบบแรก เพราะแรงอัดของน้ำมันไม่สูงมาก รวมทั้งไม่มีอากาศส่วน 2 
																				(Secondary air) มาผสมในห้องเผาไหม้</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;ต้องใช้แก๊สจุดนำร่องเช่นเดียวกับแบบที่ 
																				1</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14">2. GAS BURNER</td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099CC"></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">เชื้อเพลิงที่ใช้ในบ้านเรามี 2 ชนิดใหญ่ ๆ คือ Natural Gas และ 
																				LPG Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">ให้ประสิทธิภาพการเผาไหม้สูงสุด เนื่องจากสามารถให้ CO<sub>2</sub>
																				ถึง 15% ที่ Flue Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">ตัวแปรที่มีผลต่อการเตรียมเชื้อเพลิงก่อนเข้าห้องเผาไหม้ 
																				มีน้อยมาก (คุณภาพเชื้อเพลิงสม่ำเสมอ)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">ให้มลพิษและเขม่าจากการเผาไหม้น้อยสุดในจำนวนเชื้อเพลิงที่ใช้ทั้ง 
																				3 ประเภท</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">อุปกรณ์ที่ใช้ จะมีระบบป้องกันการรั่วของแก๊สก่อนเข้าห้องเผาไหม้ 
																				เช่น Double Solenoid Valve (วาล์วไฟฟ้าปิดแก๊ส 2 ชั้น) Valve Proving 
																				(ตัวเช็คการรั่วไหลของหน้าสัมผัสวาล์วไฟฟ้าแบบอัตโนมัติ) เป็นต้น</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">สามารถทดสอบการรั่วของแก๊สได้โดยใช้ระบบ Sound Ness Test</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">อุปกรณ์ที่ใช้ในระบบ ไม่ยุ่งยากเหมือนกับระบบน้ำมัน</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25"><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">ชนิดต่าง ๆ ของ Gas Burner</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="15"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ชนิด Low Pressure Gas (0 - 50 mbar) / Atmospheric Air</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ชนิด High Pressure Gas (2 bar) / Atmospheric Air</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ชนิด Pressure Air (25 mbar) / Low Pressure Gas หรือ Air Blast 
																				(0 Psi)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right">-</td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ชนิด Pressure Air / Pressure Gas</td>
																		</tr>
																		<tr>
																			<td width="45" class="T_gray13" align="right">-</td>
																			<td width="15" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ชนิดอื่น ๆ ได้แก่ Already Mix, Premix, Partial Premix</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14">3. DUAL BURNER</td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099CC"></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">เป็นเครื่องพ่นไฟที่สามารถใช้ได้ทั้งน้ำมันเหลว และแก๊ส 
																				ในเครื่องเดียวกัน</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="top" align="center" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td valign="top" class="T_gray13">ใช้ระบบ
																				<span class="T_blue13">Magnetic 
        Clutch</span>
																				ในการปลดและต่อปั๊มน้ำมันเตา เข้าในระบบ กรณีสับ-เปลี่ยนเชื้อเพลิง 
																				ซึ่งค่อนข้างง่ายมาก</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">ระบบจะเหมือนกับนำ Oil และ Gas Burner มาใช้รวมกัน 
																				โดยแยกท่อน้ำมัน และแก๊ส เป็น 2 ท่อ</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center" valign="top" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">สะดวกในกรณีเชื้อเพลิงชนิดใดชนิดหนึ่งมีปัญหา</td>
																		</tr>
																		<tr>
																			<td></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="top" align="center" class="T_gray13">&nbsp;<img src="../images/bgreen.gif" width="8" height="8"></td>
																			<td class="T_gray13">ราคาแพงกว่า 2 ชนิดแรกมาก</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>การบำรุงรักษาหัวพ่นไฟให้เกิดการประหยัด</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นสิ่งที่จำเป็นเพราะการบำรุงรักษาอุปกรณ์เครื่องพ่นไฟ 
																	ถ้าได้รับการดูแลรักษา และตรวจตามระยะเวลาอย่างสม่ำเสมอแล้ว 
																	จะช่วยลดค่าใช้จ่ายสำหรับเชื้อเพลิง และงานซ่อมบำรุงรักษาลงได้มาก</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>เราสามารถแบ่งการบำรุงรักษาเครื่องพ่นไฟได้ตามชนิดงานเป็น 3 
																			ชนิดคือ</u></strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="20" align="center" class="T_gray13">1.</td>
																			<td class="T_gray13">งานทำความสะอาด (Cleaning)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">2.</td>
																			<td class="T_gray13">งานตรวจเช็คสภาพและทดสอบการทำงาน (Condition Check and Function 
																				Test)</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="center">3.</td>
																			<td class="T_gray13">งานตรวจวัดและปรับแต่ง (Measuring and adjusting)</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><span class="T_blue13"><strong>1. งานทำความสะอาด (Cleaning)</strong></span></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="1">
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="25" align="center"><img src="../images/airrow.jpg" width="6" height="8"></td>
																			<td class="T_gray13">ควรทำทุก ๆ สัปดาห์ สำหรับกรณีสภาพแวดล้อมปกติ
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td align="center"><img src="../images/airrow.jpg" width="6" height="8"></td>
																			<td class="T_gray13">ควรทำ 2 – 3 ครั้ง/สัปดาห์ กรณีสภาพแวดล้อมมีฝุ่นละอองมาก
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25" align="center"><img src="../images/airrow.jpg" width="6" height="8"></td>
																			<td class="T_gray13">ควรทำทุกวัน กรณีสภาพแวดล้อมมีฝุ่นละอองมาก 
																				และมีส่วนผสมจากละอองเคมี หรือไอกรด</td>
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
																<td class="T_blue13"><strong>2. งานตรวจเช็คและทดสอบการทำงาน (Condition Check and 
																		Function Test)</strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;งานตรวจเช็ค 
																	จะรวมถึงการจดบันทึกค่าต่าง ๆ ที่อ่านได้จากอุปกรณ์, เกจย์วัดค่าต่าง ๆ , มิเตอร์ 
																	และลงในใบบันทึกผลประจำวัน
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;งานตรวจเช็คที่ทำได้ทุก 
																	1 เดือน
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;จากตาราง 
																	เป็นข้อมูลการตรวจเช็คและทดสอบการทำงาน รวมทั้งการทำความสะอาดและหล่อลื่นใน Burner 
																	ชนิดแก๊ส และน้ำมัน ( ดูตารางที่ 1 , 2 )</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_blue14"><img src="../images/b9.GIF" width="11" height="11">&nbsp;&nbsp;<strong>GAS 
																		BURNER MAINTENANCE</strong>																</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="501" border="1" cellspacing="0" cellpadding="0" align="center" class="T_gray13">
																		<tr bordercolor="#FFFFFF">
																			<td height="25" colspan="2" class="T_white12" bgcolor="#0080BD"><div align="center"><strong>Work 
																						list per month</strong></div>
																		  </td>
																		</tr>
																		<tr class="T_black11" bgcolor="#0080BD">
																			<td width="82" bordercolor="#FFFFFF" bgcolor="#99CCFF"><div align="center">No.</div>
																		  </td>
																			<td width="416" bordercolor="#FFFFFF" bgcolor="#99CCFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">1.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean Ignition Electrode
																			</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">2.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean inside control panel</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">3.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean blower slot</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">4.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean regulating sleeve of control segment
																			</td>
																		</tr>
																		<tr>
																			<td width="82" bordercolor="#0099CC"><div align="center">5.</div>
																			</td>
																			<td width="416" bordercolor="#0099CC">Clean gas filter</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82">&nbsp;</td>
																			<td width="416">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF" bgcolor="#0080BD">
																			<td width="82" bgcolor="#99CCFF"><div align="center">No.</div>
																		  </td>
																			<td width="416" bgcolor="#99CCFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">1.</div>
																			</td>
																			<td width="416">Function test for gas pressure switch</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">2.</div>
																			</td>
																			<td width="416">Function test for flame detector</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">3.</div>
																			</td>
																			<td width="416">Function test of air pressure switch</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">4.</div>
																			</td>
																			<td width="416">Function test for Burner control</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">5.</div>
																			</td>
																			<td width="416">Condition check of terminal and Elec. Connection</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">6.</div>
																			</td>
																			<td width="416">Condition check for servo motor</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">7.</div>
																			</td>
																			<td width="416">Condition check for pressure regulator</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">8.</div>
																			</td>
																			<td width="416">Condition check for gas butterfly valve</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">9.</div>
																			</td>
																			<td width="416">Function test for valve proving</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">10.</div>
																			</td>
																			<td width="416">Soundness test phase 1,3
																			</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">11.</div>
																			</td>
																			<td width="416">Soundness test phase 2 (double solenoid valve)
																			</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82">&nbsp;</td>
																			<td width="416">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF" bgcolor="#0080BD">
																			<td width="82" bgcolor="#99CCFF"><div align="center">No.</div>
																		  </td>
																			<td width="416" bgcolor="#99CCFF"><div align="center">Measuring and adjusting ( if necessary ) list
																				</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">1.</div>
																			</td>
																			<td width="416">Measuring flue gas temperature</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">2.</div>
																			</td>
																			<td width="416">Measuring of flue gas with carbon monoxide</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">3.</div>
																			</td>
																			<td width="416">Report conclusion of combustion efficiency</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">4.</div>
																			</td>
																			<td width="416">Excess air measuring</td>
																		</tr>
																		<tr bordercolor="#0099CC">
																			<td width="82"><div align="center">5.</div>
																			</td>
																			<td width="416">Measuring flue gas CO<sub>2</sub> for natural gas</td>
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
																<td class="T_blue14"><img src="../images/b9.GIF" width="11" height="11">&nbsp;&nbsp;<strong>OIL 
																BURNER MAINTENANCE</strong></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="501" border="1" cellspacing="0" cellpadding="0" align="center" class="T_gray13">
																		<tr bordercolor="#FFFFFF">
																			<td colspan="2" class="T_black11" bgcolor="#B7DBFF" height="25"><div align="center"><strong>Work 
																						list per month </strong>
																				</div>
																		  </td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF">
																			<td width="82" bgcolor="#D5EAFF"><div align="center">No.</div>
																		  </td>
																			<td width="419" bgcolor="#D5EAFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">1.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean oil filter</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">2.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean nozzle head</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">3.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean Ignition electrode</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">4.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean inside control panel</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">5.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean blower fan slot</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">6.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean regulating sleeve of control segment</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">7.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean flame sightless</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">8.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Clean burner body																			</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF">&nbsp;</td>
																			<td width="419" bordercolor="#99CCFF">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF">
																			<td width="82" bgcolor="#D5EAFF"><div align="center">No.</div>
																		  </td>
																			<td width="419" bgcolor="#D5EAFF"><div align="center">Cleaning list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">1.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Function test for preheater thermostat</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">2.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">
																				Function test for flame detector</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">3.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Function test for heating catridge and NTC. 
																				Sensor</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">4.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Condition check for oil leakage of Oil 
																				regulating</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">5.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Function test for burner control</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">6.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Condition check of terminal and Elec. 
																				Connection</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">7.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Condition check for servo motor</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF">&nbsp;</td>
																			<td width="419" bordercolor="#99CCFF">&nbsp;</td>
																		</tr>
																		<tr class="T_black11" bordercolor="#FFFFFF">
																			<td width="82" bgcolor="#D5EAFF"><div align="center">No.</div>
																		  </td>
																			<td width="419" bgcolor="#D5EAFF"><div align="center">Measuring and adjusting ( if 
																					necessary ) list</div>
																		  </td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">1.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Measuring flue gas CO<sub>2</sub> for heavy 
																				oil</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">2.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Measuring flue gas temperature</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">3.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Measuring of flue gas with carbon monoxide</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">4.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Report conclusion of combustion efficiency</td>
																		</tr>
																		<tr bordercolor="#339999">
																			<td width="82" bordercolor="#99CCFF"><div align="center">5.</div>
																		  </td>
																			<td width="419" bordercolor="#99CCFF">Excess air measuring</td>
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
																<td class="T_green13"><strong><u>งานบำรุงรักษาผิวสัมผัสในเครื่องทำความร้อน (Heating 
																			Appliance)</u></strong></td>
															</tr>
															<tr>
																<td height="15"></td>
															</tr>
															<tr>
																<td class="T_gray13"><strong>เครื่องทำความร้อนในบ้านเราแบ่งได้เป็น 3 ชนิดใหญ่ ๆ ดังนี้</strong></td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>1. Steam Boiler แบ่งเป็น 2 ชนิด คือ 
																		แบบท่อไฟและแบบท่อน้ำ</strong></td>
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
																			<td></td>
																			<td width="516" class="T_green13"><strong>&#8226;&nbsp;<u>แบบท่อไฟ</u></strong></td>
																		</tr>
																		<tr>
																			<td></td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td width="15"></td>
																			<td class="T_gray13"><strong><u>การบำรุงรักษา ควรหมั่นตรวจผิวสัมผัส 2 ส่วน คือ</u></strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td></td>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/airrow.jpg" width="6" height="8">&nbsp;&nbsp;ผิวสัมผัสไฟ&nbsp;&nbsp;ควรหมั่นทำความสะอาดท่อไฟด้วยแปรงแยงท่อ 
																				โดยหมั่นดู เขม่าตรวจการรั่วของปะเก็นทนไฟในกรณีที่ทำได้ ควรทำทุก 3 เดือน 
																				หรืออย่างน้อยปีละ 2 ครั้ง
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="15"></td>
																			<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/airrow.jpg" width="6" height="8">&nbsp;&nbsp;ผิวสัมผัสน้ำ&nbsp;&nbsp;ควรหมั่นปล่อยตะกอนก้นเตาออกทิ้งเพื่อลดความเข้มข้นของสารละลายในน้ำ 
																				และตรวจสอบคุณภาพของน้ำป้อนหม้อไอน้ำให้อยู่ในคุณภาพที่ได้มาตรฐาน</td>
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
																<td class="T_green13">&nbsp;&nbsp;&nbsp;&nbsp;<strong><u>ตารางที่ 3</u></strong>&nbsp;&nbsp;แสดงคุณภาพน้ำมาตรฐานในหม้อไอน้ำ</td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="500" border="0" cellspacing="1" cellpadding="0" align="center" class="T_black11">
																		<tr>
																			<td rowspan="2" width="223" bgcolor="#99CCFF"><div align="center">ค่าน้ำ<br>
																					(Parameter)<br>
																				</div>
																		  </td>
																			<td height="21" colspan="3" bgcolor="#99CCFF"><div align="center">แรงดันใช้งานหม้อน้ำ</div>
																		  </td>
																		</tr>
																		<tr>
																			<td width="121" height="20" bgcolor="#CCE6FF"><div align="center">มากกว่า 1 bar
																				</div>
																		  </td>
																			<td width="126" height="20" bgcolor="#CCE6FF"><div align="center">1.5 - 22 bar</div>
																		  </td>
																			<td width="121" height="20" bgcolor="#CCE6FF"><div align="center">2.4 - 44 bar</div>
																		  </td>
																		</tr>
																		<tr bgcolor="#B692DA">
																			<td width="223" bgcolor="#D5F7FF">&nbsp;&nbsp;Conductivity at 25
																				<br>
																				&nbsp;&nbsp;degreeไมโครซีเมนต์ / ตร.ซม.
																				<br>
																		  </td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;=5000</div>
																		  </td>
																			<td width="126" bgcolor="#D5F7FF"><div align="center">&lt;=5000</div>
																		  </td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;=5000</div>
																		  </td>
																		</tr>
																		<tr bgcolor="#D8C7EB">
																			<td width="223" bgcolor="#F2FDFF">&nbsp;&nbsp;pH at 25 degree</td>
																			<td width="121" bgcolor="#F2FDFF"><div align="center">11.0 - 12.0
																				</div>
																		  </td>
																			<td width="126" bgcolor="#F2FDFF"><div align="center">11.0 - 12.0</div>
																		  </td>
																			<td width="121" bgcolor="#F2FDFF"><div align="center">10.7-11.7</div>
																		  </td>
																		</tr>
																		<tr bgcolor="#B692DA">
																			<td width="223" bgcolor="#D5F7FF">&nbsp;&nbsp;Density</td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;0.25</div>
																		  </td>
																			<td width="126" bgcolor="#D5F7FF"><div align="center">&lt;0.30</div>
																		  </td>
																			<td width="121" bgcolor="#D5F7FF"><div align="center">&lt;0.25</div>
																		  </td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ควรหมั่นตรวจผิวสัมผัสน้ำ 
																	โดยการเช็คตะกรัน โดยดูที่ความหนา, ชนิดของตะกรัน 
																	แล้วนำผลการวิเคราะห์เพื่อล้างตะกรันออก 
																	เพื่อให้การถ่ายเทความร้อนเป็นไปอย่างมีประสิทธิภาพหมั่นดูอุณหภูมิปล่อง 
																	ถ้าสูงขึ้นเป็นสิ่งแสดงผลอย่างหนึ่งว่า การถ่ายเทความร้อนไม่ดี</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><strong>2. Hot Oil Boiler</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">ภายในจะเป็นลักษณะคอยด์ขดม้วนเป็นวง 
																	และมีช่องว่างให้ไฟวิ่งผ่านโดยส่วนมากจะเป็น 2 – 3 กลับ</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_green13"><strong><u>การบำรุงรักษาผิวสัมผัสไฟ</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="right" class="T_gray13"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td width="10" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ควรหมั่นทำความสะอาดด้วยแปรง เช่นเดียวกับหม้อไอน้ำทุก ๆ 3 เดือน</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ตรวจสอบการรั่วของปะเก็นหน้าและหลัง เพื่อป้องกันความร้อนสูญเสีย</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">หมั่นตรวจอุณหภูมิปล่อง เช่นเดียวกับหม้อไอน้ำ</td>
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
																<td height="20" class="T_blue13"><strong>3.Hot Gas (Direct Fire) Type</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13">เครื่องทำความร้อนชนิดนี้ จะใช้แก๊สพ่นตรงไปสู่ผลิตผล เช่น Spray 
																	dryer, โซโล, เครื่องอบ</td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_green13"><strong>การบำรุงรักษา</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
															</tr>
															<tr>
																<td class="T_gray13"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="right" class="T_gray13"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td width="10" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">หมั่นตรวจสีของควันที่ปล่อง ถ้ามีควันขาวหรือดำ 
																				อาจเป็นผลมาจากการเผาไหม้ของหัวพ่นไฟไม่สมบูรณ์
																			</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b4.gif" width="7" height="7"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">หมั่นตรวจเช็คอุณหภูมิปล่องทิ้ง 
																				เพื่อป้องกันอุณหภูมิสูงจากการถ่ายเทความร้อนไม่ได้ เช่นเดียวกัน</td>
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
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;Boiler</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td height="20" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong>ข้อดีของการใช้ก๊าซธรรมชาติใน 
																		Boiler</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25" valign="baseline"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">การเผาไหม้ NG ให้การเผาไหม้ดีมาก ไม่มี Unburned Carbon มี CO. 
																				SOx, NOx ปริมาณต่ำมาก การผุกร่อน High-Low Temperature Corrosion 
																				ไม่มีเนื่องจากไม่มี SO<sub>3</sub> และ V<sub>2</sub> O<sub>5 </sub>จึงลดการใช้ 
																				Chemical เข้าไปช่วยลดค่าใช้จ่ายทั้งค่า Operating Cost และ Maintenance Cost</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="baseline"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">ขี้เถ้า ปริมาณขี้เถ้าไม่มี เนื่องจากไม่มี Si-Ca, AL, P, และ 
																				Na. เหมือนกับน้ำมันเตา ทำให้ไม่ต้องติดอุปกรณ์ล้าง Heating Surface (Soot Blower) 
																				และอุปกรณ์เก็บขี้เถ้า</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">หม้อน้ำขนาดลดลง เนื่องจาก ข้อ 1 และ ข้อ 3</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td valign="baseline"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">ไม่มี Pump เนื่องจาก NG มี Pressure ในตัว เพียงแต่มี Regulator 
																				ลดความไหม้ (0.2-0.6) ดันจนถึงหัวBurner เพื่อให้เหมาะสมกับการผสม Air ในการเผา</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">BURNER ให้เหมาะสมกับการผสม Air ในการเผา</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">ลดพลังงานเพื่ออุ่นน้ำมัน เดิน Pump (ค่าไฟฟ้า)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">ลด Flue Gas Outlet temp ลงจาก 145-105&deg;C ทำให้ลด Heat Loss 
																				(เพิ่มประสิทธิภาพ)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b3.gif" width="11" height="11"></div>
																			</td>
																			<td class="T_gray13">ไม่ต้องมีถังเก็บกับน้ำมัน</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong>การเปลี่ยนแปลงจากเตาที่ใช้น้ำมันเตาเป็นเชื้อเพลิงมาใช้ก๊าซธรรมชาติแทน 
																		จะต้องมีอุปกรณ์ดังนี้</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">หัว Burner พร้อมระบบ Control 
																				ทั้งชุดที่ให้ความร้อนเท่าต้องทำการ OVER HAUL ภายในเตาก่อนใช้ NG</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">Pipe line พร้อม Metering Gas เข้าชุด Burner</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">ปรับปรุงอาคารบริเวณหม้อน้ำให้มีอากาศถ่ายเท</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/bgreen.gif" width="8" height="8"></div>
																			</td>
																			<td class="T_gray13">ต้องทำการ over haul ภายในเตาอบก่อนใช้ NG</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td height="20" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong>การเปลี่ยนแปลงจากเตาที่ใช้น้ำมันเตาเป็นเชื้อเพลิงมาใช้ก๊าซธรรมชาติแทน 
																		จะต้องมีอุปกรณ์ดังนี้</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0086DF"></td>
															</tr>
															<tr>
																<td>&nbsp;</td>
															</tr>
															<tr>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">มี FO Tank, FO Pump</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">มี FO Heater เป็นไฟฟ้าและไอน้ำ หรือไฟฟ้าอย่างเดียว</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">ใช้ Aditive ช่วย Combustion และ Anti-Corosion
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">มีการหยุดเพื่อทำความสะอาด Fire Tube บ่อย (ทุก 7 วัน)</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">ใช้พื้นที่บริเวณ Boiler มากกว่า</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">มีความสกปรกถ้าเกิดเขม่า ขี้เถ้า และน้ำมันรั่ว
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">มีผลกระทบต่อสิ่งแวดล้อมบริเวณใกล้เคียง จากควันออกปล่องในรูปของ 
																				Fly Ash และ SO2 - SO3</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="25" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>ถ้าใช้ NG เป็นเชื้อเพลิงข้อความดังกล่าวข้างต้นทั้ง 7 ข้อ 
																					จะไม่มี</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td class="T_gray13"></td>
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
													<td><span class="T_blue13">
															<% case 3: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;การเปลี่ยนมาใช้เชื้อเพลิงก๊าซธรรมชาติ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td></td>
																<td width="549" class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong><u>Simple 
																			Conversion</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">หลักการทั่วไป</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">การ Conversion จาก น้ำมันเป็น Natural Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">การ Conversion จาก LPG เป็น Natural Gas</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong><u>หลักการทั่วไป</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">เนื่องจากเชื้อเพลิงแต่ละชนิดให้ค่าความร้อนที่ต่างกัน ดังนั้น</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">ปริมาณความร้อนก่อน และหลังการ Conversion มาเป็น Natural Gas 
																				จะต้องเท่าเดิม ไม่ว่าเดิม</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">จะเป็นเชื้อเพลิงชนิดใด</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">ต้องคำนึงถึง Fluid handling capability ของ Burner เดิม และระบบ 
																				control ต่างๆ value รวมถึง
																			</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">ขนาดของท่อก๊าซเดิม ว่าเพียงพอหรือไม่</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/airrow.jpg" width="6" height="8"></div>
																			</td>
																			<td class="T_gray13">Stability ของ Burner</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><span class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8"></span>&nbsp;&nbsp;<strong><u>Equal 
																			Heat Input Rate</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr class="T_green13">
																			<td width="35" align="center"><strong>1.</strong></td>
																			<td><strong>กรณี Burner เดิม เป็น Heavy/Light Oil Burner</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;เปลี่ยน 
																				Oil burner เป็น Gas Burner โดย Sizing ให้มี heat capacity เท่าเดิม 
																				และติดตั้งชุด Gas train เพื่อควบคุม<br>
																				แรงดันก๊าซที่จ่ายให้หัว Burner
																			</td>
																		</tr>
																		<tr>
																			<td height="20"></td>
																			<td height="20"></td>
																		</tr>
																		<tr class="T_green13">
																			<td align="center"><strong>2.</strong></td>
																			<td><strong>กรณี Burner เดิมเป็น LPG Burner</strong></td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;ปรับ 
																				LPG Burner นั้นให้ได้ Heat capacity เท่าเดิม
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- &nbsp;&nbsp;เพิ่มแรงดันก๊าซ เพื่อให้ได้ heat 
																				rate เท่าเดิม
																				<br>
																				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- &nbsp;&nbsp;เปลี่ยน nozzle ของ LPG Burner 
																				ให้ใหญ่ขึ้น</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>การทำ 
																			Conversion สำหรับ Boiler</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>การ Conversion Steam Boiler 
																		มีลำดับขั้นตอนดังนี้</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="25"><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">ถอดหัว Oil Burner เก่าออก</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">ติดตั้ง Gas Burner ตัวใหม่เข้าไปแทนที่</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">ติดตั้งชุด Gas Train</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">เปลี่ยนแปลง program burner control</td>
																		</tr>
																		<tr>
																			<td height="7"></td>
																			<td height="7"></td>
																		</tr>
																		<tr>
																			<td><div align="center"><img src="../images/b_red.gif" width="15" height="15"></div>
																			</td>
																			<td class="T_gray13">Rewiring</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Atmosferic 
																			burners</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/Atmosferic burners.gif" width="454" height="188"></td>
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
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="25" align="right" valign="baseline" class="T_gray13"><img src="../images/b3.gif" width="11" height="11"></td>
																			<td width="10" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ก๊าซเมื่อผ่าน nozzle จะมีความเร็วสูงขึ้น บริเวณคอคอดของ 
																				Venturi อากาศรอบข้างจะถูกดูดเข้าไป เพื่อใช้ในการเผาไหม้</td>
																		</tr>
																		<tr>
																			<td class="T_gray13" align="right"><img src="../images/b3.gif" width="11" height="11"></td>
																			<td class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">ถ้าอัตราการ flow ของก๊าซมากขึ้น combustion air 
																				ก็จะถูกดูดเข้าไปมากขึ้นเป็น</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			atmosferic burners</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td><img src="../images/information/suit1.gif" width="185" height="38"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="24" align="right" valign="baseline" class="T_gray13">&nbsp;</td>
																			<td width="22" class="T_green13"><strong>E</strong><br>
																				<strong>D</strong><br>
																				<strong>p</strong><br>
																				<strong>W</strong></td>
																			<td width="503" class="T_gray13">= energy flow through a nozzle
																				<br>
																				= diameter nozzle
																				<br>
																				= pressure
																				<br>
																				= Wobbe Index</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			from LPG to NG</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td><img src="../images/information/suit2.gif" width="240" height="46"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="26"></td>
																			<td width="523" class="T_gray13">ถ้าต้องการให้ ความดัน
																				<span class="T_blue13">
																					<strong>(P)</strong></span>
																				คงที่
																				<br>
																				<strong>ดังนั้น</strong> จะต้องเปลี่ยน
																				<span class="T_blue13">Nozzle diameter</span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td align="center"><img src="../images/information/suit3.gif" width="127" height="46"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="26"></td>
																			<td width="523" class="T_gray13">ถ้าต้องการให้ขนาด
																				<span class="T_blue13">nozzle <strong>(D)</strong></span>
																				เท่าเดิม
																				<br>
																				<strong>ดังนั้น</strong> จะต้องต้องเพิ่มแรงดันก๊าซ
																				<span class="T_blue13">
																					<strong>(p)</strong></span></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td align="center"><table border="1" cellpadding="0" cellspacing="0" bordercolor="#99CC00">
																		<tr>
																			<td align="center"><img src="../images/information/suit4.gif" width="127" height="46"></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Fluid 
																			handling capability</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<th scope="row">&nbsp;
																	</th>
																<td class="T_green13"><strong>กรณี Conversion จาก LPG เป็น NG 
																		หากจำเป็นควรพิจารณาสิ่งเหล่านี้</strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;เปลี่ยนขนาดของท่อ 
																				และ วาล์ว</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;เปลี่ยนระบบ 
																				Control
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;เปลี่ยน 
																				Burner หรือ Nozzle</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Gas 
																			train</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Gas train composition :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Ball 
																				value																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Gas 
																				filter</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Gas 
																				pressure regulator</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Safety 
																				blow off value
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Pressure 
																				switch</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Solenoid 
																				value</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;Value 
																				proving system</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Burner 
																			stability</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_gray13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เปลวไฟที่ออกจาก
																	<span class="T_green13">burner</span>
																	จะ <strong class="T_blue13">stable</strong> เมื่อ
																	<span class="T_green13">flame front</span>
																	คงที่ หยุดนิ่งไม่เคลื่อนไหว เนื่องจากเปลวไฟเคลื่อนที่มายัง
																	<span class="T_green13">burner</span>
																	ด้วยความเร็วเท่ากับความเร็วของ
																	<span class="T_blue13">fuel-air mixture</span>
																	ที่ปล่อยออกจาก burner</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;ถ้า 
																				fuel-air mixture ที่ปล่อยออกจาก burner มีความเร็วสูงเกิน ดังนั้น flame จะ blow 
																				off และดับ
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;ถ้า 
																				fuel-air mixture ที่ปล่อยออกจาก burner มีความเร็วต่ำเกิน ดังนั้น เปลวจะ 
																				flashback กลับมาที่ burner</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			of ovens</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Conversion of ovens :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;สำหรับ 
																				Oven ที่ติดตั้ง forced draught oil-burner, การ Conversion สามารถทำโดยเปลี่ยน 
																				oil burner เดิมมาเป็น forced draught gas burner
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/bull_org.gif" width="15" height="10">&nbsp;&nbsp;สำหรับ 
																				Oven ที่เป็น LPG-burner เดิม, การ Conversion เป็น NG สามารถทำโดยง่ายโดยเปลี่ยน 
																				injector หรือ Burner pressure หาก gas equipment 
																				เดิมรวมถึงท่อก๊าซมีขนาดใหญ่เพียงพอ</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Direct 
																			and indirect drying systems</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Direct system : </strong>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;ข้อดีของ 
																				NG คือเป็นเชื้อเพลิงที่สะอาด ทำให้สามารถ direct fire ได้
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b2.gif" width="8" height="15">&nbsp;&nbsp;ทำให้ลดปริมาณ 
																				fuel consumption ลงได้ประมาณ 30 ถึง 40 % เทียบกับ indirect system</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>เนื่องจาก :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;efficiency 
																				increase</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;no start-up and shut-down losses</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;lower 
																				investments in many cases</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;elimination 
																				of distribution losses</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b3.gif" width="11" height="11">&nbsp;&nbsp;less 
																				maintenance costs</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Conversion 
																			of an indirect drying system</u></strong></td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td><table border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td width="8" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c1.jpg" width="8" height="8"></td>
																			<td background="../images/f_pic_c2.jpg"></td>
																			<td width="10" align="right" background="img/f_pic_c2.jpg"><img src="../images/f_pic_c3.jpg" width="10" height="8"></td>
																		</tr>
																		<tr>
																			<td background="../images/f_pic_c4.jpg">&nbsp;</td>
																			<td align="center" valign="top" bgcolor="#FFFFFF"><table width="300" border="0" align="center" cellpadding="0" cellspacing="0" class="text_gray13">
																					<tr>
																						<td align="center"><img src="../images/information/indirect drying .gif" width="502" height="323"></td>
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
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_blue13"><img src="../images/bullet1.jpg" width="8" height="8">&nbsp;&nbsp;<strong><u>Radiant 
																			heating for drying</u></strong></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Specific drying processes :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td height="10"></td>
																<td height="10"></td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;paper, 
																				card board industries</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;textile 
																				and carpet industries
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;special 
																				paint drying systems</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<th width="15" scope="row">&nbsp;
																				</th>
																			<td class="T_green13"><strong>Other processes :</strong></td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35">&nbsp;</td>
																			<td width="496" class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;polymerization</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;melting
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13"><img src="../images/b_red.gif" width="15" height="15">&nbsp;&nbsp;food 
																				processing</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td></td>
																<td class="T_pink14">&nbsp;</td>
															</tr>
															<tr>
																<td width="5"></td>
																<td class="T_gray13"></td>
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
													<td><span class="T_blue13">
															<% case 4: %>
														</span></td>
												</tr>
												<tr>
													<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;ข้อมูลที่ต้องทราบก่อนเปลี่ยนมาใช้ก๊าซธรรมชาติ</td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td><table width="99%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td></td>
																<td width="549" class="T_pink14"><table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="35" class="T_green13" align="center"><strong>1.</strong></td>
																			<td class="T_green13"><strong>Utility &nbsp;ได้แก่ Boiler , Hotoil , Gas 
																					Turbine</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13"><strong>ข้อมูลที่ต้องการจากการสำรวจ</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1.1. กำลัง ? หัว Burner ที่ KW , Btu/hr. , Kcal / hr. ?</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1.2. การใช้เชื้อเพลิง ? กรณี LPG แรงดันเท่าไร</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1.3. ถ้ามี Gastrain ต้องรู้ขนาด = ? ยี่ห้อ ? โดย 1.1-1.3 ต้องจด 
																				Nameplate เพื่อติดต่อ Supplier</td>
																		</tr>
																		<tr>
																			<td height="20"></td>
																			<td height="20"></td>
																		</tr>
																		<tr>
																			<td class="T_green13" align="center" valign="baseline"><strong>2.</strong></td>
																			<td class="T_green13"><strong>เครื่องจักรในขบวนการผลิต ได้แก่ เครื่องอบแห้ง , Spray 
																					Dryer , Hot Air ที่ใช้กับทุกขบวนการผลิต ฯลฯ</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">2.1. ถ้าเป็น Burner สำเร็จรูปก็ทำเช่นเดียวกันกับข้อ 1.1-1.3</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">2.2. ถ้าเป็น แบบแยกส่วนต้องขยายสัดส่วนที่เหมาะสม</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13">- ลมที่ใช้ CFM = ?
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13">
																				- เชื้อเพลิงที่ใช้ = ?</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</td>
															</tr>
															<tr>
																<td width="5"></td>
																<td class="T_gray13"></td>
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
													<td><span class="T_blue13">
															<% case 5: %>
														</span></td>
												</tr>
												<tr>
													<td><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td bgcolor="#DEEFFF" class="T_blue14">&nbsp;&nbsp;&nbsp;ตัวอย่างการคำนวณ</td>
															</tr>
															<tr>
																<th scope="row">&nbsp;
																	</th>
															</tr>
															<tr>
																<th scope="row">
																	<table width="100%" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td width="20"></td>
																			<td width="540" class="T_green13"><strong>Boiler 3 T/hr. ต้องการหาพลังงานกี่ KW , 
																					และหาปริมาณการใช้ก๊าซ</strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_blue13"><strong><u>วิธีทำ</u></strong></td>
																		</tr>
																		<tr>
																			<td height="10"></td>
																			<td height="10"></td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">1 Ton ( 1,000 kg ) Stream/hr. = 750 KWเพราะฉะนั้น 3 T/hr. = 
																				750x 3 = 2,250 KW
																			</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">ประสิทธิภาพของ Boiler 
																				ให้หาจากการวัดประสิทธิภาพการเผาไหม้ที่ปล่อง = 85 %</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">เพราะฉะนั้น Sizing Load = 2,650 KW</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">ปริมาณ NG ที่ใช้ = 2,650KW/8.83 KWHr/m3 = 300 m3/hr.</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">จากนั้นให้ Supplier จัดการ Burner ให้ใช้ NG 300 m3/hr. 
																				และทำให้เหมาะกับ Boiler</td>
																		</tr>
																		<tr>
																			<td>&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																	</table>
																</th>
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
