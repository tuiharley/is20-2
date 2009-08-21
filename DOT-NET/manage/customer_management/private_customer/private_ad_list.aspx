<%@ Page CodeBehind="private_ad_list.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.private_ad_list" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../css/css.css" rel="stylesheet" type="text/css">
			<style type="text/css">
			 .Stil6 { COLOR: #009900 }
			 .Stil7 { COLOR: #ff0000 }
			 .Stil9 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #ff9933; FONT-STYLE: normal }
			 .Stil16 { FONT-WEIGHT: bold; FONT-SIZE: 16px }
			 .Stil18 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #000000; FONT-STYLE: normal; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; FONT-VARIANT: normal }
			 A:link { COLOR: #000000 }
			 A:visited { COLOR: #000000 }
			 A:hover { COLOR: #000000 }
			 A:active { COLOR: #000000 }
			 .Stil22 { COLOR: #666666 }
			 .Stil24 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #ff0000 }
			 .Stil26 { FONT-WEIGHT: bold; FONT-SIZE: 11px; COLOR: #009900 }
			 .Stil27 { FONT-SIZE: 16px }
			 .Stil29 { COLOR: #999999 }
			 </style>
	</HEAD>
	<body>
		<form id="Form1" runat="server" name="Form1">
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
					<td valign="top" nowrap><table border="0" cellpadding="0" cellspacing="0" class="small_standard_font">
							<tr>
								<td><img src="../../pics/objects2/arrow-filled.gif" width="8" height="7"> <a href="private_personal_data.htm" target="_blank">
										Personal Datas</a>&nbsp;&nbsp;</td>
							</tr>
						</table>
					</td>
					<td nowrap><table border="0" align="right" cellpadding="0" cellspacing="0" class="small_standard_font">
							<tr>
								<td nowrap><img src="../../pics/objects2/arrow-open.gif" width="8" height="7">&nbsp;
									<asp:HyperLink id="AdList" runat="server">Ad List</asp:HyperLink></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="15" colspan="2" nowrap></td>
				</tr>
				<tr>
					<td colspan="2" nowrap><img src="../../pics/icons/customer_16x16.gif" width="16" height="16" align="absMiddle">&nbsp;
						<asp:Label id="custName" runat="server"></asp:Label>
						<strong>
							<br>
							<img src="../../pics/icons/email_16x16.gif" width="16" height="16" align="absMiddle">&nbsp;
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
					<td height="5"></td>
				</tr>
				<tr>
					<td><table border="0" align="right" cellpadding="0" cellspacing="0" class="small_standard_font">
							<tr>
								<td><img src="../../pics/icons/history_16x16.gif" width="16" height="16" align="textTop">&nbsp;
									<asp:HyperLink id="adHis" runat="server">Ad History</asp:HyperLink></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="5"></td>
				</tr>
				<tr>
					<td nowrap class="bdubbelborder"><table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="../../pics/icons/detail_32x32.gif" width="32" height="32"></td>
								<td><img src="../../pics/objects/no.gif" width="10" height="1"></td>
								<td><span class="Stil16"><u>Private Ad List</u></span>
									<strong>(Realistic example: Example date for today 01-12-2006)</strong>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="3" cellspacing="1" class="standard_font">
				<tr bgcolor="#d9d9ff">
					<td width="20" nowrap><div align="center"></div>
					</td>
					<td nowrap><div align="center"><strong>Ad Code </strong>
						</div>
					</td>
					<td nowrap><div align="center"><strong>Selection Date </strong>
						</div>
					</td>
					<td nowrap><div align="center"><strong>Ad</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Price</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Term Start </strong>
						</div>
					</td>
					<td nowrap><div align="center"><strong>Term End </strong>
						</div>
					</td>
					<td nowrap><div align="center"><strong>Ad Detail </strong>
						</div>
					</td>
					<td nowrap><div align="center"><strong>On/Off</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Type</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Status</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Function</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Waiting</strong></div>
					</td>
				</tr>
				<asp:Label id="noticeList" runat="server"></asp:Label>
				<tr bgcolor="#d9d9ff">
					<td height="5" colspan="13"></td>
				</tr>
				<tr>
					<td height="5" colspan="13"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
				<tr>
					<td width="50%"><input name="del" id="del" type="button" onClick="delAd();" class="standard_font" value="Delete">
						<select name="cmd" class="standard_font" id="cmd">
							<option value='0' selected>Select a new Ad</option>
							<option value='1'>Car Ad</option>
							<option value='2'>Moto Ad</option>
							<option value='3'>Truck Ad</option>
							<option value='4'>Part/Acc. Ad</option>
						</select>
						<input name="add" id="add" type="button" onClick="addAd(document.Form1.cmd.value);" class="standard_font"
							value="Add">
						<div align="right"><FONT face="Tahoma"></FONT>
						</div>
					</td>
				</tr>
				<tr>
					<td width="50%" height="10"></td>
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
					<td class="font11Linebig">Same rules/system like "<a href="../business_customer/lists/business_package_list.htm" target="_parent">Business 
							package List</a> ", but without the funktion "Change". "On/Off" options are 
						integrated in private ad list too (because it's a ad list). List is sorted by 
						selection date from new to old but internal off status ads will showed always 
						at first and off is marked grey.</td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
		</form>
		<script language="javascript">
			function delAd(){
			var checkB = document.Form1.elements["chkB"];
			var maxCheckB = checkB.length;
			var tmpTxt='';
			if(maxCheckB==null){
								if(checkB.checked){
									manage.private_ad_list.deleteAds(1,checkB.value,nextStep);	
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
							manage.private_ad_list.deleteAds(2,tmpTxt,nextStep);
							//showNewList("ok");
			}
			
			
			}
			function nextStep(response){
				if(response.value=='YES'){window.location.reload();}else{alert('selected not found!');}
			}
			function addAd(){
				var commd = document.Form1.cmd.value;
				if(commd == 0){
					alert('Please select ads type first!');
				}else{
					manage.private_ad_list.newAds(commd,nextPage);
				}
			}
			function nextPage(response){
				window.location.href=response.value;
			}
			
			
			
			
			
			
					function deleteDetail(){
						var checkB = document.form1.elements["noticeDe"];
						var maxCheckB = checkB.length;
						if(maxCheckB==null){
								if(checkB.checked){
									manage.package3_list_vehicle_term_new.setDetailDelete(checkB.value);	
								}
						}else{
							for(var i=0;i<maxCheckB;i++){
								if(checkB[i].checked){
								  manage.package3_list_vehicle_term_new.setDetailDelete(checkB[i].value);
								//alert(checkB[i].value);
								}
							}
							//showNewList("ok");
						}
						doSearch();
					}
		</script>
	</body>
</HTML>
