<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ReportContact_Data.aspx.vb" Inherits="CSC_IND_Internet.ReportContact_Data" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">	
			function SaveItem(){
				var ErrMsg = "";
					//if (document.forms(0).elements("txtRptName").value =='') ErrMsg+="* ชื่อรายงานสำหรับลูกค้า \n";
					//if (document.forms(0).elements("FileRpt").value =='') ErrMsg+="* ชื่อไฟล์ \n";
						
					if (ErrMsg != "" ) {
							alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {
						document.forms(0).elements("ServerAction").value="SAVE";
						document.forms(0).submit();   
					}
			}
				function ClearAttach(FType) {
				if (FType=="DOC") {
					document.forms(0).elements("ServerAction").value = "DOC_CLEAR";
					document.forms(0).submit();	
				} else if (FType=="RPT") {
					document.forms(0).elements("ServerAction").value = "RPT_CLEAR";
					document.forms(0).submit();	
				}
			}
			function OpenFile(fileName){
	window.open("../Files/Attach/CONTACT/"+fileName,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes")
}
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
			<form id="frmRptContact" method="post" runat="server">
				<input id="ServerAction" type="hidden" name="ServerAction"> <input 
  id=CompanyID type=hidden value="<%=CompanyID%>" name=CompanyID 
  > <input id=ContactID type=hidden value="<%=ContactID%>" 
  name=ContactID> <input id=SoldTo type=hidden 
  value="<%=SoldTo%>" name=SoldTo> <input id=ShipTo 
  type=hidden value="<%=ShipTo%>" name=ShipTo>
				<TBODY>
					<tr>
						<td>
							<TABLE height="25" cellSpacing="0" cellPadding="2" width="100%" border="0">
								<TR>
									<TD class="HTitle" width="20"></TD>
									<TD class="HTitle" width="400">ข้อมูลรายงานการติดต่อสำหรับลูกค้า</TD>
									<TD class="BtnBG" align="center" width="70" height="30"><!--A onclick="JavaScript:AddItem();" href="#"><IMG id="btnAdd" src="../Images/Button/btn_add.gif" border="0" name="btnAdd" runat="server"></A--> 
										&nbsp;</TD>
									<TD class="BtnBG" align="center" width="35" height="30"><A onclick="JavaScript:SaveItem();" href="#"><IMG id="btnSave" src="../Images/Button/btn_save.gif" border="0" name="btnSave" runat="server"></A>&nbsp;</TD>
									<TD class="BtnBG" align="center" width="70" height="30"><A href="ReportContact.aspx"><IMG id="btnCancel" src="../Images/Button/btn_back.gif" border="0" name="btnDel" runat="server"></A>&nbsp;</TD>
									<TD class="BtnBG">&nbsp;</TD>
								</TR>
							</TABLE>
						</td>
					</tr>
					<tr>
						<td>
							<table cellSpacing="0" cellPadding="1" width="100%" border="0">
								<tr>
									<td height="8"></td>
								</tr>
								<tr>
									<td class="GridHead1" height="25">รายงานการติดต่อสำหรับลูกค้า</td>
								</tr>
								<tr class="GroupLine">
									<td height="5"></td>
								</tr>
								<tr>
									<td>
										<TABLE cellSpacing="1" cellPadding="0" width="880" border="0">
											<asp:panel id="pnlData" runat="server">
												<TBODY>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25">บริษัท&nbsp;:&nbsp;</TD>
														<TD colSpan="3" height="25">
															<asp:DropDownList id="lstCompany" runat="server"></asp:DropDownList></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="150" height="25">วันที่ติดต่อ&nbsp;:&nbsp;
														</TD>
														<TD class="txtHead" width="250" height="25">
															<asp:TextBox id="txtCDate" runat="server" Width="80px" MaxLength="10"></asp:TextBox><A onclick="javascript:Calendar_Open('txtCDate')"><IMG id="btnCDate" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A>&nbsp;เวลา&nbsp;:&nbsp;
															<asp:TextBox id="txtCTime" runat="server" Width="70px" MaxLength="5"></asp:TextBox></TD>
														<TD class="txtHead" align="right" width="100" height="25">เลขที่ติดต่อ&nbsp;:&nbsp;</TD>
														<TD width="230" height="25">
															<asp:TextBox id="txtContID" runat="server" Width="150px"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" vAlign="top" align="right">สาระสำคัญ&nbsp;:&nbsp;</TD>
														<TD vAlign="top" colSpan="3">
															<asp:TextBox id="txtDetail" runat="server" Width="600px" TextMode="MultiLine" Rows="7"></asp:TextBox></TD>
													</TR>
											</asp:panel><asp:panel id="pnlPlant" Runat="server" Visible="true">
												<TR class="pnlBG">
													<TD class="txtHead" align="right">ชื่อรายงานสำหรับลูกค้า&nbsp;:&nbsp;</TD>
													<TD colSpan="3">
														<asp:TextBox id="txtRptName" runat="server" Width="300px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right">ไฟล์รายงาน&nbsp;:&nbsp;
													</TD>
													<TD colSpan="3"><INPUT id="FileRpt" type="file" size="65" name="FileImg" runat="server">
														<asp:hyperlink id="lnkRpt" runat="server" ForeColor="#0000C0" BackColor="Transparent" Target="_blank"></asp:hyperlink><INPUT id="txtFileRpt" style="DISPLAY: none" type="text" size="1" name="txtFileRpt" runat="server">&nbsp;&nbsp;&nbsp;
														<A href="javaScript:ClearAttach('RPT');">
															<asp:image id="btnDelRpt" runat="server" Visible="False" ImageUrl="../Images/Button/bin1.gif"
																AlternateText="ลบข้อมูล"></asp:image></A></TD>
												</TR>
											</asp:panel></TABLE>
									</td>
								</tr>
				</TBODY>
		</table>
		</TD></TR></TBODY></FORM></TABLE>
		<%	if Msg <> "" then%>
		<SCRIPT language="javascript">
	alert("<%=Replace(Msg,vbCrLf," ")%>");
		</SCRIPT>
		<%end if%>
		<% if URLLink <> "" Then %>
		<SCRIPT language="javascript">
	window.onload = function() { 
			window.location.href="<%=URLLink%>";
			}
		</SCRIPT>
		<% end if%>
	</body>
</HTML>
