<%@ Page CodeBehind="private_personal_data.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.private_personal_data" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/css.css" rel="stylesheet" type="text/css">
			<style type="text/css"> A:link { COLOR: #000000 } A:visited { COLOR: #000000 } A:hover { COLOR: #000000 } A:active { COLOR: #000000 } BODY { MARGIN: 10px 25px 30px } </style>
			<script language="JavaScript" type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
//-->
			</script>
	</HEAD>
	<body>
		<table width="300" border="0" align="center" cellpadding="3" cellspacing="1">
			<tr bgcolor="#d9d9ff" class="standard_font">
				<td nowrap class="standard_font"><div align="right"><img src="../../pics/icons/customer_16x16.gif" width="16" height="16"></div>
				</td>
				<td nowrap><strong><asp:Label id="custName" runat="server"></asp:Label>
					</strong>
				</td>
			</tr>
			<tr bgcolor="#d9d9ff" class="standard_font">
				<td nowrap bgcolor="#e6e6e6" class="standard_font"><div align="right"><strong>Username: </strong>
					</div>
				</td>
				<td nowrap bgcolor="#f4f4f4"><strong><asp:Label id="custUser" runat="server"></asp:Label></strong></td>
			</tr>
			<tr bgcolor="#f4f4f4" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Seller Categ.:
					</div>
				</td>
				<td bgcolor="#f4f4f4">Private</td>
			</tr>
			<tr bgcolor="#e6e6e6" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">E-Mail:</div>
				</td>
				<td bgcolor="#f4f4f4"><u><asp:Label id="custEmail" runat="server"></asp:Label></u></td>
			</tr>
			<tr bgcolor="#f4f4f4" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Phone 1:</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="phone1" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#e6e6e6" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Phone 2:
					</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="phone2" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#f4f4f4" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Fax:</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="fax" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#e6e6e6" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Address:</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="custAddr" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#f4f4f4" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Province:</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="prov" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#e6e6e6" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">City:</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="city" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#f4f4f4" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Reg. Date:
					</div>
				</td>
				<td bgcolor="#f4f4f4"><asp:Label id="regDate" runat="server"></asp:Label></td>
			</tr>
			<tr bgcolor="#e6e6e6" class="standard_font">
				<td nowrap bgcolor="#e6e6e6"><div align="right">Sales:
					</div>
				</td>
				<td bgcolor="#f4f4f4">
					<asp:HyperLink id="amount" runat="server"></asp:HyperLink>
				</td>
			</tr>
			<tr bgcolor="#d9d9ff" height="5" class="standard_font">
				<td height="5" colspan="2" nowrap></td>
			</tr>
			<tr bgcolor="#e6e6e6" class="standard_font" height="5">
				<td colspan="2" nowrap><div align="center" onClick='window.close();' style='CURSOR: hand'>[Close]</div>
				</td>
			</tr>
		</table>
	</body>
</HTML>
