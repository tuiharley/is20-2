<%@ Page CodeBehind="private_sales_history.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.private_sales_history" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/css.css" rel="stylesheet" type="text/css">
			<style type="text/css">
.Stil16 { FONT-WEIGHT: bold; FONT-SIZE: 16px }
.Stil18 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #000000; FONT-STYLE: normal; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-VARIANT: normal }
A:link { COLOR: #000000 }
A:visited { COLOR: #000000 }
A:hover { COLOR: #000000 }
A:active { COLOR: #000000 }
</style>
	</HEAD>
	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
			<tr>
				<td nowrap><select name="select" class="standard_font">
						<option selected>Username</option>
						<option>Name</option>
						<option>Package Code</option>
						<option>Ad Code</option>
					</select>
					<input name="textfield" type="text" class="standard_font"> <input name="Submit" type="submit" class="standard_font" value="Search"></td>
				<td nowrap><table border="0" align="right" cellpadding="0" cellspacing="0">
						<tr>
							<td><div align="right"><img src="../../pics/objects2/arrow-filled.gif" width="8" height="7">
									<SCRIPT language="JavaScript" type="text/javascript">
        <!--
        document.write('<a href="javascript:history.back();" class="standard_font"> Back</a>');
        // -->
									</SCRIPT>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="100%" height="5" colspan="2" nowrap></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
			<tr>
				<td height="5" nowrap></td>
				<td nowrap></td>
			</tr>
			<tr>
				<td nowrap valign="top"><table border="0" cellpadding="0" cellspacing="0" class="small_standard_font">
						<tr>
							<td><img src="../../pics/objects2/arrow-filled.gif" width="8" height="7"> <a href="private_personal_data.htm" target="_blank">
									Personal Datas</a>&nbsp;&nbsp;</td>
						</tr>
					</table>
				</td>
				<td nowrap><table border="0" align="right" cellpadding="0" cellspacing="0" class="small_standard_font">
						<tr>
							<td nowrap><img src="../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
								<asp:HyperLink id="AdList" runat="server">Ad List</asp:HyperLink></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="15" colspan="2" nowrap></td>
			</tr>
			<tr>
				<td colspan="2" nowrap><img src="../../pics/icons/customer_16x16.gif" width="16" height="16" align="absMiddle">
					<span class="standard_font">
						<strong>
							<asp:Label id="custName" runat="server"></asp:Label></strong></span>
					<strong>
						<br>
						<img src="../../pics/icons/email_16x16.gif" width="16" height="16" align="absMiddle">
					</strong><u class="Stil18">
						<asp:Label id="custEmail" runat="server"></asp:Label></u>&nbsp; <img src="../../pics/icons/phone2_16x16.gif" align="absMiddle"><span class="standard_font"><strong>
							<asp:Label id="custTel" runat="server"></asp:Label></strong></span></td>
			</tr>
			<tr height="5">
				<td height="5" colspan="2" nowrap></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="standard_font">
			<tr>
				<td height="20"></td>
			</tr>
			<tr>
				<td nowrap class="bdubbelborder"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="3%"><img src="../../pics/icons/money_32x32.gif" width="32" height="32"></td>
							<td width="1%"><img src="../../pics/objects/no.gif" width="10" height="1"></td>
							<td width="12%" nowrap><span class="Stil16"><u>Sales Summary</u></span></td>
							<td width="84%" nowrap valign="bottom">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
			<tr>
				<td></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="3" cellspacing="1" class="standard_font">
			<TBODY>
				<tr bgcolor="#d9d9ff">
					<td width="34%" nowrap><div align="center"><strong>Ad Category </strong>
						</div>
					</td>
					<td width="33%" nowrap><div align="center"><strong>No. of Packages/Ads</strong></div>
					</td>
					<td width="33%" nowrap><div align="center"><strong>Sales</strong></div>
					</td>
				</tr>
				<tr bgcolor="#f4f4f4">
					<td width="34%" nowrap><div align="right">Car Ad
						</div>
					</td>
					<td width="33%" nowrap><div align="center"><asp:Label id="carNum" runat="server"></asp:Label></div>
					</td>
					<td width="33%" nowrap><asp:Label id="carSum" runat="server"></asp:Label>
						B
					</td>
				</tr>
				<tr bgcolor="#e6e6e6">
					<td width="34%" nowrap><div align="right">Motorcycle Ad
						</div>
					</td>
					<td width="33%" nowrap><div align="center"><asp:Label id="motoNum" runat="server"></asp:Label></div>
					</td>
					<td width="33%" nowrap><asp:Label id="motoSum" runat="server"></asp:Label><FONT face="Tahoma">&nbsp;B</FONT></td>
				</tr>
				<tr bgcolor="#f4f4f4">
					<td width="34%" nowrap><div align="right">Truck Ad
						</div>
					</td>
					<td width="33%" nowrap><div align="center"><asp:Label id="truckNum" runat="server"></asp:Label></div>
					</td>
					<td width="33%" nowrap><asp:Label id="truckSum" runat="server"></asp:Label>
						B
					</td>
				</tr>
				<tr bgcolor="#e6e6e6">
					<td width="34%" nowrap><div align="right">Part/Acc. Ad
						</div>
					</td>
					<td width="33%" nowrap><div align="center"><asp:Label id="partNum" runat="server"></asp:Label></div>
					</td>
					<td width="33%" nowrap><asp:Label id="partSum" runat="server"></asp:Label>
						B
					</td>
				</tr>
				<tr bgcolor="#d9d9ff">
					<td width="34%" nowrap><div align="center"><strong>Total</strong></div>
					</td>
					<td width="33%" nowrap><div align="center"><asp:HyperLink id="totalAds" runat="server"></asp:HyperLink>
						</div>
					</td>
					<td width="33%" nowrap><div align="center"><strong><asp:Label id="totalSum" runat="server"></asp:Label>
								B </strong>
						</div>
					</td>
				</tr>
			</TBODY>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
			<tr>
				<td height="20"></td>
			</tr>
		</table>
		<DIV></DIV>
		</TR></TBODY></TABLE>
		<DIV></DIV>
		</TR></TBODY></TABLE>
	</body>
</HTML>
