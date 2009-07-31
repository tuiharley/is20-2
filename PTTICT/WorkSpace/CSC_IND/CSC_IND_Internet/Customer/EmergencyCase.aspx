<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EmergencyCase.aspx.vb" Inherits="CSC_IND_Internet.EmergencyCase" validateRequest="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">
				function DeleteItem(){
				if (confirm('กดปุ่ม OK เพื่อยืนยันการลบข้อมูล?')) {
					document.forms(0).elements("ServerAction").value="DELETE"
					document.forms(0).submit();
				}
			}
				function SendItem(){
				var ErrMsg="";
					if (document.forms(0).elements("txtUser").value =='') ErrMsg="* ชื่อ-นามสกุล \n" ;
					if (document.forms(0).elements("txtTel").value =='') ErrMsg="* เบอร์โทรศัพท์ \n" ;
					if (document.forms(0).elements("txtMail").value =='')  ErrMsg="* E-Mail Address \n" ;
					if (! IsPhoneData(document.forms(0).elements("txtTel").value)) ErrMsg+="* โทรศัพท์ควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (662) 537-2000 # 999) \n";
					if (! IsPhoneData(document.forms(0).elements("txtMobile").value)) ErrMsg+="* โทรศัพท์มือถือควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (668) 1999-999-9) \n";
					if (! IsEmailCheck(document.forms(0).elements("txtMail").value)) ErrMsg+="* E-mail address ควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น address@domain.com) \n";			
					if (ErrMsg != "") {
						alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {
						document.forms(0).elements("DataSend").value=document.getElementById('MailContent').innerHTML;
						document.forms(0).elements("ServerAction").value="SEND";
						document.forms(0).submit(); 
					}
			}
			
			</script>
	</HEAD>
	<body>
		<form id="frmEmergency" name="frmEmergency" method="post" runat="server">
			<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
			<input id=CompanyID type=hidden value="<%=CompanyID%>" 
  name=CompanyID> <input id="DataSend" type="hidden" name="DataSend">
			<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td><!--#include file="../Includes/header.aspx" --></td>
							</tr>
							<tr>
								<td height="140" background="../images/menu/banner3.jpg">&nbsp;</td>
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
											<td width="219" valign="top"><!--#include file="../Includes/m_customer.aspx" --></td>
											<td valign="top">
												<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
													<TBODY>
														<tr>
															<td>
																<TABLE height="25" cellSpacing="0" cellPadding="1" width="100%" border="0">
																	<TR>
																		<TD colSpan="3">
																			<asp:image id="Image1" runat="server" ImageUrl="../images/title_cust4.jpg"></asp:image>&nbsp;</TD>
																	</TR>
																</TABLE>
															</td>
														</tr>
														<tr>
															<td>
																<div id="MailContent" runat="server">
																	<table cellSpacing="0" cellPadding="1" width="100%" border="0">
																		<tr>
																			<td height="6"></td>
																		</tr>
																		<TR>
																			<TD class="HSubject" vAlign="middle" height="30">บริษัท&nbsp;:&nbsp;<asp:label id="lblCompany" runat="server" CssClass="HSubject"></asp:label></TD>
																		</TR>
																		<TR>
																			<TD height="6"></TD>
																		</TR>
																		<tr>
																			<td class="GridHead1" height="25">ข้อมูลในกรณีฉุกเฉิน&nbsp;</td>
																		</tr>
																		<tr class="GroupLine">
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td><asp:panel id="pnlData" runat="server" Width="100%">
																					<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="100%" border="0">
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4" height="20">เชื้อเพลิงสำรองที่ใช้ทดแทนก๊าซธรรมชาติ 
																								(ในกรณีเกิดเหตุฉุกเฉิน)</TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4">
																								<asp:TextBox id="txtReserve" runat="server" Width="300px" Rows="4" TextMode="MultiLine"></asp:TextBox></TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4" height="20">ในกรณีที่มีเชื้อเพลิงทดแทนก๊าซฯ 
																								โรงงานได้มีการสำรองเชื้อเพลิงนั้นไว้หรือไม่</TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="right" width="10%"></TD>
																							<TD class="txtHead" width="90%" colSpan="3">
																								<asp:RadioButton id="rdoYes" runat="server" Width="100px" Text="มี" GroupName="ReplaceFlag"></asp:RadioButton>
																								<asp:RadioButton id="rdoNo" runat="server" Width="100px" Text="ไม่มี" GroupName="ReplaceFlag"></asp:RadioButton></TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4" height="20">ถ้าเกิดเหตุฉุกเฉินกับระบบส่งก๊าซของปตท.โรงงานต้องใช้เวลาเท่าไรในการเตรียมพร้อม</TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4" height="20">
																								<asp:TextBox id="txtTime" runat="server" Width="400px" Rows="4" TextMode="MultiLine"></asp:TextBox></TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4" height="20">ข้อมูลที่จำเป็นเพิ่มเติมอื่นๆ</TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="left" colSpan="4" height="20">
																								<asp:TextBox id="txtDesc" runat="server" Width="400px" Rows="3" TextMode="MultiLine"></asp:TextBox></TD>
																						</TR>
																					</TABLE>
																				</asp:panel></td>
																		</tr>
																		<TR>
																			<TD colSpan="4" height="6"></TD>
																		</TR>
																	</table>
																	<table cellSpacing="0" cellPadding="1" width="100%" border="0">
																		<TR>
																			<TD align="left" height="5"></TD>
																		</TR>
																		<TR>
																			<TD class="GridHead1" align="left" height="25">ข้อมูลผู้ให้ข้อมูล
																			</TD>
																		</TR>
																		<tr class="GroupLine">
																			<td height="5"></td>
																		</tr>
																		<tr>
																			<td><asp:panel id="pnlPerson" runat="server" width="100%">
																					<TABLE id="Table21" cellSpacing="0" cellPadding="1" width="100%" border="0">
																						<TR class="pnlBG">
																							<TD class="txtHead" align="right" width="20%">ชื่อ-นามสกุล&nbsp;:&nbsp;</TD>
																							<TD class="txtHead" width="30%">
																								<asp:TextBox id="txtUser" runat="server" Width="200px"></asp:TextBox></TD>
																							<TD class="txtHead" align="right" width="20%">ตำแหน่ง&nbsp;:&nbsp;</TD>
																							<TD>
																								<asp:TextBox id="txtPos" runat="server" Width="150px"></asp:TextBox></TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="right">โทรศัพท์ &nbsp;:&nbsp;</TD>
																							<TD>
																								<asp:TextBox id="txtTel" runat="server" Width="150px"></asp:TextBox></TD>
																							<TD class="txtHead" align="right">E-Mail&nbsp;:&nbsp;</TD>
																							<TD>
																								<asp:TextBox id="txtMail" runat="server" Width="200px"></asp:TextBox></TD>
																						</TR>
																						<TR class="pnlBG">
																							<TD class="txtHead" align="right">โทรศัพท์มื่อถือ &nbsp;:&nbsp;</TD>
																							<TD>
																								<asp:TextBox id="txtMobile" runat="server" Width="150px"></asp:TextBox></TD>
																							<TD class="txtHead" align="right">วันที่ &nbsp;:&nbsp;</TD>
																							<TD>
																								<asp:TextBox id="txtDate" runat="server" Width="80px" MaxLength="10"></asp:TextBox><A onclick="javascript:Calendar_Open('txtDate')"><INPUT id="btnCal" type="button" value=" ... " name="btnCal"></A></TD>
																						</TR>
																					</TABLE>
																				</asp:panel></td>
																		</tr>
																	</table>
																</div>
															</td>
														</tr>
														<tr>
															<td align="center"><A onclick="JavaScript:SendItem();" href="#"><IMG id="Img1" src="../images/Button/send.jpg" border="0" name="btnSave" runat="server"></A></td>
														</tr>
														<TR>
															<TD align="center" height="15"><FONT face="Tahoma"></FONT></TD>
														</TR>
													</TBODY></table>
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
