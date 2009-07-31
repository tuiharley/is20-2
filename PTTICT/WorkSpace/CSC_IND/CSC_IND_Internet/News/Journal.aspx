<%@ Page CodeBehind="Journal.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Journal" %>
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
		<form id="frmJournal" method="post" runat="server">
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
														<td><IMG height="38" src="../images/title_magz.jpg" width="539"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<TR>
														<TD class="txtHead" align="center" height="25">ปี&nbsp;:&nbsp;
															<asp:dropdownlist id="lstYear" runat="server" AutoPostBack="True"></asp:dropdownlist></TD>
													</TR>
													<TR>
														<TD></TD>
													</TR>
													<tr>
														<td class="T_gray13"><asp:datalist id="dlJournal" runat="server" ShowFooter="False" ShowHeader="False" RepeatDirection="Horizontal"
																RepeatColumns="2" HorizontalAlign="Center" Width="100%">
																<itemstyle VerticalAlign="top"></itemstyle>
																<ItemTemplate>
																	<%# "<table border='0' width='96%' cellspaccing='1' cellpadding='0' align='center'><tr class='T_gray13'>" + _
																			DataBinder.Eval(Container.DataItem,"ATTACH_FILE","<td  align='center' valign='top' class='T_blue13'><a href='" + FilePath + "{0}' target='_blank'>") + _
																			DataBinder.Eval(Container.DataItem,"IMAGE_FILE","<img src='" + FilePath + "{0}' width='136' height='186' border='0'></a>") + _
																			DataBinder.Eval(Container.DataItem,"TITLE","<br>{0}") + _
																			DataBinder.Eval(Container.DataItem,"DETAIL","<br>{0}") + _
																			"</td></tr></table>"
																%>
																</ItemTemplate>
															</asp:datalist><asp:label id="lblNotFound" runat="server" Visible="False" ForeColor="Red" Font-Size="X-Small">ไม่พบข้อมูล</asp:label></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td class="T_gray13">&nbsp;</td>
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
		</form>
	</body>
</HTML>
