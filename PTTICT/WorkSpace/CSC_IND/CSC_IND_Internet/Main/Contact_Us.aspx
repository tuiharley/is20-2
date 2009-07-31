<%@ Page CodeBehind="Contact_Us.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Contact_Us" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<script language="javascript">
				function SendItem() {
					var ErrMsg;
					ErrMsg="";
					if (document.forms(0).elements("txtSubject").value =='') ErrMsg+="* หัวข้อ \n";
					if (document.forms(0).elements("txtDetail").value =='') ErrMsg+="* หัวข้อ \n";
					if (document.forms(0).elements("txtName").value =='') ErrMsg+="* ชื่อ-สกุล \n";
					if (document.forms(0).elements("txtMail").value =='') ErrMsg+="* E-Mail \n";					
					if (ErrMsg != "" ) {
						alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {
						document.forms(0).elements("ServerAction").value = "SEND";
						document.forms(0).submit();    
					}
				}
				function CancelItem() {
					document.forms(0).elements("ServerAction").value = "CANCEL";
					document.forms(0).submit();
				}
			</script>
	</HEAD>
	<body>
		<form id="frmContact" method="post" runat="server">
			<input id="ServerAction" type="hidden" name="ServerAction">
			<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td><!--#include file="../Includes/header.aspx" --></td>
							</tr>
							<TR>
								<td height="140" background="../images/menu/banner3.jpg">&nbsp;</td>
							</TR>
							<tr>
								<td><!--#include file="../Includes/menu.aspx" --></td>
							</tr>
							<tr>
								<td height="2"></td>
							</tr>
							<tr>
								<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td valign="top">&nbsp;</td>
										</tr>
										<tr>
											<td valign="top"><table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tr>
														<td><img src="../images/title_cont.jpg" width="539" height="38"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																<tr>
																	<td class="T_blue13"><strong><u>ส่วนบริการลูกค้าก๊าซฯ</u></strong></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">ชั้น 17 บริษัท ปตท. จำกัด (มหาชน)
																		<br>
																		555 ถนนวิภาวดีรังสิต เขตจตุจักร กรุงเทพฯ 10900
																		<br>
																		โทรศัพท์ : 0-2537-3235-9
																		<br>
																		โทรสาร : 0-2537-3257-8
																		<br><% if Session("USER_NAME") & "" <> "" then %>
																		หรือสามารถติดต่อผ่าน E-mail : ที่ <a href="mailto:cscng@pttplc.com">cscng@pttplc.com</a><% end if %></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">
																		<table width="98%" border="0" cellspacing="0" cellpadding="0">
																			<tr>
																				<td colspan="2" class="T_blue13"><strong><u>ส่วนปฏิบัติการระบบท่อ</u></strong></td>
																			</tr>
																			<tr>
																				<td colspan="2">&nbsp;</td>
																			</tr>
																			<tr>
																				<td width="50%">
																					<table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>ส่วนปฏิบัติการระบบท่อเขต 1</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13">59 ม. 8 ถ. บายพาส ต. นาป่า อ. เมือง จ.ชลบุรี 20000</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรศัพท์&nbsp;:&nbsp;0-2537-2000 ต่อ 5000, 0-3827-4390-5</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรสาร&nbsp;:&nbsp;0-2537-2000 ต่อ 5014, 0-3827-4398, 
																								0-3827-6390</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																					</table>
																				</td>
																				<td width="50%" class="T_gray13">
																					<table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>ส่วนปฏิบัติการระบบท่อเขต 3</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13">555 ถ. สุขุมวิท ต. มาบตาพุด อ. เมือง จ.ระยอง 21150</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรศัพท์&nbsp;:&nbsp;0-3868-5016</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรสาร&nbsp;:&nbsp;0-3868-5009</td>
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
																				<td>
																					<table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>ส่วนปฏิบัติการระบบท่อเขต 2</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13">71 ม.2 ถ.พหลโยธิน ต.สนับทึบ อ.วังน้อย จ.พระนครศรีอยุธยา 13170
																							</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรศัพท์&nbsp;:&nbsp;0-2537-2000 ต่อ 5802, 0-2537-3273</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรสาร&nbsp;:&nbsp;0-3572-3022-32</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">&nbsp;</td>
																						</tr>
																					</table>
																				</td>
																				<td class="T_gray13"><table width="98%" border="0" cellspacing="0" cellpadding="0">
																						<tr>
																							<td class="T_gray13"><u>ส่วนปฏิบัติการระบบท่อเขต 5</u></td>
																						</tr>
																						<tr>
																							<td class="T_gray13" height="16">111 ม. 7 ถ. เพชรเกษม ต. สามเรือน อ. เมือง จ.ราชบุรี 70000
																							</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรศัพท์&nbsp;:&nbsp;0-2637-2000 ต่อ 5900, 0-3231-7371-9</td>
																						</tr>
																						<tr>
																							<td class="T_gray13">โทรสาร&nbsp;:&nbsp;0-3231-7385</td>
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
																		</table>
																	</td>
																</tr>
																<tr>
																	<td class="T_gray13"><span class="T_green13"><strong><u>กรณีเกิดเหตุสภาวะฉุกเฉิน 
																					สามารถติดต่อตลอด 24 ชั่วโมง ได้ที่ </u></strong>
																		</span></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13"><u>ศูนย์ควบคุมระบบท่อส่งก๊าซ (Gas Control) จังหวัดชลบุรี</u>
																		<br>
																		โทรศัพท์ : 0-3827-4397, 0-3827-4399, 0-1210-2852
																		<br>
																		โทรสาร : 0-3827-4398</td>
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
														<td height="3" background="../images/information/l2.jpg"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<% if Session("USER_NAME") & "" <> "" then %>
													<tr>
														<td bgcolor="#f9fcff"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="1">
																<form name="form2" method="post" action="">
																	<TBODY>
																		<tr>
																			<td height="20" colspan="2" class="T_green13"><u><strong>ติดต่อ</strong></u></td>
																		</tr>
																		<tr>
																			<td height="20" colspan="2" valign="top" class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="20" align="right" valign="top" class="T_gray13">หัวข้อ&nbsp;:&nbsp;</td>
																			<td valign="top" class="T_gray13">
																				<asp:TextBox id="txtSubject" runat="server" Width="400px"></asp:TextBox></td>
																		</tr>
																		<tr>
																			<td width="120" height="20" align="right" valign="top" class="T_gray13">ข้อความ&nbsp;:&nbsp;</td>
																			<td valign="top" class="T_gray13">
																				<asp:TextBox id="txtDetail" runat="server" Width="400px" TextMode="MultiLine" Rows="4"></asp:TextBox>
																			</td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">ชื่อ-สกุล&nbsp;:&nbsp;</td>
																			<td class="T_gray13"><FONT face="Tahoma">
																					<asp:TextBox id="txtName" runat="server" Width="300px"></asp:TextBox></FONT></td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">E-Mail&nbsp;:&nbsp;</td>
																			<td class="T_gray13"><FONT face="Tahoma">
																					<asp:TextBox id="txtMail" runat="server" Width="300px"></asp:TextBox></FONT></td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">เบอร์โทรศัพท์&nbsp;:&nbsp;</td>
																			<td class="T_gray13">
																				<asp:TextBox id="txtTel" runat="server" Width="200px"></asp:TextBox></td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13">&nbsp;</td>
																		</tr>
																		<tr>
																			<td height="20" align="right" class="T_gray13">&nbsp;</td>
																			<td class="T_gray13"><A onclick="JavaScript:SendItem();" href="#"><IMG src="../Images/Button/send.jpg" border="0"></A>&nbsp;&nbsp;<A onclick="JavaScript:CancelItem();" href="#"><IMG src="../images/Button/btn_cancel2.gif" border="0"></A></td>
																		</tr>
																</form>
															</table>
														</td>
													</tr>
													<% end if %>
													<tr>
														<td>&nbsp;</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td valign="top">&nbsp;</td>
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
				</TBODY></table>
		</form>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
			alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
		<% if URLLink <> "" Then %>
		<SCRIPT language="javascript">
			window.onload = function() { 
					window.open("<%=URLLink%>","","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=no,width=350,height=250");
					//window.location.href="<%=URLLink%>";
					}
		</SCRIPT>
		<% end if%>
	</body>
</HTML>
