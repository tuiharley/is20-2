<%@ Page CodeBehind="business_package_list.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="manage.business_package_list" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>Unbenanntes Dokument</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		<link href="../../../css/css.css" rel="stylesheet" type="text/css">
			<style type="text/css">
.Stil6 { COLOR: #009900 }
.Stil7 { COLOR: #ff0000 }
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
.Stil28 { FONT-WEIGHT: bold; COLOR: #999999 }
.Stil30 { FONT-WEIGHT: bold; COLOR: #009900 }
.Stil31 { FONT-WEIGHT: bold; COLOR: #ff0000 }
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
								<td nowrap><img src="../../../pics/objects2/arrow-open.gif" width="8" height="7">&nbsp;
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
					<td nowrap class="bdubbelborder"><table border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="../../../pics/icons/detail_32x32.gif" width="32" height="32"></td>
								<td><img src="../../../pics/objects/no.gif" width="10" height="1"></td>
								<td nowrap><span class="Stil16"><u>Package List</u></span>&nbsp;
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
					<td nowrap><div align="center"><strong>Package Code </strong>
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
					<td nowrap><div align="center"><strong>Ad List </strong>
						</div>
					</td>
					<td nowrap><div align="center"><strong>Off Ads</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Type</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Status</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Function</strong></div>
					</td>
					<td nowrap><div align="center"><strong>Waiting</strong></div>
					</td>
					<td nowrap><div align="center"><strong>History </strong>
						</div>
					</td>
				</tr>
				<asp:Label id="hisList" runat="server"></asp:Label>
				<tr bgcolor="#d9d9ff">
					<td height="5" colspan="14"></td>
				</tr>
				<tr>
					<td height="5" colspan="14"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="Bborder">
				<tr>
					<td><asp:Label id="delBtn" runat="server"></asp:Label>
						<asp:Label id="submitBtn" runat="server"></asp:Label>
					</td>
				</tr>
				<tr>
					<td height="10"></td>
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
					<td class="font11Linebig">1. Colours:
						<span class="Stil6">Online packages which are status changeable marked green.</span>
						Online packages which are disable to change the status marked black.
						<span class="Stil7">Offline packages which are status changeable marked  red.</span>
						<span class="Stil22">Ran out packages (offline and confirmed) marked grey.</span><br>
						2. N= New package, P= Prolonged package, C= Changed package
						<br>
						3. At Waiting:
						<span class="Stil24">P/C</span>= a unconfirmed prolongation/change is existing,
						<span class="Stil26">P/C</span>= a confirmed prolongation/change is existing.<br>
						4. N-packages, which are green or red marked are status changeable until 7 days 
						after selection date, P/C-packages are status changeable until deletion date of 
						precede package (term end + 7 days). When a green online N-package will be 
						change to offline, the precede offline N-package condition returns. When a 
						green online P/C-package will be change to offline, the exact precede package 
						condition returns, so that prolongation/change marked red in waiting list 
						again.<br>
						5. Add a prolongation/change is then possible, when the present package has a 
						unchangeable online or offline status (with the exception of not yet term 
						started offline N-packages (marked red). They are status and package 
						changeable.). Add prolongation/change is until deletion date of package 
						possible, that means, when term end of package is reached, is it possible to 
						add a prolong or a change up to 7 days after term end.
						<br>
						6. Packages, which are offline because the term is ended (package marked grey), 
						can not have a confirmed prolongation/change (marked green) at the waiting 
						list. Reason: Such confirmed prolongations/changes replace the present grey 
						offline package at package list immediately and are marked as green online 
						P/C-Package. Packages, which are offline because the term have not started yet 
						(only red marked N-packages) can only have the option "change" package. Such 
						changes replace the present package immediately and are not visible at waiting 
						list. Important: The precede selection date of N-package will not be changed!
						<br>
						7. A prolongation and a change can not exist at the same time. If change a 
						waiting P-package to a waiting C-package, the P-package must delete at first, 
						so that function button "change" be can active. Same progress for change a 
						waiting C-packages to a waiting P-package.
						<br>
						8. It can exist only one waiting prolongation or change in each package at the 
						same time.<br>
						9. Deletion of package is always possible.<br>
						10. Package list is sorted by selection date of packges from NEW to OLD.</td>
				</tr>
				<tr>
					<td height="10" class="Bborder">&nbsp;</td>
				</tr>
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="standard_font">
				<tr>
					<td><strong class="Stil27"><u>Summary</u></strong></td>
				</tr>
				<tr>
					<td height="10"></td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding="3" cellspacing="1" class="standard_font">
				<tr>
					<td width="11%" nowrap><div align="right"><strong>Step 1:</strong></div>
					</td>
					<td colspan="3"><strong class="Stil24">N-packages is offline because term is not yet 
							started (unconfirmed offline).</strong>
					</td>
				</tr>
				<tr>
					<td nowrap><div align="right"><strong>Function</strong></div>
					</td>
					<td width="8%"><div align="center"><strong>Possibility</strong></div>
					</td>
					<td width="40%"><strong>Reason</strong></td>
					<td width="41%"><strong>Result</strong></td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change Status
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because package is unconfirmed and consequently offline. And deletion date is 
						not jet reached (selection date + 7 days).
					</td>
					<td>Packages goes green online. Term start and end will displayed.
					</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change package
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because package is unconfirmed offline.</td>
					<td>Package code will changed but selection date of precede package is still exist.
					</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Add Prolongation
						</div>
					</td>
					<td><div align="center">no</div>
					</td>
					<td>Because package is not jet confirmed.
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Delete</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>It is always possible.</td>
					<td>Complete package category will be deleted.
					</td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding="3" cellspacing="1" class="standard_font">
				<tr>
					<td width="11%" nowrap><div align="right"><strong>Step 2:</strong></div>
					</td>
					<td colspan="3"><span class="Stil26"><strong class="Stil26">N/P/C-package is online and 
								deletion date of precede package is still not reached. </strong>
						</span>
					</td>
				</tr>
				<tr>
					<td nowrap><div align="right"><strong>Function</strong></div>
					</td>
					<td width="8%"><div align="center"><strong>Possibility</strong></div>
					</td>
					<td width="40%"><strong>Reason</strong></td>
					<td width="41%"><strong>Result</strong></td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change Status
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because deletion date of precede package is not yet reached. Deletion date of 
						new started N packages is their own selection date + 7 days. Deletion date of 
						term ended N/P/C-packages is term end + 7 days.</td>
					<td>Complete precede package situation comes back. Prolongations/Changes will be 
						displayed again as unconfirmed at waiting list. N-packages will be gone offline 
						without a change of selection date.
					</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change package
						</div>
					</td>
					<td><div align="center">no
						</div>
					</td>
					<td>Because this online package has a changeable status. If want to change this 
						package at this time realy, so it must go offline at first, so that the precede 
						package situation comes back. Yet is it possible to edit the precede main 
						package again, because N/P/C have a unconfirmed status.
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Add Prolongation
						</div>
					</td>
					<td><div align="center">no</div>
					</td>
					<td>Because this online package has a changeable status. If want to change this 
						package at this time realy, so it must go offline at first, so that the precede 
						package situation comes back. Yet is it possible to edit the precede main 
						package again, because N/P/C have a unconfirmed status.
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Delete</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Is always possible
					</td>
					<td>Complete package category will be deleted.
					</td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding="3" cellspacing="1" class="standard_font">
				<tr>
					<td width="11%" nowrap><div align="right"><strong>Step 3:</strong></div>
					</td>
					<td colspan="3"><strong>N/P/C-package is online and deletion date of precede package is 
							already reached. </strong>
					</td>
				</tr>
				<tr>
					<td nowrap><div align="right"><strong>Function</strong></div>
					</td>
					<td width="8%"><div align="center"><strong>Possibility</strong></div>
					</td>
					<td width="40%"><strong>Reason</strong></td>
					<td width="41%"><strong>Result</strong></td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change Status
						</div>
					</td>
					<td><div align="center">no</div>
					</td>
					<td>Because deletion date of precede package is already reached.
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change package
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because this online status is unchangeable and deletion date of this present 
						package is not yet reached.
					</td>
					<td>Unconfirmed prolongations/changes will listed red at waiting. Confirmed 
						prolongations/changes will listed green at waiting.</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Add Prolongation
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because this online status is unchangeable and deletion date of this present 
						package is not yet reached.
					</td>
					<td>Unconfirmed prolongations/changes will listed red at waiting. Confirmed 
						prolongations/changes will listed green at waiting.</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Delete</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Is always possible
					</td>
					<td>Complete package category will be deleted.
					</td>
				</tr>
			</table>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="20"></td>
				</tr>
			</table>
			<table width="100%" border="1" cellpadding="3" cellspacing="1" class="standard_font">
				<tr>
					<td width="11%" nowrap><div align="right"><strong>Situation 4:</strong></div>
					</td>
					<td colspan="3"><span class="Stil28">N/P/C-package is offline because term is ended. </span></td>
				</tr>
				<tr>
					<td nowrap><div align="right"><strong>Function</strong></div>
					</td>
					<td width="8%"><div align="center"><strong>Possibility</strong></div>
					</td>
					<td width="40%"><strong>Reason</strong></td>
					<td width="41%"><strong>Result</strong></td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change Status
						</div>
					</td>
					<td><div align="center">no</div>
					</td>
					<td>Because deletion date of precede package is already reached.
					</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Change package
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because this offline status is unchangeable and deletion date of this present 
						package is not yet reached.
					</td>
					<td>Unconfirmed prolongations/changes will listed red at waiting. Confirmed 
						prolongations/changes replace the present grey package at package list 
						immediately and are as green online P/C-package visible.</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Add Prolongation
						</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Because this offline status is unchangeable and deletion date of this present 
						package is not yet reached.
					</td>
					<td>Unconfirmed prolongations/changes will listed red at waiting. Confirmed 
						prolongations/changes replace the present grey package at package list 
						immediately and are as green online P/C-package visible.</td>
				</tr>
				<tr>
					<td nowrap><div align="right">Delete</div>
					</td>
					<td><div align="center">yes</div>
					</td>
					<td>Is always possible
					</td>
					<td>Complete package category will be deleted.
					</td>
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
			if(document.Form1.elements["chkB"]!=null){
				var checkB = document.Form1.elements["chkB"];
				var maxCheckB = checkB.length;
				var tmpTxt='';
					if(confirm('Deleted packages will not be recoverd!Confirm?')){
						if(maxCheckB==null){
											if(checkB.checked){
												manage.business_package_list.deleteAds(1,checkB.value,nextStep);	
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
										manage.business_package_list.deleteAds(2,tmpTxt,nextStep);
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
			
			function goProlong(cust_id,noticeid,pack,cat){
			
				window.location.href='../prolongNchange/prolongterm.aspx?cust_id='+cust_id+'&noticeid='+noticeid+'&cat='+cat+'&packageid='+pack;
			}
			function goChange(cust_id,noticeid){
			
				window.location.href='../prolongNchange/change_sizeterm.aspx?noticeid='+noticeid;
			}
			function addPack(cust_id){
				window.location.href='business_newselection1_category.aspx?cust_id='+cust_id;
			}
		</script>
	</body>
</HTML>
