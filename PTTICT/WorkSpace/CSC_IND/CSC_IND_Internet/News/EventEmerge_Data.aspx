<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EventEmerge_Data.aspx.vb" Inherits="CSC_IND_Internet.EventEmerge_Data" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">	

			
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="650" align="left" border="0">
			<form id="frmSearchCust" method="post" runat="server">
				<INPUT id=EventID type=hidden value="<%=EventID%>" name=EventID> <INPUT id=ServerAction type=hidden value="<%=ServerAction%>" name=ServerAction>
				<TBODY>
					<tr>
						<td>
							<TABLE height="25" cellSpacing="0" cellPadding="2" width="650" border="0">
								<TR>
									<TD width="10"></TD>
									<TD><asp:image id="Image1" runat="server" ImageUrl="../images/title_EM.jpg"></asp:image></TD>
								</TR>
							</TABLE>
						</td>
					</tr>
					<tr>
						<td>
							<table cellSpacing="0" cellPadding="1" width="650" border="0">
								<tr>
									<td height="8"></td>
								</tr>
								<tr>
									<td class="GridHead1" height="25">เหตุการณ์ฉุกเฉิน</td>
								</tr>
								<tr class="GroupLine">
									<td height="5"></td>
								</tr>
								<tr>
									<td><asp:panel id="pnlData" runat="server">
											<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="650" border="0">
												<TR class="pnlBG">
													<TD class="txtHead" align="right" width="100" height="25">เรื่อง&nbsp;:&nbsp;</TD>
													<TD align="left" width="550" colSpan="3" height="25">
														<asp:Label id="lblTitle" runat="server"></asp:Label></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right">วันที่&nbsp;:&nbsp;
													</TD>
													<TD class="txtHead" align="left" colSpan="3"><FONT color="#000000">
															<asp:Label id="lblDate" runat="server"></asp:Label></FONT>&nbsp;&nbsp;&nbsp; 
														เวลา&nbsp; : <FONT color="#000000">
															<asp:Label id="lblTime" runat="server"></asp:Label></FONT>&nbsp;น.</TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" vAlign="top" align="right" height="26">รายละเอียด&nbsp;:&nbsp;
													</TD>
													<TD align="left" colSpan="3">
														<asp:Label id="lblDetail" runat="server"></asp:Label></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right">เอกสารแนบ&nbsp;:&nbsp;
													</TD>
													<TD class="txtHead" align="left" colSpan="3">
														<asp:hyperlink id="lnkImgAttach" runat="server" ForeColor="#0000C0" BackColor="Transparent" Target="_blank"></asp:hyperlink>&nbsp;&nbsp;&nbsp;
														<A href="javaScript:ClearAttach('DOC');"></A>
													</TD>
												</TR>
												<TR>
													<TD align="left" bgColor="#d4d0c8" colSpan="4" height="3"></TD>
												</TR>
												<TR>
													<TD class="txtHead" align="left" colSpan="4"></TD>
												</TR>
											</TABLE>
										</asp:panel>
									</td>
								</tr>
								<tr>
									<td class="ListLink" align="left"><strong><A class="ListLink" href="JavaScript:window.close();"><u>Close</u></A></strong>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</TBODY></form>
		</table>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
	alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
