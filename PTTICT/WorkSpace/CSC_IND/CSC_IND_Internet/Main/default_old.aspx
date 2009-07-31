<%@ Page CodeBehind="default.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet._default" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<link href="../css/csc_ind.css" rel="stylesheet" type="text/css">
			<meta name="keywords" content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization">
			<script language="javascript" src="../script/js.js"></script>
			<script language="javascript" src="../script/ss.js"></script>
			<SCRIPT TYPE="text/javascript">
<!--
SLIDES = new slideshow("SLIDES");
SLIDES.timeout = 6000;
SLIDES.prefetch = -1;
SLIDES.repeat = true;

<%=PageScript%>


//-->
			</SCRIPT>
			<% Session("CURRENT_HEADER_MENU") = "HOME"%>
	</HEAD>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td height="140" background="../images/menu/banner.jpg">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td><table width="100%" border="0" cellspacing="0" cellpadding="0" style="BACKGROUND-IMAGE:url(../images/bg_sidemenu.jpg); BACKGROUND-REPEAT:no-repeat">
									<tr>
										<td width="219" valign="top"><table width="219" border="0" cellpadding="0" cellspacing="0">
												<tr>
													<td valign="top"><img src="../images/topic_block_highlights.jpg" width="219" height="28"></td>
												</tr>
												<tr>
													<td height="185" valign="top" background="../images/bg_block_link.jpg">
														<div><asp:Label id="lblJournal" runat="server"></asp:Label></div>
														<div><table width="200" border="0" cellspacing="2" cellpadding="0">
  <tr>
    <td>ระบบท่อส่งก๊าซฯ ในปัจจุบัน - อนาคต </td>
  </tr>
  <tr>
    <td align="center"><a href="#" onClick="javascript:SLIDES.hotlink()"><img src="../images/information/map_pipeline.jpg" alt="Slideshow image" name="SLIDESIMG" width="135" height="187" border=0 style="filter:progid:DXImageTransform.Microsoft.CheckerBoard()"></a></td>
  </tr>
</table>
</div>
													</td>
												</tr>
											</table>
										</td>
										<td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td><img src="../images/information/topic_info.jpg" width="131" height="30"></td>
												</tr>
												<tr>
													<td><table width="98%" border="0" cellpadding="4" cellspacing="0">
															<tr>
																<!--<td align="right" bgcolor="#D5E8C1"><a href="javascript:SLIDES.previous()" class="text_gray13">&lt; ย้อนกลับ</a> | <a href="javascript:SLIDES.next()" class="text_gray13">ถัดไป &gt;</a> </td>
      </tr>!-->
															</tr>
															<tr>
																<td valign="top"><div id="SLIDESTEXT"><FONT face="Tahoma"></FONT>
																		<script type="text/javascript">
<!--
nodivtext = SLIDES.get_all_text("<li>", "<p>\n");
if (nodivtext) {
  document.write(nodivtext);
}
//-->
																		</script>
																	</div>
																</td>
																<td width="190" align="center" valign="top" onClick="javascript:SLIDES.hotlink()"><img src="../images/information/kw01.jpg" alt="Slideshow image" name="SLIDESIMG" width="197"
																		height="141" border="0" style="FILTER:progid:DXImageTransform.Microsoft.CheckerBoard()"></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td valign="top"><table width="219" height="227" border="0" cellpadding="0" cellspacing="0" style="BACKGROUND-IMAGE:url(../images/bg_block_faq.jpg); BACKGROUND-REPEAT:no-repeat">
												<tr>
													<td valign="top" height="34"><img src="../images/topic_block_faq.jpg" width="219" height="28"></td>
												</tr>
												<tr>
													<td valign="top">
														<table width="215" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td valign="top">
																	<asp:label id="lblFAQ" runat="server"></asp:label>
																</td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
										<td valign="top"><table width="98%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td background="../images/bg_news.jpg"><img src="../images/topic_block_news.jpg" width="511" height="28"></td>
													<td width="10" align="right" background="../images/bg_news.jpg"><img src="../images/topic_block_news2.jpg" width="10" height="28"></td>
												</tr>
												<tr>
													<td bgcolor="#f9f9f9"><table width="100%" border="0" cellspacing="0" cellpadding="0">
															<tr>
																<td width="180" align="center" valign="top"><table width="160" border="0" cellspacing="0" cellpadding="0">
																		<tr>
																			<td>
																				<asp:label id="lblNews1" runat="server"></asp:label></td>
																		</tr>
																	</table>
																</td>
																<td width="10"><img src="../images/split_block_news.jpg" width="10" height="188"></td>
																<td valign="top"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
																		<tr>
																			<td><asp:label id="lblNews2" runat="server"></asp:label></td>
																		</tr>
																		<tr>
																			<td align="right" class="T_blue12"><strong><a class="T_blue12" href="../News/News.aspx?mode=SHOW" target="_blank">
																						more</a> .: </strong>
																			</td>
																		</tr>
																	</table>
																</td>
															</tr>
														</table>
													</td>
													<td align="right" background="../images/block_news3.jpg"></td>
												</tr>
												<tr>
													<td background="../images/block_news2.jpg"></td>
													<td align="right" background="../images/block_news2.jpg"><img src="../images/block_news1.jpg" width="10" height="10"></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/footer.aspx" --></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<SCRIPT type="text/javascript">
<!--
if (document.images) {
  SLIDES.image = document.images.SLIDESIMG;
  SLIDES.textid = "SLIDESTEXT";
  SLIDES.update();
  SLIDES.play();
}
//-->
		</SCRIPT>
		<SCRIPT language="javascript">
		window.onload = function() { 
			window.open("../News/ShowEvent.aspx","","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,width=650,height=400");
			}
		</SCRIPT>
	</body>
</HTML>
