<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Cust_Cont_Data.aspx.vb" Inherits="CSC_IND_Internet.Cust_Cont_Data" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
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
			
			function SelectItem(ItemIndex) {
				document.forms(0).elements("ServerAction").value = "SELECT";
				document.forms(0).elements("ItemIndex").value = ItemIndex;
				document.forms(0).submit();
			}
			function SearchItem(){
				if (document.forms(0).elements("txtCodeId").value != '') {
					document.forms(0).elements("ServerAction").value="SEARCH"
					document.forms(0).submit();   
				}
			}
			function AddItem() {
					document.forms(0).elements("ServerAction").value = "ADD";
					document.forms(0).submit();    
			}
			function SaveItem(){
			var ErrMsg="";
				if (document.forms(0).elements("lstCompany").value =='') ErrMsg+="* บริษัท \n";
				if (document.forms(0).elements("txtCDate").value =='') ErrMsg+="* วันที่ติดต่อ \n";
				if (document.forms(0).elements("lstMethod").value =='') ErrMsg+="* วิธีการติดต่อ \n";
				if (document.forms(0).elements("lstType").value =='') ErrMsg+="* ประเภทการติดต่อ \n";
				if (document.forms(0).elements("txtCodeId").value =='') ErrMsg+="* รหัสพนักงาน \n";
				if (document.forms(0).elements("txtWorker").value =='') ErrMsg+="* ผู้รับเรื่อง/ผู้ดำเนินการ \n";
				if (document.forms(0).elements("txtWUnit").value =='') ErrMsg+="* หน่วยงาน \n";
				if (! isDate(document.forms(0).elements("txtCDate").value)) ErrMsg+="* วันที่ติดต่อควรเป็นข้อมูลวันที่ \n";
				if (! IsTime(document.forms(0).elements("txtCTime").value)) ErrMsg+="* เวลาที่ติดต่อควรเป็นข้อมูลเวลา \n";
				if (! IsPhoneData(document.forms(0).elements("txtMobile1").value)) ErrMsg+="* โทรศัพท์มือถือควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (668) 1999-999-9) \n";
				if (! IsPhoneData(document.forms(0).elements("txtMobile2").value)) ErrMsg+="* โทรศัพท์มือถือควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (668) 1999-999-9) \n";
				if (! IsPhoneData(document.forms(0).elements("txtTel").value)) ErrMsg+="* โทรศัพท์ควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (662) 537-2000 # 999) \n";
				if (! IsPhoneData(document.forms(0).elements("txtFax").value)) ErrMsg+="* โทรสารควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (662) 537-2000 # 999) \n";
				if (! IsEmailCheck(document.forms(0).elements("txtMail").value)) ErrMsg+="* E-mail address ควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น address@domain.com)\n";
				if (! isDate(document.forms(0).elements("txtRDate").value)) ErrMsg+="* วันที่รับเรื่องควรเป็นข้อมูลวันที่ \n";
				
				if (ErrMsg != "") {
					alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
				} else {
					document.forms(0).elements("ServerAction").value="SAVE";
					document.forms(0).submit(); 
				}
			}
			function DeleteItem(ItemIndex) {
				if (confirm('ต้องการลบข้อมูลรายการนี้หรือไม่ ?')) {
					document.forms(0).elements("ServerAction").value = "DELETE";
					document.forms(0).elements("ItemIndex").value = ItemIndex;
					document.forms(0).submit();
				}
			}
			function CancelItem() {
				document.forms(0).elements("ServerAction").value = "CANCEL";
				document.forms(0).submit();
			}
			function LoadPersonName(PIndex,PId,PName,PPos,PMobile){
			if (PIndex==1) {
				document.forms(0).elements("txtPID1").value = PId;
				document.forms(0).elements("txtPerson1").value =PName;
				document.forms(0).elements("txtPos1").value =PPos;
				document.forms(0).elements("txtMobile1").value =PMobile;
			} else if (PIndex==2) {
				document.forms(0).elements("txtPID2").value = PId;
				document.forms(0).elements("txtPerson2").value =PName;
				document.forms(0).elements("txtPos2").value =PPos;
				document.forms(0).elements("txtMobile2").value =PMobile;
				}
			}
			function OpenPerson(PIndex) {
				if ("<%=CompanyID%>" != "") {
					window.open("../MngCustomers/PersonList.aspx?PCtrl="+PIndex + "&CompanyID=<%=CompanyID%>","","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,width=570,height=520,resizable=no")
				} else if (document.forms(0).elements("lstCompany").value != "") {
					window.open("../MngCustomers/PersonList.aspx?PCtrl="+PIndex + "&CompanyID=" + document.forms(0).elements("lstCompany").value,"","directories=no,location=no,menubar=no,scrollbars=yes,toolbar=no,width=570,height=520,resizable=no")
				}
			}
			function AddFileItem(FType){
				if (FType=="DOC") {
					document.forms(0).elements("ServerAction").value = "DOC_ATTACH";
					document.forms(0).submit();	
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
			<form id="frmContDetail" method="post" runat="server">
				<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
				<input id="CompanyID" type="hidden" value="<%=CompanyID%>" name="CompanyID" > <input id="ContactID" type="hidden" value="<%=ContactID%>" name="ContactID" >
				<TBODY>
					<tr>
						<td>
							<TABLE height="25" cellSpacing="0" cellPadding="2" width="100%" border="0">
								<TR>
									<TD class="HTitle" width="10"></TD>
									<TD class="HTitle" width="300">ข้อมูลการรับบริการภายในโรงงาน</TD>
									<TD class="BtnBG" vAlign="middle">&nbsp;</TD>
								</TR>
							</TABLE>
						</td>
					</tr>
					<tr>
						<td>
							<table cellSpacing="0" cellPadding="1" width="100%" border="0">
								<TR>
									<TD height="6"></TD>
								</TR>
								<tr>
									<td class="GridHead1" height="25">รายละเอียดการรับบริการภายในโรงงาน</td>
								</tr>
								<tr class="GroupLine">
									<td height="5"></td>
								</tr>
								<tr>
									<td><asp:panel id="pnlData" runat="server">
											<TABLE cellSpacing="1" cellPadding="0" width="1000" border="0">
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">บริษัท&nbsp;:&nbsp;</TD>
													<TD colSpan="3" height="25">
														<asp:TextBox id="txtCompany" runat="server" BorderStyle="None" Width="500px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" width="150" height="25">วันที่ติดต่อ&nbsp;:&nbsp;
													</TD>
													<TD class="txtHead" width="250" height="25">
														<asp:TextBox id="txtCDate" runat="server" BorderStyle="None" Width="80px" MaxLength="10"></asp:TextBox>&nbsp;เวลา&nbsp;:&nbsp;
														<asp:TextBox id="txtCTime" runat="server" BorderStyle="None" Width="70px" MaxLength="5"></asp:TextBox></TD>
													<TD class="txtHead" align="right" width="150" height="25">เลขที่ติดต่อ&nbsp;:&nbsp;</TD>
													<TD width="450" height="25">
														<asp:TextBox id="txtContID" runat="server" BorderStyle="None" Width="150px"></asp:TextBox></TD>
												</TR>
												<TR>
													<TD bgColor="#d4d0c8" colSpan="4" height="3"></TD>
												</TR>
												<TR>
													<TD colSpan="4" height="3">
														<TABLE cellSpacing="0" cellPadding="1" width="100%" border="0">
															<TR>
																<TD class="GridHead1" align="left" colSpan="4" height="25">ชื่อลูกค้าที่ติดต่อ
																</TD>
															</TR>
															<TR>
																<TD align="left" colSpan="4">
																	<asp:Panel id="pnlPerson" Runat="server">
																		<TABLE cellSpacing="1" cellPadding="0" width="710">
																			<TR class="TableHead">
																				<TD align="center" width="60">ลำดับที่</TD>
																				<TD align="center" width="300">ชื่อ-นามสกุล</TD>
																				<TD align="center" width="200">ตำแหน่ง</TD>
																				<TD align="center" width="100">โทรศัพท์มือถือ</TD>
																			</TR>
																			<TR class="pnlBG">
																				<TD align="center" height="25">1<INPUT id="txtPID1" style="DISPLAY: none" type="text" size="1" name="txtPID1" runat="server"></TD>
																				<TD height="25">
																					<asp:TextBox id="txtPerson1" runat="server" BorderStyle="None" Width="300px" MaxLength="300"></asp:TextBox></TD>
																				<TD height="25">
																					<asp:TextBox id="txtPos1" runat="server" BorderStyle="None" Width="200px" MaxLength="150"></asp:TextBox></TD>
																				<TD height="25">
																					<asp:TextBox id="txtMobile1" runat="server" BorderStyle="None" Width="100px" MaxLength="50"></asp:TextBox></TD>
																			</TR>
																			<TR class="pnlBG">
																				<TD align="center" height="25">2<INPUT id="txtPID2" style="DISPLAY: none" type="text" size="1" name="txtPID2" runat="server"></TD>
																				<TD height="25">
																					<asp:TextBox id="txtPerson2" runat="server" BorderStyle="None" Width="300px" MaxLength="300"></asp:TextBox></TD>
																				<TD height="25">
																					<asp:TextBox id="txtPos2" runat="server" BorderStyle="None" Width="200px" MaxLength="150"></asp:TextBox></TD>
																				<TD height="25">
																					<asp:TextBox id="txtMobile2" runat="server" BorderStyle="None" Width="100px" MaxLength="50"></asp:TextBox></TD>
																			</TR>
																		</TABLE>
																	</asp:Panel></TD>
															</TR>
														</TABLE>
													</TD>
												</TR>
												<TR>
													<TD class="GridHead1" align="left" colSpan="4" height="25">รายละเอียด
													</TD>
												</TR>
												<TR>
													<TD bgColor="#d4d0c8" colSpan="4" height="3"></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">ประเภทการติดต่อ&nbsp;:&nbsp;</TD>
													<TD height="25">
														<asp:TextBox id="txtType" runat="server" BorderStyle="None" Width="180px"></asp:TextBox></TD>
													<TD class="txtHead" align="right" height="25">วิธีการติดต่อ&nbsp;:&nbsp;</TD>
													<TD height="25">
														<asp:TextBox id="txtMethod" runat="server" BorderStyle="None" Width="180px"></asp:TextBox>
														<asp:TextBox id="txtOther" runat="server" BorderStyle="None" Width="180px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">โทรศัพท์&nbsp;:&nbsp;</TD>
													<TD height="25"><asp:TextBox id="txtTel" runat="server" BorderStyle="None" Width="150px"></asp:TextBox></TD>
													<TD class="txtHead" align="right" height="25">โทรสาร&nbsp;:&nbsp;</TD>
													<TD height="25"><asp:TextBox id="txtFax" runat="server" BorderStyle="None" Width="150px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">E-Mail&nbsp;:&nbsp;</TD>
													<TD colSpan="3" height="25">
														<asp:TextBox id="txtMail" runat="server" BorderStyle="None" Width="270px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" vAlign="top" align="right">สาระสำคัญ&nbsp;:&nbsp;</TD>
													<TD vAlign="top" colSpan="3">
														<asp:TextBox id="txtDetail" runat="server" BorderStyle="None" Width="500px" TextMode="MultiLine"
															Rows="7"></asp:TextBox></TD>
												</TR>
												<asp:Panel id="pnlPlant" Runat="server" Visible="false">
													<TR>
														<TD class="GridHead1" align="left" colSpan="4" height="25">การให้บริการภายในโรงงาน
														</TD>
													</TR>
													<TR>
														<TD bgColor="#d4d0c8" colSpan="4" height="3"></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25">การให้บริการ&nbsp;:&nbsp;</TD>
														<TD colSpan="3" height="25">
															<asp:TextBox id="txtInplant" runat="server" BorderStyle="None" Width="350px"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ข้อมูล (Actual)&nbsp;:&nbsp;</TD>
														<TD colSpan="3">
															<asp:TextBox id="txtActual" runat="server" BorderStyle="None" Width="450px" TextMode="MultiLine"
																Rows="6"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">แผนงาน (Plan)&nbsp;:&nbsp;
														</TD>
														<TD colSpan="3">
															<asp:TextBox id="txtPlan" runat="server" BorderStyle="None" Width="450px" TextMode="MultiLine"
																Rows="6"></asp:TextBox></TD>
													</TR>
												</asp:Panel>
												<TR>
													<TD bgColor="#d4d0c8" colSpan="4" height="3"><FONT face="Tahoma"></FONT></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">เอกสารแนบ&nbsp;:&nbsp;
													</TD>
													<TD colSpan="3" height="25">
														<asp:hyperlink id="lnkImgAttach" runat="server" ForeColor="#0000C0" Target="_blank" BackColor="Transparent"></asp:hyperlink><INPUT id="txtFileImg" style="DISPLAY: none" type="text" size="1" name="txtFileImg" runat="server">&nbsp;&nbsp;&nbsp;  <!--A onclick="javaScript:AddFileItem('DOC');"><INPUT id="btnImg" type="button" value="เพิ่มเอกสาร" name="btnImg" runat="server"></A--><A href="javaScript:ClearAttach('DOC');"></A></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">สถานะการดำเนินการ&nbsp;:&nbsp;</TD>
													<TD colSpan="3" height="25">
														<asp:TextBox id="txtStatus" runat="server" BorderStyle="None" Width="250px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">รหัสพนักงาน&nbsp;:&nbsp;</TD>
													<TD colSpan="3" height="25">
														<asp:TextBox id="txtCodeId" runat="server" BorderStyle="None" Width="80px"></asp:TextBox><INPUT id="txtUnitID" style="DISPLAY: none" type="text" size="1" name="txtUnitID" runat="server"></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">ผู้รับเรื่อง/ผู้ดำเนินการ&nbsp;:&nbsp;
													</TD>
													<TD height="25">
														<asp:TextBox id="txtWorker" runat="server" BorderStyle="None" Width="200px"></asp:TextBox></TD>
													<TD class="txtHead" align="right" height="25">ตำแหน่ง&nbsp;:&nbsp;
													</TD>
													<TD height="25">
														<asp:TextBox id="txtWPos" runat="server" BorderStyle="None" Width="200px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" height="25">หน่วยงาน&nbsp;:&nbsp;
													</TD>
													<TD height="25">
														<asp:TextBox id="txtWUnit" runat="server" BorderStyle="None" Width="180px"></asp:TextBox></TD>
													<TD class="txtHead" align="right" height="25">
													วันที่รับเรื่อง&nbsp;:&nbsp;
													<TD height="25">
														<asp:TextBox id="txtRDate" runat="server" BorderStyle="None" Width="80px"></asp:TextBox></TD>
												</TR>
												<TR class="pnlBG">
													<TD class="txtHead" align="right" colSpan="4"></TD>
												</TR>
												<asp:Panel id="pnlApprover" Runat="server" Visible="false">
													<TR>
														<TD class="GridHead1" align="left" colSpan="4" height="25">ข้อมูลผู้อนุมัติ
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25">รหัสผู้อนุมัติ&nbsp;:&nbsp;</TD>
														<TD colSpan="3" height="25">
															<asp:TextBox id="txtCloseID" runat="server" BorderStyle="None" Width="80px"></asp:TextBox><INPUT id="txtCloseUnitId" style="DISPLAY: none" type="text" size="1" name="txtCloseUnitId"
																runat="server"></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25">ผู้อนุมัติ&nbsp;:&nbsp;
														</TD>
														<TD height="25">
															<asp:TextBox id="txtCloseName" runat="server" BorderStyle="None" Width="200px"></asp:TextBox></TD>
														<TD class="txtHead" align="right" height="25">ตำแหน่ง&nbsp;:&nbsp;
														</TD>
														<TD height="25">
															<asp:TextBox id="txtClosePos" runat="server" BorderStyle="None" Width="200px"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" height="25">หน่วยงาน&nbsp;:&nbsp;
														</TD>
														<TD height="25">
															<asp:TextBox id="txtCloseUnit" runat="server" BorderStyle="None" Width="180px"></asp:TextBox></TD>
														<TD class="txtHead" align="right" height="25">
														วันที่อนุมัติ&nbsp;:&nbsp;
														<TD height="25">
															<asp:TextBox id="txtCloseDate" runat="server" BorderStyle="None" Width="80px"></asp:TextBox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" colSpan="4" height="15"></TD>
													</TR>
												</asp:Panel></TABLE>
										</asp:panel></td>
								</tr>
							</table>
						</td>
					</tr>
				</TBODY></form>
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
	</body>
</HTML>
