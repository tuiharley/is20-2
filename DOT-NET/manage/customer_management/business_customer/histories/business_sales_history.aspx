<%@ Page CodeBehind="business_sales_history.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.business_sales_history" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/css.css" rel="stylesheet" type="text/css">
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
							<td><div align="right"><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">
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
				<td width="50%" height="5" nowrap></td>
				<td width="50%" nowrap></td>
			</tr>
			<tr>
				<td width="50%" valign="top" nowrap><table border="0" cellpadding="0" cellspacing="0" class="small_standard_font">
						<tr>
							<td><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
								<asp:HyperLink id="personData" runat="server">Personal Datas</asp:HyperLink>&nbsp;&nbsp;</td>
							<td><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
								<asp:HyperLink id="webLink" runat="server">Webpage at AOC</asp:HyperLink>&nbsp;&nbsp;</td>
						</tr>
					</table>
				</td>
				<td width="50%" nowrap><table border="0" align="right" cellpadding="0" cellspacing="0" class="small_standard_font">
						<tr>
							<td nowrap><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
								<asp:HyperLink id="PackList" runat="server">Pack List</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td nowrap><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
								<asp:HyperLink id="soList" runat="server">SO List</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td nowrap><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
								<asp:HyperLink id="jobList" runat="server">Job List</asp:HyperLink></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="15" colspan="2" nowrap></td>
			</tr>
			<tr>
				<td colspan="2" nowrap><img src="../../../pics/icons/customer_16x16.gif" width="16" height="16" align="absMiddle">&nbsp;
					<asp:Label id="custName" runat="server"></asp:Label>
					<img src="../../../pics/icons/contact_person_16x16.gif" width="16" height="16" align="absMiddle">
					<asp:Label id="ConPt" runat="server"></asp:Label>
					<br>
					<img src="../../../pics/icons/email_16x16.gif" width="16" height="16" align="absMiddle">&nbsp;
					<asp:Label id="custEmail" runat="server"></asp:Label>
					<img src="../../../pics/icons/phone2_16x16.gif" align="absMiddle"><span class="standard_font">
						<asp:Label id="custTel" runat="server"></asp:Label>
					</span></td>
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
							<td width="3%"><img src="../../../pics/icons/money_32x32.gif" width="32" height="32"></td>
							<td width="1%"><img src="../../../pics/objects/no.gif" width="10" height="1"></td>
							<td width="12%" nowrap><span class="Stil16"><u>Sales Summary</u></span></td>
							<td width="84%" nowrap valign="bottom"><table border="0" align="right" cellpadding="3" cellspacing="1">
									<tr>
										<td nowrap bgcolor="#f4f4f4"><div align="right">Customer since:
											</div>
										</td>
										<td nowrap bgcolor="#e6e6e6"><strong>
												<asp:Label id="DateSt" runat="server"></asp:Label></strong></td>
									</tr>
									<tr>
										<td nowrap bgcolor="#f4f4f4"><div align="right">Term end of latest Pack./Ad:</div>
										</td>
										<td nowrap bgcolor="#e6e6e6"><strong>
												<asp:Label id="DateEn" runat="server"></asp:Label></strong></td>
									</tr>
									<tr>
										<td nowrap bgcolor="#f4f4f4"><div align="right">Average sales 4 w until Term end of 
												latest Pack./Ad:</div>
										</td>
										<td nowrap bgcolor="#e6e6e6"><strong> </strong>
										</td>
									</tr>
								</table>
							</td>
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
			<tr bgcolor="#d9d9ff">
				<td width="25%" nowrap><div align="center"><strong>Package Category </strong>
					</div>
				</td>
				<td width="25%" nowrap><div align="center"><strong>No. of Packages/Ads</strong></div>
				</td>
				<td width="25%" nowrap><div align="center"><strong> Term End of latest Package/Ad</strong></div>
				</td>
				<td width="25%" nowrap><div align="center"><strong>Sales</strong></div>
				</td>
			</tr>
			<tr bgcolor="#f4f4f4">
				<td width="25%" nowrap><div align="right">Car Package
					</div>
				</td>
				<td width="25%" nowrap>
					<div align="center">
						<asp:HyperLink id="carAds" runat="server"></asp:HyperLink>
					</div>
				</td>
				<td width="25%" nowrap>
					<div align="center">
						<asp:Label id="carStart" runat="server"></asp:Label></div>
				</td>
				<td width="25%" nowrap>
					<asp:Label id="carSales" runat="server"></asp:Label>
				</td>
			</tr>
			<tr bgcolor="#e6e6e6">
				<td width="25%" nowrap><div align="right">Motorcycle Package
					</div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:HyperLink id="bikeAds" runat="server"></asp:HyperLink></div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:Label id="bikeStart" runat="server"></asp:Label></div>
				</td>
				<td width="25%" nowrap>
					<asp:Label id="bikeSales" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#f4f4f4">
				<td width="25%" nowrap><div align="right">Truck Package
					</div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:HyperLink id="truckAds" runat="server"></asp:HyperLink></div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:Label id="truckStart" runat="server"></asp:Label></div>
				</td>
				<td width="25%" nowrap>
					<asp:Label id="truckSales" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#e6e6e6">
				<td width="25%" nowrap><div align="right">Part/Acc. Package
					</div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:HyperLink id="partAds" runat="server"></asp:HyperLink></div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:Label id="partStart" runat="server"></asp:Label></div>
				</td>
				<td width="25%" nowrap>
					<asp:Label id="partSales" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#f4f4f4">
				<td width="25%" nowrap><div align="right">Special Offer Ad
					</div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:HyperLink id="soAds" runat="server"></asp:HyperLink></div>
				</td>
				<td width="25%" nowrap><div align="center">
						<asp:Label id="soStart" runat="server"></asp:Label></div>
				</td>
				<td width="25%" nowrap>
					<asp:Label id="soSales" runat="server"></asp:Label>
				</td>
			</tr>
			<tr bgcolor="#f4f4f4">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Job Ad
					</div>
				</td>
				<td nowrap bgcolor="#e6e6e6"><div align="center">
						<asp:HyperLink id="jobAds" runat="server"></asp:HyperLink></div>
				</td>
				<td nowrap bgcolor="#e6e6e6"><div align="center">
						<asp:Label id="jobStart" runat="server"></asp:Label></div>
				</td>
				<td nowrap bgcolor="#e6e6e6">
					<asp:Label id="jobSales" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#d9d9ff">
				<td width="25%" nowrap><div align="center"><strong>Total</strong></div>
				</td>
				<td width="25%" nowrap>&nbsp;</td>
				<td width="25%" nowrap>&nbsp;</td>
				<td width="25%" nowrap><div align="center"><strong>
							<asp:Label id="GTotal" runat="server"></asp:Label>
						</strong>
					</div>
				</td>
			</tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="10"><FONT face="Tahoma"></FONT></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="standard_font">
			<tr>
				<td height="20" nowrap>&nbsp;</td>
			</tr>
			<tr>
				<td nowrap><span class="Stil27"><strong><u>Explanation</u></strong></span></td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td class="font11Linebig">Job Ads are for free and its term end can not be used as 
					latest Ad in this calculation system.
				</td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
			<tr>
				<td height="20"></td>
			</tr>
		</table>
	</body>
</HTML>
