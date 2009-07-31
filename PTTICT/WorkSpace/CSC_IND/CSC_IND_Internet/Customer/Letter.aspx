<%@ Page CodeBehind="Letter.aspx.vb" Language="vb" AutoEventWireup="false" Inherits="CSC_IND_Internet.Letter" %>
<HTML>
	<HEAD>
		<title>Customer Service Center : ศูนย์บริการลูกค้าก๊าซธรรมชาติ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<meta content="PTT IND,CSC,Customer Service Center,ศูนย์บริการลูกค้าก๊าซธรรมชาติ กลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง,ก๊าซธรรมชาติ,ก๊าซ,Natural Gas Information,Natural Gas Pipeline,Natural Gas Utilization"
				name="keywords">
			<script language="javascript" src="../script/js.js"></script>
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
							<td background="../images/menu/banner3.jpg" height="140">&nbsp;</td>
						</tr>
						<tr>
							<td><!--#include file="../Includes/menu.aspx" --></td>
						</tr>
						<tr>
							<td height="2"></td>
						</tr>
						<tr>
							<td vAlign="top">
								<table style="BACKGROUND-IMAGE: url(../images/bg_sidemenu2.jpg); BACKGROUND-REPEAT: repeat-y"
									cellSpacing="0" cellPadding="0" width="100%" border="0">
									<tr>
										<td vAlign="top" width="219"><!--#include file="../Includes/m_customer.aspx" --></td>
										<td vAlign="top">
											<form id="frmLetter" runat="server">
												<table cellSpacing="0" cellPadding="0" width="99%" align="center" border="0">
													<tr>
														<td><IMG height="38" src="../images/title_mail.jpg" width="539"></td>
													</tr>
													<tr>
														<td>&nbsp;</td>
													</tr>
												</table>
												<asp:datalist id="dlLetter" Width="100%" HorizontalAlign="Center" ShowHeader="False" ShowFooter="False"
													runat="server">
													<itemstyle VerticalAlign="top"></itemstyle>
													<ItemTemplate>
														<%# "<table cellSpacing='0' cellPadding='0' width='99%' align='center' border='0'><tr><td class='T_gray13'>&nbsp;</td></tr><tr><td class='T_gray13'><table width='96%' border='0' cellspacing='0' cellpadding='1' align='center'><tr>" + _
																	"<td width='90' rowspan='5' align='center'><a href='" + FilePath + _
																	 DataBinder.Eval(Container.DataItem,"ATTACH_FILE","{0}") + _
																	 "' target='_blank'>" + _
																	 DataBinder.Eval(Container.DataItem,"IMAGE_FILE","<img src='" + FilePath + "{0}' width='73' height='95' border='0' alt='View'></a></td>") + _
																	"<td rowspan='5' width='15'></td><td width='446'>&nbsp;</td></tr><tr><td width='446' class='T_blue13' height='17'>" + _
																	DataBinder.Eval(Container.DataItem,"TITLE","<strong>{0}</strong>") + _
																	"</td></tr><tr><td width='446' class='T_gray13'>" + _
																	DataBinder.Eval(Container.DataItem,"DETAIL","{0}") + _
																	"</td></tr><tr><td width='446'>&nbsp;</td></tr></table></td></tr><tr><td>&nbsp;</td></tr><tr><td height='3' background='../images/information/l2.jpg'></td></tr><tr><td>&nbsp;</td></tr></table>"
																%>
													</ItemTemplate>
												</asp:datalist><asp:label id="lblNotFound" runat="server" Font-Size="X-Small" ForeColor="Red" Visible="False">ไม่พบข้อมูล</asp:label></form>
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
	</body>
</HTML>
