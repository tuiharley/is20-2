<%@ Page Language="vb" AutoEventWireup="false" Codebehind="News_Detail.aspx.vb" Inherits="CSC_IND_Internet.News_Detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">

			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="700" align="left" border="0">
			<form id="frmNewsDetail" method="post" runat="server">
				<INPUT 
  id=AnnID type=hidden value="<%=AnnID%>" name=AnnID> <input id=ServerAction type=hidden value="<%=ServerAction%>" name=ServerAction 
  >
				<TBODY>
					<tr>
						<td>
							<TABLE height="25" cellSpacing="0" cellPadding="2" width="700" border="0">
								<TR>
									<TD width="10"></TD>
									<TD width="200"><asp:image id="Image1" runat="server" ImageUrl="../images/title_news.jpg"></asp:image></TD>
								</TR>
							</TABLE>
						</td>
					</tr>
					<tr>
						<td>
							<table cellSpacing="0" cellPadding="1" width="700" border="0">
								<tr>
									<td height="8"></td>
								</tr>
								<tr>
									<td class="GridHead1" height="25">ข่าวสาร</td>
								</tr>
								<tr class="GroupLine">
									<td height="5"></td>
								</tr>
								<tr>
									<td><asp:panel id="pnlData" runat="server">
											<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="700" border="0">
												<TBODY>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="10" height="25">&nbsp;</TD>
														<TD class="txtHead" align="left" width="690" colSpan="3" height="25">
														<SPAN class="T_blue14"><IMG height="14" src="../images/icon/text.gif" width="12">&nbsp;
														<U><asp:Label id="lblTitle" runat="server"></asp:Label></U></SPAN>
														<SPAN class="T_red13">[&nbsp;<asp:Label id="lblAnnDate" runat="server"></asp:Label>&nbsp;]</SPAN>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25"></TD>
														<TD colSpan="3" height="25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<asp:Label id="lblDetail" runat="server" Width="610px"></asp:Label></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" vAlign="top" align="right" height="25"></TD>
														<TD colSpan="3" height="25">
															<asp:Image id="ImgFile" runat="server" ImageUrl="../images/nopic.gif"></asp:Image>
															<asp:Label id="lblImage" runat="server"></asp:Label></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25"></TD>
														<TD colSpan="3" height="25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<asp:HyperLink id="lnkDoc" runat="server"></asp:HyperLink></TD>
													</TR>
													<TR>
														<TD bgColor="#d4d0c8" colSpan="4" height="3"></TD>
													</TR>
													<TR>
														<TD class="txtHead" align="right" colSpan="4"></TD>
													</TR>
										</asp:panel></td>
								</tr>
								<tr>
									<td class="ListLink" align="left"><strong><A class="ListLink" href="JavaScript:window.close();"><u>Close</u></A></strong>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</TBODY>
		</table>
		</TD></TR></TBODY></FORM></TABLE>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
	alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
		<% if URLLink <> "" Then %>
		<SCRIPT language="javascript">
	window.onload = function() { 
			window.location.href="<%=URLLink%>";
			}
		</SCRIPT>
		<% end if%>
	</body>
</HTML>
