<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ContactPerson.aspx.vb" Inherits="CSC_IND_Internet.ContactPerson" validateRequest="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ระบบศูนย์บริการลูกค้าก๊าซกลุ่มอุตสาหกรรมและผลิตไฟฟ้าใช้เอง (CSC-IND)</title>
		<META http-equiv="Content-Type" content="text/html; charset=TIS-620">
		<LINK href="../css/csc_ind.css" type="text/css" rel="stylesheet">
			<script language="javascript" src="../Includes/Utility.js"></script>
			<script language="JavaScript" type="text/JavaScript">
				function DeleteItem(){
				if (confirm('กดปุ่ม OK เพื่อยืนยันการลบข้อมูล?')) {
					document.forms(0).elements("ServerAction").value="DELETE"
					document.forms(0).submit();
				}
			}
			function SendItem(){
			var ErrMsg="";
				if (document.forms(0).elements("txtUser").value =='') ErrMsg="* ชื่อ-นามสกุลของผู้ให้ข้อมูล \n" ;
				if (document.forms(0).elements("txtTel").value =='') ErrMsg="* เบอร์โทรศัพท์ของผู้ให้ข้อมูล \n" ;
				if (document.forms(0).elements("txtMail").value =='')  ErrMsg="* E-Mail Addressของผู้ให้ข้อมูล \n" ;
				if (! IsPhoneData(document.forms(0).elements("txtTel").value)) ErrMsg+="* โทรศัพท์ของผู้ให้ข้อมูลควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (662) 537-2000 # 999) \n";
				if (! IsPhoneData(document.forms(0).elements("txtMobile").value)) ErrMsg+="* โทรศัพท์มือถือของผู้ให้ข้อมูลควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น (668) 1999-999-9) \n";
				if (! IsEmailCheck(document.forms(0).elements("txtMail").value)) ErrMsg+="* E-mail address ของผู้ให้ข้อมูลควรอยู่ในรูปแบบข้อมูลที่ถูกต้อง (เช่น address@domain.com) \n";
				if (ErrMsg != "") {
					alert("กรุณาระบุข้อมูลที่จำเป็นให้ครบถ้วนและตรวจสอบความถูกต้อง \n"+ErrMsg);
				} else {
					//document.forms(0).elements("DataSend").value=document.forms(0).innerText;
					document.forms(0).elements("DataSend").value=document.getElementById('MailContent').innerHTML;
					document.forms(0).elements("ServerAction").value="SEND";
					document.forms(0).submit(); 
				}
			}
			function CheckPerson(IdNo){
				if (IdNo==1) {
					if (document.forms(0).elements("chkBilling").checked==true) {
						document.forms(0).elements("lstBLTitle").disabled=false;
						document.forms(0).elements("txtBLName").disabled=false;
						document.forms(0).elements("txtBLSurName").disabled=false;
						document.forms(0).elements("txtBLPosition").disabled=false;
						document.forms(0).elements("txtBLTel").disabled=false;
						document.forms(0).elements("txtBLFax").disabled=false;
						document.forms(0).elements("txtBLMobile").disabled=false;
						document.forms(0).elements("txtBLEMail").disabled=false;
					} else {
						document.forms(0).elements("lstBLTitle").value="";
						document.forms(0).elements("txtBLName").value="";
						document.forms(0).elements("txtBLSurName").value="";
						document.forms(0).elements("txtBLPosition").value="";
						document.forms(0).elements("txtBLTel").value="";
						document.forms(0).elements("txtBLFax").value="";
						document.forms(0).elements("txtBLMobile").value="";
						document.forms(0).elements("txtBLEMail").value="";
						document.forms(0).elements("lstBLTitle").disabled=true;
						document.forms(0).elements("txtBLName").disabled=true;
						document.forms(0).elements("txtBLSurName").disabled=true;
						document.forms(0).elements("txtBLPosition").disabled=true;
						document.forms(0).elements("txtBLTel").disabled=true;
						document.forms(0).elements("txtBLFax").disabled=true;
						document.forms(0).elements("txtBLMobile").disabled=true;
						document.forms(0).elements("txtBLEMail").disabled=true;
					}
				} else if (IdNo==2) {
					if (document.forms(0).elements("chkContract").checked==true) {
						document.forms(0).elements("lstCTTitle").disabled=false;
						document.forms(0).elements("txtCTName").disabled=false;
						document.forms(0).elements("txtCTSurName").disabled=false;
						document.forms(0).elements("txtCTPosition").disabled=false;
						document.forms(0).elements("txtCTTel").disabled=false;
						document.forms(0).elements("txtCTFax").disabled=false;
						document.forms(0).elements("txtCTMobile").disabled=false;
						document.forms(0).elements("txtCTEMail").disabled=false;
					} else {
						document.forms(0).elements("lstCTTitle").value="";
						document.forms(0).elements("txtCTName").value="";
						document.forms(0).elements("txtCTSurName").value="";
						document.forms(0).elements("txtCTPosition").value="";
						document.forms(0).elements("txtCTTel").value="";
						document.forms(0).elements("txtCTFax").value="";
						document.forms(0).elements("txtCTMobile").value="";
						document.forms(0).elements("txtCTEMail").value="";
						document.forms(0).elements("lstCTTitle").disabled=true;
						document.forms(0).elements("txtCTName").disabled=true;
						document.forms(0).elements("txtCTSurName").disabled=true;
						document.forms(0).elements("txtCTPosition").disabled=true;
						document.forms(0).elements("txtCTTel").disabled=true;
						document.forms(0).elements("txtCTFax").disabled=true;
						document.forms(0).elements("txtCTMobile").disabled=true;
						document.forms(0).elements("txtCTEMail").disabled=true;
					}
				} else if (IdNo==3) {
					if (document.forms(0).elements("chkFactory").checked==true) {
						document.forms(0).elements("lstFTTitle").disabled=false;
						document.forms(0).elements("txtFTName").disabled=false;
						document.forms(0).elements("txtFTSurName").disabled=false;
						document.forms(0).elements("txtFTPosition").disabled=false;
						document.forms(0).elements("txtFTTel").disabled=false;
						document.forms(0).elements("txtFTFax").disabled=false;
						document.forms(0).elements("txtFTMobile").disabled=false;
						document.forms(0).elements("txtFTEMail").disabled=false;
					} else {
						document.forms(0).elements("lstFTTitle").value="";
						document.forms(0).elements("txtFTName").value="";
						document.forms(0).elements("txtFTSurName").value="";
						document.forms(0).elements("txtFTPosition").value="";
						document.forms(0).elements("txtFTTel").value="";
						document.forms(0).elements("txtFTFax").value="";
						document.forms(0).elements("txtFTMobile").value="";
						document.forms(0).elements("txtFTEMail").value="";
						document.forms(0).elements("lstFTTitle").disabled=true;
						document.forms(0).elements("txtFTName").disabled=true;
						document.forms(0).elements("txtFTSurName").disabled=true;
						document.forms(0).elements("txtFTPosition").disabled=true;
						document.forms(0).elements("txtFTTel").disabled=true;
						document.forms(0).elements("txtFTFax").disabled=true;
						document.forms(0).elements("txtFTMobile").disabled=true;
						document.forms(0).elements("txtFTEMail").disabled=true;
					}
				} else if (IdNo==4) {
					if (document.forms(0).elements("chkContact").checked==true) {
						document.forms(0).elements("lstCNTitle").disabled=false;
						document.forms(0).elements("txtCNName").disabled=false;
						document.forms(0).elements("txtCNSurName").disabled=false;
						document.forms(0).elements("txtCNPosition").disabled=false;
						document.forms(0).elements("txtCNTel").disabled=false;
						document.forms(0).elements("txtCNFax").disabled=false;
						document.forms(0).elements("txtCNMobile").disabled=false;
						document.forms(0).elements("txtCNEMail").disabled=false;
					} else {
						document.forms(0).elements("lstCNTitle").value="";
						document.forms(0).elements("txtCNName").value="";
						document.forms(0).elements("txtCNSurName").value="";
						document.forms(0).elements("txtCNPosition").value="";
						document.forms(0).elements("txtCNTel").value="";
						document.forms(0).elements("txtCNFax").value="";
						document.forms(0).elements("txtCNMobile").value="";
						document.forms(0).elements("txtCNEMail").value="";
						document.forms(0).elements("lstCNTitle").disabled=true;
						document.forms(0).elements("txtCNName").disabled=true;
						document.forms(0).elements("txtCNSurName").disabled=true;
						document.forms(0).elements("txtCNPosition").disabled=true;
						document.forms(0).elements("txtCNTel").disabled=true;
						document.forms(0).elements("txtCNFax").disabled=true;
						document.forms(0).elements("txtCNMobile").disabled=true;
						document.forms(0).elements("txtCNEMail").disabled=true;
					}
				} else if (IdNo==5) {
					if (document.forms(0).elements("chkEmergency").checked==true) {
						document.forms(0).elements("lstEMTitle").disabled=false;
						document.forms(0).elements("txtEMName").disabled=false;
						document.forms(0).elements("txtEMSurName").disabled=false;
						document.forms(0).elements("txtEMPosition").disabled=false;
						document.forms(0).elements("txtEMTel").disabled=false;
						document.forms(0).elements("txtEMFax").disabled=false;
						document.forms(0).elements("txtEMMobile").disabled=false;
						document.forms(0).elements("txtEMEMail").disabled=false;
					} else {
						document.forms(0).elements("lstEMTitle").value="";
						document.forms(0).elements("txtEMName").value="";
						document.forms(0).elements("txtEMSurName").value="";
						document.forms(0).elements("txtEMPosition").value="";
						document.forms(0).elements("txtEMTel").value="";
						document.forms(0).elements("txtEMFax").value="";
						document.forms(0).elements("txtEMMobile").value="";
						document.forms(0).elements("txtEMEMail").value="";
						document.forms(0).elements("lstEMTitle").disabled=true;
						document.forms(0).elements("txtEMName").disabled=true;
						document.forms(0).elements("txtEMSurName").disabled=true;
						document.forms(0).elements("txtEMPosition").disabled=true;
						document.forms(0).elements("txtEMTel").disabled=true;
						document.forms(0).elements("txtEMFax").disabled=true;
						document.forms(0).elements("txtEMMobile").disabled=true;
						document.forms(0).elements("txtEMEMail").disabled=true;
					}
				} else if (IdNo==6) {
					if (document.forms(0).elements("chkSafety").checked==true) {
						document.forms(0).elements("lstSTTitle").disabled=false;
						document.forms(0).elements("txtSTName").disabled=false;
						document.forms(0).elements("txtSTSurName").disabled=false;
						document.forms(0).elements("txtSTPosition").disabled=false;
						document.forms(0).elements("txtSTTel").disabled=false;
						document.forms(0).elements("txtSTFax").disabled=false;
						document.forms(0).elements("txtSTMobile").disabled=false;
						document.forms(0).elements("txtSTEMail").disabled=false;
					} else {
						document.forms(0).elements("lstSTTitle").value="";
						document.forms(0).elements("txtSTName").value="";
						document.forms(0).elements("txtSTSurName").value="";
						document.forms(0).elements("txtSTPosition").value="";
						document.forms(0).elements("txtSTTel").value="";
						document.forms(0).elements("txtSTFax").value="";
						document.forms(0).elements("txtSTMobile").value="";
						document.forms(0).elements("txtSTEMail").value="";
						document.forms(0).elements("lstSTTitle").disabled=true;
						document.forms(0).elements("txtSTName").disabled=true;
						document.forms(0).elements("txtSTSurName").disabled=true;
						document.forms(0).elements("txtSTPosition").disabled=true;
						document.forms(0).elements("txtSTTel").disabled=true;
						document.forms(0).elements("txtSTFax").disabled=true;
						document.forms(0).elements("txtSTMobile").disabled=true;
						document.forms(0).elements("txtSTEMail").disabled=true;
					}
				}
			}
			</script>
	</HEAD>
	<body>
		<div id="divContact" runat="server">
			<form id="frmContact" name="frmContact" method="post" runat="server">
				<input id="ItemIndex" type="hidden" name="ItemIndex"> <input id="ServerAction" type="hidden" name="ServerAction">
				<input id=CompanyID type=hidden value="<%=CompanyID%>" name=CompanyID> <input id="DataSend" type="hidden" name="DataSend">
				<table cellSpacing="0" cellPadding="0" width="900" align="left" border="0">
					<TBODY>
						<tr>
							<td>
								<TABLE height="25" cellSpacing="0" cellPadding="2" width="100%" border="0">
									<TR>
										<TD width="20"></TD>
										<TD width="540"><asp:image id="Image1" runat="server" ImageUrl="../images/title_cust2.jpg"></asp:image></TD>
										<TD vAlign="middle">&nbsp;</TD>
									</TR>
								</TABLE>
							</td>
						</tr>
						<tr>
							<td>
								<div id="MailContent" runat="server">
									<table cellSpacing="0" cellPadding="1" width="100%" border="0">
										<tr>
											<td height="6"></td>
										</tr>
										<TR>
											<TD class="HSubject" vAlign="middle" height="30">บริษัท&nbsp;:&nbsp;<asp:label id="lblCompany" runat="server" CssClass="HSubject"></asp:label></TD>
										</TR>
										<TR>
											<TD height="6"></TD>
										</TR>
										<tr>
											<td class="GridHead1" height="25">ข้อมูลผู้ติดต่อประสานงาน</td>
										</tr>
										<asp:panel id="pnlBilling" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ติดต่อประสานงานการเรียกเก็บเงินค่าก๊าซธรรมชาติ
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgBilling" runat="server" Width="900px" DataKeyField="" BorderWidth="0px" CellPadding="0"
														AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel><asp:panel id="pnlContract" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ติดต่อประสานงานเกี่ยวกับสัญญาซื้อขายก๊าซธรรมชาติ
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgContract" runat="server" Width="900px" DataKeyField="" BorderWidth="0px" CellPadding="0"
														AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel><asp:panel id="pnlFactory" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ติดต่อประสานงานการใช้ก๊าซธรรมชาติภายในโรงงาน
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgFactory" runat="server" Width="900px" DataKeyField="" BorderWidth="0px" CellPadding="0"
														AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel><asp:panel id="pnlContact" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ติดต่อกรณีคุณภาพก๊าซฯเปลี่ยนแปลง 
													(SMS)
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgContact" runat="server" Width="900px" DataKeyField="" BorderWidth="0px" CellPadding="0"
														AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel><asp:panel id="pnlEmergency" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ติดต่อกรณีฉุกเฉิน
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgEmergency" runat="server" Width="900px" DataKeyField="" BorderWidth="0px"
														CellPadding="0" AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel><asp:panel id="pnlSafety" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ประสานงานเรื่องหลักเกณฑ์และมาตรฐานความปลอดภัยของสถานที่ใช้ก๊าซฯ 
													2550
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgSafety" runat="server" Width="900px" DataKeyField="" BorderWidth="0px" CellPadding="0"
														AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel><asp:panel id="pnlCDay" Runat="server">
											<TR class="GroupLine">
												<TD height="5"></TD>
											</TR>
											<TR>
												<TD class="GridHead2" align="left" height="25">รายชื่อผู้ประสานงาน C-day 2
												</TD>
											</TR>
											<TR>
												<TD>
													<asp:datagrid id="dgCDay" runat="server" Width="900px" DataKeyField="" BorderWidth="0px" CellPadding="0"
														AutoGenerateColumns="False" CellSpacing="1">
														<SelectedItemStyle HorizontalAlign="Center" CssClass="TableSelectedItem"></SelectedItemStyle>
														<AlternatingItemStyle CssClass="TableAlternatingItem"></AlternatingItemStyle>
														<ItemStyle CssClass="TableItem"></ItemStyle>
														<HeaderStyle HorizontalAlign="Center" CssClass="TableHead"></HeaderStyle>
														<Columns>
															<asp:BoundColumn DataField="PERSON_NAME" HeaderText="ชื่อ-นามสกุล">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="POSITION" HeaderText="ตำแหน่ง">
																<HeaderStyle Width="200px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="TEL" HeaderText="โทรศัพท์">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="FAX" HeaderText="โทรสาร">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="MOBILE" HeaderText="โทรศัพท์มือถือ">
																<HeaderStyle Width="110px"></HeaderStyle>
															</asp:BoundColumn>
															<asp:BoundColumn DataField="EMAIL" HeaderText="E-Mail">
																<HeaderStyle Width="170px"></HeaderStyle>
															</asp:BoundColumn>
														</Columns>
													</asp:datagrid></TD>
											</TR>
										</asp:panel>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<table cellSpacing="0" cellPadding="0" width="700" border="0">
													<tr>
														<td class="T_blue14">&nbsp;&nbsp;&nbsp;* ข้อควรปฏิบัติในการกรอกข้อมูล<br>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 
															กรุณาเลือกช่องผู้ติดต่อประสานงานก่อนทำการกรอกข้อมูล<br>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2. กรุณากรอกข้อมูลให้ครบถ้วน ถูกต้อง 
															และชัดเจน<br>
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3. กรุณากรอกข้อมูลให้ตรงกับความเป็นจริง 
															เพื่อประโยชน์ของท่าน</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE id="Table31" cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson1" onclick="JavaScript:CheckPerson(1);" type="checkbox" name="chkPerson1">&nbsp; 
															ผู้ติดต่อคนที่ 1
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:RadioButtonList id="RadioButtonList1" runat="server" Width="500px" Enabled="False" RepeatColumns="3">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:RadioButtonList></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="DropDownList1" runat="server" Enabled="False">
																<asp:ListItem Value="1">ผู้ติดต่อประสานงานการเรียกเก็บเงินค่าก๊าซธรรมชาติ</asp:ListItem>
																<asp:ListItem Value="2">ผู้ติดต่อประสานงานเกี่ยวกับสัญญาซื้อขายก๊าซธรรมชาติ</asp:ListItem>
																<asp:ListItem Value="3">ผู้ติดต่อประสานงานการใช้ก๊าซธรรมชาติภายในโรงงาน</asp:ListItem>
																<asp:ListItem Value="4">ผู้ติดต่อกรณีคุณภาพก๊าซฯเปลี่ยนแปลง (SMS)</asp:ListItem>
																<asp:ListItem Value="5">ผู้ติดต่อกรณีฉุกเฉิน</asp:ListItem>
																<asp:ListItem Value="6">ผู้ประสานงานเรื่องหลักเกณฑ์และมาตรฐานความปลอดภัยของสถานที่ใช้ก๊าซฯ 2550</asp:ListItem>
																<asp:ListItem Value="7">ผู้ติดต่อประสานงาน C-day 2</asp:ListItem>
															</asp:DropDownList></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle1" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName1" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname1" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos1" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel1" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax1" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile1" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail1" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE id="Table31" cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkBilling" onclick="JavaScript:CheckPerson(1);" type="checkbox" name="chkBilling">&nbsp; 
															ผู้ติดต่อประสานงานการเรียกเก็บเงินค่าก๊าซธรรมชาติ
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstBLTitle" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtBLName" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtBLSurName" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtBLPosition" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtBLTel" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtBLFax" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtBLMobile" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtBLEmail" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE id="Table41" cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkContract" onclick="JavaScript:CheckPerson(2);" type="checkbox" name="chkContract">&nbsp; 
															ผู้ติดต่อประสานงานเกี่ยวกับสัญญาซื้อขายก๊าซธรรมชาติ
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstCTTitle" runat="server" Width="80px" Enabled="False">
																<asp:ListItem></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtCTName" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtCTSurName" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCTPosition" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCTTel" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCTFax" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCTMobile" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtCTEmail" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE id="Table51" cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkFactory" onclick="JavaScript:CheckPerson(3);" type="checkbox" name="chkFactory">&nbsp; 
															ผู้ติดต่อประสานงานการใช้ก๊าซธรรมชาติภายในโรงงาน
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstFTTitle" runat="server" Width="80px" Enabled="False">
																<asp:ListItem></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtFTName" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtFTSurName" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFTPosition" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFTTel" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFTFax" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFTMobile" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtFTEmail" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkContact" onclick="JavaScript:CheckPerson(4);" type="checkbox" name="chkContact">&nbsp; 
															ผู้ติดต่อกรณีคุณภาพก๊าซฯเปลี่ยนแปลง (SMS)
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstCNTitle" runat="server" Width="80px" Enabled="False">
																<asp:ListItem></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtCNName" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtCNSurName" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCNPosition" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCNTel" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCNFax" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtCNMobile" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtCNEmail" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkEmergency" onclick="JavaScript:CheckPerson(5);" type="checkbox" name="chkEmergency">&nbsp; 
															ผู้ติดต่อกรณีฉุกเฉิน
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstEMTitle" runat="server" Width="80px" Enabled="False">
																<asp:ListItem></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtEMName" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtEMSurName" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtEMPosition" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtEMTel" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtEMFax" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtEMMobile" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMEmail" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td>
												<TABLE cellSpacing="0" cellPadding="1" width="900" border="0">
													<TR class="pnlBG">
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkSafety" onclick="JavaScript:CheckPerson(6);" type="checkbox" name="chkSafety">&nbsp; 
															ผู้ประสานงานเรื่องหลักเกณฑ์และมาตรฐานความปลอดภัยของสถานที่ใช้ก๊าซฯ 2550
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">คำนำหน้า&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstSTTitle" runat="server" Width="80px" Enabled="False">
																<asp:ListItem></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtSTName" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSTSurName" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtSTPosition" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtSTTel" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtSTFax" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtSTMobile" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtSTEmail" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
													</TR>
												</TABLE>
											</td>
										</tr>
										<TR>
											<TD colSpan="4" height="6"></TD>
										</TR>
									</table>
									<table cellSpacing="0" cellPadding="1" width="100%" border="0">
										<TR>
											<TD align="left" height="5"></TD>
										</TR>
										<TR>
											<TD class="GridHead1" align="left" height="25">ข้อมูลผู้ให้ข้อมูล
											</TD>
										</TR>
										<tr class="GroupLine">
											<td height="5"></td>
										</tr>
										<tr>
											<td><asp:panel id="pnlPerson" runat="server">
													<TABLE id="Table21" cellSpacing="0" cellPadding="1" width="900" border="0">
														<TR class="pnlBG">
															<TD class="txtHead" align="right" width="130">ชื่อ-นามสกุล&nbsp;:&nbsp;</TD>
															<TD class="txtHead" width="300">
																<asp:TextBox id="txtUser" runat="server" Width="250px"></asp:TextBox></TD>
															<TD class="txtHead" align="right" width="120">ตำแหน่ง&nbsp;:&nbsp;</TD>
															<TD>
																<asp:TextBox id="txtPos" runat="server" Width="250px"></asp:TextBox></TD>
														</TR>
														<TR class="pnlBG">
															<TD class="txtHead" align="right">โทรศัพท์ &nbsp;:&nbsp;</TD>
															<TD>
																<asp:TextBox id="txtTel" runat="server" Width="150px"></asp:TextBox></TD>
															<TD class="txtHead" align="right">E-Mail&nbsp;:&nbsp;</TD>
															<TD>
																<asp:TextBox id="txtMail" runat="server" Width="250px"></asp:TextBox></TD>
														</TR>
														<TR class="pnlBG">
															<TD class="txtHead" align="right">โทรศัพท์มื่อถือ &nbsp;:&nbsp;</TD>
															<TD>
																<asp:TextBox id="txtMobile" runat="server" Width="150px"></asp:TextBox></TD>
															<TD class="txtHead" align="right">วันที่ &nbsp;:&nbsp;</TD>
															<TD>
																<asp:TextBox id="txtDate" runat="server" Width="80px" MaxLength="10"></asp:TextBox><A onclick="javascript:Calendar_Open('txtDate')"><INPUT id="btnCal" type="button" value=" ... " name="btnCal"></A></TD>
														</TR>
													</TABLE>
												</asp:panel></td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td align="center"><A onclick="JavaScript:SendItem();" href="#"><IMG id="Img1" src="../images/Button/send.jpg" border="0" name="btnSave" runat="server"></A></td>
						</tr>
					</TBODY></table>
			</form>
		</div>
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
