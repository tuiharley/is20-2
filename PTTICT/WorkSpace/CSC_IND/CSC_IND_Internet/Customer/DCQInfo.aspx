<%@ Page CodeBehind="DCQInfo.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.DCQInfo" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<meta content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization"
				name="keywords">
			<script language="javascript" src="../script/js.js"></script>
	</HEAD>
	<body>
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td vAlign="top">
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td background="../images/menu/banner3.jpg" height="140">&nbsp;</td>
						</tr>
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
										<td vAlign="top" width="219"><!--#include file="../Includes/m_customer.aspx" --></td>
										<td vAlign="top">
											<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
												<tr>
													<td><IMG height="38" src="../images/title_dcq.jpg" width="539"></td>
												</tr>
												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>
														<form id="frmSearchCust" method="post" runat="server">
															<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">&nbsp;
															<table cellSpacing="0" cellPadding="0" width="96%" align="center" border="0">
																<tr>
																	<td>
																		<table>
																			<tr>
																				<td class="T_blue13" height="19">Condition Type :</td>
																				<td><asp:dropdownlist id="lstCondType" runat="server" AutoPostBack="True">
																						<asp:ListItem Value="0" Selected="True">กรุณาเลือก</asp:ListItem>
																						<asp:ListItem Value="ZDCG">ZDCG</asp:ListItem>
																						<asp:ListItem Value="ZDCQ">ZDCQ</asp:ListItem>
																					</asp:dropdownlist>
																				</td>
																			</tr>
																			<tr>
																				<td class="T_blue13" height="19">Ship To :</td>
																				<td><asp:dropdownlist id="lstGroup" runat="server"></asp:dropdownlist></td>
																			</tr>
																			<tr>
																				<td class="T_blue13" height="19">Valid Date From :</td>
																				<td class="T_blue13">
																					<asp:dropdownlist id="ValidFromD" runat="server"></asp:dropdownlist>/
																					<asp:dropdownlist id="ValidFromM" runat="server"></asp:dropdownlist>/
																					<asp:dropdownlist id="ValidFromY" runat="server"></asp:dropdownlist>
																					To :
																					<asp:dropdownlist id="ValidToD" runat="server"></asp:dropdownlist>/
																					<asp:dropdownlist id="ValidToM" runat="server"></asp:dropdownlist>/
																					<asp:dropdownlist id="ValidToY" runat="server"></asp:dropdownlist>
																				</td>
																			</tr>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td class="T_blue13" height="20"><asp:imagebutton id="BtnSearch" runat="server" ImageUrl="../images/Button/btn_search.gif"></asp:imagebutton></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13"><asp:panel id="pnlHead" Runat="server" Visible="False">
																			<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
																				<TR>
																					<TD class="HSubject" vAlign="middle" align="center" height="30">
																						<asp:Label id="lblHead" runat="server"></asp:Label></TD>
																				</TR>
																			</TABLE>
																		</asp:panel></td>
																</tr>
																<tr>
																	<td class="T_gray13"><asp:panel id="pnlResult" runat="server">
																			<asp:datagrid id="dgResult" runat="server" AllowSorting="True" PageSize="30" AllowPaging="false"
																				AutoGenerateColumns="False" Width="100%">
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
																					<asp:TemplateColumn HeaderText="Rate">
																						<HeaderStyle Width="25%" CssClass="GridHead1"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center" Width="25%" VerticalAlign="Top"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"RATE","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="Valid On">
																						<HeaderStyle CssClass="GridHead1" Width="15%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="15%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VALID_ON","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="Valid To">
																						<HeaderStyle CssClass="GridHead1" Width="15%"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center" VerticalAlign="Top" Width="15%"></ItemStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"VALID_TO","") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																				</Columns>
																				<PagerStyle HorizontalAlign="Right" PageButtonCount="20" Mode="NumericPages"></PagerStyle>
																			</asp:datagrid>
																		</asp:panel><asp:label id="lblNotFound" runat="server" Visible="False" ForeColor="Red" Font-Size="X-Small">ไม่พบข้อมูล</asp:label></td>
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
