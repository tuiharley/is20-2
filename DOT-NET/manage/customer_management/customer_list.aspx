<%@ Page CodeBehind="customer_list.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.customer_list" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../css/css.css" type="text/css" rel="stylesheet">
			<style type="text/css">.Stil2 {
	FONT-WEIGHT: bold; COLOR: #0000cc
}
.Stil5 {
	COLOR: #009900
}
.Stil6 {
	COLOR: #ff0000
}
.Stil8 {
	FONT-WEIGHT: bold; FONT-SIZE: 16px
}
.Stil10 {
	FONT-WEIGHT: bold; COLOR: #ff6600
}
.Stil11 {
	FONT-WEIGHT: bold; COLOR: #cc0099
}
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:hover {
	COLOR: #000000
}
A:active {
	COLOR: #000000
}
</style>
	</HEAD>
	<body>
		<form id="Form1" name="Form1">
			<table class="Bborder" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td noWrap><select class="standard_font" name="select">
							<option selected>Username</option>
							<option>Name</option>
							<option>Package Code</option>
							<option>Ad Code</option>
						</select>
						<input class="standard_font" type="text" name="textfield"> <input class="standard_font" type="submit" value="Search" name="Submit"></td>
					<td noWrap>
						<table cellSpacing="0" cellPadding="0" align="right" border="0">
							<tr>
								<td>
									<div align="right"><IMG height="7" src="../pics/objects2/arrow-filled.gif" width="8">
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
					<td height="5"></td>
					<td></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr height="20">
					<td width="4%" height="20"></td>
				</tr>
				<tr>
					<td class="bdubbelborder" noWrap>
						<table cellSpacing="0" cellPadding="0" border="0">
							<tr>
								<td><IMG height="32" src="../pics/icons/customer_32x32.gif" width="32"></td>
								<td><IMG height="1" src="../pics/objects/no.gif" width="10"></td>
								<td noWrap><span class="Stil8"><u>Customer List</u>
									</span></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr height="7">
					<td height="20"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="1" cellPadding="3" width="100%" border="0">
				<tr bgColor="#d9d9ff">
					<td noWrap bgColor="#d9d9ff">
						<div align="center">
							<asp:HyperLink id="allcust" runat="server"></asp:HyperLink></STRONG></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><strong><asp:hyperlink id="allprivate" runat="server"></asp:hyperlink></strong></u></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><strong><asp:hyperlink id="allbusiness" runat="server"></asp:hyperlink></strong></u></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><asp:hyperlink id="allvehicle" runat="server"></asp:hyperlink></u></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><asp:hyperlink id="allpart" runat="server"></asp:hyperlink></u></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><asp:hyperlink id="allworkshop" runat="server"></asp:hyperlink></u></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><asp:hyperlink id="allrental" runat="server"></asp:hyperlink></u></div>
					</td>
					<td noWrap bgColor="#e6e6e6">
						<div align="center"><u><asp:hyperlink id="allcleaner" runat="server"></asp:hyperlink></u></div>
					</td>
				</tr>
				<tr bgColor="#cccccc">
					<td bgColor="#e6e6e6" height="3">
						<div align="center"><A href="message_box/inbox.aspx" target="_blank">Message</A></div>
					</td>
					<td bgColor="#d9d9ff" height="3">
						<div align="center"><A href="../parameters/Customer_Payment.aspx">Configuration</A></div>
					</td>
					<td bgColor="#d9d9ff" height="3"></td>
					<td bgColor="#d9d9ff" height="3"></td>
					<td bgColor="#d9d9ff" height="3"></td>
					<td bgColor="#d9d9ff" height="3"></td>
					<td bgColor="#d9d9ff" height="3"></td>
					<td bgColor="#d9d9ff" height="3"></td>
				</tr>
				<tr>
					<td colSpan="8" height="20"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr bgColor="#d9d9ff">
					<td width="78%">&nbsp;</td>
					<td width="22%"><asp:label id="numUp" runat="server"></asp:label></td>
				</tr>
				<tr>
					<td colSpan="2" height="20"></td>
				</tr>
				<tr>
					<td><strong>Selected List: All Customers(6) </strong>
					</td>
					<td>
						<div align="right"><select class="standard_font" name="select">
								<option>Username</option>
								<option>Name/Company</option>
								<option selected>Registration Date</option>
								<option>Seller category</option>
								<option>Sales</option>
							</select>
							<input class="standard_font" type="submit" value="Sort" name="Submit">
						</div>
					</td>
				</tr>
				<tr>
					<td colSpan="2" height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="1" cellPadding="3" width="100%" border="0">
				<tr bgColor="#d9d9ff">
					<td width="20">
						<div align="center"></div>
					</td>
					<td noWrap>
						<div align="center"><strong>Username</strong></div>
					</td>
					<td width="250">
						<div align="center"><strong>Name/Company</strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>Seller Categ. </strong>
						</div>
					</td>
					<td noWrap>
						<div align="center"><strong>Pers. Datas </strong>
						</div>
					</td>
					<td noWrap>
						<div align="center"><strong>Regist. Date </strong>
						</div>
					</td>
					<td noWrap width="74">
						<div align="center"><strong>Sales</strong></div>
					</td>
					<td noWrap bgColor="#d9d9ff">
						<div align="center"><strong>Package/Ad</strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>SO Ad</strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>Job Ad </strong>
						</div>
					</td>
					<td noWrap>
						<div align="center"><strong>Email</strong></div>
					</td>
				</tr>
				<asp:label id="cstList" runat="server"></asp:label>
				<tr bgColor="#d9d9ff">
					<td colSpan="11" height="5"></td>
				</tr>
				<tr>
					<td colSpan="11" height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="51%"><input class="standard_font" type="submit" value="Delete" name="Submit"></td>
					<td width="50%">
						<div align="right"></div>
					</td>
				</tr>
				<tr>
					<td colSpan="2" height="20"></td>
				</tr>
				<tr bgColor="#d9d9ff">
					<td>&nbsp;</td>
					<td width="50%"><asp:label id="numDown" runat="server"></asp:label></td>
				</tr>
			</table>
			<table class="Bborder" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td height="10"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td noWrap height="20">&nbsp;</td>
				</tr>
				<tr>
					<td noWrap><span class="Stil27"><strong><u>Explanation</u></strong></span></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td class="font11Linebig">1. The customer list can display main customer groups: 
						Private (all private customers), Business (all business customers), Vehicle 
						Dealer (all business customers, which selected as main business "vehicle 
						dealer"), Part/Acc. Dealer (all business customers, which selected as main 
						business "part/acc. dealer"), Workshop (all business customers, which selected 
						as main business "vehicle workshop"), Rental (all business customers, which 
						selected as main business "vehicle rental "), Cleaner (all business customers, 
						which selected as main business "vehicle cleaner") and of course all customers.<br>
						2. The customer list can be sorted by username, name/company, registration date 
						(new to old), seller category (1. vehicle dealer C/M/T, 2. part dealer C/M/T, 
						3. workshop C/M/T, 4. rental C/M/T, 5. cleaner C/M/T) and sales (big to small).
						<br>
						3. Company Names are be linked with their webpage at AOC. Private names have no 
						linking.
						<br>
						4. Seller Category is display the main business category of business customer. 
						Additional businesses will not be displayed at customer list. Business 
						customers are marked with a
						<span class="Stil10">B</span>, private customers are marked with a
						<span class="Stil2">P</span>.<br>
						5. Sales are be linked with sales history (a summary form of used 
						Packages/Ads).<br>
						6. Packages/Ads are display the numbers of online (marked green) and still 
						active offline (marked red) Packages/Ads. Job Ads have always a online status 
						and marked black. n.a. = not available
						<br>
						7. Each customer can be deleted.</td>
				</tr>
			</table>
			<table class="Bborder" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
		</form>
		<script language="javascript">
		 function goPage(pageNo){
			window.location.href='customer_list.aspx?curPage='+pageNo;
		 }
		</script>
	</body>
</HTML>
