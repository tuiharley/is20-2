<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Inplant_List.aspx.vb" Inherits="CSC_IND_Internet.Inplant_List" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">
			//function SelectItem(DataID){
			//	window.open("Cust_Cont_Data.aspx?ServerAction=LOAD&CompanyID=<%=CompanyID%>&ContactID="+DataID,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,width=500,height=400");
				//document.location.href="Cust_Cont_Data.aspx?ServerAction=LOAD&CompanyID=<%=CompanyID%>&ContactID="+DataID;
			//}
			function SelectItem(DataFile){
				window.open("../Files/Attach/CONTACT/"+ DataFile,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,width=500,height=400");
				//document.location.href="Cust_Cont_Data.aspx?ServerAction=LOAD&CompanyID=<%=CompanyID%>&ContactID="+DataID;
			}
			function SearchItem(){
				document.forms(0).elements("ServerAction").value="SEARCH";
				document.forms(0).submit();   
			}
			function AddItem(){
				document.location.href="Cust_Cont_Data.aspx?ServerAction=ADD&CompanyID=<%=CompanyID%>" 				  
			}
			</script>
	</HEAD>
	<body>
		<form id="frmSearchContact" method="post" runat="server">
			<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
			<input id="SortIndex" type="hidden"  value="<%=SortIndex%>" name="SortIndex"> <input id="SortField" type="hidden" value="<%=SortField%>" name="SortField">
			<input id="CompanyID" type="hidden" name="CompanyID" value="<%=CompanyID%>">
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
												<table cellSpacing="0" cellPadding="0" width="100%" border="0">
													<tr>
														<td colSpan="2">
															<TABLE height="30" cellSpacing="0" cellPadding="2" width="100%" border="0">
																<TR>
																	<TD colSpan="2">
																		<asp:Image id="Image1" runat="server" ImageUrl="../images/title_cust3.jpg"></asp:Image></TD>
																</TR>
															</TABLE>
														</td>
													</tr>
												</table>
												<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
													<TR>
														<TD vAlign="middle" height="7"></TD>
													</TR>
													<TR>
														<TD class="HSubject" vAlign="middle" height="30">บริษัท&nbsp;:&nbsp;<asp:label id="lblCompany" runat="server"></asp:label></TD>
													</TR>
													<TR>
														<TD width="100" colSpan="2" height="17">&nbsp;</TD>
													</TR>
													<TR>
														<TD align="center" colSpan="2" height="16"><asp:panel id="pnlResult" runat="server">
																<asp:datagrid id="dgResult" runat="server" Width="470" DataKeyField="CONT_ID" AllowSorting="True"
																	AutoGenerateColumns="False" PageSize="30" AllowPaging="True">
																	<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
																	<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
																	<ItemStyle CssClass="TableItem"></ItemStyle>
																	<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
																	<Columns>
																		<asp:TemplateColumn HeaderText="วันที่">
																			<HeaderStyle Width="120px" CssClass="GridHead1"></HeaderStyle>
																			<ItemStyle HorizontalAlign="Center" Width="120px" VerticalAlign="Top"></ItemStyle>
																			<ItemTemplate>
																				<%# DataBinder.Eval(Container.DataItem,"CONT_DATE","{0:dd/MM/yyyy}") %>
																			</ItemTemplate>
																		</asp:TemplateColumn>
																		<asp:TemplateColumn HeaderText="ชื่อรายงาน">
																			<HeaderStyle Width="350px" CssClass="GridHead1"></HeaderStyle>
																			<ItemStyle HorizontalAlign="Left" Width="350px" VerticalAlign="Top"></ItemStyle>
																			<ItemTemplate>
																				<%# DataBinder.Eval(Container.DataItem,"REPORT_NAME","") %>
																			</ItemTemplate>
																		</asp:TemplateColumn>
																	</Columns>
																	<PagerStyle HorizontalAlign="Right" PageButtonCount="15" Mode="NumericPages" CssClass="TablePagingItem"></PagerStyle>
																</asp:datagrid>
															</asp:panel></TD>
													</TR>
													<tr>
														<td align="center" colSpan="2"><asp:label id="lblNotFound" runat="server" ForeColor="RoyalBlue" Font-Bold="True" Font-Size="Medium"
																Visible="False">ไม่พบข้อมูล</asp:label></td>
													</tr>
													<TR>
														<TD align="center" colSpan="2" height="25"></TD>
													</TR>
												</TABLE>
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
	</body>
</HTML>
