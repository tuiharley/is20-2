<%@ Page CodeBehind="business_moto_detail.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.business_moto_detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../../css/css.css" type="text/css" rel="stylesheet">
			<style type="text/css">.Stil16 { FONT-WEIGHT: bold; FONT-SIZE: 16px }
	.Stil18 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #000000; FONT-STYLE: normal; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-VARIANT: normal }
	A:link { COLOR: #000000 }
	A:visited { COLOR: #000000 }
	A:hover { COLOR: #000000 }
	A:active { COLOR: #000000 }
	.Stil27 { FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #000000 }
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
									<div align="right"><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">
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
					<td noWrap width="100%" colSpan="2" height="5"></td>
				</tr>
			</table>
			<table class="Bborder" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td noWrap height="5"></td>
					<td noWrap></td>
				</tr>
				<tr>
					<td vAlign="top" noWrap>
						<table class="small_standard_font" cellSpacing="0" cellPadding="0" border="0">
							<tr>
								<td><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
									<asp:HyperLink id="personData" runat="server">Personal Datas</asp:HyperLink>&nbsp;&nbsp;</td>
								<td><img src="../../../pics/objects2/arrow-filled.gif" width="8" height="7">&nbsp;
									<asp:HyperLink id="webLink" runat="server">Webpage at AOC</asp:HyperLink>&nbsp;&nbsp;</td>
							</tr>
						</table>
					</td>
					<td noWrap>
						<table class="small_standard_font" cellSpacing="0" cellPadding="0" align="right" border="0">
							<tr>
								<td noWrap><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">&nbsp;
									<asp:HyperLink id="AdList" runat="server">Ad List</asp:HyperLink></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td noWrap colSpan="2" height="15"></td>
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
					<td noWrap colSpan="2" height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td width="562" height="20"></td>
				</tr>
				<tr>
					<td class="bdubbelborder" noWrap>
						<table cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td width="32"><IMG height="32" src="../../../pics/icons/ad_list_32x32.gif" width="32"></td>
								<td width="10" rowSpan="2"><IMG height="1" src="../../../pics/objects/no.gif" width="10"></td>
								<td noWrap width="202"><span class="Stil16"><u>Ad Detail of&nbsp;Moto Ad:</u></span></td>
								<td width="10" rowSpan="2"><IMG height="1" src="../../../pics/objects/no.gif" width="10"></td>
								<td class="Stil27" noWrap><asp:label id="AdTopic" runat="server"></asp:label></td>
							</tr>
							<tr>
								<td>&nbsp;</td>
								<td vAlign="top" noWrap>
									<div align="right"><strong>Status Comment: </strong>
									</div>
								</td>
								<td vAlign="top">
									<asp:Label id="sta_com" runat="server"></asp:Label></td>
							</tr>
							<tr>
								<td colSpan="5" height="5"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="585" align="center"
				border="0">
				<tr bgColor="#d9d9ff">
					<td bgColor="#d9d9ff">
						<asp:Label id="numUp" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<td height="15"></td>
				</tr>
				<tr>
					<td height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="1" cellPadding="3" width="585" align="center"
				border="0">
				<tr>
					<td bgColor="#d9d9ff">
						<div align="center"><strong>
								<asp:Label id="brand" runat="server"></asp:Label></strong></div>
					</td>
				</tr>
				<tr>
					<td height="15"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="585" align="center"
				border="0">
				<tr>
					<td width="285">
						<table cellSpacing="0" cellPadding="0" width="285" border="0">
							<tr>
								<td>
									<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" background="../images/table/dtl_vehicle.gif"
										border="0">
										<tr>
											<td colSpan="5" height="3"></td>
										</tr>
										<tr>
											<td width="1%"></td>
											<td vAlign="top" width="45%">
												<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3619;&#3606;</div>
											</td>
											<td width="3%"></td>
											<td width="50%"><asp:label id="category" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td width="1%"></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3619;&#3634;&#3588;&#3634;</div>
											</td>
											<td></td>
											<td><asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3626;&#3616;&#3634;&#3614;&#3619;&#3606;</div>
											</td>
											<td></td>
											<td><asp:label id="status" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3611;&#3637;</div>
											</td>
											<td></td>
											<td><asp:label id="yearcar" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3648;&#3621;&#3586;&#3652;&#3617;&#3621;&#3660;</div>
											</td>
											<td></td>
											<td><asp:label id="miles" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3611;&#3619;&#3632;&#3648;&#3616;&#3607;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td></td>
											<td><asp:label id="enginetype" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3585;&#3635;&#3621;&#3633;&#3591;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td></td>
											<td><asp:label id="power" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td height="16"></td>
											<td vAlign="top" height="16">
												<div align="right">&#3626;&#3637;</div>
											</td>
											<td height="16"></td>
											<td height="16"><asp:label id="colors" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td height="16"></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3586;&#3633;&#3610;&#3648;&#3588;&#3621;&#3639;&#3656;&#3629;&#3609;</div>
											</td>
											<td></td>
											<td><FONT face="Tahoma"><asp:label id="Drive" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3619;&#3632;&#3610;&#3610;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
											</td>
											<td></td>
											<td><asp:label id="gear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3648;&#3585;&#3637;&#3618;&#3619;&#3660;</div>
											</td>
											<td></td>
											<td><asp:label id="numgear" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3592;&#3635;&#3609;&#3623;&#3609;&#3626;&#3641;&#3610;</div>
											</td>
											<td></td>
											<td><asp:label id="numpump" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3586;&#3609;&#3634;&#3604;&#3648;&#3588;&#3619;&#3639;&#3656;&#3629;&#3591;&#3618;&#3609;&#3605;&#3660;</div>
											</td>
											<td></td>
											<td><asp:label id="cc" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5" height="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3605;&#3619;&#3623;&#3592;&#3626;&#3629;&#3610;&#3619;&#3606;&#3588;&#3619;&#3633;&#3657;&#3591;&#3621;&#3656;&#3634;&#3626;&#3640;&#3604;</div>
											</td>
											<td></td>
											<td><asp:label id="lastcheck" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3619;&#3606;&#3617;&#3637;&#3629;&#3640;&#3610;&#3633;&#3605;&#3636;&#3648;&#3627;&#3605;&#3640;(&#3618;&#3633;&#3591;&#3652;&#3617;&#3656;&#3595;&#3656;&#3629;&#3617;)</div>
											</td>
											<td></td>
											<td><FONT face="Tahoma"><asp:label id="accident" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3619;&#3606;&#3617;&#3637;&#3611;&#3619;&#3632;&#3585;&#3633;&#3609;</div>
											</td>
											<td></td>
											<td><asp:label id="insurrunce" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5"><IMG height="3" src="../images/dividers/dtl_vehicle.gif"></td>
										</tr>
										<tr>
											<td></td>
											<td vAlign="top">
												<div align="right">&#3648;&#3621;&#3586;&#3605;&#3633;&#3623;&#3619;&#3606;</div>
											</td>
											<td></td>
											<td><asp:label id="carid" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
											<td></td>
										</tr>
										<tr>
											<td colSpan="5" height="3"></td>
										</tr>
										<tr>
											<td bgColor="#d9d9ff" colSpan="5"><strong>Equipment</strong></td>
										</tr>
										<tr>
											<td bgColor="#f4f4f4" colSpan="5" height="100"><asp:label id="accessory" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:label></td>
										</tr>
										<tr>
											<td bgColor="#d9d9ff" colSpan="5"><strong>More Information </strong>
											</td>
										</tr>
										<tr>
											<td bgColor="#f4f4f4" colSpan="5" height="100"><asp:label id="description" runat="server" CssClass="Font_black_LH_17px" Width="100%" Height="70px"></asp:label></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15">&nbsp;</td>
					<td vAlign="top" width="285">
						<table cellSpacing="0" cellPadding="0" width="285" border="0">
							<tr>
								<td>
									<table height="214" cellSpacing="1" cellPadding="3" width="285" border="0">
										<tr>
											<td bgColor="#e6e6e6">
												<div align="center"><asp:image id="Image1" runat="server"></asp:image></div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td>
												<table height="45" cellSpacing="1" cellPadding="3" width="60" border="0">
													<tr>
														<td bgColor="#e6e6e6">
															<div align="center"><asp:image id="Image2" runat="server"></asp:image></div>
														</td>
													</tr>
												</table>
											</td>
											<td>
												<table height="45" cellSpacing="1" cellPadding="3" width="60" align="center" border="0">
													<tr>
														<td bgColor="#e6e6e6">
															<div align="center"><asp:image id="Image3" runat="server"></asp:image></div>
														</td>
													</tr>
												</table>
											</td>
											<td>
												<table height="45" cellSpacing="1" cellPadding="3" width="60" align="center" border="0">
													<tr>
														<td bgColor="#e6e6e6">
														</td>
													</tr>
												</table>
											</td>
											<td>
												<table height="45" cellSpacing="1" cellPadding="3" width="60" align="center" border="0">
													<tr>
														<td bgColor="#e6e6e6">
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="1" cellPadding="3" width="100%" border="0">
										<tr>
											<td noWrap bgColor="#d9d9ff" colSpan="2"><strong>Functions</strong></td>
										</tr>
										<tr bgColor="#f4f4f4">
											<td noWrap width="24%">
												<div align="center"><IMG height="16" src="../../../pics/icons/edit_16x16.gif" width="16"></div>
											</td>
											<td noWrap width="76%" bgColor="#e6e6e6"><u>
													<asp:HyperLink id="editAd" runat="server">Edit</asp:HyperLink></u></td>
										</tr>
										<tr bgColor="#f4f4f4">
											<td noWrap>
												<div align="center"><IMG height="16" src="../../../pics/icons/change_internal_status_16x16.gif" width="16"></div>
											</td>
											<td noWrap bgColor="#e6e6e6">
												<asp:HyperLink id="show_ad" runat="server" ForeColor="Black" Font-Underline="True">Change int. Status</asp:HyperLink><FONT face="Tahoma">&nbsp;
													<asp:label id="st" runat="server" CssClass="Font_black_LH_17px"></asp:label></FONT></td>
										</tr>
										<tr bgColor="#f4f4f4">
											<td noWrap>
												<div align="center"><IMG height="16" src="../../../pics/icons/delete_16x16.gif" width="16"></div>
											</td>
											<td noWrap bgColor="#e6e6e6"><u>
													<asp:HyperLink id="del_ad" runat="server" ForeColor="Black" Font-Underline="True">Delete</asp:HyperLink></u></td>
										</tr>
										<tr bgColor="#f4f4f4">
											<td noWrap bgColor="#d9d9ff" colSpan="2" height="5"></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="3" height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="585" align="center"
				border="0">
				<tr>
					<td height="10"></td>
				</tr>
				<tr bgColor="#d9d9ff">
					<td width="51%">
						<asp:Label id="numDown" runat="server"></asp:Label>
					</td>
				</tr>
			</table>
			<table class="Bborder" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
		</form>
		<script language="javascript">
		 /* Select Case A_customer_notices(i).category
                Case 1
                    nPage = "private_vehicle_detail.aspx"
                Case 2
                    nPage = "private_moto_detail.aspx"
                Case 3
                    nPage = "private_truck_detail.aspx"
                Case 4
                    nPage = "private_part_detail.aspx"
            End Select*/
         function getUrl(cat){
         var urlTxt;
			switch (cat){
				case 1:
					urlTxt = 'private_vehicle_detail.aspx';
					break;			
				case 2:
					urlTxt = 'private_moto_detail.aspx';
					break;
				case 3:
					urlTxt = 'private_truck_detail.aspx';
					break;
				case 4:
					urlTxt = 'private_part_detail.aspx';
					break;
				default:
					urlTxt = 'error';
			}
                 
         return urlTxt;
         }
		 function goPage(pageNo,noticeid,custid,cat){
			//alert(cat);
			var nextPage;
			nextPage = getUrl(cat);
			
			if(nextPage=='error'){
				alert('Cant change the page.Please contact web administrator');
			}else{
				window.location.href=nextPage+'?cust_id='+custid+'&noticeid='+noticeid+'&curPos='+pageNo;
			}
			
		 }
		</script>
	</body>
</HTML>
