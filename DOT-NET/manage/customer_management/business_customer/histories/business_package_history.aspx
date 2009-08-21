<%@ Page CodeBehind="business_package_history.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.business_package_history" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/css.css" rel="stylesheet" type="text/css">
			<style type="text/css"> .Stil16 { FONT-WEIGHT: bold; FONT-SIZE: 16px } .Stil18 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #000000; FONT-STYLE: normal; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-VARIANT: normal } A:link { COLOR: #000000 } A:visited { COLOR: #000000 } A:hover { COLOR: #000000 } A:active { COLOR: #000000 } .Stil19 { COLOR: #999999 } .Stil21 { FONT-SIZE: 11px; COLOR: #000000; FONT-STYLE: normal; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-VARIANT: normal } </style>
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
				<td height="5"></td>
			</tr>
			<tr>
				<td><table border="0" align="right" cellpadding="0" cellspacing="0" class="small_standard_font">
						<tr>
							<td><img src="../../../pics/icons/money_16x16.gif" width="16" height="16" align="textTop">&nbsp;
								<asp:HyperLink id="salesSum" runat="server">Sales Summary</asp:HyperLink></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="5"></td>
			</tr>
			<tr>
				<td nowrap class="bdubbelborder"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><img src="../../../pics/icons/history_32x32.gif" width="32" height="32"></td>
							<td><img src="../../../pics/objects/no.gif" width="10" height="1"></td>
							<td nowrap><span class="Stil16"><u>History of
										<asp:Label id="adType" runat="server"></asp:Label>
										Package :
										<asp:Label id="noticeCode" runat="server"></asp:Label></u>
								</span></td>
							<td width="75%" nowrap>&nbsp;</td>
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
				<td nowrap><div align="center"><strong>Reference&nbsp;Code </strong>
					</div>
				</td>
				<td nowrap><div align="center"><strong>Selection Date </strong>
					</div>
				</td>
				<td nowrap><div align="center"><strong>Package</strong></div>
				</td>
				<td nowrap><div align="center"><strong>Price</strong></div>
				</td>
				<td nowrap><div align="center"><strong>Term Start </strong>
					</div>
				</td>
				<td nowrap><div align="center"><strong>Term End </strong>
					</div>
				</td>
				<td nowrap><div align="center"><strong>Type</strong></div>
				</td>
			</tr>
			<asp:Label id="hisList" runat="server"></asp:Label>
			<tr bgcolor="#d9d9ff">
				<td></td>
				<td><div align="right"><strong>Total:</strong></div>
				</td>
				<td><div align="center"><strong>&nbsp;
							<asp:Label id="PTotal" runat="server"></asp:Label>
							Packs</strong></div>
				</td>
				<td><div align="center"><strong>&nbsp;
							<asp:Label id="GTotal" runat="server"></asp:Label>
							Baht </strong>
					</div>
				</td>
				<td colspan="2"><div align="center"></div>
				</td>
				<td></td>
			</tr>
			<tr>
				<td height="5"></td>
				<td height="5"></td>
				<td height="5"></td>
				<td height="5"></td>
				<td height="5"></td>
				<td height="5"></td>
				<td height="5"></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
			<tr>
				<td height="20"></td>
			</tr>
		</table>
	</body>
</HTML>
