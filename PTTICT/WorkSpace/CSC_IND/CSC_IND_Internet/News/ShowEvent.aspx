<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ShowEvent.aspx.vb" Inherits="CSC_IND_Internet.ShowEvent" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ข้อมูลเหตุการณ์ฉุกเฉิน</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">
			function SelectItem(EventID){
				document.location.href="EventEmerge_Data.aspx?ServerAction=LOAD&EventID=" + EventID;
			}
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="600" align="left" border="0">
			<tr>
				<td>
					<form id="frmSearchCust" method="post" runat="server">
						<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
						<table cellSpacing="0" cellPadding="0" width="600" border="0">
							<tr>
								<td colSpan="2">
									<TABLE height="30" cellSpacing="0" cellPadding="2" width="100%" border="0">
										<TR>
											<TD width="10"></TD>
											<TD><asp:image id="Image1" runat="server" ImageUrl="../images/title_EM.jpg"></asp:image></TD>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
						<TABLE id="Table4" cellSpacing="0" cellPadding="0" width="600" align="center" border="0">
							<TR>
								<TD colSpan="2" height="17">&nbsp;</TD>
							</TR>
							<TR>
								<TD align="center" colSpan="2" height="16"><asp:panel id="pnlResult" runat="server">
										<asp:table id="tabDisplay" runat="server" Visible="False" Width="600">
											<asp:TableRow HorizontalAlign="Center" Font-Bold="True"></asp:TableRow>
										</asp:table>
									</asp:panel></TD>
							</TR>
							<tr>
								<td class="ListLink" align="right" colSpan="2"><strong><A class="ListLink" href="EventEmerge.aspx?mode=SHOW">More</A>..
									</strong>
								</td>
							</tr>
							<tr>
								<td align="center" colSpan="2"><asp:label id="lblNotFound" runat="server" Visible="False" Font-Size="Medium" Font-Bold="True"
										ForeColor="RoyalBlue">ไม่พบข้อมูล</asp:label></td>
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
