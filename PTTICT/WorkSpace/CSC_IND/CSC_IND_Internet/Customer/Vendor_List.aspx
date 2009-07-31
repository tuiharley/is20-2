<%@ Page CodeBehind="Vendor_List.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Vendor_List" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
	</HEAD>
	<body>
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
										<td valign="top"><table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td><img src="../images/title_vendor.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>
														<form id="frmSearchCust" method="post" runat="server">
															<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">&nbsp;
															<table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																<tr>
																	<td class="T_blue13"><asp:DropDownList id="lstGroup" runat="server" AutoPostBack="True"></asp:DropDownList></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13"><asp:Panel ID="pnlHead" Runat="server" Visible="False">
																			<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
																				<TR>
																					<TD class="HSubject" vAlign="middle" align="center" height="30">
																						<asp:Label id="lblHead" runat="server"></asp:Label></TD>
																				</TR>
																			</TABLE>
																		</asp:Panel></td>
																</tr>
																<tr>
																	<td class="T_gray13">
																		<asp:panel id="pnlResult" runat="server">
																			<asp:datagrid id="dgResult" Width="100%" runat="server" DataKeyField="VENDOR_ID" AutoGenerateColumns="False"
																				AllowPaging="false" PageSize="30" AllowSorting="True">
																				<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
																				<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
																				<ItemStyle CssClass="TableItem"></ItemStyle>
																				<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
																				<Columns>
																					<asp:TemplateColumn HeaderText="ลำดับที่">
																						<HeaderStyle Width="8%" CssClass="GridHead1"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center" Width="8%" VerticalAlign="Top"></ItemStyle>
																						<ItemTemplate>
																							<%# Container.ItemIndex+1 %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="บริษัท">
																						<HeaderStyle Width="25%" CssClass="GridHead1"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center" Width="25%" VerticalAlign="Top"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VENDOR_NAME","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="ผู้ติดต่อ">
																						<HeaderStyle CssClass="GridHead1" Width="15%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="15%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VENDOR_CONTACT","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="ที่อยู่">
																						<HeaderStyle CssClass="GridHead1" Width="15%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="15%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VENDOR_ADDRESS","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="โทรศัพท์">
																						<HeaderStyle CssClass="GridHead1" Width="12%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="12%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VENDOR_TEL","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="โทรสาร">
																						<HeaderStyle CssClass="GridHead1" Width="15%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="15%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VENDOR_FAX","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="ยี่ห้อ">
																						<HeaderStyle CssClass="GridHead1" Width="10%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Left" VerticalAlign="Top" Width="10%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VENDOR_BRAND","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																				</Columns>
																				<PagerStyle HorizontalAlign="Right" PageButtonCount="20" Mode="NumericPages"></PagerStyle>
																			</asp:datagrid>
																		</asp:panel><asp:label id="lblNotFound" runat="server" Visible="False" ForeColor="Red" Font-Size="X-Small">ไม่พบข้อมูล</asp:label>
																	</td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
															</table>
														</form>
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
