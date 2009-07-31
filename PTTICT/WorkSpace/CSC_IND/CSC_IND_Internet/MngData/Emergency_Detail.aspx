<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Emergency_Detail.aspx.vb" Inherits="CSC_IND_Internet.Emergency_Detail" %>
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
					if (document.forms(0).elements("txtTitle").value =='') ErrMsg+="* หัวข้อข่าว \n";
					if (document.forms(0).elements("txtDate").value =='') ErrMsg+="* วันที่ \n";
					if (document.forms(0).elements("txtTime").value =='') ErrMsg+="* เวลา \n";
					if (document.forms(0).elements("txtExpireDate").value =='') ErrMsg+="* แสดงถึงวันที่ \n";
					if (! isDate(document.forms(0).elements("txtDate").value)) ErrMsg+="* วันที่ควรเป็นข้อมูลวันที่ \n";
					if (! isDate(document.forms(0).elements("txtExpireDate").value)) ErrMsg+="* แสดงถึงวันที่ควรเป็นข้อมูลวันที่ \n";
					if (! IsTime(document.forms(0).elements("txtTime").value)) ErrMsg+="* เวลาควรเป็นข้อมูลเวลา \n";
							
					if (ErrMsg != "" ) {
							alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {
						document.forms(0).elements("ServerAction").value="SAVE";
						document.forms(0).submit();   
					}
			}
			function DeleteItem(){
				if(document.forms(0).elements("EventID").value!=""){
					if (confirm('กดปุ่ม OK เพื่อยืนยันการลบข้อมูล?')) {
						document.forms(0).elements("ServerAction").value="DELETE";
						document.forms(0).submit();
					}
				}else{
					alert("คุณยังไม่ได้เลือกรายการในระบบ กรุณากลับหน้าข้อมูลเหตุการณ์ฉุกเฉิน");
					window.location.href="Emergency.aspx";
				}
			}
				function ClearAttach(FType) {
				if (FType=="DOC") {
					document.forms(0).elements("ServerAction").value = "DOC_CLEAR";
					document.forms(0).submit();
				}
			}
			
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
			<form id="frmSearchCust" method="post" runat="server">
				<INPUT 
  id=EventID type=hidden value="<%=EventID%>" name=EventID> <INPUT id=Hidden1 type=hidden value="<%=ServerAction%>" name=ServerAction 
  >
				<TBODY>
					<tr>
						<td>
							<TABLE height="25" cellSpacing="0" cellPadding="2" width="100%" border="0">
								<TR>
									<TD class="HTitle" width="20"></TD>
									<TD class="HTitle" width="200">ข้อมูลเหตุการณ์ฉุกเฉิน</TD>
									<TD class="BtnBG" align="center" width="70" height="30"><!--A onclick="JavaScript:AddItem();" href="#"><IMG id="btnAdd" src="../Images/Button/btn_add.gif" border="0" name="btnAdd" runat="server"></A-->
										&nbsp;</TD>
									<TD class="BtnBG" align="center" width="35" height="30"><A onclick="JavaScript:SaveItem();" href="#"><IMG id="btnSave" src="../Images/Button/btn_save.gif" border="0" name="btnSave" runat="server"></A>&nbsp;</TD>
									<TD class="BtnBG" align="center" width="70" height="30"><A href="Emergency.aspx"><IMG id="btnCancel" src="../Images/Button/btn_back.gif" border="0" name="btnDel" runat="server"></A>&nbsp;</TD>
									<TD class="BtnBG"><A onclick="JavaScript:DeleteItem();" href="#"><IMG id="btnDel" src="../Images/Button/btn_delete.gif" border="0" name="btnDel" runat="server"></A>&nbsp;</TD>
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
									<td class="GridHead1" height="25">เหตุการณ์ฉุกเฉิน</td>
								</tr>
								<tr class="GroupLine">
									<td height="5"></td>
								</tr>
								<tr>
									<td><asp:panel id="pnlData" runat="server">
											<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="900" border="0">
												<TBODY> <!--TR class="pnlBG"><TD class="txtHead" align="right" width="160" height="22">เลือกเรื่อง&nbsp;:&nbsp;</TD>
														<TD height="22">
															<asp:DropDownList id="lstTitle" runat="server" Width="420px"></asp:DropDownList></TD>
														<TD class="txtHead" align="right" width="120" height="22"></TD>
														<TD height="22"></TD></TR-->
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="160">เรื่อง&nbsp;:&nbsp;</TD>
														<TD align="left" width="740" colSpan="3">
															<asp:TextBox id="txtTitle" runat="server" Width="425px"></asp:TextBox><INPUT id="txtEventID" style="DISPLAY: none" type="text" size="1" name="txtEventID" runat="server"></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="160">วันที่&nbsp;:&nbsp;
														</TD>
														<TD class="txtHead" align="left" width="740" colSpan="3">
															<asp:TextBox id="txtDate" runat="server" Width="80px"></asp:TextBox><A onclick="javascript:Calendar_Open('txtDate')"><IMG id="btnCDate" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
															เวลา :
															<asp:TextBox id="txtTime" runat="server" Width="100px"></asp:TextBox>&nbsp;น.</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" vAlign="top" align="right" width="160" height="26">รายละเอียด&nbsp;:&nbsp;
														</TD>
														<TD align="left" width="740" colSpan="3">
															<asp:TextBox id="txtDetail" runat="server" Width="425px" Rows="3" TextMode="MultiLine"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="160">เอกสารแนบ&nbsp;:&nbsp;
														</TD>
														<TD class="txtHead" align="left" width="740" colSpan="3"><INPUT id="txtFile" type="file" size="53" name="txtFile" runat="server">
															<asp:hyperlink id="lnkImgAttach" runat="server" Visible="False" Target="_blank" BackColor="Transparent"
																ForeColor="#0000C0"></asp:hyperlink><INPUT id="txtFileImg" style="DISPLAY: none" type="text" size="1" name="txtFileImg" runat="server">&nbsp;&nbsp;&nbsp;
															<A href="javaScript:ClearAttach('DOC');">
																<asp:image id="btnDelImg" runat="server" Visible="False" AlternateText="ลบข้อมูล" ImageUrl="../Images/Button/bin1.gif"></asp:image></A></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="160">แสดงถึงวันที่&nbsp;:&nbsp;
														</TD>
														<TD align="left" width="740" colSpan="3">
															<asp:TextBox id="txtExpireDate" runat="server" Width="100px"></asp:TextBox><A onclick="javascript:Calendar_Open('txtExpireDate')"><IMG id="btnExpireDate" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
													</TR>
													<TR>
														<TD align="left" width="740" bgColor="#d4d0c8" colSpan="4" height="3"></TD>
													</TR>
													<TR>
														<TD class="txtHead" align="left" width="740" colSpan="4"></TD>
													</TR>
										</asp:panel></td>
								</tr>
							</table>
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
