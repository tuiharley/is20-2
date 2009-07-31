<%@ Page CodeBehind="Download.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Download" %>
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
										<td valign="top"><form id="frmDownload" runat="server">
												<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
													<tr>
														<td><img src="../images/title_download.jpg" width="539" height="38"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																<tr>
																	<td class="T_blue13"><strong><u>เอกสาร</u></strong></td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
																<tr>
																	<td class="T_gray13">
																		<asp:datalist id="dlDownload" runat="server" ShowFooter="False" ShowHeader="False" HorizontalAlign="Center"
																			Width="100%">
																			<itemstyle VerticalAlign="top"></itemstyle>
																			<ItemTemplate>
																				<%# "<table border='0' width='98%' cellspaccing='1' cellpadding='0' align='left'><tr class='T_gray13'>" + _
																			DataBinder.Eval(Container.DataItem,"ATTACH_FILE","<td  width='20' align='center' valign='top' class='T_gray13'><a href='" + FilePath + "{0}' target='_blank'>") + _
																			"<img src='../images/icon_zip.gif' width='17' height='18' border='0'></a></td>" + _
																			DataBinder.Eval(Container.DataItem,"TITLE","<td  align='left' valign='top' class='T_gray13'>{0}</td>") + _
																			"</tr></table>"
																%>
																			</ItemTemplate>
																		</asp:datalist><asp:label id="lblNotFound" runat="server" Visible="False" ForeColor="Red" Font-Size="X-Small">ไม่พบข้อมูล</asp:label>
																	</td>
																</tr>
																<tr>
																	<td class="T_gray13">&nbsp;</td>
																</tr>
															</table>
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
											</form>
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
