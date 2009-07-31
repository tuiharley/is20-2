<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Emergency.aspx.vb" Inherits="CSC_IND_Internet.Emergency" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ข้อมูลการสัมมนา/อบรม (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">
			function SearchItem(){
				document.forms(0).elements("ServerAction").value="LOAD"
				document.forms(0).submit();   
			}
			function AddItem(){
				document.location.href="Emergency_Detail.aspx?ServerAction=ADD";
			}
			function SelectItem(EventID){
				document.location.href="Emergency_Detail.aspx?ServerAction=LOAD&EventID=" + EventID;
			}
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
			<tr>
				<td>
					<form id="frmSearchCust" method="post" runat="server">
						<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td colSpan="2">
									<TABLE height="30" cellSpacing="0" cellPadding="2" width="100%" border="0">
										<TR>
											<TD class="HTitle" width="20"></TD>
											<TD class="HTitle">ข้อมูลเหตุการณ์ฉุกเฉิน</TD>
										</TR>
									</TABLE>
								</td>
							</tr>
							<TR>
								<TD width="80" colSpan="2" height="5"></TD>
							</TR>
							<tr>
								<td width="80">&nbsp;</td>
								<td>
									<TABLE class="criTableItem" cellSpacing="0" cellPadding="1" width="700" border="0">
										<TR class="criTableHead">
											<TD align="center" colSpan="4" height="25">กำหนดเงื่อนไขการค้นหา</TD>
										</TR>
										<TR>
											<TD align="right" width="150">หัวข้อเรื่อง&nbsp;:&nbsp;</TD>
											<TD align="left" colSpan="3"><asp:textbox id="txtHeadLine" runat="server" Width="420px"></asp:textbox></TD>
										</TR>
										<TR>
											<TD align="right" width="150">ตั้งแต่วันที่&nbsp;:&nbsp;</TD>
											<TD align="left" width="120"><asp:textbox id="txtStartDate" runat="server" Width="90px"></asp:textbox><A onclick="javascript:Calendar_Open('txtStartDate')"><IMG id="btnCDate" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
											<TD align="right">ถึงวันที่&nbsp;:&nbsp;</TD>
											<TD align="left"><asp:textbox id="txtEndDate" runat="server" Width="90px"></asp:textbox><A onclick="javascript:Calendar_Open('txtEndDate')"><IMG id="Img1" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
										</TR>
										<TR>
											<TD vAlign="middle" align="center" colSpan="4" height="31"><A onclick="javascript:SearchItem();" href="#"><asp:imagebutton id="btnSearch" tabIndex="1" runat="server" ImageUrl="../Images/Button/btn_search.gif"></asp:imagebutton></A>&nbsp;&nbsp;<A onclick="JavaScript:AddItem();" href="#"><IMG id="btnAdd" src="../Images/Button/btn_add.gif" border="0" name="btnAdd" runat="server"></A></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
						<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<tr>
								<td colSpan="2" height="17">&nbsp;</td>
							</tr>
							<TR>
								<TD vAlign="middle" align="center">
									<asp:Label id="lblHead" runat="server" CssClass="HSubject" Width="100%" height="30" Visible="false">เหตุการณ์ฉุกเฉิน</asp:Label></TD>
							</TR>
							<TR>
								<TD colSpan="2" height="17">&nbsp;</TD>
							</TR>
							<TR>
								<TD align="center" colSpan="2" height="16"><asp:panel id="pnlResult" runat="server">
										<asp:datagrid id="dgResult" runat="server" Width="900px" DataKeyField="EVENT_ID" AllowSorting="True"
											PageSize="30" AllowPaging="True" AutoGenerateColumns="False">
											<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
											<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
											<ItemStyle CssClass="TableItem"></ItemStyle>
											<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
											<Columns>
												<asp:TemplateColumn HeaderText="วันที่ / เวลา">
													<HeaderStyle Width="120px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" Width="120px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"EVENT_DATE","{0:dd/MM/yyyy}") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="เรื่อง">
													<HeaderStyle CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"TITLE","") %>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderText="เอกสารแนบ">
													<HeaderStyle Width="100px" CssClass="GridHead1"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center" Width="130px" VerticalAlign="Top"></ItemStyle>
													<ItemTemplate>
														<%# DataBinder.Eval(Container.DataItem,"SOURCE_TYPE","") %>
													</ItemTemplate>
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
						</TABLE>
					</form>
				</td>
			</tr>
		</table>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
			alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
