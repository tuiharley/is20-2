<%@ Page CodeBehind="PriceList.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.PriceList" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<script language="javascript">
				function LoadItem() {
					document.forms(0).elements("ServerAction").value = "SEARCH";
					document.forms(0).submit();
				}
				function PrintReport(mode){
						window.open("PriceList.aspx?ServerAction=LOAD&mode="+mode+"&lstMonth="+frmPrice.elements("lstMonth").value+"&txtYear="+frmPrice.elements("txtYear").value,"winPrint","scrollbars=yes,resizable=yes")
				}
			</script>
	</HEAD>
	<body>
		<form id="frmPrice" method="post" runat="server">
			<input id="ServerAction" type="hidden" name="ServerAction">
			<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td valign="top">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<% if request.item("mode") & "" <> "print" then %>
							<tr>
								<td><!--#include file="../Includes/header.aspx" --></td>
							</tr>
							<tr>
								<td height="140" background="../images/menu/banner3.jpg">&nbsp;</td>
							</tr>
							<tr>
								<td><!--#include file="../Includes/menu.aspx" --></td>
							</tr>
							<% end if %>
							<tr>
								<td height="2"></td>
							</tr>
							<tr>
								<td valign="top">
									<table width="100%" border="0" cellspacing="0" cellpadding="0" <% if request.item("mode") & "" <> "print" then %> style="BACKGROUND-IMAGE:url(../images/bg_sidemenu2.jpg); BACKGROUND-REPEAT:repeat-y" <% end if %>>
										<tr>
											<% if request.item("mode") & "" <> "print" then %>
											<td width="219" valign="top"><!--#include file="../Includes/m_customer.aspx" --></td>
											<% end if %>
											<td valign="top">
												<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
													<% if request.item("mode") & "" <> "print" then %>
													<tr>
														<td><img src="../images/title_cust5.jpg" width="539" height="38"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<% end if %>
													<tr>
														<td>
															<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																<% if request.item("mode") & "" <> "print" then %>
																<TR>
																	<TD>
																		<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																			<tr>
																				<TD class="txtHead" align="right" height="25">เดือน&nbsp;:&nbsp;
																					<asp:dropdownlist id="lstMonth" runat="server"></asp:dropdownlist>&nbsp;ปี&nbsp;:&nbsp;
																					<asp:TextBox id="txtYear" runat="server" Width="70px"></asp:TextBox>&nbsp;&nbsp;</TD>
																				<TD class="txtHead" width="50%"><A onclick="JavaScript:LoadItem();" href="#"><IMG src="../images/Button/btn_search.gif" border="0"></A>&nbsp;<A href="javascript:PrintReport('print')"><IMG src="../images/Button/btn_print.gif" width="60" border="0"></A></TD>
																			</tr>
																		</table>
																	</TD>
																</TR>
																<% end if %>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<% if request.item("mode") & "" = "print" then %>
																<TR>
																	<TD class="T_gray13" align="center"><IMG alt="" src="../images/LOGO_PTT_1.jpg"></TD>
																</TR>
																<TR>
																	<TD class="T_gray13" align="center" height="15"></TD>
																</TR>
																<TR>
																	<TD class="T_blue14" align="center" height="20">ตารางแสดงการคำนวณค่าเฉลี่ยของอัตราแลกเปลี่ยนขายของเงินบาทต่อเงินเหรียญสหรัฐอเมริกา</TD>
																</TR>
																<TR>
																	<TD class="T_blue14" align="center" height="20">ตามประกาศสำหรับวันทำการของธนาคารแห่งประเทศไทย</TD>
																</TR>
																<TR>
																	<TD class="T_blue14" align="center" height="20">
																		ประกอบการคำนวณราคาก๊าซประจำเดือน&nbsp;
																		<asp:Label id="lblMName" runat="server"></asp:Label></TD>
																</TR>
																<% end if %>
																<TR>
																	<TD class="T_gray13" align="center" height="25"></TD>
																</TR>
																<asp:panel id="pnlResult" runat="server">
																	<TR>
																		<TD class="T_gray13" align="center">
																			<asp:table id="tabDisplay" runat="server" Visible="False">
																				<asp:TableRow HorizontalAlign="Center" Font-Bold="True"></asp:TableRow>
																			</asp:table></TD>
																	</TR>
																	<TR>
																		<TD class="T_gray13" align="center" height="15"></TD>
																	</TR>
																	<TR>
																		<TD class="T_gray13" align="center"></TD>
																	</TR>
																</asp:panel>
																<TR>
																	<TD class="T_gray13" align="center"><asp:label id="lblNotFound" runat="server" Visible="False" ForeColor="Red" Font-Size="X-Small">ไม่พบข้อมูล</asp:label></TD>
																</TR>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<TR>
																	<TD class="T_gray13" align="center">
																		<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
																			<TR>
																				<TD class="T_gray13" align="center" width="15%"><U>หมายเหตุ</U></TD>
																				<TD class="T_gray13">1. 
																					ในการคำนวณอัตราแลกเปลี่ยนเฉลี่ยของเดือนคำนวณโดยไม่นับวันหยุดทำการ</TD>
																			</TR>
																			<TR>
																				<TD class="T_gray13" align="center" width="15%"></TD>
																				<TD class="T_gray13">2. คำนวณอัตราแลกเปลี่ยนโดยใช้ทศนิยม 2 ตำแหน่ง 
																					(ปัดขึ้นในตำแหน่งที่สามที่มากกว่าห้า)</TD>
																			</TR>
																		</TABLE>
																	</TD>
																</TR>
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
									</table>
								</td>
							</tr>
							<% if request.item("mode") & "" = "print" then %>
							<tr>
								<td class="T_gray13">ส่วนบริการลูกค้าก๊าซฯ ฝ่ายระบบท่อจัดจำหน่ายก๊าซธรรมชาติ 
									โทรศัพท์ 0-2537-3235-9 , 3253 , 3286-7 โทรสาร 0-2537-3257-8</td>
							</tr>
							<% end if %>
							<tr>
								<td height="20">&nbsp;</td>
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
		<% if request.item("mode")="print" then %>
		<script language="javascript">
				window.print();
		</script>
		<% end if %>
	</body>
</HTML>
