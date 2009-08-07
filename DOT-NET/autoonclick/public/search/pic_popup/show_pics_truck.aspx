<%@ Page Language="vb" AutoEventWireup="false" Codebehind="show_pics_truck.aspx.vb" Inherits="autoonclick.show_pics_truck" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>show_images</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../../../css/css.css" type="text/css" rel="stylesheet">
		<style type="text/css">.style2 { FONT-SIZE: small; FONT-FAMILY: Arial, Helvetica, sans-serif }
	.Stil14 { COLOR: #666666 }
	.Stil15 { COLOR: #ff9900 }
	.Stil16 { COLOR: #ffffff }
	.Stil17 { COLOR: #666666; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif }
		</style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" name="Form1" method="post" runat="server">
			<center>
				<table class="standard_font" border="0" width="339">
					<TBODY>
						<tr width="339">
							<td width="100%" height="20"><IMG height="5" src="../../../images/objects/no.gif" width="1"></td>
						</tr>
						<tr>
							<td bgColor="#ff9900" height="25"><font color="#ffffff"><b>&nbsp;
										<asp:label id="txt_model" runat="server"></asp:label></b></font></td>
						</tr>
						<tr>
							<td height="50"><IMG height="5" src="../../../images/objects/no.gif" width="1"></td>
						</tr>
						<tr>
							<td><b><asp:label id="txt_price" runat="server"></asp:label></b></td>
						</tr>
						<tr>
							<td height="20"><IMG height="5" src="../../../images/objects/no.gif" width="1"></td>
						</tr>
						<tr width="339">
							<td width="339" valign="top">
								<table width="339" border="0" cellspacing="0" cellpadding="0">
									<TBODY>
										<tr>
											<td width="339" class="dtl_pic" height="327"><div align="center">
													<asp:ImageButton id="image1" runat="server"></asp:ImageButton></div>
											</td>
										</tr>
										<tr>
											<td height="33"></td>
										</tr>
										<tr>
											<td><table height="45" border="0" cellpadding="0" cellspacing="0">
													<tr>
														<td class="dtl_pic2" width="60" height="60"><div align="center">
																<asp:ImageButton id="image2" runat="server"></asp:ImageButton></div>
														</td>
														<td width="33"></td>
														<td class="dtl_pic2" width="60" height="60"><div align="center">
																<asp:ImageButton id="image3" runat="server"></asp:ImageButton></div>
														</td>
														<td width="33"></td>
														<td class="dtl_pic2" width="60" height="60"><div align="center">
																<asp:ImageButton id="image4" runat="server"></asp:ImageButton></div>
														</td>
														<td width="33"></td>
														<td class="dtl_pic2" width="60" height="60"><div align="center">
																<asp:ImageButton id="image5" runat="server"></asp:ImageButton></div>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</TBODY>
								</table>
							</td>
						</tr>
						<tr>
							<td height="20"><IMG height="5" src="../../../images/objects/no.gif" width="1"></td>
						</tr>
						<tr>
							<td bgColor="lightgrey">
								<center><font id="txtclose" onclick="window.close()" style="CURSOR: hand"><u><b>ปิดหน้านี้ </b>
										</u></font>
								</center>
							</td>
						</tr>
						<tr>
							<td height="50"><IMG height="5" src="../../../images/objects/no.gif" width="1"></td>
						</tr>
					</TBODY>
				</table>
			</center>
		</form>
		<script src="../../../j_script/showPictures.js" type="text/javascript"></script>
		<script language="javascript">
		<!--
			function changeMain(pic){
				setPic(document.Form1.elements[pic].src,0);
			}
			<%
			'dim i as integer
			'dim pic as string
			'for i = 0 to 4 
			'	if pics.GetValue(i+1) = "noimage3.gif" then
			'		pic = "../../../images/objects/no_image_250x188.gif"
			'	else
			'		pic = pics.GetValue(i+1)
			'	end if
			%>
			//	setPic('<%'=pic%>',<%'=i%>);
			<%
			'next
			%>
		
		//-->
		</script>
		</FORM>
		<DIV></DIV>
		</TR></TBODY></TABLE></TR></TBODY></TABLE>
		<CENTER></CENTER>
		</FORM>
	</body>
</HTML>
