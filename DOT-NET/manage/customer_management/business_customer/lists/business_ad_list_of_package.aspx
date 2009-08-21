<%@ Page CodeBehind="business_ad_list_of_package.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.business_ad_list_of_package" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<LINK href="../../../css/css.css" type="text/css" rel="stylesheet">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">.Stil6 { COLOR: #009900 }
	.Stil7 { COLOR: #ff0000 }
	.Stil16 { FONT-WEIGHT: bold; FONT-SIZE: 16px }
	.Stil18 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #000000; FONT-STYLE: normal; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-VARIANT: normal }
	A:link { COLOR: #000000 }
	A:visited { COLOR: #000000 }
	A:hover { COLOR: #000000 }
	A:active { COLOR: #000000 }
	.Stil21 { FONT-SIZE: 13px }
	.Stil22 { FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #009900 }
	.Stil25 { FONT-WEIGHT: bold; COLOR: #ff0000 }
	.Stil26 { FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #ff0000 }
	.Stil27 { FONT-SIZE: 10px }
	.Stil28 { FONT-WEIGHT: bold; COLOR: #000000 }
	.Stil30 { FONT-WEIGHT: bold; FONT-SIZE: 13px; COLOR: #000000 }
	.Stil31 { COLOR: #999999 }
	.Stil32 { FONT-WEIGHT: bold; COLOR: #999999 }
	</style>
	</HEAD>
	<body>
		<form id="Form1" runat="server" name="Form1">
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
					<td noWrap width="50%" height="5"></td>
					<td noWrap width="50%"></td>
				</tr>
				<tr>
					<td vAlign="top" noWrap width="50%">
						<table class="small_standard_font" cellSpacing="0" cellPadding="0" border="0">
							<tr>
								<td><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">&nbsp;
									<asp:hyperlink id="personData" runat="server">Personal Datas</asp:hyperlink>&nbsp;&nbsp;</td>
								<td><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">&nbsp;
									<asp:hyperlink id="webLink" runat="server">Webpage at AOC</asp:hyperlink>&nbsp;&nbsp;</td>
							</tr>
						</table>
					</td>
					<td noWrap width="50%">
						<table class="small_standard_font" cellSpacing="0" cellPadding="0" align="right" border="0">
							<tr>
								<td noWrap><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">&nbsp;
									<asp:hyperlink id="PackList" runat="server">Pack List</asp:hyperlink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td noWrap><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">&nbsp;
									<asp:hyperlink id="soList" runat="server">SO List</asp:hyperlink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
								<td noWrap><IMG height="7" src="../../../pics/objects2/arrow-filled.gif" width="8">&nbsp;
									<asp:hyperlink id="jobList" runat="server">Job List</asp:hyperlink></td>
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
					<td height="5"></td>
				</tr>
				<tr>
					<td>
						<table class="standard_font" cellSpacing="0" cellPadding="0" align="right" border="0">
							<tr>
								<td noWrap><IMG height="16" src="../../../pics/icons/prolong_16x16.gif" width="16" align="absMiddle">&nbsp;
									<asp:hyperlink id="ProlongPck" runat="server">Prolong Pack</asp:hyperlink>&nbsp;&nbsp;&nbsp;</td>
								<td noWrap><IMG height="16" src="../../../pics/icons/change_pack_16x16.gif" width="16" align="absMiddle">&nbsp;
									<span class="small_standard_font">
										<asp:hyperlink id="ChgPack" runat="server">Change Pack</asp:hyperlink>
									</span></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td class="bdubbelborder" noWrap>
						<table cellSpacing="0" cellPadding="0" border="0">
							<tr>
								<td><IMG height="32" src="../../../pics/icons/detail_32x32.gif" width="32"></td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="10"></td>
								<td><span class="Stil16"><u>Ad List of Package:</u>
										<asp:label id="AdsHead" runat="server"></asp:label>
									</span></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr bgColor="#d9d9ff">
					<td width="78%">&nbsp;</td>
					<td width="22%">
						<table cellSpacing="0" cellPadding="0" align="right" border="0">
							<tr>
								<td class="small_standard_font" noWrap>|&lt;&lt;</td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap>&lt;&lt;</td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap><strong>Page&nbsp;&nbsp; 1</strong> 2<strong><strong>&nbsp;&nbsp;
										</strong>of 2</strong></td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap>&gt;&gt;</td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap>&gt;&gt;|</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colSpan="2" height="20"></td>
				</tr>
				<tr>
					<td colSpan="2" height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td><strong>Used Ad Places:
							<asp:label id="AdsNo" runat="server"></asp:label></strong></td>
				</tr>
				<tr>
					<td height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="1" cellPadding="3" width="100%" border="0">
				<tr bgColor="#d9d9ff">
					<td noWrap width="20">&nbsp;</td>
					<td noWrap>
						<div align="center"><strong>Ad Code </strong>
						</div>
					</td>
					<td noWrap>
						<div align="center"><strong>Insertion Date </strong>
						</div>
					</td>
					<td noWrap>
						<div align="center"><strong>
								<asp:label id="Hed1" runat="server"></asp:label></strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>
								<asp:label id="Hed2" runat="server"></asp:label></strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>Price</strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>Detail</strong></div>
					</td>
					<td noWrap>
						<div align="center"><strong>On/Off</strong></div>
					</td>
				</tr>
				<asp:label id="AdsDetail" runat="server"></asp:label>
				<tr bgColor="#d9d9ff">
					<td colSpan="8" height="5"></td>
				</tr>
				<tr>
					<td colSpan="8" height="5"></td>
				</tr>
			</table>
			<table cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td><asp:Label id="delBtn" runat="server"></asp:Label>
						<asp:Label id="submitBtn" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<td height="5"></td>
				</tr>
			</table>
			<table class="standard_font" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td colSpan="2" height="20"></td>
				</tr>
				<tr bgColor="#d9d9ff">
					<td width="51%">&nbsp;</td>
					<td width="50%">
						<table cellSpacing="0" cellPadding="0" align="right" border="0">
							<tr>
								<td class="small_standard_font" noWrap>|&lt;&lt;</td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap>&lt;&lt;</td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap><strong>Page&nbsp;&nbsp; 1</strong> 2<strong><strong>&nbsp;&nbsp;
										</strong>of 2</strong></td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap>&gt;&gt;</td>
								<td><IMG height="1" src="../../../pics/objects/no.gif" width="13"></td>
								<td class="small_standard_font" noWrap>&gt;&gt;|</td>
							</tr>
						</table>
					</td>
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
					<td noWrap><span class="Stil16"><u>Additionals</u></span></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
				<tr>
					<td class="font11Linebig"><strong>Displayed Infirmations:</strong><br>
						Vehicle Ad List: ... - ... - Make/Model/Version - Colour - Year - Price - 
						Detail - ... - ...<br>
						Part/Acc. Ad List: ... - ... - Product Category - Make/Model/Version - Price - 
						... - ... (see last example)
						<br>
						<strong>Colours:</strong><br>
						Internal "On" marked black<br>
						<span class="Stil31">Internal 
      "Off" marked grey</span><br>
						<strong>List is sorted by:</strong><br>
						List is sorted by inseration date from new to old but internal off status ads 
						will showed always at first and marked grey.</td>
				</tr>
			</table>
			<table class="Bborder" cellSpacing="0" cellPadding="0" width="100%" border="0">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
		</form>
		<script language="javascript">
			function delAd(){
			if(document.Form1.elements["chkB"]!=null){
						var checkB = document.Form1.elements["chkB"];
						var maxCheckB = checkB.length;
						var tmpTxt='';
						if(confirm('Deleted packages will not be recoverd!Confirm?')){
							if(maxCheckB==null){
												if(checkB.checked){
													manage.business_ad_list_of_package.deleteAds(1,checkB.value,nextStep);	
													//alert(checkB.value);
												}
												//alert('2');
							}else{
											for(var i=0;i<maxCheckB;i++){
												if(checkB[i].checked){
												tmpTxt += ',' + checkB[i].value;
												}
											}
											//alert(tmpTxt);
											manage.business_ad_list_of_package.deleteAds(2,tmpTxt,nextStep);
											//showNewList("ok");
							}
						}
			}else{
				alert('No package!');
			}	
			}
			function nextStep(response){
				if(response.value=='YES'){window.location.reload();}else{alert('selected not found!');}
			}
			function goAdd(noticeid,cust_id,cat){
				var nextPage;
				nextPage = getUrl(cat);
				if(nextPage=='error'){
					alert('Cant add the object.Please contact web master');
				}else{
					window.location.href=nextPage+'?cust_id='+cust_id+'&noticeid='+noticeid;
				}
			}
			
			function getUrl(cat){
			var urlTxt;
				switch (cat){
					case 1:
						urlTxt = '../ad_details/business_offer1_car_datas.aspx';
						break;			
					case 2:
						urlTxt = '../ad_details/business_offer1_moto_datas.aspx';
						break;
					case 3:
						urlTxt = '../ad_details/business_offer1_truck_datas.aspx';
						break;
					case 4:
						urlTxt = '../ad_details/business_offer1_part_datas.aspx';
						break;
					default:
						urlTxt = 'error';
				}
                 
			return urlTxt;
			}
		</script>
	</body>
</HTML>
