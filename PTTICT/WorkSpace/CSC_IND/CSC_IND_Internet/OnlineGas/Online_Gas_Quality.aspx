<%@ Page CodeBehind="Online_Gas_Quality.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Online_Gas_Quality" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<% Session("CURRENT_HEADER_MENU") = "ONLINE_GAS"
			Dim GAS
			GAS=Request.Item ("GAS")
			if GAS="" then GAS=1
			%>
			<style type="text/css"> <!-- .body1 {font-family: MS Sans Serif; font-size:6pt;color:#FF0000 }
	.body2 {font-family: MS Sans Serif; font-size:6pt; }
	.head {font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFFFFF }
	.head2 {font-family: MS Sans Serif; font-size:10pt; font-weight: bold; color:#FFD8B0 }
	.head3 {font-family: MS Sans Serif; font-size:8pt; color:#FFFFFF }
	--></style>
	</HEAD>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<TR>
							<td height="140" background="../images/menu/banner5.jpg">&nbsp;</td>
						</TR>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td valign="top"><table width="778" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2" height="38"><img src="../images/title_online0.jpg" width="539" height="38"></td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td width="50%" align="center" valign="top" class="T_pink14"><table width="90%" border="0" cellspacing="2" cellpadding="0">
															<tr>
																<td class="T_blue13"><strong>East</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099ff"></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_1.asp" target="_blank" class="T_gray13">Current 
																		Gas Quality</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_2.asp" target="_blank" class="T_gray13">Gas 
																		Quality Past 7 days</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_3.asp" target="_blank" class="T_gray13">Current 
																		Gas Composition</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_15.asp" target="_blank" class="T_gray13">Gas 
																		Composition Past 7 days </a>
																</td>
															</tr>
															<tr>
																<td height="20" class="T_gray13"></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13"></td>
															</tr>
														</table>
													</td>
													<td width="50%" align="center" valign="top" class="T_pink14"><table width="90%" border="0" cellspacing="2" cellpadding="0">
															<tr>
																<td class="T_blue13"><strong>West</strong></td>
															</tr>
															<tr>
																<td height="1" bgcolor="#0099ff"></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_16.asp" target="_blank" class="T_gray13">Current 
																		Gas Quality</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_17.asp" target="_blank" class="T_gray13">Gas 
																		Quality Past 7 days</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_18.asp" target="_blank" class="T_gray13">Current 
																		Gas Composition(BIT)</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_19.asp" target="_blank" class="T_gray13">Current 
																		Gas Composition(RB)</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_20.asp" target="_blank" class="T_gray13">Gas 
																		Composition Past 7 days(BIT)</a></td>
															</tr>
															<tr>
																<td height="20" class="T_gray13">&nbsp;&nbsp;<img src="../images/a_red.gif" width="8" height="10">&nbsp;&nbsp;<a href="9_21.asp" target="_blank" class="T_gray13">Gas 
																		Composition Past 7 days(RB) </a>
																</td>
															</tr>
														</table>
													</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
												</tr>
												<tr>
													<td colspan="2">&nbsp;</td>
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
