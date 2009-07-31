<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Announce_Detail.aspx.vb" Inherits="CSC_IND_Internet.Announce_Detail" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/CSC_IND.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="javascript">
					///Attaching a function on window.onload event.
					window.onload = function()
					{
						var strCook = document.cookie; 
						if(strCook.indexOf("!~")!=0)
						{ 
							var intS = strCook.indexOf("!~"); 
							var intE = strCook.indexOf("~!"); 
							var strPos = strCook.substring(intS+2,intE); 
							document.body.scrollTop = strPos; 
						} 
					}
					/// Function to set Scroll position of page before postback. 
					function SetScrollPosition()
					{ 
						var intY = document.body.scrollTop; 
						document.cookie = "yPos=!~" + intY + "~!"; 
					}
					/// Attaching   SetScrollPosition() function to window.onscroll event.
					window.onscroll = SetScrollPosition;
			</script>
			<script language="JavaScript" type="text/JavaScript">
			function SaveItem(){
				var ErrMsg = "";					
					if (document.forms(0).elements("lstAnnType").value =='') ErrMsg+="* ประเภทข้อมูล \n";
					if (document.forms(0).elements("txtTitle").value =='') ErrMsg+="* หัวข้อ \n";
					if (document.forms(0).elements("txtAnnDate").value =='') ErrMsg+="* วันที่ \n";
					if (document.forms(0).elements("txtExpireDate").value =='') ErrMsg+="* แสดงถึงวันที่ \n";
					if (! isDate(document.forms(0).elements("txtAnnDate").value)) ErrMsg+="* วันที่ควรเป็นข้อมูลวันที่ \n";
					if (! isDate(document.forms(0).elements("txtExpireDate").value)) ErrMsg+="* แสดงถึงวันที่ควรเป็นข้อมูลวันที่ \n";			
							
					if (ErrMsg != "" ) {
							alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
					} else {
						document.forms(0).elements("ServerAction").value="SAVE";
						document.forms(0).submit();   
					}
			}
			function DeleteItem(){
				if(document.forms(0).elements("AnnID").value!=""){
					if (confirm('กดปุ่ม OK เพื่อยืนยันการลบข้อมูล?')) {
						document.forms(0).elements("ServerAction").value="DELETE";
						document.forms(0).submit();
					}
				}else{
					window.location.href="Announce.aspx";
				}
			}
				function ClearAttach(FType) {
				if (FType=="DOC") {
					document.forms(0).elements("ServerAction").value = "DOC_CLEAR";
					document.forms(0).submit();
				} else if (FType=="IMG") {
					document.forms(0).elements("ServerAction").value = "IMG_CLEAR";
					document.forms(0).submit();
				}
			}
			function AddItem(){
					document.forms(0).elements("ServerAction").value="ADD";
						document.forms(0).submit();   
			}
			function AddFileItem(){
					document.forms(0).elements("ServerAction").value="ATTACH";
					document.forms(0).submit();   
			}
			function DeleteFileItem(ItemIndex) {
				if (confirm('กดปุ่ม OK เพื่อยืนยันการลบข้อมูล?')) {
					document.forms(0).elements("ServerAction").value = "DELETEFILE";
					document.forms(0).elements("ItemIndex").value = ItemIndex;
					document.forms(0).submit();
				}
			}
			function OpenFile(fileName){
				window.open("../Files/Attach/NEWS/"+fileName,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,resizable=yes")
			}
			</script>
	</HEAD>
	<body>
		<table cellSpacing="0" cellPadding="0" width="100%" align="left" border="0">
			<form id="frmAnnDetail" method="post" runat="server">
				<INPUT  id=AnnID type=hidden value="<%=AnnID%>" name=AnnID> <input id="ServerAction" type="hidden" name="ServerAction">
  <input id="ItemIndex" type="hidden" name="ItemIndex">
				<TBODY>
					<tr>
						<td>
							<TABLE height="25" cellSpacing="0" cellPadding="2" width="100%" border="0">
								<TR>
									<TD class="HTitle" width="20"></TD>
									<TD class="HTitle" width="200">ข้อมูลเอกสารเผยแพร่</TD>
									<TD class="BtnBG" align="right" width="300" height="30"><A onclick="JavaScript:AddItem();" href="#"><IMG id="btnAdd" src="../images/Button/butt_new.jpg" border="0" name="btnAdd" runat="server"></A>
										&nbsp;</TD>
									<TD class="BtnBG" align="center" width="35" height="30"><A onclick="JavaScript:SaveItem();" href="#"><IMG id="btnSave" src="../Images/Button/btn_save.gif" border="0" name="btnSave" runat="server"></A>&nbsp;</TD>
									<TD class="BtnBG" align="center" width="70" height="30"><A onclick="JavaScript:DeleteItem();" href="#"><IMG id="btnDel" src="../Images/Button/btn_delete.gif" border="0" name="btnDel" runat="server"></A>&nbsp;</TD>
									<TD class="BtnBG"><A href="Announce.aspx"><IMG id="btnCancel" src="../images/Button/btn_back.gif" border="0" name="btnDel" runat="server"></A>&nbsp;</TD>
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
									<td class="GridHead1" height="25">รายละเอียด</td>
								</tr>
								<tr class="GroupLine">
									<td height="5"></td>
								</tr>
								<tr>
									<td><asp:panel id="pnlData" runat="server">
											<TABLE id="Table1" cellSpacing="0" cellPadding="1" width="900" border="0">
												<TBODY>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทข้อมูล&nbsp;:&nbsp;</TD>
														<TD width="780" colSpan="3">
															<asp:DropDownList id="lstAnnType" runat="server" AutoPostBack="true"></asp:DropDownList><INPUT id="txtAnnID" style="DISPLAY: none" type="text" size="1" name="txtAnnID" runat="server"></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">หัวข้อ&nbsp;:&nbsp;</TD>
														<TD colSpan="3">
															<asp:TextBox id="txtTitle" runat="server" Width="405px"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">วันที่&nbsp;:&nbsp;
														</TD>
														<TD class="txtHead" colSpan="3">
															<asp:TextBox id="txtAnnDate" runat="server" Width="80px" MaxLength="10"></asp:TextBox><A onclick="javascript:Calendar_Open('txtAnnDate')"><IMG id="btnCDate" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" vAlign="top" align="right">รายละเอียด&nbsp;:&nbsp;</TD>
														<TD class="txtHead" colSpan="3">
															<asp:TextBox id="txtDetail" runat="server" Width="425px" TextMode="MultiLine" Rows="5"></asp:TextBox></TD>
													</TR>
													<asp:Panel id="pnlDisplay" Runat="server">
														<TR class="pnlBG">
															<TD class="txtHead" vAlign="top" align="right" height="1">วิธีการแสดงผล&nbsp;:&nbsp;</TD>
															<TD class="txtHead" colSpan="3" height="1">
																<asp:DropDownList id="lstDisplay" runat="server">
																	<asp:ListItem Value="T">ข้อความ</asp:ListItem>
																	<asp:ListItem Value="F">File</asp:ListItem>
																	<asp:ListItem Value="U">URL</asp:ListItem>
																</asp:DropDownList></TD>
														</TR>
													</asp:Panel>
													<TR class="pnlBG">
														<TD class="txtHead" vAlign="top" align="right">แนบเอกสาร&nbsp;:&nbsp;
														</TD>
														<TD colSpan="3"><INPUT id="FileDoc" type="file" size="53" name="FileDoc" runat="server">
															<asp:hyperlink id="lnkDocAttach" runat="server" ForeColor="#0000C0" BackColor="Transparent" Target="_blank"
																Visible="False"></asp:hyperlink><INPUT id="txtFileDoc" style="DISPLAY: none" type="text" size="1" name="txtFileDoc" runat="server">&nbsp;&nbsp;&nbsp;
															<A href="javaScript:ClearAttach('DOC');">
																<asp:image id="btnDelDoc" runat="server" Visible="False" ImageUrl="../Images/Button/bin1.gif"
																	AlternateText="ลบข้อมูล"></asp:image></A></TD>
													</TR>
													<asp:Panel id="pnlImg" Runat="server">
														<TR class="pnlBG">
															<TD class="txtHead" vAlign="top" align="right">แนบรูปภาพ&nbsp;:&nbsp;</TD>
															<TD colSpan="3"><INPUT id="FileImg" type="file" size="53" name="FileImg" runat="server">
																<asp:hyperlink id="lnkImgAttach" runat="server" ForeColor="#0000C0" BackColor="Transparent" Target="_blank"
																	Visible="False"></asp:hyperlink><INPUT id="txtFileImg" style="DISPLAY: none" type="text" size="1" name="txtFileImg" runat="server">&nbsp;&nbsp;&nbsp;
																<A href="javaScript:ClearAttach('IMG');">
																	<asp:image id="btnDelImg" runat="server" Visible="False" ImageUrl="../Images/Button/bin1.gif"
																		AlternateText="ลบข้อมูล"></asp:image></A></TD>
														</TR>
													</asp:Panel>
													<asp:Panel id="pnlNews" Runat="server">
														<TR class="pnlBG">
															<TD colSpan="4">
																<TABLE cellSpacing="1" cellPadding="1" width="900" border="0">
																	<TR>
																		<TD class="txtHead" align="right" width="120">
																			<asp:label id="lblNewsAttach" runat="server">แนบรูปภาพข่าว&nbsp;:&nbsp;</asp:label></TD>
																		<TD colSpan="3" width=780><INPUT id="txtFile" type="file" size="53" name="file" runat="server">&nbsp;&nbsp;&nbsp;
																			<A onclick="javaScript:AddFileItem();"><INPUT id="btnNewsAttach" type="button" value="เพิ่มรูปภาพ" name="btnNewsAttach" runat="server"></A>
																		</TD>
																	</TR>
																	<TR>
																		<TD class="txtHead" align="right">
																			<asp:label id="lblNewsDesc" runat="server">คำอธิบายไฟล์&nbsp;:&nbsp;</asp:label></TD>
																		<TD colSpan="3">
																			<asp:textbox id="txtNewsDesc" runat="server" Width="300px" MaxLength="300"></asp:textbox></TD>
																	</TR>
																	<TR>
																		<TD colSpan="4">
																			<asp:datagrid id="dtgNews" runat="server" Width="630px" DataKeyField="FILE_ID" CellPadding="1"
																				CellSpacing="1" BorderWidth="0" AutoGenerateColumns="False">
																				<FooterStyle HorizontalAlign="Center" CssClass="TableTotal"></FooterStyle>
																				<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
																				<AlternatingItemStyle HorizontalAlign="Center" CssClass="TableAlternatingItem"></AlternatingItemStyle>
																				<ItemStyle HorizontalAlign="Center" CssClass="TableItem"></ItemStyle>
																				<HeaderStyle HorizontalAlign="Center" CssClass="GridHead1"></HeaderStyle>
																				<Columns>
																					<asp:TemplateColumn HeaderText="ลำดับ">
																						<HeaderStyle Width="60"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center"></ItemStyle>
																						<ItemTemplate>
																							<%# Container.ItemIndex+1 %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="ชื่อไฟล์">
																						<HeaderStyle Width="200"></HeaderStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"SYS_FILE","<a href=""JavaScript:OpenFile('{0}')"">") %>
																							<%# DataBinder.Eval(Container.DataItem,"ORIGIN_FILE","{0}</a>") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:TemplateColumn HeaderText="คำอธิบายไฟล์">
																						<HeaderStyle Width="270"></HeaderStyle>
																						<ItemTemplate>
																							<%# DataBinder.Eval(Container.DataItem,"FILE_DESC") %>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																					<asp:BoundColumn DataField="SYS_FILE" Visible="False"></asp:BoundColumn>
																					<asp:TemplateColumn HeaderText="คำสั่ง">
																						<HeaderStyle Width="100"></HeaderStyle>
																						<ItemStyle HorizontalAlign="Center"></ItemStyle>
																						<ItemTemplate>
																							<a href="javascript:DeleteFileItem(<%# Container.ItemIndex %>);" ><IMG alt="" src="../images/button/delete_button.gif" border="0"></a>
																						</ItemTemplate>
																					</asp:TemplateColumn>
																				</Columns>
																			</asp:datagrid></TD>
																	</TR>
																</TABLE>
															</TD>
														</TR>
													</asp:Panel>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">แสดงถึงวันที่&nbsp;:&nbsp;
														</TD>
														<TD colSpan="3">
															<asp:TextBox id="txtExpireDate" runat="server" Width="80px" MaxLength="10"></asp:TextBox><A onclick="javascript:Calendar_Open('txtExpireDate')"><IMG id="Img1" alt="ปฏิทิน" src="../images/Button/calendar_icon.gif" runat="server"></A></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right"></TD>
														<TD colSpan="3">
															<asp:CheckBox id="chkDisplay" runat="server" Text="ใช้งาน"></asp:CheckBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right"></TD>
														<TD colSpan="3">
															<asp:Label id="lblRemark" runat="server" ForeColor="Maroon">หมายเหตุ : การแนบรูปภาพใช้สำหรับประเภทข้อมูล What 's News และ จุลสาร <br>สำหรับการนำไปแสดงในส่วนของ Internet</asp:Label></TD>
													</TR>
													<TR>
														<TD bgColor="#d4d0c8" colSpan="4" height="3"></TD>
													</TR>
													<TR>
														<TD class="txtHead" align="right" colSpan="4"></TD>
													</TR>
										</asp:panel></td>
								</tr>
							</table>
						</td>
					</tr>
				</TBODY>
		</table>
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
		</TD></TR></TBODY></FORM></TABLE>
	</body>
</HTML>
