<%@ Page Language="vb" ContentType="text/html" ResponseEncoding="windows-874" CodeBehind="LogOn.aspx.vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.LogOn" %>
<HTML>
	<HEAD>
		<title>LOG ON</title>
		<meta http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="javascript">
			function DoLogOn() {
				var ErrMsg;
					ErrMsg="";
					
					if (document.forms(0).elements("txtUsername").value =='') ErrMsg+="* User name \n";
					if (document.forms(0).elements("txtPassword").value =='') ErrMsg+="* Password \n";
					
					if (ErrMsg != "" ) {
							alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {						
						document.forms(0).elements("txtPassword").value = EncodeKey('Password',document.forms(0).elements("txtPassword").value);
						document.forms(0).elements("ServerAction").value="LOGON";
						document.forms(0).submit();   
					}		
			}
			</script>
	</HEAD>
	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" height="100%">
			<tr>
				<td>
					<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								<form method="post" name="frmLogon" id="frmLogon" runat="server">
									<input id="ServerAction" type="hidden" name="ServerAction">
									<table width="778" border="0" align="center" cellpadding="0" cellspacing="0" height="183">
										<tr>
											<td><img src="../images/logon/logo.jpg" width="374" height="99"></td>
											<td><img src="../images/logon/name_sys.jpg" width="404" height="99"></td>
										</tr>
										<tr>
											<td><img src="../images/logon/logon_img1.jpg" width="374" height="317"></td>
											<td valign="top" background="../images/logon/logon_img2.jpg"><table width="360" border="0" cellpadding="0" cellspacing="4" align="center">
													<tr>
														<td width="52">&nbsp;</td>
														<td width="113">&nbsp;</td>
														<td width="187">&nbsp;</td>
													</tr>
													<tr>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td height="3" colspan="3">&nbsp;</td>
													</tr>
													<tr>
														<td align="right" class="text_data_gray">&nbsp;</td>
														<td align="right" class="txtLogon"><strong> Username&nbsp;:&nbsp;</strong></td>
														<td><asp:TextBox id="txtUsername" runat="server" Width="120px" tabIndex="1"></asp:TextBox></td>
													</tr>
													<tr>
														<td align="right" class="text_data_gray">&nbsp;</td>
														<td align="right" class="txtLogon"><strong>Password&nbsp;:&nbsp;</strong></td>
														<td><asp:TextBox id="txtPassword" runat="server" TextMode="Password" Width="120px" tabIndex="2"></asp:TextBox></td>
													</tr>
													<tr>
														<td align="right" class="text_data_gray">&nbsp;</td>
														<td align="right" class="text_data_gray">&nbsp;</td>
														<td>&nbsp;</td>
													</tr>
													<tr>
														<td align="right" class="text_data_gray">&nbsp;</td>
														<td colspan="2" align="center" class="text_data_gray"><A onclick="javascript:DoLogOn();" href="#"><asp:button id="btnLogon" runat="server" Width="72" Text="Logon"></asp:button></A>&nbsp;&nbsp;
															<input type="button" width="72px" value="Cancel" name="btnCancel" onClick="javascript:window.close();"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="text_data_gray" height="31" align="center" background="../images/logon/logon_version.jpg"><table width="365" border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td>Version 1.0&nbsp;&nbsp;14/09/2549</td>
													</tr>
												</table>
											</td>
											<td class="text_data_gray" align="right" background="../images/logon/logon_admin.jpg">
												<table width="330" border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</form>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<script language="javascript">			
		<%	if Msg <> "" then	%>
					alert("<%=Replace(Msg,vbCrLf," ")%>");
		<%	end if	%>
		<% If IsLinkTo=True Then%>
		<%End If%>
		</script>
	</body>
</HTML>
