<%@ Page CodeBehind="default.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet._default" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<meta content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization"
				name="keywords">
			<script language="javascript" src="../script/js.js"></script>
			<script language="javascript" src="../script/ss.js"></script>
			<SCRIPT type="text/javascript">
<!--
SLIDES = new slideshow("SLIDES");
SLIDES.timeout = 6000;
SLIDES.prefetch = -1;
SLIDES.repeat = true;

<%=PageScript%>


//-->
			</SCRIPT>
			<SCRIPT type="text/javascript">
<!--
nSLIDES = new slideshow("nSLIDES");
nSLIDES.timeout = 8000;
nSLIDES.prefetch = -1;
nSLIDES.repeat = true;

<%=JournalScript%>

nS = new slide();
nS.src = "../images/information/map_pipeline.jpg";
nS.text = unescape("<span class='T_blue13'><b>ระบบท่อส่งก๊าซธรรมชาติ<br>ในปัจจุบัน - อนาคต</b></span>");
nS.link = "../images/information/map_pipeline.jpg";
nS.target = "_blank";
nS.attr = "";
nS.filter = "";
nSLIDES.add_slide(nS);

//-->
			</SCRIPT>
			<% Session("CURRENT_HEADER_MENU") = "HOME"%>
	</HEAD>
	<body>
		<table height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
			<tr>
				<td vAlign="top">
					<table cellSpacing="0" cellPadding="0" width="100%" border="0">
						<tr>
							<td><!--#include file="../Includes/header.aspx" --></td>
						</tr>
						<tr>
							<td background="../images/menu/banner.jpg" height="140">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td>
								<table style="BACKGROUND-IMAGE: url(../images/bg_sidemenu.jpg); BACKGROUND-REPEAT: no-repeat"
									cellSpacing="0" cellPadding="0" width="100%" border="0">
									<tr>
										<td vAlign="top" width="219" height="230">
											<table height="190" cellSpacing="0" cellPadding="0" width="219" border="0">
												<tr>
													<td vAlign="top"><IMG height="28" src="../images/topic_block_highlights.jpg" width="219"></td>
												</tr>
												<tr>
													<td vAlign="top" align="left" height="185"><table cellSpacing="0" cellPadding="4" width="192" border="0">
															<tr>
															<!--<td align="right" bgcolor="#D5E8C1"><a href="javascript:SLIDES.previous()" class="text_gray13">&lt; ย้อนกลับ</a> | <a href="javascript:SLIDES.next()" class="text_gray13">ถัดไป &gt;</a> </td>
      </tr>!-->
															<tr>
																<td vAlign="top" align="center">
																	<DIV id="divnSLIDES">
																		<SCRIPT type="text/javascript">
<!--
nodivtext = nSLIDES.get_all_text("<li>", "<p>\n");
if (nodivtext) {
  document.write(nodivtext);
}
//-->
																		</SCRIPT>
																	</DIV>
																</td>
															</tr>
															<tr>
																<td vAlign="top" align="center">&nbsp;<A onclick="javascript:nSLIDES.hotlink()" href="#"><IMG style="FILTER: progid: DXImageTransform.Microsoft.CheckerBoard()" height="147" alt="Slideshow image"
																			src="../images/information/map_pipeline.jpg" width="110" border="0" name="nSLIDESIMG"></A></td>
															</tr>
														</table>
														<asp:label id="lblHighlight" runat="server"></asp:label></td>
												</tr>
											</table>
										</td>
										<td vAlign="top" height="230">
											<table cellSpacing="0" cellPadding="0" width="100%" border="0">
												<tr>
													<td><IMG height="30" src="../images/information/topic_info.jpg" width="131"></td>
												</tr>
												<tr>
													<td>
														<table cellSpacing="0" cellPadding="4" width="98%" border="0">
															<tr>
																<!--<td align="right" bgcolor="#D5E8C1"><a href="javascript:SLIDES.previous()" class="text_gray13">&lt; ย้อนกลับ</a> | <a href="javascript:SLIDES.next()" class="text_gray13">ถัดไป &gt;</a> </td>
      </tr>!--></tr>
															<tr>
																<td vAlign="top">
																	<div id="SLIDESTEXT"><FONT face="Tahoma"></FONT>
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
																<td onclick="javascript:SLIDES.hotlink()" vAlign="top" align="center" width="190"><IMG style="FILTER: progid: DXImageTransform.Microsoft.CheckerBoard()" height="141" alt="Slideshow image"
																		src="../images/information/kw01.jpg" width="197" border="0" name="SLIDESIMG"></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td vAlign="top">
											<table style="BACKGROUND-IMAGE: url(../images/bg_block_faq.jpg); BACKGROUND-REPEAT: no-repeat"
												height="227" cellSpacing="0" cellPadding="0" width="219" border="0">
												<tr>
													<td vAlign="top" height="34"><IMG height="28" src="../images/topic_block_faq.jpg" width="219"></td>
												</tr>
												<tr>
													<td vAlign="top">
														<table cellSpacing="0" cellPadding="0" width="215" border="0">
															<tr>
																<td vAlign="top"><asp:label id="lblFAQ" runat="server"></asp:label></td>
															</tr>
														</table>
													</td>
												</tr>
											</table>
										</td>
										<td vAlign="top">
											<table cellSpacing="0" cellPadding="0" width="98%" border="0">
												<tr>
													<td background="../images/bg_news.jpg"><IMG height="28" src="../images/topic_block_news.jpg" width="511"></td>
													<td align="right" width="10" background="../images/bg_news.jpg"><IMG height="28" src="../images/topic_block_news2.jpg" width="10"></td>
												</tr>
												<tr>
													<td bgColor="#f9f9f9">
														<table cellSpacing="0" cellPadding="0" width="100%" border="0">
															<tr>
																<td vAlign="top" align="center" width="230">
																	<table cellSpacing="0" cellPadding="0" width="215" border="0">
																		<tr>
																			<td><asp:label id="lblNews1" runat="server"></asp:label></td>
																		</tr>
																	</table>
																</td>
																<td width="10"><IMG height="188" src="../images/split_block_news.jpg" width="10"></td>
																<td vAlign="top">
																	<table cellSpacing="0" cellPadding="0" width="96%" align="center" border="0">
																		<tr>
																			<td><asp:label id="lblNews2" runat="server"></asp:label></td>
																		</tr>
																		<tr>
																			<td class="T_blue12" align="right"><strong><A class="T_blue12" href="../News/News.aspx?mode=SHOW" target="_blank">more</A>
																					.: </strong>
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
													<td align="right" background="../images/block_news2.jpg"><IMG height="10" src="../images/block_news1.jpg" width="10"></td>
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
  
  nSLIDES.image = document.images.nSLIDESIMG;
  nSLIDES.textid = "divnSLIDES";
  nSLIDES.update();
  nSLIDES.play();
}
//-->
		</SCRIPT>
		<% if IsShowEvent="" then %>
		<SCRIPT language="javascript">
		window.onload = function() { 
			window.open("../News/ShowEvent.aspx","","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes,width=650,height=400");
			}
		</SCRIPT>
		<% end if %>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
	alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
	</body>
</HTML>
