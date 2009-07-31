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
					if (document.forms(0).elements("chkPerson1").checked==true) {
						document.forms(0).elements("lstSubject1").disabled=false;
						document.forms(0).elements("lstType1").disabled=false;
						document.forms(0).elements("lstTitle1").disabled=false;
						document.forms(0).elements("txtName1").disabled=false;
						document.forms(0).elements("txtSurName1").disabled=false;
						document.forms(0).elements("txtPos1").disabled=false;
						document.forms(0).elements("txtTel1").disabled=false;
						document.forms(0).elements("txtFax1").disabled=false;
						document.forms(0).elements("txtMobile1").disabled=false;
						document.forms(0).elements("txtEMail1").disabled=false;
					} else {
						document.forms(0).elements("lstTitle1").value="";
						document.forms(0).elements("txtName1").value="";
						document.forms(0).elements("txtSurName1").value="";
						document.forms(0).elements("txtPos1").value="";
						document.forms(0).elements("txtTel1").value="";
						document.forms(0).elements("txtFax1").value="";
						document.forms(0).elements("txtMobile1").value="";
						document.forms(0).elements("txtEMail1").value="";
						document.forms(0).elements("lstSubject1").disabled=true;
						document.forms(0).elements("lstType1").disabled=true;
						document.forms(0).elements("lstTitle1").disabled=true;
						document.forms(0).elements("txtName1").disabled=true;
						document.forms(0).elements("txtSurName1").disabled=true;
						document.forms(0).elements("txtPos1").disabled=true;
						document.forms(0).elements("txtTel1").disabled=true;
						document.forms(0).elements("txtFax1").disabled=true;
						document.forms(0).elements("txtMobile1").disabled=true;
						document.forms(0).elements("txtEMail1").disabled=true;
					}
				} else if (IdNo==2) {
					if (document.forms(0).elements("chkPerson2").checked==true) {
						document.forms(0).elements("lstSubject2").disabled=false;
						document.forms(0).elements("lstType2").disabled=false;
						document.forms(0).elements("lstTitle2").disabled=false;
						document.forms(0).elements("txtName2").disabled=false;
						document.forms(0).elements("txtSurName2").disabled=false;
						document.forms(0).elements("txtPos2").disabled=false;
						document.forms(0).elements("txtTel2").disabled=false;
						document.forms(0).elements("txtFax2").disabled=false;
						document.forms(0).elements("txtMobile2").disabled=false;
						document.forms(0).elements("txtEMail2").disabled=false;
					} else {
						document.forms(0).elements("lstTitle2").value="";
						document.forms(0).elements("txtName2").value="";
						document.forms(0).elements("txtSurName2").value="";
						document.forms(0).elements("txtPos2").value="";
						document.forms(0).elements("txtTel2").value="";
						document.forms(0).elements("txtFax2").value="";
						document.forms(0).elements("txtMobile2").value="";
						document.forms(0).elements("txtEMail2").value="";
						document.forms(0).elements("lstSubject2").disabled=true;
						document.forms(0).elements("lstType2").disabled=true;
						document.forms(0).elements("lstTitle2").disabled=true;
						document.forms(0).elements("txtName2").disabled=true;
						document.forms(0).elements("txtSurName2").disabled=true;
						document.forms(0).elements("txtPos2").disabled=true;
						document.forms(0).elements("txtTel2").disabled=true;
						document.forms(0).elements("txtFax2").disabled=true;
						document.forms(0).elements("txtMobile2").disabled=true;
						document.forms(0).elements("txtEMail2").disabled=true;
					}
				} else if (IdNo==3) {
					if (document.forms(0).elements("chkPerson3").checked==true) {
						document.forms(0).elements("lstSubject3").disabled=false;
						document.forms(0).elements("lstType3").disabled=false;
						document.forms(0).elements("lstTitle3").disabled=false;
						document.forms(0).elements("txtName3").disabled=false;
						document.forms(0).elements("txtSurName3").disabled=false;
						document.forms(0).elements("txtPos3").disabled=false;
						document.forms(0).elements("txtTel3").disabled=false;
						document.forms(0).elements("txtFax3").disabled=false;
						document.forms(0).elements("txtMobile3").disabled=false;
						document.forms(0).elements("txtEMail3").disabled=false;
					} else {
						document.forms(0).elements("lstTitle3").value="";
						document.forms(0).elements("txtName3").value="";
						document.forms(0).elements("txtSurName3").value="";
						document.forms(0).elements("txtPos3").value="";
						document.forms(0).elements("txtTel3").value="";
						document.forms(0).elements("txtFax3").value="";
						document.forms(0).elements("txtMobile3").value="";
						document.forms(0).elements("txtEMail3").value="";
						document.forms(0).elements("lstSubject3").disabled=true;
						document.forms(0).elements("lstType3").disabled=true;
						document.forms(0).elements("lstTitle3").disabled=true;
						document.forms(0).elements("txtName3").disabled=true;
						document.forms(0).elements("txtSurName3").disabled=true;
						document.forms(0).elements("txtPos3").disabled=true;
						document.forms(0).elements("txtTel3").disabled=true;
						document.forms(0).elements("txtFax3").disabled=true;
						document.forms(0).elements("txtMobile3").disabled=true;
						document.forms(0).elements("txtEMail3").disabled=true;
					}
				} else if (IdNo==4) {
					if (document.forms(0).elements("chkPerson4").checked==true) {
						document.forms(0).elements("lstSubject4").disabled=false;
						document.forms(0).elements("lstType4").disabled=false;
						document.forms(0).elements("lstTitle4").disabled=false;
						document.forms(0).elements("txtName4").disabled=false;
						document.forms(0).elements("txtSurName4").disabled=false;
						document.forms(0).elements("txtPos4").disabled=false;
						document.forms(0).elements("txtTel4").disabled=false;
						document.forms(0).elements("txtFax4").disabled=false;
						document.forms(0).elements("txtMobile4").disabled=false;
						document.forms(0).elements("txtEMail4").disabled=false;
					} else {
						document.forms(0).elements("lstTitle4").value="";
						document.forms(0).elements("txtName4").value="";
						document.forms(0).elements("txtSurName4").value="";
						document.forms(0).elements("txtPos4").value="";
						document.forms(0).elements("txtTel4").value="";
						document.forms(0).elements("txtFax4").value="";
						document.forms(0).elements("txtMobile4").value="";
						document.forms(0).elements("txtEMail4").value="";
						document.forms(0).elements("lstSubject4").disabled=true;
						document.forms(0).elements("lstType4").disabled=true;
						document.forms(0).elements("lstTitle4").disabled=true;
						document.forms(0).elements("txtName4").disabled=true;
						document.forms(0).elements("txtSurName4").disabled=true;
						document.forms(0).elements("txtPos4").disabled=true;
						document.forms(0).elements("txtTel4").disabled=true;
						document.forms(0).elements("txtFax4").disabled=true;
						document.forms(0).elements("txtMobile4").disabled=true;
						document.forms(0).elements("txtEMail4").disabled=true;
					}
				} else if (IdNo==5) {
					if (document.forms(0).elements("chkPerson5").checked==true) {
						document.forms(0).elements("lstSubject5").disabled=false;
						document.forms(0).elements("lstType5").disabled=false;
						document.forms(0).elements("lstTitle5").disabled=false;
						document.forms(0).elements("txtName5").disabled=false;
						document.forms(0).elements("txtSurName5").disabled=false;
						document.forms(0).elements("txtPos5").disabled=false;
						document.forms(0).elements("txtTel5").disabled=false;
						document.forms(0).elements("txtFax5").disabled=false;
						document.forms(0).elements("txtMobile5").disabled=false;
						document.forms(0).elements("txtEMail5").disabled=false;
					} else {
						document.forms(0).elements("lstTitle5").value="";
						document.forms(0).elements("txtName5").value="";
						document.forms(0).elements("txtSurName5").value="";
						document.forms(0).elements("txtPos5").value="";
						document.forms(0).elements("txtTel5").value="";
						document.forms(0).elements("txtFax5").value="";
						document.forms(0).elements("txtMobile5").value="";
						document.forms(0).elements("txtEMail5").value="";
						document.forms(0).elements("lstSubject5").disabled=true;
						document.forms(0).elements("lstType5").disabled=true;
						document.forms(0).elements("lstTitle5").disabled=true;
						document.forms(0).elements("txtName5").disabled=true;
						document.forms(0).elements("txtSurName5").disabled=true;
						document.forms(0).elements("txtPos5").disabled=true;
						document.forms(0).elements("txtTel5").disabled=true;
						document.forms(0).elements("txtFax5").disabled=true;
						document.forms(0).elements("txtMobile5").disabled=true;
						document.forms(0).elements("txtEMail5").disabled=true;
					}
				} else if (IdNo==6) {
					if (document.forms(0).elements("chkPerson6").checked==true) {
						document.forms(0).elements("lstSubject6").disabled=false;
						document.forms(0).elements("lstType6").disabled=false;
						document.forms(0).elements("lstTitle6").disabled=false;
						document.forms(0).elements("txtName6").disabled=false;
						document.forms(0).elements("txtSurName6").disabled=false;
						document.forms(0).elements("txtPos6").disabled=false;
						document.forms(0).elements("txtTel6").disabled=false;
						document.forms(0).elements("txtFax6").disabled=false;
						document.forms(0).elements("txtMobile6").disabled=false;
						document.forms(0).elements("txtEMail6").disabled=false;
					} else {
						document.forms(0).elements("lstTitle6").value="";
						document.forms(0).elements("txtName6").value="";
						document.forms(0).elements("txtSurName6").value="";
						document.forms(0).elements("txtPos6").value="";
						document.forms(0).elements("txtTel6").value="";
						document.forms(0).elements("txtFax6").value="";
						document.forms(0).elements("txtMobile6").value="";
						document.forms(0).elements("txtEMail6").value="";
						document.forms(0).elements("lstSubject6").disabled=true;
						document.forms(0).elements("lstType6").disabled=true;
						document.forms(0).elements("lstTitle6").disabled=true;
						document.forms(0).elements("txtName6").disabled=true;
						document.forms(0).elements("txtSurName6").disabled=true;
						document.forms(0).elements("txtPos6").disabled=true;
						document.forms(0).elements("txtTel6").disabled=true;
						document.forms(0).elements("txtFax6").disabled=true;
						document.forms(0).elements("txtMobile6").disabled=true;
						document.forms(0).elements("txtEMail6").disabled=true;
					}
				} else if (IdNo==7) {
					if (document.forms(0).elements("chkPerson7").checked==true) {
						document.forms(0).elements("lstSubject7").disabled=false;
						document.forms(0).elements("lstType7").disabled=false;
						document.forms(0).elements("lstTitle7").disabled=false;
						document.forms(0).elements("txtName7").disabled=false;
						document.forms(0).elements("txtSurName7").disabled=false;
						document.forms(0).elements("txtPos7").disabled=false;
						document.forms(0).elements("txtTel7").disabled=false;
						document.forms(0).elements("txtFax7").disabled=false;
						document.forms(0).elements("txtMobile7").disabled=false;
						document.forms(0).elements("txtEMail7").disabled=false;
					} else {
						document.forms(0).elements("lstTitle7").value="";
						document.forms(0).elements("txtName7").value="";
						document.forms(0).elements("txtSurName7").value="";
						document.forms(0).elements("txtPos7").value="";
						document.forms(0).elements("txtTel7").value="";
						document.forms(0).elements("txtFax7").value="";
						document.forms(0).elements("txtMobile7").value="";
						document.forms(0).elements("txtEMail7").value="";
						document.forms(0).elements("lstSubject7").disabled=true;
						document.forms(0).elements("lstType7").disabled=true;
						document.forms(0).elements("lstTitle7").disabled=true;
						document.forms(0).elements("txtName7").disabled=true;
						document.forms(0).elements("txtSurName7").disabled=true;
						document.forms(0).elements("txtPos7").disabled=true;
						document.forms(0).elements("txtTel7").disabled=true;
						document.forms(0).elements("txtFax7").disabled=true;
						document.forms(0).elements("txtMobile7").disabled=true;
						document.forms(0).elements("txtEMail7").disabled=true;
					}
				} else if (IdNo==8) {
					if (document.forms(0).elements("chkPerson8").checked==true) {
						document.forms(0).elements("lstSubject8").disabled=false;
						document.forms(0).elements("lstType8").disabled=false;
						document.forms(0).elements("lstTitle8").disabled=false;
						document.forms(0).elements("txtName8").disabled=false;
						document.forms(0).elements("txtSurName8").disabled=false;
						document.forms(0).elements("txtPos8").disabled=false;
						document.forms(0).elements("txtTel8").disabled=false;
						document.forms(0).elements("txtFax8").disabled=false;
						document.forms(0).elements("txtMobile8").disabled=false;
						document.forms(0).elements("txtEMail8").disabled=false;
					} else {
						document.forms(0).elements("lstTitle8").value="";
						document.forms(0).elements("txtName8").value="";
						document.forms(0).elements("txtSurName8").value="";
						document.forms(0).elements("txtPos8").value="";
						document.forms(0).elements("txtTel8").value="";
						document.forms(0).elements("txtFax8").value="";
						document.forms(0).elements("txtMobile8").value="";
						document.forms(0).elements("txtEMail8").value="";
						document.forms(0).elements("lstSubject8").disabled=true;
						document.forms(0).elements("lstType8").disabled=true;
						document.forms(0).elements("lstTitle8").disabled=true;
						document.forms(0).elements("txtName8").disabled=true;
						document.forms(0).elements("txtSurName8").disabled=true;
						document.forms(0).elements("txtPos8").disabled=true;
						document.forms(0).elements("txtTel8").disabled=true;
						document.forms(0).elements("txtFax8").disabled=true;
						document.forms(0).elements("txtMobile8").disabled=true;
						document.forms(0).elements("txtEMail8").disabled=true;
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
															<asp:DropDownList id="lstSubject1" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType1" runat="server" Enabled="False">
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson2" onclick="JavaScript:CheckPerson(2);" type="checkbox" name="chkPerson2">&nbsp; 
															ผู้ติดต่อคนที่ 2
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject2" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType2" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle2" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName2" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname2" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos2" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel2" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax2" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile2" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail2" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson3" onclick="JavaScript:CheckPerson(3);" type="checkbox" name="chkPerson3">&nbsp; 
															ผู้ติดต่อคนที่ 3
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject3" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType3" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle3" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName3" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname3" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos3" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel3" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax3" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile3" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail3" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson4" onclick="JavaScript:CheckPerson(4);" type="checkbox" name="chkPerson4">&nbsp; 
															ผู้ติดต่อคนที่ 4
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject4" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType4" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle4" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName4" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname4" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos4" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel4" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax4" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile4" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail4" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson5" onclick="JavaScript:CheckPerson(5);" type="checkbox" name="chkPerson5">&nbsp; 
															ผู้ติดต่อคนที่ 5
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject5" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType5" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle5" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName5" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname5" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos5" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel5" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax5" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile5" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail5" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson6" onclick="JavaScript:CheckPerson(6);" type="checkbox" name="chkPerson6">&nbsp; 
															ผู้ติดต่อคนที่ 6
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject6" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType6" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle6" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName6" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname6" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos6" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel6" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax6" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile6" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail6" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson7" onclick="JavaScript:CheckPerson(7);" type="checkbox" name="chkPerson7">&nbsp; 
															ผู้ติดต่อคนที่ 7
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject7" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType7" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle7" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName7" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname7" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos7" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel7" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax7" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile7" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail7" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
														<TD class="txtHead" align="left" colSpan="4" height="20"><INPUT id="chkPerson8" onclick="JavaScript:CheckPerson(8);" type="checkbox" name="chkPerson8">&nbsp; 
															ผู้ติดต่อคนที่ 8
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120" vAlign="top">เรื่อง&nbsp;:</TD>
														<TD class="txtHead" colSpan="3" vAlign="top">
															<asp:DropDownList id="lstSubject8" runat="server" Enabled="False">
																<asp:ListItem Value="1">เพิ่มคนใหม่</asp:ListItem>
																<asp:ListItem Value="2">ยกเลิกคนที่มีอยู่แล้ว</asp:ListItem>
																<asp:ListItem Value="3">ขอแก้ไขข้อมูลรายละเอียด</asp:ListItem>
															</asp:DropDownList>
														</TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right" width="120">ประเภทผู้ติดต่อ&nbsp;:</TD>
														<TD class="txtHead" colSpan="3">
															<asp:DropDownList id="lstType8" runat="server" Enabled="False">
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
														<TD class="txtHead" width="330"><asp:dropdownlist id="lstTitle8" runat="server" Width="80px" Enabled="false">
																<asp:ListItem Value=""></asp:ListItem>
																<asp:ListItem Value="นาย">นาย</asp:ListItem>
																<asp:ListItem Value="นางสาว">นางสาว</asp:ListItem>
																<asp:ListItem Value="นาง">นาง</asp:ListItem>
																<asp:ListItem Value="Mr.">Mr.</asp:ListItem>
																<asp:ListItem Value="Miss.">Miss.</asp:ListItem>
																<asp:ListItem Value="Mrs.">Mrs.</asp:ListItem>
															</asp:dropdownlist>&nbsp; ชื่อ&nbsp;:
															<asp:textbox id="txtName8" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right" width="120">นามสกุล&nbsp;:</TD>
														<TD class="txtHead" width="330"><asp:textbox id="txtSurname8" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">ตำแหน่ง&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtPos8" runat="server" Width="240px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtTel8" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">โทรสาร&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtFax8" runat="server" Width="180px" Enabled="False"></asp:textbox></TD>
														<TD class="txtHead" align="right">โทรศัพท์มือถือ&nbsp;:</TD>
														<TD class="txtHead"><asp:textbox id="txtMobile8" runat="server" Width="200px" Enabled="False"></asp:textbox></TD>
													</TR>
													<TR class="pnlBG">
														<TD class="txtHead" align="right">E-Mail&nbsp;:</TD>
														<TD class="txtHead" colspan="3"><asp:textbox id="txtEMail8" runat="server" Width="300px" Enabled="False"></asp:textbox></TD>
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
