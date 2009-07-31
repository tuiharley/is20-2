<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EventEmerge.aspx.vb" Inherits="CSC_IND_Internet.EventEmerge" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ข้อมูลเหตุการณ์ฉุกเฉิน</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">
			function SearchItem(){
				document.forms(0).elements("ServerAction").value="LOAD"
				document.forms(0).submit();   
			}
			function AddItem(){
				document.location.href="EventEmerge_Data.aspx?ServerAction=ADD";
			}
			function SelectItem(EventID){
				window.open("EventEmerge_Data.aspx?ServerAction=LOAD&EventID=" + EventID,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,width=450,height=350");
				//document.location.href="EventEmerge_Data.aspx?ServerAction=LOAD&EventID=" + EventID;
			}
			</script>
	</HEAD>
	<body>
		<form id="frmSearchCust" method="post" runat="server">
			<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
			<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td vAlign="top">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<% if request.item("mode") & "" = "" then %>
							<tr>
								<td><!--#include file="../Includes/header.aspx" --></td>
							</tr>
							<TR>
								<td background="../images/menu/banner6.jpg" height="140">&nbsp;</td>
							</TR>
							<tr>
								<td><!--#include file="../Includes/menu.aspx" --></td>
							</tr>
							<% end if %>
							<tr>
								<td height="2"></td>
							</tr>
							<tr>
								<td vAlign="top">
									<table <% if request.item("mode") & "" = "" then %> style="BACKGROUND-IMAGE: url(../images/bg_sidemenu2.jpg); BACKGROUND-REPEAT: repeat-y" <% end if %>
										cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
										<% if request.item("mode") & "" = "" then %>
											<td vAlign="top" width="219"><!--#include file="../Includes/m_news.aspx" --></td><% end if %>
											<td vAlign="top">
												<table cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td colSpan="2">
															<TABLE height="30" cellSpacing="0" cellPadding="2" width="100%" border="0">
																<TR>
																	<TD colSpan="2">
																		<asp:Image id="Image1" runat="server" ImageUrl="../images/title_EM.jpg"></asp:Image></TD>
																</TR>
															</TABLE>
														</td>
													</tr>
													<TR>
														<TD colSpan="2" height="5"></TD>
													</TR>
													<tr>
														<td colSpan="2" align="center">
															<TABLE class="criTableItem" cellSpacing="0" cellPadding="1" width="90%" border="0">
																<TR class="criTableHead">
																	<TD align="center" colSpan="4" height="25">กำหนดเงื่อนไขการค้นหา</TD>
																</TR>
																<TR>
																	<TD align="right" width="20%">หัวข้อเรื่อง&nbsp;:&nbsp;</TD>
																	<TD align="left" colSpan="3" width="550"><asp:textbox id="txtHeadLine" runat="server" Width="420px"></asp:textbox></TD>
																</TR>
																<TR>
																	<TD align="right">ตั้งแต่วันที่&nbsp;:&nbsp;</TD>
																	<TD align="left" width="120"><asp:textbox id="txtStartDate" runat="server" Width="90px"></asp:textbox><A onClick="javascript:Calendar_Open('txtStartDate')"><IMG id="btnCDate" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
																	<TD align="right" width="100">ถึงวันที่&nbsp;:&nbsp;</TD>
																	<TD align="left" width="330"><asp:textbox id="txtEndDate" runat="server" Width="90px"></asp:textbox><A onClick="javascript:Calendar_Open('txtEndDate')"><IMG id="Img1" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
																</TR>
																<TR>
																	<TD vAlign="middle" align="center" colSpan="4" height="31"><A onClick="javascript:SearchItem();" href="#"><asp:imagebutton id="btnSearch" tabIndex="1" runat="server" ImageUrl="../Images/Button/btn_search.gif"></asp:imagebutton></A>&nbsp;&nbsp;</TD>
																</TR>
															</TABLE>
														</td>
													</tr>
												</table>
												<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="99%" border="0">
													<TR>
														<TD colSpan="2" height="17">&nbsp;</TD>
													</TR>
													<TR>
														<TD align="center" colSpan="2" height="16"><asp:panel id="pnlResult" runat="server">
																<asp:datagrid id="dgResult" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True"
																	PageSize="30" AllowSorting="True" DataKeyField="EVENT_ID">
																	<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
																	<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
																	<ItemStyle CssClass="TableItem"></ItemStyle>
																	<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
																	<Columns>
																		<asp:TemplateColumn HeaderText="วันที่ / เวลา">
																			<HeaderStyle Width="120px" CssClass="GridHead1"></HeaderStyle>
																			<ItemStyle HorizontalAlign="Center" Width="120px" VerticalAlign="Top"></ItemStyle>
																			<ItemTemplate>
																				<%# DataBinder.Eval(Container.DataItem,"EVENT_DATE","{0:dd/MM/yyyy}") %>																			</ItemTemplate>
																		</asp:TemplateColumn>
																		<asp:TemplateColumn HeaderText="เรื่อง">
																			<HeaderStyle CssClass="GridHead1"></HeaderStyle>
																			<ItemStyle HorizontalAlign="Left" VerticalAlign="Top"></ItemStyle>
																			<ItemTemplate>
																				<%# DataBinder.Eval(Container.DataItem,"TITLE","") %>																			</ItemTemplate>
																		</asp:TemplateColumn>
																		<asp:TemplateColumn HeaderText="เอกสารแนบ">
																			<HeaderStyle Width="100px" CssClass="GridHead1"></HeaderStyle>
																			<ItemStyle HorizontalAlign="Center" Width="130px" VerticalAlign="Top"></ItemStyle>
																			<ItemTemplate>
																				<%# DataBinder.Eval(Container.DataItem,"SOURCE_TYPE","") %>																			</ItemTemplate>
																		</asp:TemplateColumn>
																	</Columns>
																	<PagerStyle HorizontalAlign="Right" PageButtonCount="20" Mode="NumericPages" CssClass="TablePagingItem"></PagerStyle>
																</asp:datagrid>
															</asp:panel></TD>
													</TR>
													<tr>
														<td align="center" colSpan="2"><asp:label id="lblNotFound" runat="server" Visible="False" Font-Size="Medium" Font-Bold="True"
																ForeColor="RoyalBlue">ไม่พบข้อมูลการค้นหา</asp:label></td>
													</tr>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
													  <TD align="center" colSpan="2">&nbsp;</TD>
												  </TR>
													<TR>
														<TD align="center" colSpan="2" height="25"></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<% if request.item("mode") & "" = "" then %>
							<tr>
								<td><!--#include file="../Includes/footer.aspx" --></td>
							</tr>
							<% end if %>
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
	</body>
</HTML>
