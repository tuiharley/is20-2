<%@ Page CodeBehind="FAQ.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.FAQ" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<meta content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization"
				name="keywords">
			<script language="javascript" src="../script/js.js"></script>
			<script language="javascript">
				function SendItem() {
					var ErrMsg;
					ErrMsg="";
					if (document.forms(0).elements("txtQuestion").value =='') ErrMsg+="* คำถาม \n";
					if (document.forms(0).elements("txtMail").value =='') ErrMsg+="* E-Mail \n";
					if (document.forms(0).elements("txtName").value =='') ErrMsg+="* ชื่อ-สกุล \n";
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
		<form id="frmFaq" method="post" runat="server">
			<input id="ServerAction" type="hidden" name="ServerAction">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td><!--#include file="../Includes/header.aspx" --></td>
							</tr>
							<TR>
								<td background="../images/menu/banner6.jpg" height="140">&nbsp;</td>
							</TR>
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
											<td vAlign="top" width="219"><!--#include file="../Includes/m_news.aspx" --></td>
											<td vAlign="top">
												<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td><IMG height="38" src="../images/title_faq.jpg" width="539"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<TR>
														<TD></TD>
													</TR>
													<tr>
														<td class="T_gray13"><asp:DataGrid id="dgFaqs" runat="server" Width="100%" AutoGenerateColumns="False" ShowHeader="False"
																BorderStyle="None" BorderWidth="0px" AllowPaging="True" PageSize="10">
																<ItemStyle CssClass="TableItem" VerticalAlign="Top"></ItemStyle>
																<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
																<PagerStyle CssClass="TablePagingItem"></PagerStyle>
																<Columns>
																	<asp:TemplateColumn>
																		<ItemStyle HorizontalAlign="Left" Width="100%"></ItemStyle>
																		<ItemTemplate>
																			<%# "<table width='90%'  border='0' cellspacing='0' cellpadding='0'>" + _
																				"<tr ><td width='80' valign='top' class='T_blue13'>คำถาม&nbsp;:&nbsp;" + DataBinder.Eval(Container.DataItem, "FAQ_ID", "{0}")  + "</td>" + _
																				"<td class='T_blue13'>" + DataBinder.Eval(Container.DataItem, "FAQ_QUESTION", "{0}")  + "</td></tr>" + _
																				"<tr ><td valign='top' class='T_blue13'>คำตอบ&nbsp;:&nbsp;</td>" + _
																				"<td class='T_gray13'>" + DataBinder.Eval(Container.DataItem, "FAQ_ANSWER", "{0}")  + "</td></tr>" + _
																				"</table><br><br>"
																			%>
																		</ItemTemplate>
																	</asp:TemplateColumn>
																</Columns>
																<PagerStyle HorizontalAlign="Right" CssClass="TablePagingItem" Mode="NumericPages" Font-Bold="true"></PagerStyle>
															</asp:DataGrid></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td height="1" bgcolor="#99cc00"></td>
													</tr>
													<tr>
														<td bgcolor="#f7f7f7">&nbsp;</td>
													</tr>
													<% if Session("USER_NAME") & "" <> "" then %>
													<tr>
														<td bgcolor="#f7f7f7"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="1">
																<tr>
																	<td height="20" colspan="2" class="T_green13"><strong><u>ตั้งคำถาม</u></strong></td>
																</tr>
																<tr>
																	<td height="20" colspan="2" valign="top" class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td width="120" height="20" align="right" valign="top" class="T_gray13">คำถาม&nbsp;:&nbsp;</td>
																	<td valign="top" class="T_gray13">
																		<asp:TextBox id="txtQuestion" runat="server" Width="350px" TextMode="MultiLine" Rows="7"></asp:TextBox>
																	</td>
																</tr>
																<tr>
																	<td height="20" align="right" class="T_gray13">ชื่อ-สกุล&nbsp;:&nbsp;</td>
																	<td class="T_gray13">
																		<asp:TextBox id="txtName" runat="server" Width="300px"></asp:TextBox></td>
																</tr>
																<tr>
																	<td height="20" align="right" class="T_gray13">E-Mail&nbsp;:&nbsp;</td>
																	<td class="T_gray13">
																		<asp:TextBox id="txtMail" runat="server" Width="250px"></asp:TextBox></td>
																</tr>
																<tr>
																	<td height="20" align="right" class="T_gray13">เบอร์โทรศัพท์&nbsp;:&nbsp;</td>
																	<td class="T_gray13">
																		<asp:TextBox id="txtTel" runat="server" Width="250px"></asp:TextBox></td>
																</tr>
																<tr>
																	<td height="20" align="right" class="T_gray13">&nbsp;</td>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td height="20" align="right" class="T_gray13">&nbsp;</td>
																	<td class="T_gray13"><A onclick="JavaScript:SendItem();" href="#"><IMG src="../Images/Button/send.jpg" border="0"></A>&nbsp;&nbsp;<A onclick="JavaScript:CancelItem();" href="#"><IMG src="../images/Button/btn_cancel2.gif" border="0"></A></td>
																</tr>
															</table>
														</td>
													</tr>
													<% end if %>
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
