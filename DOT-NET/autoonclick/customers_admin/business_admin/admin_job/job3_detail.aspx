<%@ Page CodeBehind="job3_detail.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="autoonclick.job3_detail" codePage="65001"%>
<%@Register TagPrefix="logo" TagName="logo_login" Src="../MTop/MTop.ascx"%>
<%@Register TagPrefix="menubar" TagName="left_menubar" Src="../MLeft/MLeft2.ascx"%>
<%@Register TagPrefix="footer" TagName="footer_bar" Src="../MBottom/MBottom.ascx"%>
<%@Register TagPrefix="righter" TagName="righter_bar" Src="../right_menu/sky2.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<HTML>
	<HEAD>
		<title>AUTO-ONCLICK .explore Mobility</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<LINK href="../../../css/style.css" type="text/css" rel="stylesheet">
			<style type="text/css">BODY { BACKGROUND-IMAGE: url(../../../images/main_table/bg_page.GIF); MARGIN: 0px 10px 10px; BACKGROUND-COLOR: #ffffff }
	A:active { TEXT-DECORATION: none }
	A:link { TEXT-DECORATION: none }
	A:visited { TEXT-DECORATION: none }
	A:hover { TEXT-DECORATION: none }
	</style>
			<STYLE type="text/css">#topbar { BORDER-RIGHT: white 0px solid; PADDING-RIGHT: 0px; BORDER-TOP: white 0px solid; PADDING-LEFT: 0px; Z-INDEX: 100; VISIBILITY: hidden; PADDING-BOTTOM: 0px; WIDTH: 200px; PADDING-TOP: 0px; POSITION: absolute; HEIGHT: 350px }
	</STYLE>
			<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
			</script>
	</HEAD>
	<body onload="MM_preloadImages('../../../images/main_table/offer_01.gif','../../../images/main_table/search_01.gif','../../../images/main_table/special_offer_01.gif','../../../images/main_table/dealer_01.gif','../../../images/main_table/company_01.gif','../../../images/main_table/login_01_3.gif')">
		<form id="form1" name="form1" runat="server">
			<table cellSpacing="0" cellPadding="0" width="983" border="0">
				<logo:logo_login id="logo_login" runat="server"></logo:logo_login>
				<tr>
					<menubar:left_menubar id="left_menubar" runat="server"></menubar:left_menubar>
					<td width="15"></td>
					<td width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693">
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="../admin_package/package2_list.aspx">รายการแพคเกจ</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="">-</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="job1_list.aspx">รายการตำแหน่งงาน</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<asp:label id="upPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label>
								</td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
						</table>
					</td>
					<td></td>
					<td vAlign="top"><FONT face="Tahoma"></FONT></td>
				</tr>
				<tr>
					<td width="15"></td>
					<td vAlign="top" width="693">
						<table cellSpacing="0" cellPadding="0" width="693" border="0">
							<tr>
								<td width="693"><asp:label id="topicTxt" runat="server"></asp:label></td>
							</tr>
							<tr>
								<td><IMG height="1" src="../../../images/lines/w.gif" width="693"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" height="31" cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/f_line.gif"
										border="0">
										<tr>
											<td colSpan="7" height="5"></td>
										</tr>
										<tr>
											<td width="61" height="20">
												<div align="center">คำสั่ง:</div>
											</td>
											<asp:label id="openClose" runat="server"></asp:label>
											<td width="98" height="20">
												<div align="center"><asp:hyperlink id="editCarData" runat="server" Font-Underline="True" ForeColor="Black">&#3649;&#3585;&#3657;&#3652;&#3586;&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;</asp:hyperlink></div>
											</td>
											<td width="118" height="20">
												<div align="center"><asp:hyperlink id="changeContact" runat="server" Font-Underline="True" ForeColor="Black">แก้ไขข้อมูลส่วนตัว</asp:hyperlink></div>
											</td>
											<td width="84" height="20">
												<div align="center"><asp:hyperlink id="PrintThis" runat="server" Font-Underline="True" ForeColor="Black">พิมพ์หน้านี้</asp:hyperlink></div>
											</td>
											<td width="84" height="20">
												<div align="center"><asp:label id="delAdsCmd" runat="server"></asp:label></div>
											</td>
											<td width="135" height="20">
												<div align="center"><A class="A_black_underline" href="job1_list.aspx">กลับสู่รายการประกาศ</A></div>
											</td>
										</tr>
										<tr>
											<td colSpan="7" height="6"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table cellSpacing="0" cellPadding="0" width="693" background="../../../images/table/dtl_job_comp1.gif"
										border="0">
										<tr>
											<td vAlign="top" width="556">
												<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="556" border="0">
													<tr>
														<td colSpan="5" height="21">
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="556" border="0">
																<tr>
																	<td width="25"></td>
																	<td width="526"><asp:label id="compOffer" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td width="5" rowSpan="5"></td>
														<td colSpan="3" height="23"><strong>รูปแบบธุรกิจ</strong></td>
														<td width="5" rowSpan="5"></td>
													</tr>
													<tr>
														<td colSpan="3" height="3"></td>
													</tr>
													<tr>
														<td width="58">
															<div align="right"><u>ธุรกิจหลัก</u> :</div>
														</td>
														<td width="11"></td>
														<td width="477"><asp:label id="introMainBuz" runat="server"></asp:label></td>
													</tr>
													<tr>
														<td width="58" height="7"><IMG height="1" src="../../../images/objects/ffffff.gif" width="100%"></td>
														<td width="11" height="7"></td>
														<td width="477" height="7"><IMG height="1" src="../../../images/objects/ffffff.gif" width="100%"></td>
													</tr>
													<tr>
														<td width="58">
															<div align="right"><u>ธุรกิจเสริม</u> :</div>
														</td>
														<td width="11"></td>
														<td width="477"><asp:label id="moreBuz" runat="server"></asp:label></td>
													</tr>
												</table>
											</td>
											<td width="5" rowSpan="2"><IMG height="1" src="../../../images/objects/no.gif" width="5"></td>
											<td class="dtl_pic" width="132" rowSpan="2">
												<div align="center"><asp:label id="image1" runat="server" CssClass="Font_black_LH_17px"></asp:label></div>
											</td>
										</tr>
										<tr>
											<td vAlign="bottom"><IMG height="5" src="../../../images/dividers/dtl_job_comp2.gif" width="556"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" width="693" border="0">
										<tr>
											<td vAlign="top" width="339">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td width="339">
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">รายละเอียด</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/dtl_job.gif"
																border="0">
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">วุฒิการศึกษา</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JEdu" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">สาขา</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JBranch" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">อัตราค่าจ้าง</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="Price" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">จำนวนที่รับ</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JNum" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">โทรศัพท์</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JPhone" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">สถานที่ทำงาน</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JPlace" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">เขต</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JDistrict" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_job.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="63">
																		<div align="right">จังหวัด</div>
																	</td>
																	<td width="11"></td>
																	<td width="255"><asp:label id="JProvince" runat="server" CssClass="Font_black_LH_17px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../../images/lines/dtl.gif" width="339"></td>
													</tr>
													<tr>
														<td height="10"></td>
													</tr>
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">ข้อมูลเพิ่มเติม</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/g_339.gif"
																border="0">
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td width="329"><asp:label id="JInfo" runat="server" CssClass="Font_black_LH_17px" Height="70px" Width="285px"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="3" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="2" src="../../../images/lines/dtl.gif" width="339"></td>
													</tr>
												</table>
											</td>
											<td width="15"></td>
											<td vAlign="top" width="339">
												<table cellSpacing="0" cellPadding="0" width="339" border="0">
													<tr>
														<td>
															<table class="H1_white" height="21" cellSpacing="0" cellPadding="0" width="339" background="../../../images/header/h_b_339+ar.gif"
																border="0">
																<tr>
																	<td width="25"></td>
																	<td width="309">ข้อมูลติดต่อ</td>
																	<td width="5"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG height="1" src="../../../images/lines/w2.gif" width="339"></td>
													</tr>
													<tr>
														<td>
															<table class="Font_black_LH_17px" cellSpacing="0" cellPadding="0" width="339" background="../../../images/table/dtl_con.gif"
																border="0">
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">ชื่อบริษัท/กิจการ</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="compname" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">ที่อยู่</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="Addr" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">โทรศัพท์</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="Tel" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">Fax</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="fax" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">วัน-เวลาทำการ</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><asp:label id="officeHour" runat="server"></asp:label></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5"><IMG height="3" src="../../../images/dividers/dtl_con.gif" width="339"></td>
																</tr>
																<tr>
																	<td width="5"></td>
																	<td vAlign="top" width="77">
																		<div align="right">ข้อมูลเพิ่มเติม</div>
																	</td>
																	<td width="11"></td>
																	<td width="241"><IMG height="17" src="../../../images/objects/arrow_orange_17.gif" width="15" align="absMiddle">
																		<asp:hyperlink class="A_black_underline" id="de_map" runat="server">&#3649;&#3612;&#3609;&#3607;&#3637;&#3656;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;</asp:hyperlink><br>
																		<IMG height="17" src="../../../images/objects/arrow_orange_17.gif" width="15" align="absMiddle">
																		<asp:hyperlink class="A_black_underline" id="de_home" runat="server">&#3586;&#3657;&#3629;&#3617;&#3641;&#3621;&#3610;&#3619;&#3636;&#3625;&#3633;&#3607;&#3649;&#3621;&#3632;&#3611;&#3619;&#3632;&#3585;&#3634;&#3624;&#3607;&#3633;&#3657;&#3591;&#3627;&#3617;&#3604;&#3586;&#3629;&#3591;&#3626;&#3617;&#3634;&#3594;&#3636;&#3585;</asp:hyperlink></td>
																	<td width="5"></td>
																</tr>
																<tr>
																	<td colSpan="5" height="3"></td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td><IMG src="../../../images/lines/dtl.gif"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="10"></td>
							</tr>
							<tr>
								<td><IMG height="5" src="../../../images/lines/l_b_693.gif" width="693"></td>
							</tr>
							<tr>
								<td height="5"></td>
							</tr>
							<tr>
								<td>
									<asp:label id="downPage" runat="server" CssClass="Font_black" ForeColor="Transparent"></asp:label>
								</td>
							</tr>
							<tr>
								<td>
									<table class="Font_black" cellSpacing="0" cellPadding="0" border="0">
										<tr>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_l.gif" width="10"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="../admin_package/package2_list.aspx">รายการแพคเกจ</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="">-</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_s.gif" width="21"></td>
											<td background="../../../images/objects/sub_navi_blue_c.gif"><A class="A_black_NOunderline" href="job1_list.aspx">รายการตำแหน่งงาน</A></td>
											<td><IMG height="16" src="../../../images/objects/sub_navi_blue_r.gif" width="10"></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="20"></td>
							</tr>
						</table>
					</td>
					<td vAlign="top" width="15"></td>
				</tr>
				<footer:footer_bar id="footer_bar" runat="server"></footer:footer_bar></table>
		</form>
		<script language="javascript">
			//disableBtn("next_page",true);
			//doTest();
			function disableBtn(btnName,flag){
				document.getElementById(btnName).disabled=flag;
			}
			
			// ---------   Show START----------------------------
			function showJob(detailid){
						if(confirm('ยืนยันการเปลี่ยนแปลง')){autoonclick.job3_detail.setDetailShow(detailid,delAdv);}
					}
			function delAdv(response){
					var typePriceSt = document.getElementById("delCar");
					/*
						if(typePriceSt.innerHTML=="เปิดประกาศ"){
							typePriceSt.innerHTML="ปิดประกาศ";
							displayTable(response.value,true);
						}else{
							typePriceSt.innerHTML="เปิดประกาศ";
							displayTable(response.value,false);
						}
						*/
					window.location.reload();	
			}
			
			function displayTable(dataid,display){
				autoonclick.job3_detail.displayT(dataid,display,displayTableRes);
			}
			function displayTableRes(response){
					var typePriceSt = document.getElementById("h1");
					typePriceSt.innerHTML=response.value;
			}
			// ---------   Show END----------------------------
			
			// ---------   Delete START----------------------------
			function deleteAds(noticeid){
					if(confirm('คุณต้องการที่จะลบประกาศ')){
					autoonclick.job3_detail.deleteAdsAJX(noticeid,urlBack);
					}
				}
			function urlBack(res){
					//var openNotice = document.getElementById("delAd");
					//openNotice.innerHTML = res.value;
					window.location.href="job1_list.aspx";
			}
			// ---------   Delete END----------------------------
			function doTest(){
					var p = autoonclick.job3_detail.getNotice(12).value;
					alert(p.startDate);
					p=null;
			}
		</script>
		<righter:righter_bar id="righter_bar" runat="server"></righter:righter_bar>
	</body>
</HTML>
