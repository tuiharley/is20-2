<%@ Page CodeBehind="compare_top_vehicle_moto.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.compare_top_vehicle_moto" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
  <HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/style.css" rel="stylesheet" type="text/css">
			<style type="text/css">
BODY { BACKGROUND-IMAGE: none; MARGIN: 5px 0px 0px; BACKGROUND-COLOR: #ff9900 }
</style>
</HEAD>
	<body>
		<form id="form1" name="form1" runat="server">
			<table width="100%" height="75" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="10" height="70"></td>
					<td><table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="211" rowspan="2"><img src="../../../images/main_table/ao_logo_compare.jpg" width="211" height="70"></td>
								<td height="37"><div align="center"><img src="../../../images/main_table/compare_text.jpg" width="462" height="37"></div>
								</td>
								<td width="211" rowspan="2"></td>
							</tr>
							<tr>
								<td height="33"><table width="301" height="30" border="0" align="center" cellpadding="0" cellspacing="0"
										background="../../../images/table/sort_t_b.gif">
										<tr>
											<td height="21" nowrap><div align="center">
													<table border="0" cellpadding="0" cellspacing="0" class="H1_white">
														<tr>
															<td>&#3648;&#3619;&#3637;&#3618;&#3591;&#3621;&#3635;&#3604;&#3633;&#3610;&#3650;&#3604;&#3618;&nbsp;
																<asp:dropdownlist id="Order_By" Height="16px" runat="server" CssClass="Font_black">
																	<asp:ListItem Value="0">&#3619;&#3634;&#3588;&#3634;</asp:ListItem>
																	<asp:ListItem Value="1">&#3611;&#3637;</asp:ListItem>
																	<asp:ListItem Value="2">&#3595;&#3637;&#3595;&#3637;/cc</asp:ListItem>
																	<asp:ListItem Value="3">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</asp:ListItem>
																	<asp:ListItem Value="4">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</asp:ListItem>
																	<asp:ListItem Value="5">&#3629;&#3634;&#3618;&#3640;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:ListItem>
																</asp:dropdownlist>
															</td>
															<td width="4"></td>
															<td>
															<input id='sort' onmouseover="document.all.sort.className='buttonover'" style="CURSOR: hand"
															onmouseout="document.all.sort.className='button'" class='button' type='button' value='GO!'
															onClick='doSend();' name='sort' > 
                        </A>
															</td>
														</tr>
													</table>
												</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width="10"></td>
				</tr>
				<tr>
					<td height="5" colspan="3"></td>
				</tr>
				<tr>
					<td height="5" colspan="3"><img src="../../../images/lines/l_g_1.gif" width="100%" height="5"></td>
				</tr>
			</table>
		</form>
		<script language="javascript">
		function doSend(sort_condition){
				//top.mainFrame.location.href='compare_main_car.aspx?sort_by='+sort_condition;
				top.mainFrame.location.href='compare_main_moto.aspx?sort_by=' + document.all['Order_By'].value;
		}
		function back(){
				top.document.location.href='../../../result_lists/result_list_moto.aspx?cur_Page=<%'=cur_Page%>';
		}
			</script>
	</body>
</HTML>